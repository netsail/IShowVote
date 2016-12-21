<?php
/**
 * @name 用户用投票码投票节目服务类
 * @author sail
 * @since 20161210
 * @link http://www.word100.com/
 */
require_once 'service/VotePointService.php';
require_once 'service/ShowBillService.php';
require_once 'service/VoteCodeService.php';
require_once 'controller/ConstsUtils.php';
class VotePointController {
    private $votePointService;
    private $showBillService;
    private $voteCodeService;
    public $requestParameter;
    public function __construct() {
        $db = new DB ();
        $this->votePointService = new VotePointService ( $db );
        $this->showBillService = new ShowBillService ( $db );
        $this->voteCodeService = new VoteCodeService ( $db );
        $this->requestParameter = $_REQUEST;
    }
    public function doVote() {
        try {
            $code = strtoupper ( $this->requestParameter ['code'] );
            $ids = $this->requestParameter ['ids'];
            $type = $this->requestParameter ['type'];
            if (! $this->voteCodeService->isExistsVoteCode ( $code )) {
                return json_encode ( array (
                        'code' => 0,
                        'msg' => ConstsUtils::MSG_VOTE_CODE_NOT_ISEXISTS
                ), JSON_UNESCAPED_UNICODE );
            }
            if ($this->votePointService->isExistsVoteByCode ( $code, $type )) {
                return json_encode ( array (
                        'code' => 0,
                        'msg' => ConstsUtils::MSG_VOTE_POINT_INVALID
                ), JSON_UNESCAPED_UNICODE );
            }
            if (! $this->showBillService->checkShowBillByIds ( $ids, $type )) {
                return json_encode ( array (
                        'code' => 0,
                        'msg' => ConstsUtils::MSG_SHOW_BILL_INVALID
                ), JSON_UNESCAPED_UNICODE );
            }
            if (! $this->votePointService->saveVote ( $code, explode ( ",", $ids ) )) { // 保存投票信息
                return json_encode ( array (
                        'code' => 0,
                        'msg' => ConstsUtils::MSG_VOTE_FAIL
                ), JSON_UNESCAPED_UNICODE );
            }
            return json_encode ( array (
                    'code' => 1,
                    'msg' => ConstsUtils::MSG_VOTE_SUCCESS
            ), JSON_UNESCAPED_UNICODE );
        } catch ( Exception $e ) {
            return json_encode ( array (
                    'code' => 0,
                    'msg' => ConstsUtils::MSG_VOTE_FAIL
            ), JSON_UNESCAPED_UNICODE );
        }
    }
}

?>