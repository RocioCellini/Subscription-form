<?php
include 'conexion.php';

function InsertUser ($conn, $email, $select_state) {	  
   
    $sql_insertUser='INSERT INTO subscription (id_subscription, id_state, email) VALUES (?, ? ,?)';

    $stmt_insert = $conn->prepare($sql_insertUser);
    if($stmt_insert === false) {
    trigger_error('Wrong SQL: ' . $sql_insertUser . ' Error: ' . $conn->error, E_USER_ERROR);
    }

    $id_subscription=NULL; 
    $stmt_insert->bind_param('iis', $id_subscription, $select_state, $email);

    $stmt_insert->execute();
    echo '<link rel="stylesheet" href="../css/bootstrap-5.1.3/css/bootstrap.min.css">';
    echo '<div class="alert alert-success" role="alert">¡Gracias por su suscripcion!</div>';
    echo '<div><button type="button" class="btn btn-link"><a href="../index.php">Volver</a></button></div>';

}

if (isset($_POST['accion']) and $_POST['accion']=="saveUser"){

    $email=$_POST['email']; 
    $select_state=$_POST['select_state']; 

    InsertUser ($conn, $email, $select_state);
}
?>