<?php
	require_once("easyCRUD.class.php");

	class VoteCode  Extends Crud {
		
			# Your Table name
			protected $table = 'vote_code';
			
			# Primary Key of the Table
			protected $pk	 = 'id';
	}

?>