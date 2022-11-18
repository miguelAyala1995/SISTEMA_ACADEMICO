<?php
include "../conexion.php"; //incluir el archivo de la conexion
$dni = $_POST['dni']; // recibir datos y guardando en una variable $ocente
$apellidos_nombres = $_POST['apellidos_nombres']; // recibir datos y guardando en una variable $usuario
$fecha_nac = $_POST['fecha_nac']; // recibir datos y guardando en una variable $password
$direccion = $_POST['direccion']; // recibir datos y guardando en una variable $ocente
$correo = $_POST['correo']; // recibir datos y guardando en una variable $usuario
$telefono = $_POST['telefono']; // recibir datos y guardando en una variable $password
$id_genero = $_POST['id_genero']; // recibir datos y guardando en una variable $ocente
$nivel_educacion= $_POST['nivel_educacion']; // recibir datos y guardando en una variable $usuario
$cond_laboral = $_POST['cond_laboral']; // recibir datos y guardando en una variable $password
$id_cargo = $_POST['id_cargo']; // recibir datos y guardando en una variable $ocente
echo $dni.$apellidos_nombres;


$consulta = "INSERT INTO docente (dni, apellidos_nombres, fecha_nac, direccion, correo, telefono, id_genero, nivel_educacion, cond_laboral, id_cargo) VALUES ('$dni', '$apellidos_nombres', '$fecha_nac', '$direccion', '$correo','$telefono','$id_genero','$nivel_educacion','$cond_laboral','$id_cargo')"; //insertar valores 
$ejec_consulta =mysqli_query($conexion, $consulta); //ejecutar la consulta

if ($ejec_consulta) {  //validar la consulta 
    echo "<script>
      alert('resgistro satisfactorio');
      window.location = '../index2.php';
    </script>";
} else{
    echo "<script>
    alert('error de registro');
    window.history. back();
  </script>";
}
?>