<!DOCTYPE html>
<html>
    <head>
        <title>Kendo UI Web Examples</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="content/shared/styles/suite.css" rel="stylesheet"/>

        <link href="../../styles/kendo.common.min.css" rel="stylesheet" type="text/css" />
        <link href="../../styles/kendo.default.min.css" rel="stylesheet" type="text/css" />

        <!-- Le styles -->
        <link href="bootstrap.css" rel="stylesheet">
        <link href="custom.css" rel="stylesheet">
        <link rel="stylesheet" media="screen" href="css/login.css">
        <link href="bootstrap.css" rel="stylesheet">
        <script src="../../js/jquery.min.js"></script>
        <script src="../../js/kendo.web.min.js"></script>
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
                            <li><a href="#">USER ACCOUNTS</a></li>
                            <!--<li><a href="#"></a></li>-->
                            <li><a href="#">FAQ</a></li>  
                        </ul>
                    </div><!--/.nav-collapse -->

                    <div class="top-right-corner">
                        <span class="white-text">USERS|</span>
                        <span><a id="logout" href="AdminLOG.php">LOG OUT</a></span>
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
                        <li ><a href="admissions.php"><center><b>Admissions </b></center><i class="icon-chevron-right"></i></a></li>

                        <li class="active" ><a href="applicants.php"><center><b>Applicants</b></center><i class="icon-chevron-right"></i></a></li>

                        <li><a href="ashesiSiblings.php"><center><b>Ashesi Siblings</b></center><i class="icon-chevron-right"></i></a></li>

                        <li><a href="seasons.php"><center><b>Seasons</b></center><i class="icon-chevron-right"></i></a></li>           
