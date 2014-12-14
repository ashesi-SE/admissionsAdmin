

<!DOCTYPE html>
<html >


    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Admin : Login</title>

    </head>

    <body>
        <?php
//$username = "";
//$password = "";



        if (isset($_REQUEST['username'])) {
            //the login form has been submitted
            $username = $_REQUEST['username'];
            $password = $_REQUEST['password'];
            //call login to check username and password
            if (login($username, $password)) {
                session_start(); //initiate session for the current login
				$type="login";
				$message="Successful";
				//$ip=$_SERVER['REMOTE_ADDR'];//"10.10.21.234";
				$ip=get_client_ip();
				$hostName="local";
				$uri=$_SERVER['REQUEST_URI'];
				$refer="refer";
				addtoLog($type,$message,$ip,$hostName,$uri,$refer);
                loadUserProfile($username); //load user information into the session
                header("location: admissions.php"); //redirect to home page
                echo "<a href='gridIndex.php'>click here</a>"; //if redirect fails, provide a link
                exit();
            } else{
			//if login returns false, then something is worng
			$msg="username or password is wrong";
		}
        }
        ?>

        <form action="login.php" method="POST">
            <table border="1" align="center" width="50%" id="margin">
                <tr><td>
                        <table  align="center" width="80%">
                            <tr >
                            <tr >
                                <td width="30%"></td>
                                <td colspan="2" align="center"></td>
                                <td width="30%"></td>
                            </tr>
                            <tr>
                                <td width="30%"></td>
                                <td >username</td>
                                <td><input id="username" type="text" name="username" ></td>
                                <td width="30%"></td>
                            </tr>
                            <tr>
                                <td width="30%"></td>
                                <td >password</td>
                                <td><input id="password" type="password" name="password" ></td>
                                <td  width="30%"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td><input type="submit" name="submit" value="login"></td>
                                <td></td>
                            </tr>

                        </table>
                    </td></tr>
            </table>
        </form>


    </body>

</html>

<?php

function login($username, $password) {

//    $pword = md5($password);
    $link = mysql_pconnect("localhost", "root", "") or die("Unable To Connect To Database Server");
    $db = mysql_select_db("ashadmission") or die("Unable To Connect To Admissions");

//    DEFINE('DBUSER', 'root');
//    DEFINE('DBPW', '');
//    DEFINE('DBHOST', 'localhost');
//    DEFINE('DBNAME', 'ashadmission');
//
//    $conn = mysql_connect(DBHOST, DBUSER, DBPW);
//
//    if (!$conn) {
//        die('Could not connect: ' . myql_error());
//    }
//
//    $db_conn = mysql_select_db(DBNAME, $conn);
//    $pword = $password;
//    if ($db) {
//        $query = "SELECT email, firstName, lastName, FROM users WHERE email='$username' AND password='$password'";
//        $result = mysql_query($query);
//    } else {
//        echo mysql_error();
//    }
    if(mysql_query("SELECT email, firstName, lastName FROM users WHERE email= '$username' AND password='$password'")){
          return true;
    }else{
         echo mysql_error();
        return false;
    }


//    if (!$result) {
//        return false;
//    } else {
//        return true;
//    }
}

function loadUserProfile($username) {
    $_SESSION['username'] = $username;
    //$_SESSION['fullname'] = $fullname;
}

function addtoLog($type,$message,$ip,$hostName,$uri,$refer){
$link = mysql_pconnect("localhost", "root", "") or die("Unable To Connect To Database Server");
    $db = mysql_select_db("ashadmission") or die("Unable To Connect To Admissions");
	if(mysql_query("INSERT INTO `logs`(`type`, `message`, `created`, `ip`, `hostname`, `uri`, `refer`) VALUES ('$type','$message',now(),'$ip','$hostName','$uri','$refer')")) 
{
          return true;
    }else{
         echo mysql_error();
        return false;
    }




}

 function get_client_ip()
 {
      $ipaddress = '';
      if (getenv('HTTP_CLIENT_IP'))
          $ipaddress = getenv('HTTP_CLIENT_IP');
      else if(getenv('HTTP_X_FORWARDED_FOR'))
          $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
      else if(getenv('HTTP_X_FORWARDED'))
          $ipaddress = getenv('HTTP_X_FORWARDED');
      else if(getenv('HTTP_FORWARDED_FOR'))
          $ipaddress = getenv('HTTP_FORWARDED_FOR');
      else if(getenv('HTTP_FORWARDED'))
          $ipaddress = getenv('HTTP_FORWARDED');
      else if(getenv('REMOTE_ADDR'))
          $ipaddress = getenv('REMOTE_ADDR');
      else
          $ipaddress = 'UNKNOWN';

      return $ipaddress;
 }

?>
