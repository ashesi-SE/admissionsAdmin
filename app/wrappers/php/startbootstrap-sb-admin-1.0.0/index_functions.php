<?php
include_once("adb.php");

class index_functions extends adb{
	    function index_functions(){
        adb::adb();
    }
	
	function sign_up(){
	$query="SELECT COUNT( * ) as number FROM  admissions";
	if ($this->query($query)){
	return true;
		}
	}

	function count_aid(){
	$query="SELECT COUNT( * ) as number FROM  fa_scholarships";
	if ($this->query($query)){
	return true;
		}
	}

	function count_users(){
	$query="SELECT COUNT( * ) as number FROM  users";
	if ($this->query($query)){
	return true;
		}
	}
}
?>