<?php

        //create a PDO connection
        $link = mysql_pconnect("localhost", "root", "Dream1234") or die("Unable To Connect To Database Server");
        $db = mysql_select_db("products") or die("Unable To Connect To Products");

//         $arr = array();
//
//        $rs = mysql_query("SELECT EmployeeID, LastName, FirstName FROM Employees");
//
//       while($obj = mysql_fetch_object($rs)) {
//              $arr[] = $obj;
//       }
//       echo "{\"data\":" .json_encode($arr). "}";
//        $db = new PDO('sqlite:../products');

        //Get the current operation type. Available as the type query string parameter.
        $type = $_GET['type'];
        //variable that will be returned as result of the operation
        $result = null;

        //create
        if ($type == 'create') {
            // In batch mode the inserted records are available in the 'models' field
            $createdProducts = $request->models;

            // Will store the ProductID fields of the inserted records
            $result = array();

            foreach ($createdProducts as $product) {
                // Create SQL INSERT statement
                $statement = $db->prepare('INSERT INTO Products (ProductName, UnitPrice, UnitsInStock, Discontinued) VALUES (:productName, :unitPrice, :unitsInStock, :discontinued)');

                // Bind parameter values
                $statement->bindValue(':productName', $product->ProductName);
                $statement->bindValue(':unitPrice', $product->UnitPrice);
                $statement->bindValue(':unitsInStock', $product->UnitsInStock);
                $statement->bindValue(':discontinued', $product->Discontinued);

                // Execute the statement
                $statement->execute();

                // Set ProductID to the last inserted ID (ProductID is auto-incremented column)
                $product->ProductID = $db->lastInsertId();

                // The result of the 'create' operation is all inserted products
                $result[] = $product;
            }
        }

        //read
        if ($type == 'read') {
            // Create SQL SELECT statement
            $statement = mysql_query('SELECT * FROM Products');

            // Execute the statement
            while($obj = mysql_fetch_object($statement)) {
                    $result[] = $obj;
             }
//             echo "{\"data\":" .json_encode($result). "}";
//            $statement->execute();

            // The result of the 'read' operation is all products from the Products table
//            $result = $statement->fetchAll(PDO::FETCH_ASSOC);
        }

            //update
            if ($type == 'update') {
                // in batch mode the updated records are available in the 'models' field
                $updatedProducts = $request->models;

                foreach ($updatedProducts as $product) {
                    // Create UPDATE SQL statement
                    $statement = $db->prepare('UPDATE Products SET ProductName = :productName, UnitPrice = :unitPrice, UnitsInStock = :unitsInStock, Discontinued = :discontinued WHERE ProductID = :productID');

                    // Bind parameter values
                    $statement->bindValue(':productID', $product->ProductID);
                    $statement->bindValue(':productName', $product->ProductName);
                    $statement->bindValue(':unitPrice', $product->UnitPrice);
                    $statement->bindValue(':unitsInStock', $product->UnitsInStock);
                    $statement->bindValue(':discontinued', $product->Discontinued);

                    // Execute the statement
                    $statement->execute();
                }
            }

            //destroy
            if ($type == 'destroy') {
                // in batch mode the destroyed records are available in the 'models' field
                $destroyedProducts = $request->models;

                foreach($destroyedProducts as $product) {
                    // Create DELETE SQL statement
                    $statement = $db->prepare('DELETE FROM Products WHERE ProductID = :productID');

                    // Bind parameter values
                    $statement->bindValue(':productID', $product->ProductID);

                    // Execute the statement
                    $statement->execute();
                }
            }

            //return result of operation as JSON
            // Set response content type
                header('Content-Type: application/json');

                echo json_encode($result);
        ?>