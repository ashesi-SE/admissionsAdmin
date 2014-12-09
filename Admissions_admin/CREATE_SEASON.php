<?php
require("db.php");

if(isset($_POST['create_season'])){
$season_id = $_POST['season_id'];
$name = $_POST['name'];
$year = $_POST['year'];
$round = $_POST['round'];
$open_date = $_POST['open_date'];
$close_date = $_POST['close_date'];
$description = $_POST['description'];
$status = $_POST['status'];
$creator = $_POST['creator'];
$created = $_POST['created'];
$modified = $_POST['modified'];

$db = new admission();

$db->connect();

$db->sql_query("INSERT INTO seasons VALUES('$season_id', '$name', '$year', '$round','$open_date','$close_date','$description','$status','$creator','$created','$modified')");

//$success = "Successfully added to database!";

}

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
           width: 1100px;
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
            
            
         
 <li><a href="VIEWAPPLICATION.php"><center><b>VIEW APPLICATION </b></center><i class="icon-chevron-right"></i></a></li>           
            
             
<li ><a href="CREATE_SEASON.php"><center><b>CREATE & EDIT SEASON</b></center><i class="icon-chevron-right"></i></a></li>


<li ><a href="SEASON.php"><center><b>VIEW SEASON</b></center><i class="icon-chevron-right"></i></a></li>            
            
            <!--<li><a href="#"><center><b> VIEW APPLICATIONS </b></center><i class="icon-chevron-right"></i></a></li>-->



         
          </ul>
<center><div>
<br><br><br><br><br><br><br><br>           
<img src="img\ad5.jpg" class="img-rounded" width="450" height="490" >
<b><i>Open & Close Season</i></b>
</div></center>
          
          
</div>

<br>




        <div class="span8">

          <h1><center><i>Create season</i></center></h1>
        
        <br><br>




<form action="CREATE_SEASON.php" method="POST">

<center><div>

         <b><div class="controls">                    SEASON_ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="season_id" id="season_id">
          </div><b>
      
       
        <b><div class="controls">
               SEASON NAME &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" id="name" >  
          </div><b>
    
    
        <b><div class="controls">
              YEAR &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date"     name="year" id="year">    
      </div><b>




       <b><div class="controls">
                ROUND&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="round"  id="round">    
      </div><b>
                                                                                     
 
       <b><div class="controls">
                OPEN DATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="open_date"  id="open_date">    
      </div><b>
      
      
      
            <b><div class="controls">
                CLOSE DATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="close_date"  id="close_date">    
      </div><b>
      
      
      
            <b><div class="controls">
                DESCRIPTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
<textarea class="form-control" name="description"  id="description"  rows="3"></textarea>     

      </div><b>   
      
    
     <b><div class="controls">
     <div class="controls">STATUS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <select id="status" name="status" onClick="getSelectedItem()">
        <option value="Choosestatus">Choose Status</option>
        <option value="NEW">NEW</option>
        <option value="OPEN">OPEN</option>
        <option value="CLOSED">CLOSED</option>
        <option value="DELETED">DELETED</option>
        </select>  
      </div>
    
</div><b>
 
      
            <b><div class="controls">
                CREATOR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="creator"  id="creator">    
      </div><b>
      
      
      
            <b><div class="controls">
                CREATED&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="created"  id="created">    
      </div><b>
                                                    
                                                    
                                                    
               <b><div class="controls">
                MODIFIED&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="modified"  id="modified">    
      </div><b>                                                 
                                                    
                                                                                                     
</div></center>



</div>

<br><br><br>

<center><div class="controls">       
<input type="submit" name="create_season" class="btn btn-primary btn-large" value="CREATE SEASON" /> 
 </div></center>

</form>


    
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