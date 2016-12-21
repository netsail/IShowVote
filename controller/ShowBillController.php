<?php
/**
 * @name 演出节目单控制层
 * @author sail
 * @since 20161210
 * @link http://www.word100.com/
 */
require_once 'service/ShowBillService.php';
class ShowBillController {
    private $showBillService;
    public $requestParameter;
    public function __construct() {
        $this->showBillService = new ShowBillService ( new DB () );
        $this->requestParameter = $_REQUEST;
    }
    public function getShowBillList() {
        $type = $this->requestParameter ['type'];
        $sort = $this->requestParameter ['sort'];
        $type = ($type == 'null' || $type == null || $type == '') ? 1 : $type;
        $sort = ($sort == 2) ? 0 : 1;
        $list = $this->showBillService->getShowBillByAttendType ( $type, $sort );
        return json_encode ( $list, JSON_UNESCAPED_UNICODE );
    }
    public function getShowBill() {
        $type = $this->requestParameter ['type'];
        $type = ($type == 'null' || $type == null || $type == '') ? 1 : $type;
        $list = $this->showBillService->getShowBillByAttendType ( $type, 0 );
        return json_encode ( $list, JSON_UNESCAPED_UNICODE );
    }
    public function doOpen() {
        $type = $this->requestParameter ['type'];
        $sig = $this->requestParameter ['s'];
        $typeDesc = $type == 1 ? '上半场' : '下半场';
        if ($sig != "asdfaswq2017happynewyear") {
            return json_encode ( array (
                    'code' => 0,
                    'msg' => '你没有此操作权限'
            ), JSON_UNESCAPED_UNICODE );
        }
        $rowCount = $this->showBillService->updateShowBillStatus ( $type, 1 );
        if ($rowCount <= 0) {
            return json_encode ( array (
                    'code' => 0,
                    'msg' => $typeDesc . '年会节目投票活动已开始或操作失败'
            ), JSON_UNESCAPED_UNICODE );
        }
        return json_encode ( array (
                'code' => 0,
                'msg' => $typeDesc . '年会节目投票活动成功开始！'
        ), JSON_UNESCAPED_UNICODE );
    }
    public function doClose() {
        $type = $this->requestParameter ['type'];
        $sig = $this->requestParameter ['s'];
        $typeDesc = $type == 1 ? '上半场' : '下半场';
        if ($sig != "asdfaswq2017happynewyear") {
            return json_encode ( array (
                    'code' => 0,
                    'msg' => '你没有此操作权限'
            ), JSON_UNESCAPED_UNICODE );
        }
        if ($this->showBillService->updateShowBillStatus ( $type, 0 ) <= 0) {
            return json_encode ( array (
                    'code' => 0,
                    'msg' => $typeDesc . '年会节目投票活动已停止或操作失败'
            ), JSON_UNESCAPED_UNICODE );
        }
        return json_encode ( array (
                'code' => 0,
                'msg' => $typeDesc . '年会节目投票活动圆满完成！'
        ), JSON_UNESCAPED_UNICODE );
    }
}

?>