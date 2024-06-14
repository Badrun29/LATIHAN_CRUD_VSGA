<?php
include 'koneksi.php';
$idPesanan = $_GET['id'];

$query = "DELETE from tb_pemesanan WHERE idPesanan ='$idPesanan'";

$sql = mysqli_query($connect, $query);


if ($sql) { 
    echo "<script type='text/javascript'>
        alert('Berhasil Hapus');
        window.location.href = 'pemesanan.php';
    </script>";
} else {
    echo "<script type='text/javascript'>
        alert('Gagal Input');
        window.location.href = 'pemesanan.php';
    </script>";
}



?>