<?php
require("db.php");
$db = new admission();
$db->connect();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Applicants table</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Le styles -->
  <link href="bootstrap.css" rel="stylesheet">
  <link href="custom.css" rel="stylesheet">
  <link rel="stylesheet" media="screen" href="css/login.css">
  <link href="bootstrap.css" rel="stylesheet">
  
  <style type="text/css">
 body{
           width: 1500px;
           height:100px;
           margin: 0 auto;
        }


    #wrap{
            background-color: #fafafa;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 12px #b5b5b5 ;
        }
         
        #table,
    thead,
    tr,
    tbody,
    th,
    td {
        text-align: center;
    }   
     
  </style>

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="ico/favicon.png">
  </head>

  <body>

   <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand"><b>Admission Admin</b></a>
          <div class="nav-collapse collapse">
            <ul class="nav">
            <li><a href="index.php">DASH BOARD</a></li>
           <li><a href="#">USER ACCOUNT</a></li>
              <li><a href="#">APPLICANTS</a></li>
               <li><a href="#">FAQ</a></li>  
            </ul>
          </div><!--/.nav-collapse -->
          
          <div class="top-right-corner">
            <span class="white-text">Admin User  |</span>
            <span><a id="logout" href="index.php">LOG OUT!</a></span>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid">

      <!-- Main hero unit for a primary marketing message or call to action -->
      
      <br>
      <div class="row-fluid">
    
        <div class="span3">
        <br><br><br>
          <ul class="nav nav-list sidenav">
            <li class="active" ><a href="#"><center><b>ADMIN CONTROL PANEL </b></center><i class="icon-chevron-right"></i></a></li>
            
            <li ><a href="VIEW_APPLICANTS.php"><center><b>VIEW APPLICANTS</b></center><i class="icon-chevron-right"></i></a></li>
            
            <li><a href="VIEWADMINUSERS.php"><center><b>VIEW USERS </b></center><i class="icon-chevron-right"></i></a></li>
          
 <li><a href="VIEW_ADMISSIONS.php"><center><b>VIEW ADMISSIONS </b></center><i class="icon-chevron-right"></i></a></li>           
            
             
<li ><a href="VIEWAPPLICATION.php"><center><b>VIEW APPLICATION</b></center><i class="icon-chevron-right"></i></a></li>


<li ><a href="CREATE_SEASON.php"><center><b>CREATE & EDIT SEASON</b></center><i class="icon-chevron-right"></i></a></li>            
            
            <li><a href="SEASON.php"><center><b>VIEW SEASON</b></center><i class="icon-chevron-right"></i></a></li>



         
          </ul>
          
          
          
<center><div>
<br><br><br><br><br><br><br>  
          
<img src="img\Ap3.jpg" class="img-rounded" width="280" height="300" >
<b><i>Applicants</i></b>
</div></center>
          
          
        </div>

<br>


        <div class="span8">

          <h1><center><i>View of Applicants Table </i></center></h1>
        <br>

<!--<div class="controls">       
<a href="ADMIN.php" class="btn btn-primary btn-large">BACK To ADMIN PAGE</a> 
 </div>-->  




<!--<table class="table table-hover">-->

<?php
$db=new admission();

//$rt=$db->connect();
//echo "here";

if(!$db->get_APPLICANTS()){
echo"$db->str_error";
exit();
   }

echo "<table class='table table-hover table-bordered'>";

echo"<thead  class='thead thead-color:blue thead-font:vadena'>";

echo "<tr>";

echo "<th class='defaultTitle'>APPLICANT ID</th>";

echo "<th class='defaultTitle'>APPLICATION ID</th>";

echo "<th class='defaultTitle'>FIRST NAME</th>";

echo "<th class='defaultTitle'>MIDDLE NAME</th>";

echo "<th class='defaultTitle'>LAST NAME</th>";

echo "<th class='defaultTitle'>GENDER</th>";

echo "<th class='defaultTitle'>CITIZENSHIP</th>";

echo "<th class='defaultTitle'>PHONE NUMBER</th>";

echo "<th class='defaultTitle'>EMAIL</th>";

echo "<th class='defaultTitle'>CREATED</th>";

echo "</tr>";

echo"</thead>";

//$row=$db->fetch();

$query=$db->sql_query("select * from applicants ORDER BY applicant_id");

while($row = mysql_fetch_array($query)){

echo"<tbody>";

echo"<tr>";
     
echo"<td>{$row['applicant_id']}</td>";
 
echo"<td>{$row['application_id']}</td>";

echo"<td>{$row['first_names']}</td>";

echo"<td>{$row['middle_names']}</td>";

echo"<td>{$row['last_names']}</td>";

echo"<td>{$row['gender']}</td>";
 
echo"<td>{$row['citizenship_primary']}</td>";

echo"<td>{$row['phone_primary']}</td>";

echo"<td>{$row['email_primary']}</td>";

echo"<td>{$row['created']}</td>";

echo"</tr>";

echo"</tbody>"; 

}
echo "</table>";
?>


<!--<center>
 
 <div class="span3">

<a href="ADMIN.php" class="btn btn-large btn-danger"  >CLOSE ADMISSION</a> 

</div>
 


<div class="span3">

<a href="ADMIN.php" class="btn btn-primary btn-large">OPEN ADMISSION</a> 

</div>


<div class="span3">

<a href="ADMIN.php" class="btn btn-primary btn-large">RESET ADMISSION</a> 

</div>

</center>-->
 

    
 </div>
  
      </div>


<!--<a href="#.php" class="btn btn-primary btn-large">BACK</a>-->
   <hr>  

      <footer>
        <p>&copy; Team4G</p>
      </footer>
 <hr>
 <hr>
    </div> <!-- /container -->

  <!-- Le javascript
  ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery.js"></script>
</body>
</html>