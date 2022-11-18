<?php

include "../conexion.php"; //incluir el archivo de la conexion
$usuario = $_POST['usuario']; // recibir datos de login.php
$password = $_POST['password']; // recibir datos y guardando en una variable $password

$sql = "SELECT * FROM usuarios_docentes WHERE usuario='$usuario' ORDER BY id LIMIT 1";//select buscar, buscar en la tabla docentes,consulta de busqueda
$ejecutar_consulta= mysqli_query($conexion, $sql); //ejecutar la consulta
$contar_filas = mysqli_num_rows($ejecutar_consulta); //cuenta las filas devueltas de la consulta
$resultado_consulta =mysqli_fetch_array($ejecutar_consulta); //desfragmentar respuesta
$pass=$resultado_consulta ['password']; //captura la contraseña de la base de datos
if ($contar_filas==1 && password_verify($password,$pass)) {  //validar la consulta 
    echo "Vienvenido al reino";
    
} else{
    echo "usuario o contraseña incorrecta"; 
}

//echo $usuario.$password; //para una prueba

?>