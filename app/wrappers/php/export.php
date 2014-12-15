<?php

/* require("db.php");
  $db = new admission();
  $db->connect();
  //header to give the order to the browser
  header('Content-Type: text/csv');
  header('Content-Disposition: attachment;filename=exported-data.csv');
  //select table to export the data
  $select_table=mysql_query('select * from admissions'); */
$database = "ashadmission";
$username = "root";
$password = "Dream1234";
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


header('Content-Type: text/csv');
header('Content-Disposition: attachment;filename=exported-data.csv');
/* Get the current operation type. Available as the type query string parameter. */
$type = $_GET['type'];
$rows;
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
        getcsv($row);
        $result[] = $row;
    }
} else if ($type == 'read_applicants') {
    $statement = mysql_query('SELECT * FROM applicants', $link);
    while ($row = mysql_fetch_assoc($statement)) {
        getcsv($row); 
        $result[] = $row;
    }
} else if ($type == 'read_ashesiSiblings') {
    $statement = mysql_query('SELECT * FROM ashesi_siblings', $link);
    while ($row = mysql_fetch_assoc($statement)) {
        getcsv($row); 
        $result[] = $row;
    }
} else if ($type == 'read_seasons') {
    $statement = mysql_query('SELECT * FROM seasons', $link);
    while ($row = mysql_fetch_assoc($statement)) {
        getcsv($row);
        $result[] = $row;
    }
} else if ($type == 'read_users') {
    $statement = mysql_query('SELECT * FROM users', $link);
    while ($row = mysql_fetch_assoc($statement)) {
        getcsv($row);
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
        getcsv($row);
        $result[] = $row;
    }
} else if ($type == 'read_logs') {
    $statement = mysql_query('SELECT * FROM logs', $link);
    while ($row = mysql_fetch_assoc($statement)) {
        getcsv($row);
        $result[] = $row;
    }
}

//$rows = mysql_fetch_assoc($select_table);
//if ($rows) {
//    getcsv(array_keys($rows));
//}
//while ($rows) {
//    getcsv($rows);
//    $rows = mysql_fetch_assoc($select_table);
//}

// get total number of fields present in the database
function getcsv($no_of_field_names) {
    $separate = '';
    // do the action for all field names as field name
    foreach ($no_of_field_names as $field_name) {
        if (preg_match('/\\r|\\n|,|"/', $field_name)) {
            $field_name = '' . str_replace('', $field_name) . '';
        }
        echo $separate . $field_name;
        //sepearte with the comma
        $separate = ',';
    }
    //make new row and line
    echo "\r\n";
}

?>