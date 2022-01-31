-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jan 2022 pada 15.54
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistempakarikanlele`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `code_gejala` varchar(255) DEFAULT NULL,
  `nama_gejala` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `code_gejala`, `nama_gejala`) VALUES
(1, 'G001', 'Bintik-bintik putih tumbuh pada permukaan kulit dan insang  ?'),
(2, 'G002', 'Kerusakan pada bagian dada dan insang ?'),
(3, 'G003', 'Ikan sering menggosokan badannya pada dinding kolam ?'),
(4, 'G004', 'Ikan banyak mengambang ?'),
(5, 'G005', 'Keluar lendir ?'),
(6, 'G006', 'Pembengkakan pada pangkal sirip ?'),
(7, 'G007', 'Luka-luka disekujur tubuh ikan ?'),
(8, 'G008', 'Ikan banyak mengambang ?'),
(9, 'G009', 'Gerakan renang lambat ?'),
(10, 'G010', 'Badan ikan kuning ?'),
(11, 'G011', 'Insang dan organ dalam berwarna kuning jika dilakukan pembedahan ?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakar`
--

CREATE TABLE `pakar` (
  `id_pakar` int(11) NOT NULL,
  `id_gejala` varchar(255) DEFAULT NULL,
  `jawaban_tidak` varchar(255) DEFAULT NULL,
  `jawaban_iya` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pakar`
--

INSERT INTO `pakar` (`id_pakar`, `id_gejala`, `jawaban_tidak`, `jawaban_iya`) VALUES
(1, 'G001', 'G003', 'G002'),
(2, 'G002', 'P001', 'P001'),
(3, 'G003', 'G006', 'G004'),
(4, 'G004', 'P002', 'G005'),
(5, 'G005', 'G006', 'P002'),
(6, 'G006', 'G010', 'G007'),
(7, 'G007', 'P003', 'G008'),
(8, 'G008', 'P003', 'G009'),
(9, 'G009', 'P003', 'P003'),
(10, 'G010', '0', 'G011'),
(11, 'G011', 'P004', 'P004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `code_penyakit` varchar(255) DEFAULT NULL,
  `nama_penyakit` varchar(255) DEFAULT NULL,
  `solusi_penyakit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `code_penyakit`, `nama_penyakit`, `solusi_penyakit`) VALUES
(1, 'P001', 'Bintik Putih', 'Wajib mempertahankan suhu air dan rendam dengan larutan formalin 25 cc/m3'),
(2, 'P002', 'Penyakit gatal', 'Memperbaiki manajemen pemeliharaan, menjaga kebersihan kolam dan berikan pakan yang baik'),
(3, 'P003', 'Cotton Wall Disease', 'Mempertahankan suhu air 280c, pemberian obat oksitetrasiklin dosis 50 mg/kg untuk setiap 1 kg pakan selama 7 – 10 hari.'),
(4, 'P004', 'Penyakit Kuning', 'Menguras air di dalam kolam dan mengawasi pergerakan ikan dalam kolam khusus');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `pakar`
--
ALTER TABLE `pakar`
  ADD PRIMARY KEY (`id_pakar`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pakar`
--
ALTER TABLE `pakar`
  MODIFY `id_pakar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
