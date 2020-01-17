-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jan 2020 pada 09.16
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab_infor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam`
--

CREATE TABLE `jam` (
  `id_jam` int(11) NOT NULL,
  `jam` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jam`
--

INSERT INTO `jam` (`id_jam`, `jam`) VALUES
(1, '07.00'),
(2, '07.30'),
(3, '08.00'),
(4, '08.30'),
(5, '09.00'),
(6, '09.30'),
(7, '10.00'),
(8, '10.30'),
(9, '11.00'),
(10, '11.30'),
(11, '12.00'),
(12, '12.30'),
(13, '13.00'),
(14, '13.30'),
(15, '14.00'),
(16, '14.30'),
(17, '15.00'),
(18, '15.30'),
(19, '16.00'),
(20, '16.30'),
(21, '17.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `kegiatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `kegiatan`) VALUES
(1, 'Mengerjakan Tugas'),
(2, 'Responsi'),
(3, 'Sidang'),
(4, 'Other');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab`
--

CREATE TABLE `lab` (
  `id_lab` int(11) NOT NULL,
  `kode_lab` text NOT NULL,
  `nama_lab` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lab`
--

INSERT INTO `lab` (`id_lab`, `kode_lab`, `nama_lab`, `image`) VALUES
(1, '1', 'Lab. Jaringan', 'ND_new.jpg'),
(2, '2', 'Lab. Computer Vision', 'CV.jpg'),
(3, '3', 'Lab. Data Science', 'SE.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `kode_lab` varchar(100) NOT NULL,
  `tempat_duduk` varchar(7) NOT NULL,
  `id_kegiatan` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `email_user`, `kode_lab`, `tempat_duduk`, `id_kegiatan`, `tanggal_pinjam`, `jam_mulai`, `jam_selesai`, `status`) VALUES
(9, 'rafi.annas@if.uai.ac.id', '2', '10', 1, '2020-01-17', '05:00:00', '09:00:00', 'fas fa-fw fa-check'),
(19, 'adamkharisma@if.uai.ac.id', '2', 'SEMUA', 1, '2020-01-18', '08:34:00', '10:34:00', 'fas fa-fw fa-check'),
(20, 'adamkharisma@if.uai.ac.id', '2', '5', 2, '2020-01-18', '10:37:00', '11:37:00', 'fas fa-fw fa-times'),
(21, 'adamkharisma@if.uai.ac.id', '2', '2', 4, '2020-01-18', '17:39:00', '07:39:00', 'fas fa-fw fa-times'),
(24, 'rafi.annas@if.uai.ac.id', '2', '5', 4, '2020-01-25', '11:11:00', '00:12:00', 'fas fa-fw fa-clock');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `status`, `warna`, `keterangan`) VALUES
(1, 'fas fa-fw fa-times', 'btn btn-warning', 'Di tolak'),
(2, 'fas fa-fw fa-clock', 'btn btn-warning', 'Menunggu'),
(3, 'fas fa-fw fa-check', 'btn btn-info', 'Di setujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempat_duduk`
--

CREATE TABLE `tempat_duduk` (
  `id` int(11) NOT NULL,
  `id_lab` varchar(100) NOT NULL,
  `tempat_duduk` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tempat_duduk`
--

INSERT INTO `tempat_duduk` (`id`, `id_lab`, `tempat_duduk`) VALUES
(1, '1', '1'),
(2, '1', '2'),
(3, '1', '3'),
(4, '1', '4'),
(5, '1', '5'),
(6, '1', '6'),
(7, '1', '7'),
(8, '1', '8'),
(9, '1', '9'),
(10, '1', '10'),
(11, '1', '11'),
(12, '1', '12'),
(13, '1', '13'),
(14, '1', '14'),
(16, '2', '1'),
(17, '2', '2'),
(18, '2', '3'),
(19, '2', '4'),
(20, '2', '5'),
(21, '2', '6'),
(22, '2', '7'),
(23, '2', '8'),
(24, '2', '9'),
(25, '2', '10'),
(26, '3', '1'),
(27, '3', '2'),
(28, '3', '3'),
(29, '3', '4'),
(30, '3', '5'),
(31, '3', '6'),
(32, '3', '7'),
(33, '3', '8'),
(34, '3', '9'),
(35, '3', '10'),
(36, '3', '11'),
(37, '3', '12'),
(38, '3', '13'),
(39, '3', '14'),
(40, '3', '15'),
(41, '3', '16'),
(42, '3', '17'),
(43, '3', '18'),
(44, '3', '19'),
(46, '1', 'SEMUA'),
(48, '3', 'SEMUA'),
(49, '2', '11'),
(50, '2', '12'),
(55, '2', 'SEMUA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` text NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email`, `role`) VALUES
(3, 'adamkharisma@if.uai.ac.id', 2),
(4, 'rafi.annas@if.uai.ac.id', 1),
(5, 'oktaviana@if.uai.ac.id', 2),
(7, 'nugrahaji@if.uai.ac.id', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`) VALUES
(0, 1, 'Daftar Laboratorium', 'admin/list_lab', '	\r\nfas fa-fw fa-store\r\n'),
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt'),
(2, 2, 'Peminjaman Lab', 'user', 'fas fa-fw fa-key'),
(4, 1, 'Daftar Admin', 'admin/list_admin', 'fas fa-fw fa-user-tie'),
(5, 1, 'Daftar Anggota', 'admin/list_member', 'fas fa-fw fa-user-friends'),
(7, 1, 'Daftar Peminjaman Lab', 'admin/last', 'fas fa-fw fa-paste\r\n'),
(8, 1, 'Report', 'admin/list_peminjaman', 'fas fa-fw fa-bell'),
(9, 2, 'Riwayat Peminjaman', 'user/riwayat', 'fas fa-fw fa-history'),
(10, 1, 'Daftar Permintaan Pinjam', 'admin/req', 'fas fa-fw fa-user-clock');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id_jam`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id_lab`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tempat_duduk`
--
ALTER TABLE `tempat_duduk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jam`
--
ALTER TABLE `jam`
  MODIFY `id_jam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `lab`
--
ALTER TABLE `lab`
  MODIFY `id_lab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tempat_duduk`
--
ALTER TABLE `tempat_duduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
