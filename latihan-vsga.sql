-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2024 pada 14.21
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan-vsga`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `idPesanan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `noTelp` varchar(15) NOT NULL,
  `durasi` tinyint(4) NOT NULL,
  `jenisKamar` varchar(7) NOT NULL,
  `smoking` tinyint(4) NOT NULL DEFAULT 0,
  `breakfast` tinyint(4) NOT NULL DEFAULT 0,
  `hargaPaket` double NOT NULL,
  `totalBiaya` double NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pemesanan`
--

INSERT INTO `tb_pemesanan` (`idPesanan`, `nama`, `noTelp`, `durasi`, `jenisKamar`, `smoking`, `breakfast`, `hargaPaket`, `totalBiaya`, `tgl`) VALUES
(7, 'Indra Rahma', '1125', 1, 'Deluxe', 1, 1, 1300000, 1300000, '2024-06-17'),
(8, 'dua dara', '13734', 2, 'Deluxe', 0, 1, 1100000, 2200000, '2024-06-18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`idPesanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  MODIFY `idPesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
