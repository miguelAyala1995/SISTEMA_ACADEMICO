<?php
$conexion = mysqli_connect("localhost", "root", "root", "S_A");


if ($conexion) {
    # code...
} else {
    # code...
    echo "conexion fallida";
}

//$consulta = "SELECT * FROM estudiante";
//$resultado = mysqli_query($conexion, $consulta);//ejecuta la conexion 
//$cant_reg = mysqli_num_rows($resultado); //cuenta la cantidad de registros
    # code...
    //echo '<br>'.$cant_reg; //imprime la cantidad


?>