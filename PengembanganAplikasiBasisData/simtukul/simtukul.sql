-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 17 Sep 2024 pada 00.27
-- Versi server: 10.6.18-MariaDB-cll-lve-log
-- Versi PHP: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simtukul`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemakai`
--

CREATE TABLE `pemakai` (
  `id_user` int(5) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pemakai`
--

INSERT INTO `pemakai` (`id_user`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'mazvi', '6c42a74a5c85ade2d6e262d7b7d7069b', 'Mochammad Luthfi Rahmadi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas`
--

CREATE TABLE `tugas` (
  `id` int(5) NOT NULL,
  `matakul` varchar(32) DEFAULT NULL,
  `judul` varchar(64) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `jenis` int(2) DEFAULT 1 COMMENT '1 = individu, 2 = kelompok',
  `deadline` date DEFAULT NULL,
  `selesai` int(2) DEFAULT 0 COMMENT '0 = belum selesai, 1 = selesai',
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tugas`
--

INSERT INTO `tugas` (`id`, `matakul`, `judul`, `deskripsi`, `jenis`, `deadline`, `selesai`, `user_id`) VALUES
(2, 'Pemrograman Berorientasi Objek', 'Membuat program', 'Membuat dua buat program yang mengimplementaasikan:\r\n<ol>\r\n<li><h4>Pilih salah satu:</h4>\r\n<ul>\r\n<li>try - catch</li>\r\n<li>throw - catch</li>\r\n<li>throws - catch</li>\r\n<li>finnaly</li>\r\n</ul>\r\n</li>\r\n<li><h4>Buat exception sendiri</h4></li>\r\n</ol>\r\n<br>\r\nKetentuan:<br>\r\n<ul>\r\n<li>Tugas ini dipesentasikan oleh salah seorang dari anggota kelompok</li>\r\n<li>Programnya bisa jalan</li>\r\n<li>Presentasi bagus</li>\r\n</ul>', 2, '2024-08-17', 1, 1),
(6, 'Statistika', 'Mengerjakan Soal', 'Kerjakan soal masalah R tabel, Z tabel, T tabel, dan Chi Square', 2, '2024-09-13', 0, 1),
(7, 'Pemrograman Web', 'Membuat Web', 'Buatlah web dilengkapi dengan CRUD', 0, '2024-08-17', 1, 1),
(8, 'Analisis Algoritma', 'Presentasi Algoritma Greedy', 'Buat presentasi tentang algoritma greedy', 1, '2024-09-21', 0, 1),
(9, 'Teknologi Multimedia', 'Membuat Video', 'Buat video effek menghilang', 0, '2024-08-17', 1, 1),
(10, 'Komputer dan Masyarakat', 'Makalah', 'Membuat makalah tentang dampak positif dan negatif Teknologi informasi', 0, '2014-12-27', 0, 0),
(11, 'Praktikum Multimedia', 'Animasi After Effek', 'Membuat animisai sedehana dengan after effek', 1, '2024-09-30', 0, 1),
(12, 'Statistika', 'Tugas 2', 'Mengerjakan soal untuk tuas 2', 0, '2024-08-17', 1, 1),
(13, 'Praktikum Multimedia', 'Tugas akhir', 'Membuat paper tentang MANCOVA', 1, '2024-08-17', 0, 1),
(14, 'Pengembangan Aplikasi Basis Data', 'Tugas Akhir CPMK04', 'Tugas Akhir CPMK04', 2, '2024-09-20', 0, NULL),
(15, 'Artificial Intelligence', 'Pembuatan AI', 'Pembuatan AI', 0, '2024-09-20', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pemakai`
--
ALTER TABLE `pemakai`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pemakai`
--
ALTER TABLE `pemakai`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
