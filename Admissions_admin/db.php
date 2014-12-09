<?php

class db{
 
 var $result;
 var $link;
 var $str_error;
 
 
 function db(){
 $this->link=false;
 $this->str_error="";
 $this->result=false;
 }
 
 
 function connect(){
 
 $this->link=mysql_connect("localhost","root","");
 mysql_select_db("ashadmission",$this->link);
 //echo "here";
 
 if($this->link){
 return true;
 }
 
 $this->link=mysql_connect("localhost","root","");
 if(!$this->link){
 $this->str_error="fail to connect to db";
 return false;
 }
 
 if(!mysql_select_db("ashadmission",$this->link)){
 $this->str_error="db not found";
 return false;
  }else {return true;}
    
 }
 
 
 
 function sql_query($query){
 if(!$this->connect()){
 
 return false;
 }
 
 $this->result=mysql_query($query, $this->link) or die(mysql_error());
 if(!$this->result){
 $this->str_error=mysql_error($this->link);
 return false;
 }
 return $this->result;
 }
 
 
 
 function fetch(){
 if(!$this->result){
 return false;
 }
 $row=mysql_fetch_assoc($this->result);
 return $row;
 }
 

 
 function get_num_rows(){
 return mysql_num_rows($this->result);
 }
 
 }
 

 class admission extends db{
 
 function admission(){
    db::db();
 
 }
 
 
 
 //Admin users
 /*function insert_ADMIN_KEYER(){  
 $sql_query="INSERT INTO ash_admin_table VALUES(null,'$Issue','$Location','$Description','$Email')";
 
 if(!$this->sql_query($str_query)){
    return false;
    }
    return true;
    }*/


 /*function get_ADMIN_KEYER(){
 $str_query="select Issue_ID, Issue,Location,Description,Email,Date from ash_admin_table WHERE Type_Of_User='KEYER'";
 if(!$this->sql_query($str_query)){
 return false;
 }
 return true;
 }*/
 
 
 /*function insert_ADMIN_DEVELOPER(){  
 $sql_query="INSERT INTO ash_admin_table VALUES(null,'$Issue','$Location','$Description','$Email')";
 
 if(!$this->sql_query($str_query)){
    return false;
    }
    return true;
    }


 function get_ADMIN_DEVELOPER(){
 $str_query="select Issue_ID, Issue,Location,Description,Email,Date from ash_admin_table WHERE Type_Of_Issues='DEVELOPER'";
 if(!$this->sql_query($str_query)){
 return false;
 }
 return true;
 }*/

 
//Applicants  
function insert_APPLICANTS(){  
 $sql_query="INSERT INTO applicants VALUES('$applicant_id','$application_id','$first_names','$middle_names','$last_names','$dob','$gender','$citizenship_primary','$citizenship_secondary','$passport_primary','$passport_primary_expiration','$passport_secondary','$passport_secondary_expiration','$phone_primary','$phone_secondary','$email_primary','$email_secondary','$street_address','$city','$region','$country','$postal_address','$lives_with','$picture_url','$creator','$created','$modified')";
 
 if(!$this->sql_query($str_query)){
    return false;
    }
    return true;
    }

 
 function get_APPLICANTS(){
 $str_query="select * from applicants ORDER BY applicant_id";
 //if(!$this->sql_query($str_query)){
 //return false;
// }
// return true;
return $this->sql_query($str_query);
 }




//Admin users
function get_ISSUE_TABLE(){ 
 $str_query= "SELECT * FROM users WHERE email = '$email' and password='$password'";
 if(!$this->sql_query($str_query)){
 return false;
 }
 return true;
 }


function insert_ISSUE_TABLE(){  
 $sql_query="INSERT INTO users VALUES(null,'$user_id','$firstName','$middleName','$lastName','$email','$hash','$password','$role','$isConfirmed','$status','$created','$modified','$lastLogin')";
 
 if(!$this->sql_query($str_query)){
    return false;
    }
    return true;
    }


//Create seasons
function get_SEASON(){ 
 $str_query= "SELECT * FROM seasons ORDER BY season_id";
 if(!$this->sql_query($str_query)){
 return false;
 }
 return true;
 }


function insert_SEASON(){  
 $sql_query="INSERT INTO seasons VALUES('$season_id','$name','$year','$round','$open_date','$close_date','$description','$status','$creator','$created','$modified')";
 
 if(!$this->sql_query($str_query)){
    return false;
    }
    return true;
    }


//Application  
function insert_APPLICATION(){  
 $sql_query="INSERT INTO applications VALUES('$application_id','$season_id','$applicant_id','$admission_id','$school_info_set','$acceptance','$document_info_set','$extracurricular_info_set','$fa_application_id','$relative_info_set','$payment_id','$result_id','$travel_info_set','$work_info_set','$status','$creator','$created','$modified')";
 
 if(!$this->sql_query($str_query)){
    return false;
    }
    return true;
    }

 
 function get_APPLICATION(){
 $str_query="select applicants.first_names, applicants.middle_names,applicants.last_names, applicants.gender, admissions.major, applications.season_id, applications.status, applications.acceptance, applications.created, seasons.name FROM applications JOIN admissions ON applications.application_id=admissions.application_id JOIN applicants ON admissions.application_id=applicants.application_id JOIN seasons ON seasons.season_id=applications.season_id;";
 //if(!$this->sql_query($str_query)){
 //return false;
// }
// return true;
return $this->sql_query($str_query);
 }



//Admissions  
function insert_ADMISSIONS(){  
 $sql_query="INSERT INTO admissions VALUES('','','','','','','','','','','','','','','','','','')";
 
 if(!$this->sql_query($str_query)){
    return false;
    }
    return true;
    }

 
 function get_ADMISSIONS(){
 $str_query="select * from admissions ORDER BY admission_id";
 //if(!$this->sql_query($str_query)){
 //return false;
// }
// return true;
return $this->sql_query($str_query);
 }















  } 

?>