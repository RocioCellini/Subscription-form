<?php

include '../librerias/PHPExcel/IOFactory.php';
include 'conexion.php';

$fname = "../csv/states.csv";

try
{
    $con = mysqli_connect($DBServer, $DBUser, $DBPass, $DBName);

    $obj = \PHPExcel_IOFactory::load($fname);
    $obj->setActiveSheetIndex(0);
    $data = $obj->getActiveSheet()->toArray(null, true, true, true);

    $columns = implode(",", array_values($data[1]));

    for ($i=2; $i<=count($data); $i++)
    {
        $sql = "INSERT INTO state ($columns) VALUES ('" . implode("','",array_values($data[$i])) . "')";
        mysqli_query($con, $sql);
    }
    echo '<link rel="stylesheet" href="../css/bootstrap-5.1.3/css/bootstrap.min.css">';
    echo '<div class="alert alert-success" role="alert">Successfully imported excel file to mysql!</div>';
}
catch(Exception $err)
{
    die('Error ' . $err->getMessage());
}
mysqli_close($con);

?>