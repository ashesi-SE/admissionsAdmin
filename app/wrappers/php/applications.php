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
    <!--    <style type="text/css">
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
        <link rel="shortcut icon" href="ico/favicon.png">-->
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
                           <li><a href="admissions.php"><b>Admissions </b><i class="icon-chevron-right"></i></a></li>
                            <li class="active"><a href="applications.php"><b>Applications </b><i class="icon-chevron-right"></i></a></li>
                            <li><a href="applicants.php"> <b>Applicants</b> <i class="icon-chevron-right"></i></a></li>
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

                    $read->url('grid.php?type=read_applications')
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

                    $applicationIDField = new \Kendo\Data\DataSourceSchemaModelField('application_id');
                    $applicationIDField->type('number')
                            ->editable(false)
                            ->nullable(true);
                    
                    $seasonIDField = new \Kendo\Data\DataSourceSchemaModelField('season_id');
                    $seasonIDField->type('number')
                            ->editable(false)
                            ->nullable(true);
                    
                    $seasonNameField = new \Kendo\Data\DataSourceSchemaModelField('seasons.name');
                    $seasonNameField->type('string')
                            ->editable(false)
                            ->nullable(true);
                    $AppFirstNameField = new \Kendo\Data\DataSourceSchemaModelField('applicants.first_names');
                    $AppFirstNameField->type('string')
                            ->editable(false)
                            ->nullable(true);
                    $AppMiddleNameField = new \Kendo\Data\DataSourceSchemaModelField('applicants.middle_names');
                    $AppMiddleNameField->type('string')
                            ->editable(false)
                            ->nullable(true);
                    $AppLastNameField = new \Kendo\Data\DataSourceSchemaModelField('applicants.last_names');
                    $AppLastNameField->type('string')
                            ->editable(false)
                            ->nullable(true);
                    $paymentsFeeField = new \Kendo\Data\DataSourceSchemaModelField('payments.fee');
                    $paymentsFeeField->type('string')
                            ->editable(false)
                            ->nullable(true);
                    $paymentsStatusField = new \Kendo\Data\DataSourceSchemaModelField('payments.fee');
                    $paymentsStatusField->type('string')
                            ->editable(false)
                            ->nullable(true);
                    $faApplStatusField = new \Kendo\Data\DataSourceSchemaModelField('fa_applications.status ');
                    $faApplStatusField->type('string')
                            ->editable(false)
                            ->nullable(true);

                    $applicantsIDField = new \Kendo\Data\DataSourceSchemaModelField('applicant_id');
                    $applicantsIDField->type('number')
                            ->editable(false)
                            ->nullable(true);

                    $admissionsIDField = new \Kendo\Data\DataSourceSchemaModelField('admissions_id');
                    $admissionsIDField->type('number')
                            ->editable(false)
                            ->nullable(true);
                    
                    $schoolInfoSetField = new \Kendo\Data\DataSourceSchemaModelField('school_info_set');
                    $schoolInfoSetField->type('boolean')
                            ->editable(false)
                            ->nullable(true);

                    $acceptanceField = new \Kendo\Data\DataSourceSchemaModelField('acceptance');
                    $acceptanceField->type('string');
                            

                    $documentInfoSetField = new \Kendo\Data\DataSourceSchemaModelField('document_info_set');
                    $documentInfoSetField->type('boolean');

                    $extracurricularInfoSetField = new \Kendo\Data\DataSourceSchemaModelField('extracurricular_info_set');
                    $extracurricularInfoSetField->type('boolean');

                    $faApplicationIDField = new \Kendo\Data\DataSourceSchemaModelField('fa_application_id');
                    $faApplicationIDField->type('date');

                    $relativeInfoSetField = new \Kendo\Data\DataSourceSchemaModelField('relative_info_set');
                    $relativeInfoSetField->type('boolean');

                    $paymentIDField = new \Kendo\Data\DataSourceSchemaModelField('payment_id');
                    $paymentIDField->type('number');

                    $resultIDField = new \Kendo\Data\DataSourceSchemaModelField('result_id');
                    $resultIDField->type('number');

                    $travelInfoSetField = new \Kendo\Data\DataSourceSchemaModelField('travel_info_set');
                    $travelInfoSetField->type('boolean');

                    $workInfoSetField = new \Kendo\Data\DataSourceSchemaModelField('work_info_set');
                    $workInfoSetField->type('boolean');

                    $statusField = new \Kendo\Data\DataSourceSchemaModelField('status');
                    $statusField->type('string');

                    $creatorField = new \Kendo\Data\DataSourceSchemaModelField('creator');
                    $creatorField->type('string');

                    $datecreatedField = new \Kendo\Data\DataSourceSchemaModelField('created');
                    $datecreatedField->type('date');

                    $dateModifiedField = new \Kendo\Data\DataSourceSchemaModelField('modified');
                    $dateModifiedField->type('date');

                    $model->id('applicantion_id')
                            ->addField($applicationIDField)
                            ->addField($seasonNameField)
                            ->addField($AppFirstNameField)
                            ->addField($AppMiddleNameField)
                            ->addField($AppLastNameField)
                            ->addField($paymentsFeeField)
                            ->addField($paymentsStatusField)
                            ->addField($faApplStatusField);

                    $schema = new \Kendo\Data\DataSourceSchema();

                    $schema->model($model);

                    $dataSource = new \Kendo\Data\DataSource();

                    // Configure data source - set transport, schema and enable batch mode
                    $dataSource->transport($transport)
                            ->pageSize(10)
                            ->schema($schema)
                            ->batch(true);


                    $grid = new \Kendo\UI\Grid('grid');
                    
                    
                    $applicationsIDField = new \Kendo\UI\GridColumn();
                    $applicationsIDField->field('application_id')
                            ->width(30)
                            ->title('Application ID');

                    $seasonNameField = new \Kendo\UI\GridColumn();
                    $seasonNameField->field('season.name')
                            ->width(40)
                            ->title('Season');

                    $ApplNameField = new \Kendo\UI\GridColumn();
                    $ApplNameField->field('applicants.first_names','applicants.last_names','applicants.middle_names')
                            ->width(50)
                            ->title('Applicant Name');

                    $paymentsFeeField = new \Kendo\UI\GridColumn();
                    $paymentsFeeField->field('payments.fee')
                            ->title('Payment Fee')
                            ->width(50);
                    $paymentsStatusField = new \kendo\UI\GridColumn();
                    $paymentsStatusField->field('payments.status')
                            ->title('Payment Status')
                            ->width(50);

                    $faApplStatusField = new \kendo\UI\GridColumn();
                    $faApplStatusField->field('fa_applications.status')
                            ->title('FA Application Status')
                            ->width(50);

                    $extracurricularInfoSetField = new \Kendo\UI\GridColumn();
                    $extracurricularInfoSetField->field('extracurricular_info_set')
                            ->title('Extracurricular Info Set')
                            ->width(50);

                    $command = new \Kendo\UI\GridColumnCommandItem();
                    $command->click('commandClick')
                            ->text('Details');

                    $commandColumn = new \Kendo\UI\GridColumn();
                    $commandColumn->addCommandItem($command)
                            ->title('&nbsp;')
                            ->width(40);

                    $grid->addColumn($applicationsIDField, $seasonNameField, $ApplNameField, $paymentsFeeField, $paymentsStatusField, $faApplStatusField, $commandColumn)
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
                    $window->title('Applicantion\' Details')
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
