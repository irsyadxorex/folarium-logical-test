<?php
$bilangan = [0, 1];
for ($i = 2; $i <= 100; $i++) {
	$bilangan[$i] = $bilangan[$i - 1] + $bilangan[$i - 2];
	if ($bilangan[$i] <= 100) {
		echo $bilangan[$i] . " ";
	}
}
