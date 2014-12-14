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
                            <li><a href="admissions.php"><b>Admissions </b><i class="icon-chevron-right"></i></a></li>
                            <li><a href="applications.php"><b>Applications </b><i class="icon-chevron-right"></i></a></li>
                            <li><a href="applicants.php"> <b>Applicants</b> <i class="icon-chevron-right"></i></a></li>
                            <li><a href="ashesiSiblings.php"> <b>Ashesi Siblings</b> <i class="icon-chevron-right"></i></a></li>
                            <li><a href="seasons.php"> <b>Seasons</b> <i class="icon-chevron-right"></i></a></li> 
                            <li><a href="users.php"> <b>Users</b> <i class="icon-chevron-right"></i></a></li>
                            <li class="active" ><a href="logs.php"> <b>Logs</b> <i class="icon-chevron-right"></i></a></li>
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
            <h1><center><i>LOGS</i></center></h1>
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

            $read->url('grid.php?type=read_logs')
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

            $logsIDField = new \Kendo\Data\DataSourceSchemaModelField('id');
            $logsIDField->type('number')
                    ->editable(false)
                    ->nullable(true);

            $typeField = new \Kendo\Data\DataSourceSchemaModelField('type');
            $typeField->type('string');
//                    ->validation(array('required' => true));

            $messageField = new \Kendo\Data\DataSourceSchemaModelField('message');
            $messageField->type('string');
            
            $datecreatedField = new \Kendo\Data\DataSourceSchemaModelField('created');
            $datecreatedField->type('date');

            $ipField = new \Kendo\Data\DataSourceSchemaModelField('ip');
            $ipField->type('string');

            $hostnameField = new \Kendo\Data\DataSourceSchemaModelField('hostname');
            $hostnameField->type('string');

            $uriField = new \Kendo\Data\DataSourceSchemaModelField('uri');
            $uriField->type('string');

            $referField = new \Kendo\Data\DataSourceSchemaModelField('refer');
            $referField->type('string');

            $model->id('id')
                    ->addField($typeField)
                    ->addField($messageField)
                    ->addField($datecreatedField)
                    ->addField($ipField)
                    ->addField($hostnameField)
                    ->addField($uriField)
                    ->addField($referField);

            $schema = new \Kendo\Data\DataSourceSchema();

            $schema->model($model);

            $dataSource = new \Kendo\Data\DataSource();

            // Configure data source - set transport, schema and enable batch mode
            $dataSource->transport($transport)
                    ->pageSize(10)
                    ->schema($schema)
                    ->batch(true);


            $grid = new \Kendo\UI\Grid('grid');

            $logsIDField = new \Kendo\UI\GridColumn();
            $logsIDField->field('id')
                    ->width(30)
                    ->title('ID');

            $typeField = new \Kendo\UI\GridColumn();
            $typeField->field('type')
                    ->width(30)
                    ->title('Type');

            $datecreatedField = new \Kendo\UI\GridColumn();
            $datecreatedField->field('created')
                    ->width(50)
                    ->title('Date Created');

            $ipField = new \Kendo\UI\GridColumn();
            $ipField->field('ip')
                    ->title('IP')
                    ->width(50);
            
            $hostnameField = new \kendo\UI\GridColumn();
            $hostnameField->field('hostname')
                    ->title('Primary Email')
                    ->width(50);

            $uriField = new \kendo\UI\GridColumn();
            $uriField->field('uri')
                    ->title('URI')
                    ->width(50);

            $referField = new \Kendo\UI\GridColumn();
            $referField->field('refer')
                    ->title('Gender')
                    ->width(50);


            $grid->addColumn($logsIDField, $typeField, $hostnameField, $datecreatedField, $ipField, $hostnameField, $uriField, $referField)
                    ->dataSource($dataSource)
                    ->sortable(true)
                    ->filterable(true)
                    ->pageable(true)
                    //                    ->addToolbarItem(new \Kendo\UI\GridToolbarItem('create'), new \Kendo\UI\GridToolbarItem('save'), new \Kendo\UI\GridToolbarItem('cancel'))
                    //                    ->editable(true)
                    ->height(150);
            echo $grid->render();
           ?>


        </div>
    </body>
</html>
