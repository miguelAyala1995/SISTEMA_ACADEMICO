<?php
include "../conexion.php"; //incluir el archivo de la conexion
$docente = $_POST['docente']; // recibir datos y guardando en una variable $ocente
$usuario = $_POST['usuario']; // recibir datos y guardando en una variable $usuario
$password = $_POST['password']; // recibir datos y guardando en una variable $password

$password_fuerte= password_hash($password, PASSWORD_DEFAULT); //encriptacion del password

$consulta = "INSERT INTO usuario_docentes (id_docente, usuario, password) VALUES ('$docente', '$usuario', '$password_fuerte')"; //insertar valores 
$ejec_consulta =mysqli_query($conexion, $consulta); //ejecutar la consulta

if ($ejec_consulta) {  //validar la consulta
    echo "<script>
      alert('registro satisfactorio');
      window.location = '../login.php';
    </script>";
} else{
    echo "<script>
    alert('error de registro');
    window.history. back();
  </script>";
}
?>