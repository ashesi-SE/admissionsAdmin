

<!DOCTYPE html>
<html >
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Data Saver : Login</title>
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
            if (isset($_REQUEST['username'])) {
                //the login form has been submitted
                $username = $_REQUEST['username'];
                $password = $_REQUEST['password'];
                //call login to check username and password
                if (login($username, $password)) {
                    session_start(); //initiate session for the current login
                    loadUserProfile($username); //load user information into the session
                    header("location: admissions.php"); //redirect to home page
                    echo "<a href='login.php'>click here</a>"; //if redirect fails, provide a link
                    exit();
                } else {
                    //if login returns false, then something is worng
                    $msg = "username or password is wrong";
                }
            }
        ?>


<body>
    <!-- Navigation Bar, fixed to top -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">

    </nav>

    <div id="wrapper">
        <div >
            <div >
                <!--SIGN UP Modal-->
                <form method = "post" action ="login.php">
                    <div class="text-center">
                        <img src="img/Ashesi.png" class="text-center">
                    </div>
                   
                    <div>
                        <input id="btn-input" name = 'username' type="text" class="form-control input-md margin-10" placeholder="Username">
                        <input id="btn-input" name = 'password' type="password" class="form-control input-md margin-10" placeholder="Password">
                    </div>
                    <div class="btn-group text-center">
                        <input class="btn btn-lg btn-primary" type="submit" name="login_btn" id="login_btn" value="Login">
                    </div>
                   
                </form>
            </div>
        </div>
    </div>
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
<!--
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Admin : Login</title>

    </head>

    <body>
-->      
<!--
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
-->
<?php

function login($username, $password) {

//    $pword = md5($password);
    $link = mysql_pconnect("localhost", "root", "Dream1234") or die("Unable To Connect To Database Server");
    $db = mysql_select_db("ashadmission") or die("Unable To Connect To Admissions");

    if ($response = mysql_query("SELECT email, firstName, lastName, role FROM users WHERE email= '$username' AND password='$password'")) {
        $row = $response->mysql_fetch_assoc();
        $userName= $row['email'];
        $role=$row['role'];
        loadUserProfile($userName,$role);
        return true;
    } else {
        echo mysql_error();
        return false;
    }
}

function loadUserProfile($username,$role) {
    $_SESSION['username'] = $username;
    $_SESSION['role'] = $role;
    //$_SESSION['fullname'] = $fullname;
}
?>
