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

            // Configure the remote service - a PHP file called 'products.php'
// The query string parameter 'type' specifies the type of CRUD operation
            $transport = new \Kendo\Data\DataSourceTransport();

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

// Configure the transport. Send all data source parameters as JSON using the parameterMap setting.
            $transport->create($create)
                    ->read($read)
                    ->update($update)
                    ->destroy($destroy)
                    ->parameterMap('function(data) {
              return kendo.stringify(data);
          }');

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

// Configure the schema to accept the format returned by DataSourceResult
            $schema = new \Kendo\Data\DataSourceSchema();
            $schema->data('data')
                    ->errors('errors')
                    ->model($model)
                    ->total('total');

            $dataSource = new \Kendo\Data\DataSource();

            $dataSource->transport($transport)
                    ->batch(true)
                    ->schema($schema);
            ?>
        </div>
    </body>
</html>