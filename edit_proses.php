<?php
include 'koneksi.php';
$idPesanan = $_GET['id'];
$nama = $_POST['name'];
$tgl = $_POST['tgl'];
$noTelp = $_POST['noTelp'];
$durasi = $_POST['durasi'];
$jenisKamar = $_POST['jenisKamar'];
$smoking = isset($_POST['smoking']) ? 1 : 0;
$breakfast = isset($_POST['breakfast']) ? 1 : 0;
$hargaPaket = $_POST['harga'];
$totalBiaya = $_POST['totalBiaya'];

$query = "UPDATE tb_pemesanan SET nama='$nama', tgl='$tgl', noTelp='$noTelp', durasi='$durasi', jenisKamar='$jenisKamar', smoking='$smoking', breakfast='$breakfast', hargaPaket='$hargaPaket', totalBiaya='$totalBiaya' WHERE idPesanan='$idPesanan'";

$sql = mysqli_query($connect, $query);


if ($sql) { 
    echo "<script type='text/javascript'>
        alert('Berhasil');
        window.location.href = 'pemesanan.php';
    </script>";
} else {
    echo "<script type='text/javascript'>
        alert('Gagal Input');
        window.location.href = 'pemesanan.php';
    </script>";
}



?>