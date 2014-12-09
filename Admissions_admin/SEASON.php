
<?php
require("db.php");
if(isset($_POST['delete'])){
$con_id = $_POST['contact_id'];

$db = new admission();

$db->connect();

$sql = "delete from seasons where season_id='$con_id'";

$result_delete=$db->sql_query($sql) or die(mysql_error());
   
   if($result_delete){
    echo "deleted successfully";
   }else{
    echo "delete failed";
   }
}

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
           width: 1300px;
           height:500px;
           margin: -1 auto;
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
        <br>
          <ul class="nav nav-list sidenav">
            <li class="active" ><a href="#"><center><b>ADMIN CONTROL PANEL </b></center><i class="icon-chevron-right"></i></a></li>
            
            <li ><a href="VIEW_APPLICANTS.php"><center><b>VIEW APPLICANTS</b></center><i class="icon-chevron-right"></i></a></li>
            
            <li><a href="VIEWADMINUSERS.php"><center><b>VIEW USERS </b></center><i class="icon-chevron-right"></i></a></li>
          
 <li><a href="VIEW_ADMISSIONS.php"><center><b>VIEW ADMISSIONS</b></center><i class="icon-chevron-right"></i></a></li>           
            
             
<li ><a href="VIEWAPPLICATION.php"><center><b>VIEW APPLICATION</b></center><i class="icon-chevron-right"></i></a></li>


<li ><a href="CREATE_SEASON.php"><center><b>CREATE & EDIT SEASON</b></center><i class="icon-chevron-right"></i></a></li>            
            
            <li><a href="SEASON.php"><center><b>VIEW SEASON</b></center><i class="icon-chevron-right"></i></a></li>



         
          </ul>
  
          
<center><div>
      <br><br><br><br><br>   
          
<img src="img\ad3.png" class="img-rounded" width="400" height="350" >
<b><i>Create seasons</i></b>
</div></center>    
          
    
          
        </div>

        <div class="span9">

          <h1><center><i>Seasons Table </i></center></h1>

<?php
$db=new admission();

//$rt=$db->connect();
//echo "here";

if(!$db->get_SEASON($season_id)){
echo"$db->str_error";
exit();
   }

echo "<table class='table table-hover table-bordered'>";

echo"<thead  class='thead thead-color:blue thead-font:vadena'>";

echo "<tr>";

echo "<th class='defaultTitle'>ID</th>";

echo "<th class='defaultTitle'>SEASON NAME</th>";

echo "<th class='defaultTitle'>YEAR</th>";

echo "<th class='defaultTitle'>ROUND</th>";

echo "<th class='defaultTitle'>OPEN DATE</th>";

echo "<th class='defaultTitle'>CLOSE DATE</th>";

echo "<th class='defaultTitle'>DESCRIPTION</th>";

echo "<th class='defaultTitle'>STATUS</th>";

echo "<th class='defaultTitle'>CREATOR</th>";

echo "<th class='defaultTitle'>CREATED</th>";

echo "<th class='defaultTitle'>MODIFIED</th>";

echo "<th class='defaultTitle'>UPDATE</th>";

echo "<th class='defaultTitle'>DELETE</th>";

echo "</tr>";

echo"</thead>";

//$row=$db->fetch();


$query=$db->sql_query("select * from seasons ORDER BY season_id");

while($row = mysql_fetch_array($query)){

echo"<tbody>";

echo"<tr>";

echo"<td>{$row['season_id']}</td>";

echo"<td>{$row['name']}</td>";

echo"<td>{$row['year']}</td>";

echo"<td>{$row['round']}</td>";
 
echo"<td>{$row['open_date']}</td>";

echo"<td>{$row['close_date']}</td>";

echo"<td>{$row['description']}</td>";

echo"<td>{$row['status']}</td>";

echo"<td>{$row['creator']}</td>";

echo"<td>{$row['created']}</td>";

echo"<td>{$row['modified']}</td>";

$contact_id=$row['season_id'];


//update button
echo"<td><form action='UPDATE_SEASON.php' method='post'><input type='hidden' name='contact_id' value='".$contact_id."'/><button><input type='submit' name='update' value='update'/></form></td></button> ";   
 
 //delete button
echo"<td><form action='SEASON.php' method='post'><input type='hidden' name='contact_id' value='".$contact_id."'/><button><input type='submit' name='delete' value='del'/></form></td></button>";

echo"</tr>";

echo"</tbody>"; 

}
echo "</table>";
?>


 <br>
 
 
 
 
<center>
<div class="span3">
<a href="export.php" class="btn btn-large btn-danger">EXPORT As CSV</a> 
</div>
</center>
 
 
 
 
 
 
 
 
 
 
 

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