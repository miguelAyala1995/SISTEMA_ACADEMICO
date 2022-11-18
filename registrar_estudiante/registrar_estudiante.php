<?php
include "../conexion.php"; //incluir el archivo de la conexion
$dni = $_POST['dni']; // recibir datos y guardando en una variable $ocente
$apellidos_nombres = $_POST['apellidos_nombres']; // recibir datos y guardando en una variable $usuario
$id_genero = $_POST['id_genero']; // recibir datos y guardando en una variable $ocente
$fecha_nac = $_POST['fecha_nac']; // recibir datos y guardando en una variable $password
$direccion = $_POST['direccion']; // recibir datos y guardando en una variable $ocente
$correo = $_POST['correo']; // recibir datos y guardando en una variable $usuario
$telefono = $_POST['telefono']; // recibir datos y guardando en una variable $password
$anio_ingreso = $_POST['anio_ingreso']; // recibir datos y guardando en una variable $ocente
$id_programa_estudios = $_POST['id_programa_estudios']; // recibir datos y guardando en una variable $ocente
$id_semestre= $_POST['id_semestre']; // recibir datos y guardando en una variable $usuario
$seccion = $_POST['seccion']; // recibir datos y guardando en una variable $password
$turno = $_POST['turno']; // recibir datos y guardando en una variable $ocente
$id_condicion = $_POST['id_condicion']; // recibir datos y guardando en una variable $ocente
$discapacidad = $_POST['discapacidad']; // recibir datos y guardando en una variable $ocente
echo $dni.$apellidos_nombres;


$consulta = "INSERT INTO estudiante (dni, apellidos_nombres,id_genero, fecha_nac, direccion, correo, telefono, anio_ingreso, id_programa_estudios, id_semestre, seccion, turno, id_condicion, discapacidad) VALUES ('$dni', '$apellidos_nombres', '$id_genero', '$fecha_nac', '$direccion', '$correo','$telefono','$anio_ingreso','$id_programa_estudios','$id_semestre','$seccion', '$turno', '$id_condicion', '$discapacidad' )"; //insertar valores 
$ejec_consulta =mysqli_query($conexion, $consulta); //ejecutar la consulta

if ($ejec_consulta) {  //validar la consulta 
    echo "<script>
      alert('resgistro satisfactorio');
      window.location = '../index3.php';
    </script>";
} else{
    echo "<script>
    alert('error de registro');
    window.history. back();
  </script>";
}
?>