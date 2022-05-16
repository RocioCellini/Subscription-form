<?php
$path = 'php/conexion.php';

if (file_exists($path)) {
    include 'php/conexion.php';
} 
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Suscripciones</title>
     <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap-5.1.3/css/bootstrap.min.css">
    <link href="css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="row">
        <div class="col-md-3"></div>

        <div class="col-md-3">            
            <h2>Formulario de susripción.</h2>
            <form class="form-horizontal" id="form-suscripcion" name="form" action="php/insert-user.php" method="post" novalidate>
                
                <div class="form-group">      
                    <label class="form-label">Email: </label>
                    <input data-validation="email" type="email" class="form-control" id="email" name="email">         
                    
                    <span class="text-danger" id="error-email" style="visibility:hidden;">Ingresa un email valido</span>
            
                </div>


                <div class="form-group">
                    <label class="form-label">Estado: </label>
                    <select class="form-select" id="state" name="select_state">
                        <option selected></option>
                            <?php
                            $query = $conn -> query ("SELECT * FROM state");
                            while ($valores = mysqli_fetch_array($query)) {
                                echo '<option value="'.$valores[id_state].'">'.$valores[name].'</option>';
                            }
                            ?>
                    </select>      
                    <span class="text-danger" id="error-state" style="visibility:hidden;">Ingresa un estado valido</span>      
                </div>
                

                <div class="form-group">   
                    <input type="hidden" name="accion" value="saveUser">
                    <button type="reset" class="btn btn-secondary">Borrar</button>      
                    <button type="submit" class="btn btn-primary" value="enviar">Enviar</button>       
                </div>
        
            </form>
        </div>
        <div class="col-md-3"></div>
        </div>


    <!-- JS -->
    <script src="js/validation.js"></script>  
</body>
</html>