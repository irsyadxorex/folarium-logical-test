<?php
for ($i = 1; $i <= 5; $i++) {
	$bilangan_random = rand(1, 100);
	if ($bilangan_random % 5 == 0) {
		// echo $bilangan_random . "<br>";
		if ($bilangan_random <= 60) {
			echo $bilangan_random . " Kurang" . "<br>";
		} elseif ($bilangan_random <= 70) {
			echo $bilangan_random . " Cukup" . "<br>";
		} elseif ($bilangan_random <= 80) {
			echo $bilangan_random . " Baik" . "<br>";
		} else {
			echo $bilangan_random . " Luar Biasa" . "<br>";
		}
	} else {
		$i--;
	}
}
