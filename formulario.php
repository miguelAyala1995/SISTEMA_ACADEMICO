<?php

    $a = 2011;

    if($a % 4 == 0 and ($a % 100 != 0 or $a % 400 ==0)){

        echo 'Si es bisiesto';
    }else{
        echo "No es bisiesto";
    }
?>