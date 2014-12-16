<?php
	include("gen.php");
	$cmd=get_datan("cmd");
	
	switch($cmd){
	case 1:
		sign_up();
		break;
	case 2:
		aid();
	break;
	case 3:
		users();
	break;
	case 4:
		users();
	break;
	default:
		echo "{";
		echo jsonn("result",0). ",";
		echo jsons("message","unknown command");
		echo "}";
	}
	
	function sign_up(){
	include("index_functions.php");
	$v=new index_functions();
	if(!$v->sign_up()){
	echo mysql_error();
	echo '{"result":0,"message":"Sign Up Not Successful!!!"}';
	}
	else{
		$row=$v->fetch();
	echo '{';
		echo '"bootstrap":{';
		echo jsonn('number',$row['number']);
		echo "}";
		echo "}";
	}
}

function aid(){
	include("index_functions.php");
	$v=new index_functions();
	if(!$v->count_aid()){
	echo mysql_error();
	echo '{"result":0,"message":"Sign Up Not Successful!!!"}';
	}
	else{
		$row=$v->fetch();
	echo '{';
		echo '"bootstrap":{';
		echo jsonn('number',$row['number']);
		echo "}";
		echo "}";
	}
}

function users(){
	include("index_functions.php");
	$v=new index_functions();
	if(!$v->count_users()){
	echo mysql_error();
	echo '{"result":0,"message":"Sign Up Not Successful!!!"}';
	}
	else{
		$row=$v->fetch();
	echo '{';
		echo '"bootstrap":{';
		echo jsonn('number',$row['number']);
		echo "}";
		echo "}";
	}
}

function aid_admissions(){
	include("index_functions.php");
	$v=new index_functions();
	if(!$v->count_aid_adm()){
	echo mysql_error();
	echo '{"result":0,"message":"Sign Up Not Successful!!!"}';
	}
	else{
		$row=$v->fetch();
	echo '{';
		echo '"bootstrap":{';
		echo jsonn('number',$row['number']);
		echo "}";
		echo "}";
	}
}
?>