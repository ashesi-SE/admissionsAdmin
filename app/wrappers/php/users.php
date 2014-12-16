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
                            <li ><a href="applications.php"><b>Applications </b><i class="icon-chevron-right"></i></a></li>
                            <li><a href="applicants.php"> <b>Applicants</b> <i class="icon-chevron-right"></i></a></li>
                            <li><a href="ashesiSiblings.php"> <b>Ashesi Siblings</b> <i class="icon-chevron-right"></i></a></li>
                            <li><a href="seasons.php"> <b>Seasons</b> <i class="icon-chevron-right"></i></a></li> 
                            <li class="active"><a href="users.php"> <b>Users</b> <i class="icon-chevron-right"></i></a></li>  
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
            <div class="span3">
                <a href="export.php?type=read_users" class="btn btn-large btn-danger">EXPORT As CSV</a> 
            </div>
            <h1><center><i>USERS</i></center></h1>
            <br>
            <?php
            require_once 'lib/Kendo/Autoload.php';

            $transport = new \Kendo\Data\DataSourceTransport();

            // Configure the remote service - a PHP file called 'products.php'
            // The query string parameter 'type' specifies the type of CRUD operation

            $create = new \Kendo\Data\DataSourceTransportCreate();

            $create->url('grid.php?type=create_users')
                    ->contentType('application/json')
                    ->type('POST');

            $read = new \Kendo\Data\DataSourceTransportRead();

            $read->url('grid.php?type=read_users')
                    ->contentType('application/json')
                    ->type('POST');

            $update = new \Kendo\Data\DataSourceTransportUpdate();

            $update->url('grid.php?type=update_users')
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

            $userIDField = new \Kendo\Data\DataSourceSchemaModelField('user_id');
            $userIDField->type('number')
                    ->editable(false)
                    ->nullable(false);

            $fistnameField = new \Kendo\Data\DataSourceSchemaModelField('firstName');
            $fistnameField->type('string')
                    ->validation(array('required' => true));

            $middlenameField = new \Kendo\Data\DataSourceSchemaModelField('middleName');
            $middlenameField->type('string');

            $lastnameField = new \Kendo\Data\DataSourceSchemaModelField('lastName');
            $lastnameField->type('string');

            $emailField = new \Kendo\Data\DataSourceSchemaModelField('email');
            $emailField->type('string')
                    ->editable(true)
                    ->nullable(false);

            $roleField = new \Kendo\Data\DataSourceSchemaModelField('role');
            $roleField->type('string')
                    ->editable(true)
                    ->nullable(false);

            $isConfirmedField = new \Kendo\Data\DataSourceSchemaModelField('isConfirmed');
            $isConfirmedField->type('boolean')
                    ->editable(true)
                    ->nullable(true);

            $statusField = new \Kendo\Data\DataSourceSchemaModelField('status');
            $statusField->type('string')
                    ->editable(true)
                    ->nullable(false);


            $creatorField = new \Kendo\Data\DataSourceSchemaModelField('creator');
            $creatorField->type('string');

            $datecreatedField = new \Kendo\Data\DataSourceSchemaModelField('created');
            $datecreatedField->type('date');

            $dateModifiedField = new \Kendo\Data\DataSourceSchemaModelField('modified');
            $dateModifiedField->type('date');

            $model->id('user_id')
                    ->addField($fistnameField)
                    ->addField($middlenameField)
                    ->addField($lastnameField)
                    ->addField($emailField)
                    ->addField($roleField)
                    ->addField($isConfirmedField)
                    ->addField($statusField);

            $schema = new \Kendo\Data\DataSourceSchema();

            $schema->model($model);

            $dataSource = new \Kendo\Data\DataSource();

            // Configure data source - set transport, schema and enable batch mode
            $dataSource->transport($transport)
                    ->pageSize(10)
                    ->schema($schema)
                    ->batch(true);

            $grid = new \Kendo\UI\Grid('grid');

            $fistnameField = new \Kendo\UI\GridColumn();
            $fistnameField->field('firstName')
                    ->width(30)
                    ->title('Firstname');

            $middlenameField = new \Kendo\UI\GridColumn();
            $middlenameField->field('middleName')
                    ->title('Middlename')
                    ->width(40);

            $lastnameField = new \Kendo\UI\GridColumn();
            $lastnameField->field('lastName')
                    ->width(25)
                    ->title('Lastname');

            $emailField = new \Kendo\UI\GridColumn();
            $emailField->field('email')
                    ->title('Email')
                    ->width(40);

            $roleField = new \Kendo\UI\GridColumn();
            $roleField->field('role')
                    ->title('Role')
                    ->width(40);

            $isConfirmedField = new \Kendo\UI\GridColumn();
            $isConfirmedField->field('isConfirmed')
                    ->title('Confirmed')
                    ->width(50);

            $statusField = new \Kendo\UI\GridColumn();
            $statusField->field('status')
                    ->title('status')
                    ->width(30);

//                    $command = new \Kendo\UI\GridColumn();
//                    $command->addCommandItem(new \Kendo\UI\GridToolbarItem('Details'))
//                            /*->addCommandItem(new \Kendo\UI\GridToolbarItem('update'))*/
//                            ->title('&nbsp;')
//                            ->width(80);

            $grid->addColumn($fistnameField, $middlenameField, $lastnameField, $emailField, $roleField, $isConfirmedField, $statusField/* , $command */)
                    ->dataSource($dataSource)
                    ->sortable(true)
                    ->filterable(true)
                    ->pageable(true)
//                            ->addToolbarItem(new \Kendo\UI\GridToolbarItem('create'), new \Kendo\UI\GridToolbarItem('save'), new \Kendo\UI\GridToolbarItem('cancel'))
                    ->editable(true)
                    ->height(300);

            //Output the grid by echo-ing the result of the render method.
            echo $grid->render();
            ?>


        </div>
    </body>
</html>
