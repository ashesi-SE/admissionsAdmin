<?php
require("db.php");
$db = new admission();
$db->connect();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Application table</title>
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
           width: 1400px;
           height:800px;
           margin: 0 auto;
        }


    #wrap{
            background-color: #f0f0f0;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 12px #bababa ;
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
        <br><br><br><br>
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
<br><br><br><br><br>            
<img src="img\ad2.png" class="img-rounded" width="300" height="400" >
<b><i>Applicantions</i><b>
</div></center>
          
</div>

<br>


        <div class="span9">

          <h1><center><i>Summary of Applications Table </i></center></h1>
        <br><br>

<!--<div class="controls">       
<a href="ADMIN.php" class="btn btn-primary btn-large">BACK To ADMIN PAGE</a> 
 </div>-->  




<!--<table class="table table-hover">-->

<?php
$db=new admission();

//$rt=$db->connect();
//echo "here";

if(!$db->get_APPLICATION()){
echo"$db->str_error";
exit();
   }

echo "<table class='table table-hover table-bordered'>";

echo"<thead  class='thead thead-color:blue thead-font:vadena'>";

echo "<tr>";

echo "<th class='defaultTitle'>APPLICATION ID</th>";

echo "<th class='defaultTitle'>SEASON ID</th>";

echo "<th class='defaultTitle'>APPLICANT ID</th>";

echo "<th class='defaultTitle'>ADMISSION ID</th>";

echo "<th class='defaultTitle'>ACCEPTANCE</th>";

echo "<th class='defaultTitle'>STATUS</th>";

echo "<th class='defaultTitle'>CREATOR</th>";

echo "<th class='defaultTitle'>CREATED</th>";

echo "<th class='defaultTitle'>MODIFIED</th>";




echo "</tr>";

echo"</thead>";

//$row=$db->fetch();

$query=$db->sql_query("select * from applications ORDER BY application_id");

while($row = mysql_fetch_array($query)){

echo"<tbody>";

echo"<tr>";
     
 echo"<td>{$row['application_id']}</td>";

echo"<td>{$row['season_id']}</td>";

echo"<td>{$row['applicant_id']}</td>";

echo"<td>{$row['admission_id']}</td>";

echo"<td>{$row['acceptance']}</td>";
 
echo"<td>{$row['status']}</td>";

echo"<td>{$row['creator']}</td>";

echo"<td>{$row['created']}</td>";

echo"<td>{$row['modified']}</td>";

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