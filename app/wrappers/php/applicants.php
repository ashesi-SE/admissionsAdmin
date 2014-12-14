<?php
session_start(); //start session
if (!isset($_SESSION['username'])) { //check if the user data is in the session
    header("location: login.php"); //if not redirect back to user
}
?>

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
        <link href="bootstrap.min.css" rel="stylesheet">

        <link rel="stylesheet" href="../../styles/kendo.dataviz.min.css" />
        <link rel="stylesheet" href="../../styles/kendo.dataviz.default.min.css" />

        <script src="../../js/jquery.min.js"></script>
        <script src="../../js/kendo.web.min.js"></script>
 
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
                   <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li ><a href="admissions.php"><b>Admissions </b><i class="icon-chevron-right"></i></a></li>
                            <li ><a href="applications.php"><b>Applications </b><i class="icon-chevron-right"></i></a></li>
                            <li class="active" ><a href="applicants.php"> <b>Applicants</b> <i class="icon-chevron-right"></i></a></li>
                            <li><a href="ashesiSiblings.php"> <b>Ashesi Siblings</b> <i class="icon-chevron-right"></i></a></li>
                            <li><a href="seasons.php"> <b>Seasons</b> <i class="icon-chevron-right"></i></a></li> 
                            <li ><a href="users.php"> <b>Users</b> <i class="icon-chevron-right"></i></a></li>
                            <li  ><a href="logs.php"> <b>Logs</b> <i class="icon-chevron-right"></i></a></li>
                        </ul>
                    </div><!--/.nav-collapse -->

                    <div class="top-right-corner">
                        <span class="white-text">USERS|</span>
                        <span><a id="logout" href="AdminLOG.php">LOG OUT</a></span>
                    </div>
                </div>
            </div>
        </div>

        <div >
            <h1><center><i>APPLICANTS</i></center></h1>
            <br>
            <?php
            require_once 'lib/DataSourceResult.php';
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
                    ->parameterMap('function(data) {return kendo.stringify(data);}');

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
                    ->addField($emailPrimaryField)
                    ->addField($emailSecondaryField)
                    ->addField($lastNameField)
                    ->addField($dateOfBirthField)
                    ->addField($genderField);

            $schema = new \Kendo\Data\DataSourceSchema();

            $schema->model($model);

            $dataSource = new \Kendo\Data\DataSource();

            // Configure data source - set transport, schema and enable batch mode
            $dataSource->transport($transport)
                    ->pageSize(1)
                    ->schema($schema)
                    ->batch(true);


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
                    ->format('{0:MM/dd/yyyy}')
                    ->width(50);
            $emailPrimaryField = new \kendo\UI\GridColumn();
            $emailPrimaryField->field('email_primary')
                    ->title('Primary Email')
                    ->width('50');

            $emailSecondaryField = new \kendo\UI\GridColumn();
            $emailSecondaryField->field('email_secondary')
                    ->title('Secondary Email')
                    ->width('50');

            $genderField = new \Kendo\UI\GridColumn();
            $genderField->field('gender')
                    ->title('Gender')
                    ->width(50);

            $command = new \Kendo\UI\GridColumnCommandItem();
            $command->click('commandClick')
                    ->text('Details');

            $commandColumn = new \Kendo\UI\GridColumn();
            $commandColumn->addCommandItem($command)
                    ->title('&nbsp;')
                    ->width(40);

            $grid->addColumn($firstNameField, $middleNameField, $lastNameField, $dateOfBirthField, $genderField, $emailPrimaryField, $emailSecondaryField, $commandColumn)
                    ->dataSource($dataSource)
                    ->sortable(true)
                    ->filterable(true)
                    ->pageable(true)
                    //                    ->addToolbarItem(new \Kendo\UI\GridToolbarItem('create'), new \Kendo\UI\GridToolbarItem('save'), new \Kendo\UI\GridToolbarItem('cancel'))
                    //                    ->editable(true)
                    ->height(150);

            //Output the grid by echo-ing the result of the render method.
            echo $grid->render();
            $window = new \Kendo\UI\Window('details');
            $window->title('Applicants\' Details')
                    ->modal(true)
                    ->visible(false)
                    ->resizable(false)
                    ->height(300)
                    ->width(600);

            echo $window->render();
            ?>

            <script type="text/x-kendo-template" id="template">
                <div id="">
                    <table class="table table-bordered table-hover">
                        <tr>
                            <th>Firstname</th>
                            <td>#= first_names #</td>
                        </tr>
                        <tr>
                            <th>lastname</th>
                            <td>#= last_names #</td>
                        </tr>
                        <tr>
                            <th>Gender</th>
                            <td>#= gender #</td>
                        </tr>
                        <tr>
                            <th>Date of Birth</th>
                            <td>#= dob #</td>
                        </tr>
                        <tr>
                            <th>Primary Email</th>
                            <td>#= email_primary #</td>
                        </tr>
                        <tr>
                            <th>Secondary Email</th>
                            <td>#= email_secondary #</td>
                        </tr>
                    </table>

                    <!--                            <h2>#= first_names # #= last_names #</h2>
                                                <em>#= gender #</em>
                                                <dl>
                                                    <dt>Date of Birth: #= dob #</dt>
                                                    <dt>Primary Email: #= email_primary #</dt>
                                                </dl>-->
                </div>
            </script>

            <script>
                var detailsTemplate = kendo.template($("#template").html());

                function commandClick(e) {
                    e.preventDefault();

                    var dataItem = this.dataItem($(e.currentTarget).closest("tr"));
                    var wnd = $("#details").data("kendoWindow");

                    wnd.content(detailsTemplate(dataItem));
                    wnd.center().open();
                }
            </script>



        </div>
    </body>
</html>
