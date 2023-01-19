<?php
$arr = array("Jakarta", "Yogyakarta", "Bandung", "Bogor", "Semarang");

function checkKota($nama_kota, $daftar_kota)
{
	foreach ($daftar_kota as $dk) {
		if ($dk == $nama_kota) {
			return true;
		}
	}
}

$nama_kota = "Brebes";

if (checkKota($nama_kota, $arr)) {
	echo "Ada";
} else {
	echo "Tidak Ada";
};