<!--
                        <li ><a href="#"><center><b>CURRENT ADMISSION UPDATES  </b></center><i class="icon-chevron-right"></i></a></li>

                        <li><a href="#"><center><b> VIEW APPLICATIONS </b></center><i class="icon-chevron-right"></i></a></li>-->

                    </ul>
                </div>
                <div class="span9">
                    <h1><center><i>APPLICANTS</i></center></h1>
                    <br>
                    <?php
                    session_start(); //start session
                    if (!isset($_SESSION['username'])) { //check if the user data is in the session
                        header("location: login.php"); //if not redirect back to user
                    }
                    require_once 'lib/Kendo/Autoload.php';

                    $transport = new \Kendo\Data\DataSourceTransport();

                    // Configure the remote service - a PHP file called 'products.php'
                    // The query string parameter 'type' specifies the type of CRUD operation

                    $create = new \Kendo\Data\DataSourceTransportCreate();

                    $create->url('grid.php?type=create')
                            ->contentType('application/json')
                            ->type('POST');

                    $read = new \Kendo\Data\DataSourceTransportRead();

                    $read->url('grid.php?type=read_applicants')
                            ->contentType('application/json')
                            ->type('POST');

                    $update = new \Kendo\Data\DataSourceTransportUpdate();

                    $update->url('grid.php?type=update')
                            ->contentType('application/json')
                            ->type('POST');

                    $destroy = new \Kendo\Data\DataSourceTransportDestroy();

                    $destroy->url('grid.php?type=destroy')
                            ->contentType('application/json')
                            ->type('POST');

                    // Configure the transport. Send all data source parameters as JSON using the parameterMap setting
                    $transport->create($create)
                            ->read($read)
                            ->update($update)
                            ->destroy($destroy)
                            ->parameterMap('function(data) {
              return kendo.stringify(data);
          }');

                    // Configure the model
                    $model = new \Kendo\Data\DataSourceSchemaModel();

                    $applicantsIDField = new \Kendo\Data\DataSourceSchemaModelField('applicant_id');
                    $applicantsIDField->type('number')
                            ->editable(false)
                            ->nullable(true);

                    $applicationIDField = new \Kendo\Data\DataSourceSchemaModelField('application_id');
                    $applicationIDField->type('number')
                            ->editable(false)
                            ->nullable(true);

                    $firstNameField = new \Kendo\Data\DataSourceSchemaModelField('first_names');
                    $firstNameField->type('string')
                            ->validation(array('required' => true));

                    $middleNameField = new \Kendo\Data\DataSourceSchemaModelField('middle_names');
                    $middleNameField->type('string');

                    $lastNameField = new \Kendo\Data\DataSourceSchemaModelField('last_names');
                    $lastNameField->type('string');

                    $dateOfBirthField = new \Kendo\Data\DataSourceSchemaModelField('dob');
                    $dateOfBirthField->type('date');

                    $genderField = new \Kendo\Data\DataSourceSchemaModelField('gender');
                    $genderField->type('string');

                    $primaryCitizenshipField = new \Kendo\Data\DataSourceSchemaModelField('citizenship_primary');
                    $primaryCitizenshipField->type('string');

                    $citizenshipSecondaryField = new \Kendo\Data\DataSourceSchemaModelField('citizenship_secondary');
                    $citizenshipSecondaryField->type('string');

                    $passportPrimaryField = new \Kendo\Data\DataSourceSchemaModelField('passport_primary');
                    $passportPrimaryField->type('string');

                    $passportPrimaryExpirationField = new \Kendo\Data\DataSourceSchemaModelField('passport_primary_expiration');
                    $passportPrimaryExpirationField->type('string');

                    $passportSecondaryField = new \Kendo\Data\DataSourceSchemaModelField('passport_secondary');
                    $passportSecondaryField->type('string');

                    $passportSecondaryExpirationField = new \Kendo\Data\DataSourceSchemaModelField('passport_secondary_expiration');
                    $passportSecondaryExpirationField->type('string');

                    $phonePrimaryField = new \Kendo\Data\DataSourceSchemaModelField('phone_primary');
                    $phonePrimaryField->type('number');

                    $phoneSecondaryField = new \Kendo\Data\DataSourceSchemaModelField('phone_secondary');
                    $phoneSecondaryField->type('number');

                    $emailPrimaryField = new \Kendo\Data\DataSourceSchemaModelField('email_primary');
                    $emailPrimaryField->type('string');

                    $emailSecondaryField = new \Kendo\Data\DataSourceSchemaModelField('email_secondary');
                    $emailSecondaryField->type('string');

                    $streetAddressField = new \Kendo\Data\DataSourceSchemaModelField('street_address');
                    $streetAddressField->type('string');

                    $cityField = new \Kendo\Data\DataSourceSchemaModelField('city');
                    $cityField->type('string');

                    $regionField = new \Kendo\Data\DataSourceSchemaModelField('region');
                    $regionField->type('string');

                    $countryField = new \Kendo\Data\DataSourceSchemaModelField('country');
                    $countryField->type('string');

                    $postalAddressField = new \Kendo\Data\DataSourceSchemaModelField('postal_address');
                    $postalAddressField->type('string');

                    $livesWithField = new \Kendo\Data\DataSourceSchemaModelField('lives_with');
                    $livesWithField->type('string');

                    $pictureUrlField = new \Kendo\Data\DataSourceSchemaModelField('picture_url');
                    $pictureUrlField->type('string');

                    $creatorField = new \Kendo\Data\DataSourceSchemaModelField('creator');
                    $creatorField->type('string');

                    $datecreatedField = new \Kendo\Data\DataSourceSchemaModelField('created');
                    $datecreatedField->type('date');

                    $dateModifiedField = new \Kendo\Data\DataSourceSchemaModelField('modified');
                    $dateModifiedField->type('date');

                    $model->id('applicant_id')
                            ->addField($firstNameField)
                            ->addField($middleNameField)
                            ->addField($lastNameField)
                            ->addField($dateOfBirthField)
                            ->addField($genderField);

                    $schema = new \Kendo\Data\DataSourceSchema();

                    $schema->model($model);

                    $dataSource = new \Kendo\Data\DataSource();

                    // Configure data source - set transport, schema and enable batch mode
                    $dataSource->transport($transport)
                            ->batch(true)
                            ->schema($schema);

                    $grid = new \Kendo\UI\Grid('grid');

                    $firstNameField = new \Kendo\UI\GridColumn();
                    $firstNameField->field('first_names')
                            ->width(50)
                            ->title('First Name');

                    $middleNameField = new \Kendo\UI\GridColumn();
                    $middleNameField->field('middle_names')
                            ->width(50)
                            ->title('Middle Name');

                    $lastNameField = new \Kendo\UI\GridColumn();
                    $lastNameField->field('last_names')
                            ->width(50)
                            ->title('Lastname');

                    $dateOfBirthField = new \Kendo\UI\GridColumn();
                    $dateOfBirthField->field('dob')
                            ->title('Date of Birth')
                            ->width(50);

                    $genderField = new \Kendo\UI\GridColumn();
                    $genderField->field('gender')
                            ->title('Gender')
                            ->width(50);

                    /* $command = new \Kendo\UI\GridColumn();
                      $command->addCommandItem('destroy')
                      ->title('&nbsp;')
                      ->width(110); */

                    $grid->addColumn($firstNameField, $middleNameField, $lastNameField, $dateOfBirthField, $genderField)
                            ->dataSource($dataSource)
//                    ->addToolbarItem(new \Kendo\UI\GridToolbarItem('create'), new \Kendo\UI\GridToolbarItem('save'), new \Kendo\UI\GridToolbarItem('cancel'))
//                    ->editable(true)
                            ->height(150);

                    //Output the grid by echo-ing the result of the render method.
                    echo $grid->render();
                    ?>
                </div>
            </div>
            <hr>

            <hr>

            <footer>
                <p>&copy; Team4G</p>
            </footer>

        </div>
    </body>
</html>
