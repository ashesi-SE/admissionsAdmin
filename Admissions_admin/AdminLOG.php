<?php
require("db.php");
if(isset($_POST['login'])){
// Grab User submitted information
$email = $_POST["email"];
$password = $_POST["password"];
// Connect to the database
//
$db = new admission();

$db->connect();

if(!$db->get_ISSUE_TABLE()){
echo"$db->str_error";
exit();
    }
    
$query=$db->sql_query("SELECT * FROM users WHERE email ='$email' and password='$password'");
//$success = "Successfully added to database!";

$a = mysql_num_rows($query);
//echo $a." login rows";

if($a > 0){
 //echo "valid inputs";
 
 $result=mysql_result($query,0,"role");
 session_start();
 $_SESSION['email'] = $email;
 
 if($result=="ADMINISTRATOR"){
header("location:ADMIN.php");
}else if($result=="DEVELOPER"){
header("location:DEVELOPER.php");
}
else if($result=="OFFICER"){
header("location:OFFICER.php");
}
else if($result=="KEYER"){
header("location:KEYER.php");
}

}else{
 $error = "invalid inputs";
}

}

?>


<!DOCTYPE html>
<html>
<head>
    <title> Admission Admin Login Page</title>
    <link rel="stylesheet" media="screen" href="css/login.css">
    <link href="bootstrap.css" rel="stylesheet">
    <script src="js/login.js" type="text/javascript"></script>
    <style type="text/css">
        body{
            width: 320px;
            margin: 0 auto;
            height:60px;
        }

        #wrap{
            background-color: #fafafa;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 12px #b5b5b5 ;
        }
    </style>
</head>



<body>
<form action="AdminLOG.php" method="POST">
    
    <div id="wrap">
        <hr>
        <h2 class="text-center" >ADMIN USERS</h2>
        <hr>
         <div class="control-group">
            <b>USER_NAME</b><br>
             <input input type="email" name="email"id="email" >
         </div>

        <div class="control-group">
        <b>PASS_WORD</b><br>
         <input type="password" name="password" id="password">
        </div>

  <div class="control-group">
    <div class="controls">
      <center><input type="submit" name="login" value="LOGIN" id="username" ></center><?php echo $error; ?>
  </div>
</div>

</div>

</form>
</body>
</html>