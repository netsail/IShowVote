<?php
require_once 'db/Db.class.php';
/**
 *
 * @name 演出节目单服务类
 * @author sail
 * @since 20161210
 * @link http://www.word100.com/
 */
class ShowBillService {
    const VOTE_NUM = 3;
    private $db;
    public function __construct($db) {
        $this->db = $db;
    }
    public function getShowBillByAttendType($attendType, $sort = 1) {
        $allType = $attendType == 0 ? 0 : $attendType;
        $bySort = $sort == 1 ? 'point desc,id desc' : 'id asc';
        $sql = "select * from show_bill where attend_type = :attendType or 0 = $allType order by " . $bySort;
        return $this->db->query ( $sql, array (
                "attendType" => $attendType
        ) );
    }
    public function checkShowBillByIds($ids, $attendType) {
        $idArr = explode ( ",", $ids );
        $idCount = 0;
        foreach ( $idArr as $id ) {
            if ($this->isExistsShowBill ( $id, $attendType ) == 1) {
                $idCount += 1;
            }
        }
        if ($idCount != ShowBillService::VOTE_NUM) {
            return false;
        }
        return true;
    }
    public function isExistsShowBill($id, $attendType) {
        $sql = "select * from show_bill where status=1 and attend_type = :attendType and id = :id";
        $rowsCount = count ( $this->db->query ( $sql, array (
                "attendType" => $attendType,
                "id" => $id
        ) ) );
        return $rowsCount;
    }
    public function updateShowBillPoint($idArr) {
        $sql = "update show_bill set point= point + 1 where status=1 and id = :id";
        $rowCount = 0;
        foreach ( $idArr as $id ) {
            $rowCount += $this->db->query ( $sql, array (
                    'id' => $id
            ) );
        }
        return $rowCount;
    }
    public function updateShowBillStatus($type, $status) {
        $sql = "update show_bill set status = " . $status . " where attend_type = :type";
        return $this->db->query ( $sql, array (
                'type' => $type
        ) );
    }
}

// $show = new ShowBillService (new DB());
// var_dump ( $show->checkShowBillByIds ( $_REQUEST ['ids'], $_REQUEST ['attendType'] ) );
?>