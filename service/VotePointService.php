<?php
require_once 'db/Db.class.php';
require_once 'ShowBillService.php';

/**
 *
 * @name 用户用投票码投票节目服务类
 * @author sail
 * @since 20161210
 * @link http://www.word100.com/
 */
class VotePointService {
    private $db;
    public function __construct($db) {
        $this->db = $db;
    }
    public function isExistsVoteByCode($code, $type) {
        $sql = "select 1 from vote_point t1,show_bill t2 where t1.show_id=t2.id and t1.vote_code= :code and t2.attend_type= :type";
        $rows = $this->db->query ( $sql, array (
                'code' => $code,
                'type' => $type
        ) );
        if (count ( $rows ) != 0) {
            return true;
        }
        return false;
    }
    public function saveVote($code, $idArr) {
        $db = new DB ();
        $db->beginTransaction ();
        $sql = "insert into vote_point(vote_code,show_id) values(:code,:showId)";
        $rowCount = 0;
        foreach ( $idArr as $id ) {
            $rowCount += $db->query ( $sql, array (
                    "code" => $code,
                    'showId' => $id
            ) );
        }
        $showBillService = new ShowBillService ( $this->db );
        if ($rowCount == ShowBillService::VOTE_NUM && $showBillService->updateShowBillPoint ( $idArr ) == ShowBillService::VOTE_NUM) {
            $db->executeTransaction ();
            return true;
        } else {
            $db->rollBack ();
            return false;
        }
    }
}

// $vote = new VotePointService (new DB());
// $idArr = explode ( ",", $_REQUEST ['ids'] );
// if ($vote->saveVote ( $_REQUEST ['code'], $idArr )) {
// echo 1;
// } else {
// echo 0;
// }

?>