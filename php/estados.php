<?php
include "../conexion.php";

	$result = 'SELECT * FROM edificio';
	//LIMIT 1 se lo saqué
	 $stmt = $conn->prepare($result); 

	if($stmt===false) {
		trigger_error('Wrong SQL: ' . $result . ' Error: ' . $conn->error, E_USER_ERROR);
	}

	$stmt->execute();

	$rs=$stmt->get_result(); 

	if($row=$rs->fetch_assoc()){

      	echo'<div class="row">
		 <div class="col-sm-2 col-md-2"></div>
	     <div class="col-sm-8 col-md-8">
	     	<div>
				Nombre:'.$row['nombre'].'
			</div></br></br></br>
		 </div>
		 <div class="col-sm-2 col-md-2"></div>
		 </div>';
	}
?>