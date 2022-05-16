<?php

 function createState(){

    include 'conexion.php';

    $query = $conn -> query ("SELECT * FROM state");
 
    $html='<option selected></option>';

    while ($valores = mysqli_fetch_array($query)) {
        $html.='<option value="'.$valores[id_state].'">'.$valores[name].'</option>';
    }
    
    return $html;
 }
?>