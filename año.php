<?php

$inicio = $_REQUEST['yearini'];
$final = $_REQUEST['yearfin'];
$i = $inicio;

while (($i >= $inicio) && ($i <= $final)) {
    if (($i % 4 == 0) || ($i % 400 == 0)) {
        echo "El año <b>$i</b> es  bisiesto <br>";
    }
    $i++;
}
?>