<?php
require_once 'db/Db.class.php';

/**
 *
 * @name 投票码服务类
 * @author sail
 * @since 20161210
 *
 */
class VoteCodeService {
    private $db;
    public function __construct($db) {
        $this->db = $db;
    }
    public function isExistsVoteCode($code) {
        $sql = "select 1 from vote_code where vote_code = :code";
        $rows = $this->db->query ( $sql, array (
                'code' => $code
        ) );
        if (is_array ( $rows ) && count ( $rows ) == 1) {
            return true;
        }
        return false;
    }
}

// $vote=new VoteCodeService(new DB());
// echo($vote->isExistsVoteCode('F6766'));
?>