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
      <!--  <style type="text/css">
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
                             <li class="active"><a href="admissions.php"><b>Admissions </b><i class="icon-chevron-right"></i></a></li>
                            <li ><a href="applications.php"><b>Applications </b><i class="icon-chevron-right"></i></a></li>
                            <li ><a href="applicants.php"> <b>Applicants</b> <i class="icon-chevron-right"></i></a></li>
                            <li><a href="ashesiSiblings.php"> <b>Ashesi Siblings</b> <i class="icon-chevron-right"></i></a></li>
                            <li><a href="seasons.php"> <b>Seasons</b> <i class="icon-chevron-right"></i></a></li> 
                            <li ><a href="users.php"> <b>Users</b> <i class="icon-chevron-right"></i></a></li> 
                            <li  ><a href="logs.php"> <b>Logs</b> <i class="icon-chevron-right"></i></a></li>
                        </ul>
                    </div><!--/.nav-collapse -->

                 <div class="top-right-corner">
                        <span class="white-text">USERS|</span>
                        <span><a id="logout" href="logout.php">LOG OUT</a></span>
                    </div>
                </div>
            </div>
        </div>
      
                <div>
                    <h1><center><i>ADMISSIONS</i></center></h1>
                    <br>
                    <?php
                    require_once 'lib/Kendo/Autoload.php';

                    $transport = new \Kendo\Data\DataSourceTransport();

                    // Configure the remote service - a PHP file called 'products.php'
                    // The query string parameter 'type' specifies the type of CRUD operation

                    $create = new \Kendo\Data\DataSourceTransportCreate();

                    $create->url('grid.php?type=create')
                            ->contentType('application/json')
                            ->type('POST');

                    $read = new \Kendo\Data\DataSourceTransportRead();

                    $read->url('grid.php?type=read_admissions')
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

                    $admissionsIDField = new \Kendo\Data\DataSourceSchemaModelField('admission_id');
                    $admissionsIDField->type('number')
                            ->editable(false)
                            ->nullable(true);

                    $applicationIDField = new \Kendo\Data\DataSourceSchemaModelField('application_id');
                    $applicationIDField->type('number')
                            ->editable(false)
                            ->nullable(true);

                    $majorField = new \Kendo\Data\DataSourceSchemaModelField('major');
                    $majorField->type('string')
                            ->validation(array('required' => true));

                    $appliedBeforeField = new \Kendo\Data\DataSourceSchemaModelField('applied_before');
                    $appliedBeforeField->type('boolean');

                    $appliedBeforeYearField = new \Kendo\Data\DataSourceSchemaModelField('applied_before_year');
                    $appliedBeforeYearField->type('date');

                    $wantsHousingField = new \Kendo\Data\DataSourceSchemaModelField('wants_housing');
                    $wantsHousingField->type('boolean');

                    $wantsFinAidField = new \Kendo\Data\DataSourceSchemaModelField('wants_fin_aid');
                    $wantsFinAidField->type('boolean');

                    $hasAshesiSiblingField = new \Kendo\Data\DataSourceSchemaModelField('has_ashesi_siblings');
                    $hasAshesiSiblingField->type('boolean');

                    $hasSponsorField = new \Kendo\Data\DataSourceSchemaModelField('has_sponsor');
                    $hasSponsorField->type('boolean');

                    $dismissedBeforeField = new \Kendo\Data\DataSourceSchemaModelField('dismissed_before');
                    $dismissedBeforeField->type('boolean');

                    $dismissedBeforeInstNameField = new \Kendo\Data\DataSourceSchemaModelField('dismissed_institution_name');
                    $dismissedBeforeInstNameField->type('string');

                    $dismissedBeforeInstLocationField = new \Kendo\Data\DataSourceSchemaModelField('dismissed_institution_location');
                    $dismissedBeforeInstLocationField->type('string');

                    $dismissedexplanationField = new \Kendo\Data\DataSourceSchemaModelField('dismissed_explanation');
                    $dismissedexplanationField->type('string');

                    $primaryLanguageField = new \Kendo\Data\DataSourceSchemaModelField('primary_language');
                    $primaryLanguageField->type('string');

                    $scholasticDitinctionField = new \Kendo\Data\DataSourceSchemaModelField('scholastic_distinction');
                    $scholasticDitinctionField->type('string');

                    $careerField = new \Kendo\Data\DataSourceSchemaModelField('career');
                    $careerField->type('string');

                    $creatorField = new \Kendo\Data\DataSourceSchemaModelField('creator');
                    $creatorField->type('string');

                    $datecreatedField = new \Kendo\Data\DataSourceSchemaModelField('created');
                    $datecreatedField->type('date');

                    $dateModifiedField = new \Kendo\Data\DataSourceSchemaModelField('modified');
                    $dateModifiedField->type('date');

                    $model->id('admission_id')
                            ->addField($majorField)
                            ->addField($appliedBeforeField)
                            ->addField($appliedBeforeYearField)
                            ->addField($wantsHousingField)
                            ->addField($wantsFinAidField);

                    $schema = new \Kendo\Data\DataSourceSchema();

                    $schema->model($model);

                    $dataSource = new \Kendo\Data\DataSource();

                    // Configure data source - set transport, schema and enable batch mode
                    $dataSource->transport($transport)
                            ->pageSize(10)
                            ->schema($schema)
                            ->batch(true);

                    $grid = new \Kendo\UI\Grid('grid');

                    $major = new \Kendo\UI\GridColumn();
                    $major->field('major')
                            ->width(50)
                            ->title('Major');

                    $appliedBefore = new \Kendo\UI\GridColumn();
                    $appliedBefore->field('applied_before')
                            ->width(50)
                            ->title('Applied Before');

                    $appliedBeforeYear = new \Kendo\UI\GridColumn();
                    $appliedBeforeYear->field('applied_before_year')
                            ->width(50)
                            ->title('Year Applied In Stock');

                    $wantsHousing = new \Kendo\UI\GridColumn();
                    $wantsHousing->field('wants_housing')
                            ->title('Wants Housing')
                            ->width(50);

                    $wantsFinAid = new \Kendo\UI\GridColumn();
                    $wantsFinAid->field('wants_fin_aid')
                            ->title('Wants Financial Aid')
                            ->width(50);

                    /* $command = new \Kendo\UI\GridColumn();
                      $command->addCommandItem('destroy')
                      ->title('&nbsp;')
                      ->width(110); */

                    $grid->addColumn($major, $appliedBefore, $appliedBeforeYear, $wantsHousing, $wantsFinAid)
                            ->dataSource($dataSource)
                            ->sortable(true)
                            ->filterable(true)
                            ->pageable(true)
//                    ->addToolbarItem(new \Kendo\UI\GridToolbarItem('create'), new \Kendo\UI\GridToolbarItem('save'), new \Kendo\UI\GridToolbarItem('cancel'))
//                    ->editable(true)
                            ->height(300);

                    //Output the grid by echo-ing the result of the render method.
                    echo $grid->render();
                    ?>
             

        </div>
    </body>
</html>
