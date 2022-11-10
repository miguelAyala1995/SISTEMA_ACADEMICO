<?php
// conexion utiliza servidor-usuario-password-base de datos
$conexion = mysqli_connect("localhost", "miguel", "HaHPgRudAV?f", "ceicom_miguel");
if ($conexion) {

} else {
   echo "conexion fallida";
}
?>