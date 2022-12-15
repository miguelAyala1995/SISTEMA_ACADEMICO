<?php 
    include "../include/conexion.php";
    // obtenemos el valor de nuestro input con el metodo POST
    $cargo = $_POST['condicion'];

    // Realizamos la consulta de insertar
    $sql = "INSERT INTO condicion (descripcion) VALUES ('$cargo')";

    // Ejecutamos la consulta
    $ejec = mysqli_query($conexion, $sql);
    // verificamos por si hay errores
    if ($ejec) {
        echo "<script>
                alert('Registro Exitoso');
                window.location= '../condicion.php'
    			</script>";
	}else{
		echo "<script>
			alert('Error al registrar cargo');
			window.history.back();
			</script>
			";
	}
?>