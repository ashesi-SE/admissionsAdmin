<?php
require("db.php");
$db = new admission();
$db->connect();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Super Admin User</title>
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
           width: 1600px;
           height:500px;
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
            <span class="white-text">USERS|</span>
            <span><a id="logout" href="AdminLOG.php">LOG IN!</a></span>
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
            <li class="active" ><a href="#"><center><b>CONTROL PANEL </b></center><i class="icon-chevron-right"></i></a></li>
            
            <li ><a href="AdminLOG.php"><center><b>USER ACCOUNTS</b></center><i class="icon-chevron-right"></i></a></li>
            
            <li><a href="#"><center><b> VIEW APPLICANTS </b></center><i class="icon-chevron-right"></i></a></li>
          
 <li><a href="#"><center><b>VIEW USERS </b></center><i class="icon-chevron-right"></i></a></li>           
            
             
<li ><a href="#"><center><b>CURRENT ADMISSION UPDATES  </b></center><i class="icon-chevron-right"></i></a></li>


           
<li><a href="#"><center><b> VIEW APPLICATION </b></center><i class="icon-chevron-right"></i></a></li>

</ul>
 <div>
  <br><br><br><br><br><br><br>           
<img src="img\Two.png" class="img-rounded" width="150" height="150" >
<b><i>User Groups</i></b>
</div>       
     
          
        </div>

<br>

        <div class="span9">

          <h1><center><i>Summary of current application details </i></center></h1>
          <br>
        

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

echo "<th class='defaultTitle'>FIRST NAME</th>";

echo "<th class='defaultTitle'>MIDDLE NAME</th>";

echo "<th class='defaultTitle'>LAST NAME</th>";

echo "<th class='defaultTitle'>GENDER</th>";

echo "<th class='defaultTitle'>MAJOR</th>";

echo "<th class='defaultTitle'>SEASON ID</th>";

echo "<th class='defaultTitle'>STATUS";

echo "<th class='defaultTitle'>ACCEPTANCE</th>";

echo "<th class='defaultTitle'>CREATED</th>";

echo "<th class='defaultTitle'>SEASON</th>";

echo "</tr>";

echo"</thead>";

//$row=$db->fetch();

$query=$db->sql_query("select applicants.first_names, applicants.middle_names,applicants.last_names, applicants.gender, admissions.major, applications.season_id, applications.status, applications.acceptance, applications.created, seasons.name FROM applications JOIN admissions ON applications.application_id=admissions.application_id JOIN applicants ON admissions.application_id=applicants.application_id JOIN seasons ON seasons.season_id=applications.season_id;");

while($row = mysql_fetch_array($query)){

echo"<tbody>";

echo"<tr>";
     
 echo"<td>{$row['first_names']}</td>";

echo"<td>{$row['middle_names']}</td>";

echo"<td>{$row['last_names']}</td>";

echo"<td>{$row['gender']}</td>";

echo"<td>{$row['major']}</td>";
 
echo"<td>{$row['season_id']}</td>";

echo"<td>{$row['status']}</td>";

echo"<td>{$row['acceptance']}</td>";


echo"<td>{$row['created']}</td>";

echo"<td>{$row['name']}</td>";



echo"</tr>";

echo"</tbody>"; 

}
echo "</table>";
?>

 

    
 </div>
  
      </div>
<hr>

<!--<a href="#.php" class="btn btn-primary btn-large">BACK</a>-->
      <hr>

      <footer>
        <p>&copy; Team4G</p>
      </footer>

    </div> <!-- /container -->
 <hr>
  <!-- Le javascript
  ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery.js"></script>
</body>
</html>