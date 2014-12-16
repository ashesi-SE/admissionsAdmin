<?php

//create a PDO connection
# MySQL with PDO_MYSQL
//$db = new PDO("mysql:host=localhost;dbname=ashadmission;charset=utf8", 'root', 'Dream1234');
/* MySQL Connection*/
$database = "ashadmission";
$username = "csashesi_nal15";
$password = "db!9c2919";
$server = "localhost";


$link = mysql_connect($server, $username, $password);

if (!$link) {
    echo "error in mysql connection";
    echo mysql_error();
    exit;
}

if (!$db = mysql_select_db($database, $link)) {
    echo "error in selecting database";
    echo mysql_error();
    exit;
}

$request = json_decode(file_get_contents('php://input'));

/*Get the current operation type. Available as the type query string parameter.*/
$type = $_GET['type'];

/*variable that will be returned as result of the operation*/
$result = null;

//create
if ($type == 'create_seasons') {

    // In batch mode the inserted records are available in the 'models' field
    $createdData = $request->models;

    // Will store the ProductID fields of the inserted records
    $result = array();
    //            $statement='';

    foreach ($createdData as $seasons) {


        $name = $seasons->name;
        $year = date('Y-m-d H:i:s', $seasons->year);
        $round = $seasons->round;
        $open_date = date('Y-m-d H:i:s', $seasons->open_date);
        $close_date = date('Y-m-d H:i:s', $seasons->close_date);
        $description = $seasons->description;
        $status = $seasons->status;
        $creator = $_SESSION['username'];
        $created = date('Y-m-d H:i:s');
        $modified = date('Y-m-d H:i:s');

        $query = "INSERT INTO seasons (name, year, round, open_date, close_date, description, status, creator, created, modified) VALUES ('$name', '$year', '$round', '$open_date', '$close_date', '$description', '$status', '$creator', '$created', '$modified')";

//                          echo $query;
        $stat = mysql_query($query);

        $result[] = $stat;
    }
} else if ($type == 'users_create') {

    // In batch mode the inserted records are available in the 'models' field
    $createdData = $request->models;

    // Will store the ProductID fields of the inserted records
    $result = array();
    //            $statement='';

    foreach ($createdData as $users) {


        $firstname = $users->firstName;
        $middlename = $users->middleName;
        $lastname = $users->lastName;
        $email =  $users->email;
        $role =  $users->role;
        $isConfirmed = $users->isConfirmed;
        $status = $users->status;
        $creator = unserialize($_SESSION['username']);
        $created = date('Y-m-d H:i:s');
        $modified = date('Y-m-d H:i:s');

        $query = "INSERT INTO users (firstName, middleName, lastName, email, role, isConfirmed, status, creator, created, modified) VALUES ('$firstname', '$middlename', '$lastname', '$email', '$role', '$isConfirmed', '$status', '$creator', '$created', '$modified')";

//                          echo $query;
        $stat = mysql_query($query);

        $result[] = $stat;
    }
}

//read
if ($type == 'read_admissions') {
    // Create SQL SELECT statement
    $statement = mysql_query('select applicants.first_names,
        applicants.middle_names, applicants.last_names, applicants.gender,
        applicants.phone_primary,admissions.major, 
        applications.season_id, applications.acceptance, applications.created, seasons.name,  
        seasons.year,seasons.round,seasons.open_date,seasons.close_date,seasons.status FROM 
        applications JOIN admissions ON applications.application_id=admissions.application_id
        JOIN applicants ON admissions.application_id=applicants.application_id
        JOIN seasons ON seasons.season_id=applications.season_id;', $link);
    while ($row = mysql_fetch_assoc($statement)) {
        $result[] = $row;
    }
} else if ($type == 'read_applicants') {
    $statement = mysql_query('SELECT * FROM applicants', $link);
    while ($row = mysql_fetch_assoc($statement)) {
        $result[] = $row;
    }
} else if ($type == 'read_ashesiSiblings') {
    $statement = mysql_query('SELECT * FROM ashesi_siblings', $link);
    while ($row = mysql_fetch_assoc($statement)) {
        $result[] = $row;
    }
} else if ($type == 'read_seasons') {
    $statement = mysql_query('SELECT * FROM seasons', $link);
    while ($row = mysql_fetch_assoc($statement)) {
        $result[] = $row;
    }
} else if ($type == 'read_users') {
    $statement = mysql_query('SELECT * FROM users', $link);
    while ($row = mysql_fetch_assoc($statement)) {
        $result[] = $row;
    }
} else if ($type == 'read_applications') {
    $statement = mysql_query('SELECT applications.application_id, seasons.name, applicants.first_names, applicants.middle_names, 
                                applicants.last_names, payments.fee, payments.status, fa_applications.status 
                                FROM applications, seasons, applicants, payments, fa_applications
                                WHERE applications.applicant_id=applicants.applicant_id and 
                                applications.season_id = seasons.season_id
                                and applications.payment_id = payments.payment_id 
                                and applications.fa_application_id = fa_applications.fa_application_id;', $link);
    while ($row = mysql_fetch_assoc($statement)) {
        $result[] = $row;
    }
}else if ($type == 'read_logs'){
    $statement = mysql_query('SELECT * FROM logs', $link);
    while ($row = mysql_fetch_assoc($statement)) {
        $result[] = $row;
    }
}


//update
if ($type == 'update') {
    // in batch mode the updated records are available in the 'models' field
    $updatedSeasons = $request->models;

    foreach ($updatedSeasons as $season) {
        // Create UPDATE SQL statement
        $statement = $db->prepare('UPDATE seasons SET open_date = :openDate, close_date = :closeDate WHERE season_id = :seasonID');

        // Bind parameter values
        $statement->bindValue(':season_id', $season->seasonID);
        $statement->bindValue(':open_date', $season->openDate);
        $statement->bindValue(':close_date', $season->closeDate);


        // Execute the statement
        $statement->execute();
    }
}


//destroy
/*   if ($type == 'destroy') {
  // in batch mode the destroyed records are available in the 'models' field
  $destroyedProducts = $request->models;

  foreach($destroyedProducts as $product) {
  // Create DELETE SQL statement
  $statement = $db->prepare('DELETE FROM Products WHERE ProductID = :productID');

  // Bind parameter values
  $statement->bindValue(':productID', $product->ProductID);

  // Execute the statement
  $statement->execute();
  }
  } */

//return result of operation as JSON
// Set response content type
header('Content-Type: application/json');

echo json_encode($result);
?>s