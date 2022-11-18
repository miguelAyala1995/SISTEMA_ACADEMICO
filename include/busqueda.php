<?php
function buscarGenero($conexion){
   $sql = "SELECT * FROM genero";
   return mysqli_query($conexion, $sql);
}

function buscarCargo($conexion){
    $sql = "SELECT * FROM cargo";
    return mysqli_query($conexion, $sql);
 }

 function buscarDescripcion($conexion){
    $sql = "SELECT * FROM condicion";
    return mysqli_query($conexion, $sql);
 }


?>