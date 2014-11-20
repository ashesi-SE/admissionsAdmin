<!DOCTYPE html>
<html>
    <head>
        <title>Kendo UI Web Examples</title>
        <link href="content/shared/styles/suite.css" rel="stylesheet"/>

        <link href="../../styles/kendo.common.min.css" rel="stylesheet" type="text/css" />
        <link href="../../styles/kendo.default.min.css" rel="stylesheet" type="text/css" />
        <script src="../../js/jquery.min.js"></script>
        <script src="../../js/kendo.web.min.js"></script>
    </head>
    <body>
        <div id="page">

            <?php
            require_once 'lib/Kendo/Autoload.php';
            // Instantiate a new instance of the DatePicker class and specify its 'id'
            $datepicker = new \Kendo\UI\DatePicker('datepicker');

            // Configure the datepicker using the fluent API
            $datepicker->start('year')
                    ->format('MMMM yyyy');

            // Output the datepicker HTML and JavaScript by echo-ing the result of the render method
            echo $datepicker->render();
            ?>

            <?php
            $transport = new \Kendo\Data\DataSourceTransport();

            // Configure the remote service - a PHP file called 'products.php'
            // The query string parameter 'type' specifies the type of CRUD operation

            $create = new \Kendo\Data\DataSourceTransportCreate();

            $create->url('products.php?type=create')
                    ->contentType('application/json')
                    ->type('POST');

            $read = new \Kendo\Data\DataSourceTransportRead();

            $read->url('products.php?type=read')
                    ->contentType('application/json')
                    ->type('POST');

            $update = new \Kendo\Data\DataSourceTransportUpdate();

            $update->url('products.php?type=update')
                    ->contentType('application/json')
                    ->type('POST');

            $destroy = new \Kendo\Data\DataSourceTransportDestroy();

            $destroy->url('products.php?type=destroy')
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

            $productIDField = new \Kendo\Data\DataSourceSchemaModelField('ProductID');
            $productIDField->type('number')
                    ->editable(false)
                    ->nullable(true);

            $productNameField = new \Kendo\Data\DataSourceSchemaModelField('ProductName');
            $productNameField->type('string')
                    ->validation(array('required' => true));

            $unitPriceValidation = new \Kendo\Data\DataSourceSchemaModelFieldValidation();
            $unitPriceValidation->required(true)
                    ->min(1);

            $unitPriceField = new \Kendo\Data\DataSourceSchemaModelField('UnitPrice');
            $unitPriceField->type('number')
                    ->validation($unitPriceValidation);

            $unitsInStockField = new \Kendo\Data\DataSourceSchemaModelField('UnitsInStock');
            $unitsInStockField->type('number');

            $discontinuedField = new \Kendo\Data\DataSourceSchemaModelField('Discontinued');
            $discontinuedField->type('boolean');

            $model->id('ProductID')
                    ->addField($productIDField)
                    ->addField($productNameField)
                    ->addField($unitPriceField)
                    ->addField($unitsInStockField)
                    ->addField($discontinuedField);

            $schema = new \Kendo\Data\DataSourceSchema();

            $schema->model($model);

            $dataSource = new \Kendo\Data\DataSource();

            // Configure data source - set transport, schema and enable batch mode
            $dataSource->transport($transport)
                    ->batch(true)
                    ->schema($schema);

            $grid = new \Kendo\UI\Grid('grid');

            $productName = new \Kendo\UI\GridColumn();
            $productName->field('ProductName')
                    ->title('Product Name');

            $unitPrice = new \Kendo\UI\GridColumn();
            $unitPrice->field('UnitPrice')
                    ->format('{0:c}')
                    ->width(150)
                    ->title('Unit Price');

            $unitsInStock = new \Kendo\UI\GridColumn();
            $unitsInStock->field('UnitsInStock')
                    ->width(150)
                    ->title('Units In Stock');

            $discontinued = new \Kendo\UI\GridColumn();
            $discontinued->field('Discontinued')
                    ->width(100);

            $command = new \Kendo\UI\GridColumn();
            $command->addCommandItem('destroy')
                    ->title('&nbsp;')
                    ->width(110);

            $grid->addColumn($productName, $unitPrice, $unitsInStock, $discontinued, $command)
                    ->dataSource($dataSource)
                    ->addToolbarItem(new \Kendo\UI\GridToolbarItem('create'), new \Kendo\UI\GridToolbarItem('save'), new \Kendo\UI\GridToolbarItem('cancel'))
                    ->editable(true)
                    ->height(400);
            
            //Output the grid by echo-ing the result of the render method.
            echo $grid->render();

            ?>
        </div>
    </body>
</html>
