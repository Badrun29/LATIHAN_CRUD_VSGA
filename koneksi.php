<?php
$host = 'localhost';
$username = 'root';
$password = '';
$databaseName = 'latihan-vsga';

$connect = mysqli_connect($host, $username, $password, $databaseName);

if (!$connect) {
    die('Koneksi Gagal');
}
?>