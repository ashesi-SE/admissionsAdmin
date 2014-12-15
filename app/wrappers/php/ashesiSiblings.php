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
                            <li class="active"><a href="ashesiSiblings.php"> <b>Ashesi Siblings</b> <i class="icon-chevron-right"></i></a></li>
                            <li><a href="seasons.php"> <b>Seasons</b> <i class="icon-chevron-right"></i></a></li> 
                            <li ><a href="users.php"> <b>Users</b> <i class="icon-chevron-right"></i></a></li>   
                            <li  ><a href="logs.php"> <b>Logs</b> <i class="icon-chevron-right"></i></a></li>
                        </ul>
                    </div><!--/.nav-collapse -->


                </div>
            </div>
        </div>


     
        <div >
            <div class="span3">
                <a href="export.php?type=read_ashesiSiblings" class="btn btn-large btn-danger">EXPORT As CSV</a> 
            </div>
            <h1><center><i>ASHESI SIBLINGS</i></center></h1>
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

            $read->url('grid.php?type=read_ashesiSiblings')
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

            $ashesiSiblingIDField = new \Kendo\Data\DataSourceSchemaModelField('ashesi_sibling_id');
            $ashesiSiblingIDField->type('number')
                    ->editable(false)
                    ->nullable(true);

            $admissionIDField = new \Kendo\Data\DataSourceSchemaModelField('admission_id');
            $admissionIDField->type('number')
                    ->editable(false)
                    ->nullable(true);

            $applicationIDField = new \Kendo\Data\DataSourceSchemaModelField('application_id');
            $applicationIDField->type('number')
                    ->editable(false)
                    ->nullable(true);

            $nameField = new \Kendo\Data\DataSourceSchemaModelField('name');
            $nameField->type('string')
                    ->validation(array('required' => true));

            $relationshipField = new \Kendo\Data\DataSourceSchemaModelField('relationship');
            $relationshipField->type('string');

            $yearField = new \Kendo\Data\DataSourceSchemaModelField('year');
            $yearField->type('string');

            $creatorField = new \Kendo\Data\DataSourceSchemaModelField('creator');
            $creatorField->type('string');

            $datecreatedField = new \Kendo\Data\DataSourceSchemaModelField('created');
            $datecreatedField->type('date');

            $dateModifiedField = new \Kendo\Data\DataSourceSchemaModelField('modified');
            $dateModifiedField->type('date');

            $model->id('ashesi_sibling_id')
                    ->addField($nameField)
                    ->addField($relationshipField)
                    ->addField($yearField)
                    ->addField($datecreatedField)
                    ->addField($creatorField);

            $schema = new \Kendo\Data\DataSourceSchema();

            $schema->model($model);

            $dataSource = new \Kendo\Data\DataSource();

            // Configure data source - set transport, schema and enable batch mode
            $dataSource->transport($transport)
                    ->pageSize(1)
                    ->schema($schema)
                    ->batch(true);

            $grid = new \Kendo\UI\Grid('grid');

            $nameField = new \Kendo\UI\GridColumn();
            $nameField->field('name')
                    ->width(50)
                    ->title('Name');

            $relationshipField = new \Kendo\UI\GridColumn();
            $relationshipField->field('relationship')
                    ->width(50)
                    ->title('Relationship');

            $yearField = new \Kendo\UI\GridColumn();
            $yearField->field('year')
                    ->title('Year')
                    ->width(20);

            $datecreatedField = new \Kendo\UI\GridColumn();
            $datecreatedField->field('created')
                    ->title('Date Created')
                    ->width(20);

            $creatorField = new \Kendo\UI\GridColumn();
            $creatorField->field('creator')
                    ->title('Creator')
                    ->width(50);

            /* $command = new \Kendo\UI\GridColumn();
              $command->addCommandItem('destroy')
              ->title('&nbsp;')
              ->width(110); */

            $grid->addColumn($nameField, $relationshipField, $yearField, $datecreatedField, $creatorField)
                    ->dataSource($dataSource)
                    ->sortable(true)
                    ->filterable(true)
                    ->pageable(true)
//                    ->addToolbarItem(new \Kendo\UI\GridToolbarItem('create'), new \Kendo\UI\GridToolbarItem('save'), new \Kendo\UI\GridToolbarItem('cancel'))
//                    ->editable(true)
                    ->height(150);

            //Output the grid by echo-ing the result of the render method.
            echo $grid->render();
            ?>


        </div>
    </body>
</html>
