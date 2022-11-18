
<?php
include("conexion.php")
?>
<html>
    <head><title>Hola mundo este es mi primer hola mundo</title></head>
    <body>
        <?php
        $nombre="Miguel";
        $apellidos="Ayala";
        $semestre="VI ";
        $carrera="Computaciòn e Informàtica ";
        echo "Hola yo soy ".$nombre." ".$apellidos." del semestre ".$semestre."de la carrera de ".$carrera;//concatenar mensaje
        ?>
    </body>
</html>