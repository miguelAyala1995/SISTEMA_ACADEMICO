<?php
  // Para la conexion se necesita el servidor que por defecto es localhost - usuario: que es root - contraseña: em MAC se pone *root* pero en windows no es obligarotio y el nombre de la base de datos que queremos usar
  
    $conexion =mysqli_connect("localhost","root","","sistema_academico");
    //$conexion =mysqli_connect("localhost","root","root","sistema_academico");

    if ($conexion) {

    } else {
       echo "conexion fallida";
    }
    $conexion->set_charset('utf8');
?>