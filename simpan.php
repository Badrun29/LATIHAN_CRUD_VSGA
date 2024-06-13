<?php
include 'koneksi.php';

$nama = $_POST['name'];
$tgl = $_POST['tgl'];
$noTelp = $_POST['noTelp'];
$durasi = $_POST['durasi'];
$jenisKamar = $_POST['jenisKamar'];
$smoking = isset($_POST['smoking']) ? 1 : 0;
$breakfast = isset($_POST['breakfast']) ? 1 : 0;
$hargaPaket = $_POST['harga'];
$totalBiaya = $_POST['totalBiaya'];

$query = "INSERT INTO tb_pemesanan (nama, noTelp, durasi, jenisKamar, smoking, breakfast, hargaPaket, totalBiaya, tgl) VALUES ('$nama', '$noTelp', '$durasi', '$jenisKamar', '$smoking', '$breakfast', '$hargaPaket', '$totalBiaya', '$tgl')";

$sql = mysqli_query($connect, $query);


if ($sql) { 
    echo "<script type='text/javascript'>
        alert('Berhasil');
        window.location.href = 'formpemesanan.php';
    </script>";
} else {
    echo "<script type='text/javascript'>
        alert('Gagal Input');
        window.location.href = 'formpemesanan.php';
    </script>";
}



?>