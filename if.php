<?php	

	for ($i=1; $i<=100  ; $i++) { 
		echo "La tabla del ".$i."<br>";
		for ($j=1; $j <= 12; $j++){
			echo $i. "*". $j. "=". $i*$j."<br>";
		}
		echo "<br>";
	}
?>