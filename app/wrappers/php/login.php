<!DOCTYPE html>
<html >
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login</title>
        <!--icon-->
        <link href="img/Ashesi.png" rel="icon" />
        <!-- BOOTSTRAP STYLES-->
        <link href="css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLES-->
        <link href="css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
        <link href="css/datasaver.css" rel="stylesheet" />
        <!-- GOOGLE FONTS-->
        <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' /> -->
    </head>
    <?php
    /*  if (isset($_REQUEST['username'])) {
      //the login form has been submitted
      $username = $_REQUEST['username'];
      $password = $_REQUEST['password'];
      //call login to check username and password
      if (login($username, $password)) {
      session_start(); //initiate session for the current login
      //                    loadUserProfile($username); //load user information into the session
      header("location: admissions.php"); //redirect to home page
      echo "<a href='login.php'>click here</a>"; //if redirect fails, provide a link
      exit();
      } else {
      //if login returns false, then something is worng
      $msg = "username or password is wrong";
      }
      } */
    ?>


    <body>
        <!-- Navigation Bar, fixed to top -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">

        </nav>


        <?php
        /*
          <div id="wrapper">
          <div class="col-xs-10 col-xs-offset-1  col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
          <div class="signup">
          <!--SIGN UP Modal-->
          <form method = "post" action ="login.php">
          <div class="text-center">
          <img src="img/Ashesi.png" class="text-center">
          </div>
          <div class="input-group col-xs-12 padding-10">
          <input id="btn-input" name = 'username' type="text" class="form-control input-md margin-10" placeholder="Username">
          <input id="btn-input" name = 'password' type="password" class="form-control input-md margin-10" placeholder="Password">
          </div>
          <div class="btn-group, text-center">
          <input class="btn btn-lg btn-primary" type="submit" name="login_btn" id="login_btn" value="Login">
          </div>

          </form>
          </div>
          </div>
          </div> */
        ?>

    </div>


</div>
</div>






</div>
<!-- /. WRAPPER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="js/jquery-2.1.1.min.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="js/bootstrap.min.js"></script>
<!-- CUSTOM SCRIPTS 
<script src="assets/js/custom.js"></script>-->


</body>

</html>

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
        //addtoLog($type,$message,$ip,$hostName,$uri,$refer);
<<<<<<< HEAD
                loadUserProfile($username); //load user information into the session
        header("location: startbootstrap-sb-admin-1.0.0\index.php"); //redirect to home page
        echo "<a href='C:\xampp\htdocs\phpKendoTrial\wrappers\php\startbootstrap-sb-admin-1.0.0\index.php'>click here</a>"; //if redirect fails, provide a link
=======
//                loadUserProfile($username); //load user information into the session
        header("location: http://50.63.128.135/~csashesi/class2015/niena-alhassan/admin/admissions.php"); //redirect to home page
        echo "<a href='http://50.63.128.135/~csashesi/class2015/niena-alhassan/admin/gridIndex.php'>click here</a>"; //if redirect fails, provide a link
>>>>>>> d9698e1591ec642518b997e82380a6c363d5d133
        exit();
    } else {
        //if login returns false, then something is worng
        $msg = "username or password is wrong";
    }
}
?>


<form action="login.php" method="POST">
    <div class="text-center">
        <img src="img/Ashesi.png" class="text-center">
    </div>
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
<<<<<<< HEAD
    $link = mysql_pconnect("localhost", "root", "Dream1234") or die("Unable To Connect To Database Server");
=======
    $link = mysql_pconnect("localhost", "csashesi_nal15", "db!9c2919") or die("Unable To Connect To Database Server");
>>>>>>> d9698e1591ec642518b997e82380a6c363d5d133
    $db = mysql_select_db("ashadmission") or die("Unable To Connect To Admissions");
    if ($response = mysql_query("SELECT user_id,email, firstName, lastName, role FROM users WHERE email= '$username' AND password='$password'")) {
        $row = mysql_fetch_assoc($response);
        $refer = $row['user_id'];
        /* $userName= $row['email'];
          $role=$row['role'];
          loadUserProfile($userName,$role); */
        addtoLog($refer);
        return true;
    } else {
        echo mysql_error();
        return false;
    }
}

function loadUserProfile($username, $role) {
    $_SESSION['username'] = $username;
    $_SESSION['role'] = $role;
    //$_SESSION['fullname'] = $fullname;
}

function addtoLog($user) {
<<<<<<< HEAD
    $link = mysql_pconnect("localhost", "root", "Dream1234") or die("Unable To Connect To Database Server");
=======
    $link = mysql_pconnect("localhost", "csashesi_nal15", "db!9c2919") or die("Unable To Connect To Database Server");
>>>>>>> d9698e1591ec642518b997e82380a6c363d5d133
    $db = mysql_select_db("ashadmission") or die("Unable To Connect To Admissions");
    //$type="login";
    //$message="Successful";
    //$ip=$_SERVER['REMOTE_ADDR'];//"10.10.21.234";
    $ip = get_client_ip();
    //$hostName="local";
    $uri = $_SERVER['REQUEST_URI'];
    //$refer="refer";
    if (mysql_query("INSERT INTO `logs`(`type`, `message`, `created`, `ip`, `hostname`, `uri`, `refer`) VALUES ('login','Successful',now(),'$ip','local','$uri','$user')")) {
        return true;
    } else {
        echo mysql_error();
        return false;
    }
}

function get_client_ip() {
    $ipaddress = '';
    if (getenv('HTTP_CLIENT_IP'))
        $ipaddress = getenv('HTTP_CLIENT_IP');
    else if (getenv('HTTP_X_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
    else if (getenv('HTTP_X_FORWARDED'))
        $ipaddress = getenv('HTTP_X_FORWARDED');
    else if (getenv('HTTP_FORWARDED_FOR'))
        $ipaddress = getenv('HTTP_FORWARDED_FOR');
    else if (getenv('HTTP_FORWARDED'))
        $ipaddress = getenv('HTTP_FORWARDED');
    else if (getenv('REMOTE_ADDR'))
        $ipaddress = getenv('REMOTE_ADDR');
    else
        $ipaddress = 'UNKNOWN';
    return $ipaddress;
}
?>
