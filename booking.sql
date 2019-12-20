-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2019 pada 07.43
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
-- Struktur dari tabel `email_infor`
--

CREATE TABLE `email_infor` (
  `nama_depan` varchar(21) DEFAULT NULL,
  `nama_blg` varchar(23) DEFAULT NULL,
  `email_if` varchar(38) DEFAULT NULL,
  `COL 4` varchar(19) DEFAULT NULL,
  `COL 5` varchar(36) DEFAULT NULL,
  `COL 6` varchar(24) DEFAULT NULL,
  `COL 7` varchar(31) DEFAULT NULL,
  `COL 8` varchar(18) DEFAULT NULL,
  `COL 9` varchar(24) DEFAULT NULL,
  `COL 10` varchar(35) DEFAULT NULL,
  `COL 11` varchar(20) DEFAULT NULL,
  `COL 12` varchar(25) DEFAULT NULL,
  `COL 13` varchar(44) DEFAULT NULL,
  `COL 14` varchar(12) DEFAULT NULL,
  `COL 15` varchar(10) DEFAULT NULL,
  `COL 16` varchar(12) DEFAULT NULL,
  `COL 17` varchar(12) DEFAULT NULL,
  `COL 18` varchar(12) DEFAULT NULL,
  `COL 19` varchar(11) DEFAULT NULL,
  `COL 20` varchar(13) DEFAULT NULL,
  `COL 21` varchar(14) DEFAULT NULL,
  `COL 22` varchar(13) DEFAULT NULL,
  `COL 23` varchar(10) DEFAULT NULL,
  `COL 24` varchar(11) DEFAULT NULL,
  `COL 25` varchar(24) DEFAULT NULL,
  `COL 26` varchar(24) DEFAULT NULL,
  `COL 27` varchar(11) DEFAULT NULL,
  `COL 28` varchar(10) DEFAULT NULL,
  `COL 29` varchar(13) DEFAULT NULL,
  `COL 30` varchar(23) DEFAULT NULL,
  `COL 31` varchar(23) DEFAULT NULL,
  `COL 32` varchar(25) DEFAULT NULL,
  `COL 33` varchar(31) DEFAULT NULL,
  `COL 34` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `email_infor`
--

INSERT INTO `email_infor` (`nama_depan`, `nama_blg`, `email_if`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`, `COL 20`, `COL 21`, `COL 22`, `COL 23`, `COL 24`, `COL 25`, `COL 26`, `COL 27`, `COL 28`, `COL 29`, `COL 30`, `COL 31`, `COL 32`, `COL 33`, `COL 34`) VALUES
('First Name [Required]', 'Last Name [Required]', 'Email Address [Required]', 'Password [Required]', 'Password Hash Function [UPLOAD ONLY]', 'Org Unit Path [Required]', 'New Primary Email [UPLOAD ONLY]', 'Status [READ ONLY]', 'Last Sign In [READ ONLY]', 'Recovery Email', 'Home Secondary Email', 'Work Secondary Email', 'Recovery Phone [MUST BE IN THE E.164 FORMAT]', 'Work Phone', 'Home Phone', 'Mobile Phone', 'Work Address', 'Home Address', 'Employee ID', 'Employee Type', 'Employee Title', 'Manager Email', 'Department', 'Cost Center', '2sv Enrolled [READ ONLY]', '2sv Enforced [READ ONLY]', 'Building ID', 'Floor Name', 'Floor Section', 'Email Usage [READ ONLY]', 'Drive Usage [READ ONLY]', 'Total Storage [READ ONLY]', 'Change Password at Next Sign-In', 'New Status [UPLOAD ONLY]'),
('Abdul', 'Rachman', 'abdrachmanoman@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/04/04 00:24:13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.04GB', '1.21GB', 'Unlimited', 'False', ''),
('Abdul', 'Rachim', 'abdulrachim@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/11 15:36:14', 'abdulrachim703@yahoo.com', '', '', '+6287888128491', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '1.12GB', '1.1GB', 'Unlimited', 'False', ''),
('Abdurrahman', 'Haqiqy Mokoginta', 'haqiqymokoginta@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/04/08 22:14:11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Abu', 'Nazma', 'abunazma@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/01/14 23:49:17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Abuzar', 'Alghiffari', 'abuzar@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/26 12:57:45', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Aby', 'Sya\'id', 'abysyaid@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/05/24 20:38:17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('adam', 'kharisma', 'adamkharisma@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/31 22:47:20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Ade', 'Jamal', 'adja@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/05/13 21:22:24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.02GB', '0.0GB', 'Unlimited', 'True', ''),
('ade', 'tes', 'ade@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/04/15 23:26:08', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('adilla', 'malia', 'adilla@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/17 00:09:53', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('aditya pratama', 'dharmawan', 'adityapratama@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/26 21:01:31', 'aditya93pratama@gmail.com', '', '', '+6285890265461', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.03GB', '0.03GB', 'Unlimited', 'False', ''),
('Admin', 'IF UAI', 'admin@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/07 20:44:08', 'denny@if.uai.ac.id', '', '', '+6281389380702', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.08GB', '1.7GB', 'Unlimited', 'False', ''),
('Ahmad', 'Hisyam', 'ahmadhisyam@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/01/21 23:34:43', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Ahmad Hilmi', 'Mufaqqih', 'ahmadhilmi@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/02/06 06:11:21', 'hilmia306@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.08GB', 'Unlimited', 'False', ''),
('Aji', 'Purnomo', 'ajipurnomo@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Akbar', 'Idria', 'akbar.idria@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/22 05:59:05', 'Abar1604@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.39GB', '2.81GB', 'Unlimited', 'False', ''),
('Aldi', 'Oktavianto', 'okta@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/17 20:03:39', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Aldrian', 'Nurrahman Raihan', 'aldrian.raihan@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/31 23:27:04', 'raihan.mcbrain@gmail.com', '', '', '+628111989334', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.1GB', 'Unlimited', 'False', ''),
('alif', 'nurpramesti andriyani', 'alifandriyani@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/25 21:16:52', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '4.64GB', '0.69GB', 'Unlimited', 'False', ''),
('Amanda', 'Chelsi Nofanti', 'amanda.chelsi@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/10 19:16:46', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Amirul', 'Hafidz', 'amirulhafidz@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/03/31 03:23:03', '', '', '', '+6281338881425', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '1.25GB', '1.51GB', 'Unlimited', 'False', ''),
('Anastasya', 'Auliya', 'anastasyauliya@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/07 22:58:05', 'Tasya.taf@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.02GB', '0.01GB', 'Unlimited', 'False', ''),
('Andrew', 'Gustaviano', 'andrew@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/02/17 19:35:45', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Angga', 'Saputra', 'angga.saputra@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/07/13 12:10:09', 'anggsaputih@gmail.com', '', '', '+6281311333404', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.1GB', '0.0GB', 'Unlimited', 'False', ''),
('Angga', 'Maulana', 'angga.maulana@if.uai.ac.id', '****', '', '/', '', 'Active', '2014/04/15 23:09:47', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Anggi', 'Kurniawati', 'anggi.kurniawati@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/21 02:02:58', '', '', '', '+6282123495844', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.11GB', '0.0GB', 'Unlimited', 'False', ''),
('Anggito', 'Muhamad Raffi', 'anggito.muhamad@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/04/22 20:05:33', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('angga', 'saputra', 'angga_saputra@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/07/13 12:13:16', 'anggsaputih@gmail.com', '', '', '+6281311333404', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.18GB', '3.51GB', 'Unlimited', 'False', ''),
('Annisa', 'Utami', 'annisa@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/16 22:25:02', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Annisa', 'Handayani', 'annisa.handayani@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/27 16:34:09', 'Hndyn.nisa@gmail.com', '', '', '+6289670144695', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.78GB', '0.48GB', 'Unlimited', 'False', ''),
('Anugrah', 'Tirta', 'anugrah.tirta@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Aprillia', 'Trisya Putri', 'aprilliatrisyaputri@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/05/22 18:24:27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('aprillia', 'trisya', 'aprilliatrisya@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('aqmal', 'nuzuly', 'an25_nuzuly@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/09 00:15:25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Arie', 'Wahyu', 'arie@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/05/02 23:16:16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Arif', 'Supriyanto', 'arif.supriyanto@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/25 23:00:51', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.51GB', '0.95GB', 'Unlimited', 'False', ''),
('arthur', 'iqbal', 'iqbal@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/16 00:17:58', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Arum', 'Fitriati', 'arumfitri25@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/03/06 03:15:18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('arum', 'fitri', 'arumfitri@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/16 00:20:05', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Arya', 'witama', 'arya.witama@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Arya', 'Witama', 'arya.witama15@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Arya', 'Wiratama', 'arya.wiratama15@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/05/27 23:24:33', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Aulia', 'Gantina', 'auliagantina@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Aulia', 'Ardianto', 'ardi@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('ayunda', 'mutiara', 'ayundamy@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/09 03:26:43', 'ayundamy22@gmail.com', '', '', '+628118982212', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.27GB', '0.04GB', 'Unlimited', 'False', ''),
('Azharians', 'PPL', 'azharians@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', 'zidhnaasyahidah@gmail.com', '', '081286454644', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Azni I.', 'Cahyawan', 'azni.cahyawan@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/10/20 02:19:10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Bagus', 'Mauludin', 'bagus_mauludin@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Bayu', 'Pangestu', 'bayu.pangestu@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/03/28 10:13:34', 'bayupangestu21@gmail.com', '', '', '+628998049992', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '12.82GB', 'Unlimited', 'False', ''),
('bayu', 'saputra', 'bayusaputra@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/04/06 23:50:37', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Bijar', 'Faturrahman', 'bijarfatur@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Bima', 'Satria', 'bsatria@if.uai.ac.id', '****', '', '/', '', 'Active', '2012/12/20 19:56:51', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Bintang', 'Nafsul', 'bintang.nafsul@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/24 18:57:09', 'bintang.nafsul@gmail.com', '', '', '+6281285508440', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.29GB', '0.01GB', 'Unlimited', 'False', ''),
('Bizspot', 'UAI', 'bizspot@if.uai.ac.id', '****', '', '/', '', 'Active', '2017/10/16 19:25:42', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Bunga', 'Alendra', 'bungaalendra@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Cipta', 'Daffa Firmansyah Putera', 'ciptadaffaaa@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/04/03 18:02:37', 'ciptadaffaaa@gmail.com', '', '', '+6281292799921', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Citra Puspita', 'Rani', 'citrapuspita.rani@if.uai.ac.id', '****', '', '/', '', 'Active', '2015/09/29 21:34:28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Cut', 'Nuraini', 'cutnuraini@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('dani02', 'tes', 'dani02@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Darwis', 'Aji Saputro', 'darwisaji@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/14 08:02:05', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('dea', 'tes', 'dea@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Deden Egi', 'Nugraha', 'dedenegi@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/29 19:39:38', 'dedenjembar@gmail.com', '', '', '+6285939885262', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.24GB', '0.06GB', 'Unlimited', 'False', ''),
('Dedi', 'Tes', 'dedi@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Dendy', 'Tes', 'dendy05@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Dendy Rozano', 'Widianto', 'dendy.rozano@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/08 12:30:12', 'Dndyrw@gmail.com', '', '', '+6285945553176', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Deni', 'Tes', 'deni@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Dennisa', 'Aura', 'dennisaaura@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/19 21:51:25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.07GB', '0.0GB', 'Unlimited', 'False', ''),
('Denny', 'Hermawan', 'denny@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/27 10:28:35', 'denny@uai.ac.id', '', '', '+6281389380702', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '2.06GB', '8.82GB', 'Unlimited', 'False', ''),
('dendi', 'Tes', 'dendi@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('dendy03', 'Tes', 'dendy03@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Destini', 'Bebasari', 'beba@if.uai.ac.id', '****', '', '/', '', 'Active', '2014/09/10 17:23:32', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('desi sartika', 'ramadani', 'desisartika.ramadani@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/12 01:47:03', 'desisartika.ramadani@gmail.com', '', '', '+6281297743389', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('deska', 'setiawan yusra', 'deska@if.uai.ac.id', '****', '', '/', '', 'Active', '2014/04/08 00:20:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('devin', 'rizqullah', 'devinsdit@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/18 12:47:07', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Dewi', 'Ananta Hakim', 'dewi.ananta@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/26 05:29:29', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('dheannisa ramadhani', 'putri', 'dheannisarp@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/05/13 19:19:01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.03GB', '0.0GB', 'Unlimited', 'False', ''),
('Diaz', 'Adha Asri', 'diaz.adha@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/24 19:05:48', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Digit', 'Oktavianto', 'digit@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/20 04:36:34', 'digit.oktavianto@gmail.com', '', '', '+6285710614655', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Diki', 'Mahardi', 'diki@if.uai.ac.id', '****', '', '/', '', 'Active', '2012/12/20 20:23:16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Dimas', 'Aryo Wibowo', 'dimas.aryo@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/16 11:56:01', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.14GB', 'Unlimited', 'False', ''),
('Dimas', 'Septian Nugroho', 'dimas.septian@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/04/26 04:46:34', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Dimas Fitra', 'Hanggoro', 'dimasfitra@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/12 06:38:12', 'goro.goro71@gmail.com', '', '', '+628983003543', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.08GB', '0.0GB', 'Unlimited', 'False', ''),
('Dina', 'Anggraeni', 'dina@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/01/28 18:51:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.04GB', '0.0GB', 'Unlimited', 'False', ''),
('Dini', 'Humairoh', 'dinihumairoh@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/04/29 02:14:50', 'dinihumairoh@gmail.com', '', '', '+6281218550239', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.04GB', '0.0GB', 'Unlimited', 'False', ''),
('Dison', 'Azdita', 'dison@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/06 10:19:54', 'didisonson@gmail.com', '', '', '+628119660109', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.5GB', '0.0GB', 'Unlimited', 'False', ''),
('divi', 'nurhayati', 'divinurhayati@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/07/01 00:28:06', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.31GB', '0.0GB', 'Unlimited', 'False', ''),
('Dody', 'Haryadi', 'dody@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/05/28 19:20:48', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Dody15', 'Tes', 'dody15@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Dwi', 'Anggoro', 'dwianggoro@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/21 08:47:20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.02GB', '0.0GB', 'Unlimited', 'False', ''),
('Dwita', 'Wulandari', 'dwitawulandari@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/14 02:03:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.02GB', '0.0GB', 'Unlimited', 'False', ''),
('Dyah', 'Retno Palupi', 'palupidyahr@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/09 02:21:05', 'palupidyahr@gmail.com', '', '', '+6281298828033', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.07GB', '0.08GB', 'Unlimited', 'False', ''),
('efan', 'setiawan', 'efan@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/16 23:48:18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Effrizka', 'Permatasari', 'frizka_pisca@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/01/11 23:28:07', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Eko', 'Tristiyadi', 'ekotristiyadi@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/17 14:17:48', 'ekotristiyadi@hotmail.com', '', '', '+6285717192636', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '1.71GB', '6.27GB', 'Unlimited', 'False', ''),
('eko', 'purwo widada', 'ekopurwo@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('elijah', 'muhamad', 'muhammadelijah12@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/03/24 05:51:35', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Endah', 'Sulisthyani', 'endah.sulisthyani@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/15 04:57:55', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Endang', 'Nizar', 'endang_nizar@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/05/26 22:12:18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Erie Satrya', 'Rachmanto', 'erie@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Fadhilatul', 'Muthiah', 'fadhilatulmutia@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/07 23:03:48', 'fadhilatulmutia@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.03GB', '0.86GB', 'Unlimited', 'False', ''),
('Fahrul', 'Rozi', 'fahrulr@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Faisal', 'Raihan Shiddiq', 'faisal.raihan@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/19 23:14:45', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.06GB', '0.0GB', 'Unlimited', 'False', ''),
('Fajar', 'Putri', 'fajarputri@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/01/18 18:50:42', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Fajar', 'Adzani Akbar', 'fajaradzaniakbar@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/07/16 09:13:48', 'fajaradzaniakbar@gmail.com', '', '', '+6281382707081', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('fajar', 'anggraeni', 'fajaress@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/20 17:30:59', 'fajaress@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.88GB', '0.55GB', 'Unlimited', 'False', ''),
('fajar', 'adzani', 'fajaradzani@if.uai.ac.id', '****', '', '/', '', 'Active', '2017/11/16 04:10:33', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Fakhrizal Andyko', 'Pangestu', 'fakhrizal@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/18 21:51:29', 'fary290796@gmail.com', '', '', '+628972572573', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.07GB', 'Unlimited', 'False', ''),
('Faricha', 'Faricha', 'faricha@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/02/03 13:28:19', 'richasoeli@gmail.com', '', '', '+6282125818985', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.11GB', '0.01GB', 'Unlimited', 'False', ''),
('Faricha Muthmainnah', 'Soeli', 'faricha.muthmainnah@if.uai.ac.id', '****', '', '/', '', 'Active', '2014/05/09 07:28:35', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('farah', 'fitriah', 'farahfitriah@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/06/08 07:30:53', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.51GB', '0.0GB', 'Unlimited', 'False', ''),
('Fathul', 'Izzi Ramadhan', 'izziramadhan@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Fathya Radzkymoerti', 'Tunjung Negari', 'fathyatunjung@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Fatimah Ilona Asa', 'Sabsono', 'asailona@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/05/16 20:59:21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.07GB', '0.0GB', 'Unlimited', 'False', ''),
('fatkhurohman', 'fatur', 'fatkhurohman@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/21 21:51:53', '', '', '', '+6281210881003', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.48GB', '0.06GB', 'Unlimited', 'False', ''),
('Fauzan', 'Maulana', 'fauzan.maulana@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/15 01:52:54', '', '', '', '+6281212217693', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Fauziyyah', 'Faturahmah', 'fauziyyah.faturahmah@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/12/25 00:33:00', '', '', '', '+628111888424', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.03GB', '0.16GB', 'Unlimited', 'False', ''),
('Feby', 'Fitria', 'febyfitria@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/01/19 22:33:39', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Feri', 'Hidayat', 'ferihidayat@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/05 07:04:52', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Finsa AIdil', 'Nurahman', 'finsa.aidil@if.uai.ac.id', '****', '', '/', '', 'Active', '2017/11/05 19:04:45', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('fitrin', 'nuha', 'fitrin.nuha@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/13 18:42:59', 'fitrin.nuha@gmail.com', '', '', '+6289604402712', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '2.07GB', '1.97GB', 'Unlimited', 'False', ''),
('fitriya', 'bin pipit', 'fitriya@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/02/09 02:44:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Frentina', 'yuliana', 'frentina@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Galih', 'Adiguna', 'gadiguna@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/15 22:49:17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('ganda', 'jh', 'gandajh@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Ghina Resti', 'Hanifah', 'ghinaresti@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/24 05:11:39', '', '', '', '+6287875041179', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.06GB', 'Unlimited', 'False', ''),
('Haerani', 'Haerani', 'haerani@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/15 22:03:24', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Haikal', 'Muhammad', 'haikal.muhammad@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('halwatus', 'salwa', 'halwatus.salwa@if.uai.ac.id', '****', '', '/', '', 'Active', '2015/03/26 07:52:39', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.03GB', '0.0GB', 'Unlimited', 'False', ''),
('Hani', 'Dwiwahyu Oktovani', 'hani.dwiwahyu@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/16 23:09:09', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Hani Okti', 'Rosidaini', 'haniokti@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/27 16:49:08', 'hanirosidaini@gmail.com', '', '', '+628122105090', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('haqqi', 'mahmudi', 'haqqimahmudi2@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/03/25 19:25:44', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('hasan', 'rusdi', 'hasanrusdi@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/17 00:17:18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Hidayat', 'Nur Wahid', 'hidayat.nurwahid@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/22 00:24:08', '', '', '', '+6281317761110', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '2.19GB', '0.14GB', 'Unlimited', 'False', ''),
('Hikmah', 'Al Jannah', 'hikmah@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/26 19:41:32', 'hikmahaj55@gmail.com', '', '', '+6289698278114', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.41GB', '0.01GB', 'Unlimited', 'False', ''),
('hilyatul aulia', 'muhammad irfanan mufied', 'hilyatul.aulia.mim@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/22 01:40:50', '', '', '', '+6287879028610', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('HMIF', 'UAI', 'hima@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/03/04 02:56:39', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('HOC 2', 'HOC 2', 'hoc2@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('hoc1', 'Hour of Code', 'hoc1@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('ifuai', '2011', 'ifuai2011@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Ikhsan', 'Iskandar', 'ikhsaniskandar@if.uai.ac.id', '****', '', '/', '', 'Active', '2017/05/11 10:17:56', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Ilham Malik', 'Muhammad', 'ilhammalikmuhammad@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/04/02 06:37:05', '', '', '', '+6283895671999', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.06GB', '0.0GB', 'Unlimited', 'False', ''),
('Inas', 'Ashilah', 'inas@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/01/01 18:08:15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Indaru', 'Haryo Utomo', 'indaru08@if.uai.ac.id', '****', '', '/', '', 'Active', '2015/10/21 22:51:04', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Informatics', 'Exhibition', 'fortex@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/14 04:46:27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.11GB', '0.04GB', 'Unlimited', 'False', ''),
('info', 'Informasi', 'info@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/05/29 15:42:58', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Isma', 'Hariani', 'isma.hariani@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Ismail', 'Alamsyah', 'ismail.alamsyah@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('IT Fest', 'UAI', 'itfest@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/20 20:56:49', '', '', '', '+628816148534', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.63GB', '0.26GB', 'Unlimited', 'False', ''),
('Jefri', 'Febriyanto', 'jefri@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/15 06:35:54', '', '', '', '+6282112539483', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.44GB', 'Unlimited', 'False', ''),
('kevin', 'candra', 'kevincp@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/16 00:36:24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('kholilur', 'rohman', 'kholilur29@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/26 02:55:31', 'kholilurrohman029@gmail.com', '', '', '+6285707722677', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.02GB', '0.02GB', 'Unlimited', 'False', ''),
('Kreatif', 'HMIF', 'kreat.if@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Kurnia', 'Rahmanto', 'kurnia.rahmanto@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/16 23:37:32', 'theomator@gmail.com', '', '', '+628568282288', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.14GB', '40.09GB', 'Unlimited', 'False', ''),
('Lab', 'IF', 'labif@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/01/05 16:09:59', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Laboratorium', 'Teknik Informatika', 'lab@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/13 21:03:45', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Latifah Ramadhana', 'Mur\'ilmiani Effendhi', 'latifah@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/12/24 20:49:46', 'lrme72.effendhi@gmail.com', '', '', '+6281316085065', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.04GB', '0.39GB', 'Unlimited', 'False', ''),
('linux', 'OS', 'linux@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Luqman', 'Abdur Rohim', 'luqman.arohim@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/26 17:57:13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.07GB', 'Unlimited', 'False', ''),
('M Rizky', 'Syahferi Aswan', 'm.rizky.syahferi.aswan@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('M. Ammaar', 'De La Rey', 'ammaar@if.uai.ac.id', '****', '', '/', '', 'Active', '2015/05/19 06:03:06', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('M. Fathur', 'Al Alif', 'm.fathur@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/06/25 17:21:43', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('maela', 'romdoni', 'maelaromdoni@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/17 00:19:07', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('mahatir', 'muhammad', 'mahatir@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/16 00:23:17', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Makmudin', 'Makmudin', 'makmudin@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/17 21:33:50', 'id.makmudin@gmail.com', '', '', '+6289672231770', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Malia', 'Arismaya', 'maliaarismayaichsanputri5@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/18 23:48:24', 'maliaarismayaichsanputri5@gmail.com', '', '', '+6283892423294', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Mogamat Ammaar', 'De La Rey', 'mogamatammaardelarey@if.uai.ac.id', '****', '', '/', '', 'Active', '2017/03/14 00:59:13', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Mohammad Surya', 'Gemilang', 'suryagemiilang@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/07/29 20:42:02', '', '', '', '+6283873988278', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.28GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhamad', 'Mahdiansyah', 'muhamad.mahdiansyah@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/23 08:36:14', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhamad', 'Alvirza Saputra', 'alvirzaauditore@if.uai.ac.id', '****', '', '/', '', 'Active', '2017/11/05 03:56:07', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad', 'Mahendranadani', 'muhammad.mahendranadani@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/16 21:00:34', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad', 'Hasan Rusdy', 'mhdhasanrusdy@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad', 'Fadhli Al Farisi', 'fadhlialfarisi46@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/01 10:38:46', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad', 'Khafiz', 'mkhafiz@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/26 20:28:55', '', '', '', '+6289677347778', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.47GB', '2.38GB', 'Unlimited', 'False', ''),
('Muhammad', 'Fahrul Rasyid', 'muhammad.fahrul@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/31 19:14:38', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.07GB', '0.04GB', 'Unlimited', 'False', ''),
('Muhammad', 'Furqan', 'furqan1061@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/25 00:32:28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.08GB', 'Unlimited', 'False', ''),
('Muhammad', 'Jusuf Zakky', 'zakkyyusuf@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad', 'Alwan', 'muhammadalwan@if.uai.ac.id', '****', '', '/', '', 'Active', '2015/04/09 08:27:41', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad', 'Eki Subarqah', 'muhammadekisubarqah@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/04/16 20:56:23', 'muhammadekisubarqah@gmail.com', '', '', '+6281268584335', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad', 'Fauzan', 'fauzanmuhammad@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/26 13:54:07', '', '', '', '+6287875814715', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad', ' Khafiz', 'muhammadkhafiz@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Muhammad', 'Sukaya Nugraha', 'muhammadsnugraha@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad', 'faisal', 'm.faisal@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Muhammad', 'Ikbar Fahreza', 'muhammad.ikbar@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/01 19:07:26', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad', 'Lutfi Al Hajid', 'lutfialhajid541@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/03/20 04:46:15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad', 'Jusuf  Zakky', 'zakkyalkaff@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/03/12 21:21:38', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad', 'Faisal Bustomi', 'faizalcrossfire@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/25 06:17:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '93.44GB', 'Unlimited', 'False', ''),
('Muhammad', 'Qisty Gani', 'mqistygani@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/04/13 07:58:41', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad Alif Pratama', 'Irawan', 'alif_pratama@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/17 20:00:59', 'alifpratama2305@gmail.com', '', '', '+6281218509290', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad Haikal', 'AL Wahaby', 'haikal_alwahaby@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad Ichsan', 'Prayoga Putra', 'ichsan.prayoga@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/04/26 20:42:54', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Muhammad Iqbal', 'Pratama', 'muhammad.iqbal@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/09 15:19:22', 'mip.mip774@gmail.com', '', '', '+628562144666', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.02GB', '3.44GB', 'Unlimited', 'False', ''),
('Muhammad Yerri', 'Yanuar', 'muhammadyerriy@if.uai.ac.id', '****', '', '/', '', 'Active', '2017/04/21 09:17:03', '', '', '', '+6281316694514', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.16GB', '0.0GB', 'Unlimited', 'False', ''),
('muhammad', 'zulfikar iskandar', 'vikar@if.uai.ac.id', '****', '', '/', '', 'Active', '2014/08/11 02:25:41', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.07GB', '0.0GB', 'Unlimited', 'False', ''),
('muhammad', 'fikri', 'fikri@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/17 00:13:50', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('muhammad', 'fadhil', 'muhammadfadhil@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/16 22:13:05', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('muhammad fajar', 'pratomo', 'mfajarpratomo@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('muhammad nur', 'fauzi', 'muhammadnur.fauzi@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/10/11 13:07:57', 'mnfauzii@gmail.com', '', '', '+6287886972554', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', '');
INSERT INTO `email_infor` (`nama_depan`, `nama_blg`, `email_if`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`, `COL 20`, `COL 21`, `COL 22`, `COL 23`, `COL 24`, `COL 25`, `COL 26`, `COL 27`, `COL 28`, `COL 29`, `COL 30`, `COL 31`, `COL 32`, `COL 33`, `COL 34`) VALUES
('muhammad rizqa', 'aulia', 'rizqa.aulia@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('muhanad', 'iqbal', 'muhanadiqbal22@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/06/24 19:07:04', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.03GB', '0.0GB', 'Unlimited', 'False', ''),
('Mutiara', 'Lutfiah Putri', 'mutiara.lutfiah@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/25 09:42:40', 'mutiaralutfiah8@gmail.com', '', '', '+6281291495117', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Nanang Rezka', 'Kurniawan', 'nanang@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/09 00:14:06', '', '', '', '+6283891664433', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.21GB', '1.08GB', 'Unlimited', 'False', ''),
('Nauval Dzulfikar', 'Fachri', 'nauvaldzulfikarfachri@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Nidaul', 'Hasanati', 'nida@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/05/13 21:06:23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Nikmatun Aliyah', 'Salsabila', 'salsabila@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/07 07:58:07', 'nikmatunaliyahsalsabila@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.25GB', '0.0GB', 'Unlimited', 'False', ''),
('Novita', 'Diyah Susanti', 'novitadyhs@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/13 21:18:42', 'novitaatmaja@gmail.com', '', '', '+6281385200245', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.05GB', '0.11GB', 'Unlimited', 'False', ''),
('Nugroho', 'Ganda Novianto', 'nugroho@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/02 19:48:00', 'nugrohogandanovianto@gmail.com', '', '', '+6281298472859', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.83GB', '7.04GB', 'Unlimited', 'False', ''),
('nugraha purnama', 'aji', 'nugrahaji@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/13 19:22:49', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.14GB', '0.0GB', 'Unlimited', 'False', ''),
('nuke', 'kania', 'nuke.kania@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Nur', 'Asiah', 'nur.asiah@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/21 20:49:34', 'Nasiahur@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.05GB', '5.32GB', 'Unlimited', 'False', ''),
('Nur Wilda', 'Angraini Sary', 'nwildaa.s@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/16 03:05:00', 'nwildaas@gmail.com', '', '', '+6282299707233', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.21GB', '0.01GB', 'Unlimited', 'False', ''),
('nurnisa', 'agniah', 'nissa@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('oktaviana', 'ayu putri', 'oktaviana@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/12 07:38:43', '', '', '', '+6285775260494', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.02GB', '0.0GB', 'Unlimited', 'False', ''),
('Olivell', 'Tedja', 'olivelltedja@if.uai.ac.id', '****', '', '/', '', 'Active', '2017/06/06 06:15:38', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('olivia indra', 'wahyuni', 'oliviaindrawahyuni@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/23 00:19:20', 'oliviaindrawahyuni585@gmail.com', '', '', '+6281290334234', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Panji', 'Nur Viansyah', 'viansyah.panji@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/08/03 02:14:40', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Pradanuari', 'Firdaus', 'pradanuarifirdaus@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/01 21:48:35', 'pradanuarifirdaus8@gmail.com', '', '', '+6281210630470', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.05GB', '0.0GB', 'Unlimited', 'False', ''),
('pradanuari', 'firdaus', 'dede_nuari@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Putri', 'Sendi', 'putrisendi@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/02/18 23:36:59', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('R Satrio', 'Hariomurti Wicaksono', 'wicaksono.satrio@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/24 18:41:41', 'wicaksono.satrio.h@gmail.com', '', '', '+6285703739558', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.2GB', '1.06GB', 'Unlimited', 'False', ''),
('Rachmat', 'Firman', 'rachmat.firman@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/07/07 21:12:06', '', '', '', '+628998726836', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '9.68GB', 'Unlimited', 'False', ''),
('Rafi', 'Annas', 'rafi.annas1997@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/01/17 21:31:25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Rafif', 'Musyafah Torada', 'rafif.musyafah@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/04/01 04:18:42', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('rafi', 'annas', 'rafi.annas@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/24 18:43:58', 'rafi.annas1997@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.2GB', '0.01GB', 'Unlimited', 'False', ''),
('Rahman', 'Pujianto', 'rahman@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/05/13 21:04:33', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Rais', 'Badarsyah', 'rais@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Rajabannisa', 'Airo Wahyuni', 'rajabannisa.airo@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/28 06:43:43', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Ratni', 'Nurilaliah Pratiwi', 'ratni.nurilaliah@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/30 07:33:21', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Rayza', 'Al Khensa Kacita A', 'khensa@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/24 19:27:57', 'khensha@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.24GB', '0.53GB', 'Unlimited', 'False', ''),
('refi', 'rahman', 'refirahman@if.uai.ac.id', '****', '', '/', '', 'Active', '2017/11/06 09:16:54', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Resnia', 'Trya Muslima', 'resniatrya07@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/15 06:41:37', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.02GB', '0.0GB', 'Unlimited', 'False', ''),
('Revo hanif', 'maulana', 'revohanif@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/03/25 19:32:56', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Ricardo', 'Chandra', 'ricardochandra@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/25 19:43:45', 'aldochandra46@gmail.com', '', '', '+6285776801819', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '3.19GB', 'Unlimited', 'False', ''),
('Rifqi', 'Karami', 'rakarami@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/12 22:42:05', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.26GB', '0.15GB', 'Unlimited', 'False', ''),
('Rifqi', 'Ramadhan', 'rrifqi43@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/05/27 03:21:37', 'rrifqi43@gmail.com', '', '', '+62895391744498', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Rifqi Dhiyaulhaq', 'Sami Miru', 'rifqisami@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/03/31 09:11:26', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.35GB', '1.28GB', 'Unlimited', 'False', ''),
('Rika', 'Handayani', 'rikahanday23@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/15 02:01:34', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '2.45GB', '1.04GB', 'Unlimited', 'False', ''),
('rio', 'ananda', 'rioananda20@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/02/01 23:19:36', '', '', '', '+6285817572747', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Riri', 'Safitri', 'riri@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/15 19:44:54', '', '', '', '+6281266222684', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.03GB', '0.01GB', 'Unlimited', 'False', ''),
('Rizaldi', 'Ahmad Fauzi', 'rizaldihmdfauzi@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Rizaldiansyah', 'Rizal', 'rizaldiansyah@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/05/08 18:45:23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.01GB', 'Unlimited', 'False', ''),
('Rizki', 'Eka', 'rizkieka48@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/04/14 19:11:48', '', '', '', '+6285718359759', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('rizka', 'maharani', 'rizkamaharani@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/26 07:37:55', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.18GB', 'Unlimited', 'False', ''),
('rizky', 'syahferi', 'rizkysyahferi@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/14 08:12:03', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '2.22GB', '5.3GB', 'Unlimited', 'False', ''),
('Rohmi', 'Irsyad', 'irsyad@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/01/20 01:25:22', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Romi', 'Giandi', 'romi.giandi@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/02/17 07:48:56', 'giandiromi@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.05GB', 'Unlimited', 'False', ''),
('Rommy', 'Hidayatul Alaika', 'rommyaleka27@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/06/04 07:57:52', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Roni', 'Fical', 'roni.fical@if.uai.ac.id', '****', '', '/', '', 'Active', '2014/06/29 14:13:35', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('roni', 'fical', 'fical@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Rosita', 'Dewi', 'rosita.dewi@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/03/29 01:08:36', 'officialrose94@gmail.com', '', '', '+6281218989279', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Rusnah', 'Setiani', 'rusnahsetiani@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/01/03 15:07:18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Satryo', 'Pratomo', 'satryo@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/01/26 23:08:43', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Selvira', 'Denny Sanusi', 'selvira.sanusi@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('Septian', 'Adi Putra', 'adiputraseptian76@if.uai.ac.id', '****', '', '/', '', 'Active', '2017/11/06 09:16:56', '', '', '', '+6285892568170', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Setriratna', 'Arimurti', 'setriratna@if.uai.ac.id', '****', '', '/', '', 'Active', '2015/11/27 07:16:06', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Shabran', 'Al Khairi Habibullah', 'shabran@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/25 17:16:10', 'shabrankhairi@gmail.com', '', '', '+6282112463525', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.15GB', '0.0GB', 'Unlimited', 'False', ''),
('sigit', 'baskoro', 'sigit@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/07/08 23:39:44', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Sissy', 'Soraya Faradilla', 'sissysoraya@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/25 08:04:14', 'sissysoraya@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.35GB', '0.5GB', 'Unlimited', 'False', ''),
('sisca', 'priyani', 'sisca_priyani@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/14 05:08:13', 'siscapryn@gmail.com', '', '', '+6285715561220', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.05GB', '0.0GB', 'Unlimited', 'False', ''),
('Siti Fatimah', 'Sikdewa', 'sitisikdewa@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/11/26 19:14:44', '', '', '', '', '00000000', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Siti Zakiyatul', 'Afni', 'afni@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/01/13 07:06:52', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Sitti Fatimah', 'Sikdewa', 'fatimah.sikdewa@if.uai.ac.id', '****', '', '/', '', 'Active', '2017/03/06 17:45:04', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Sofyan', 'Sanjoyo', 'sofyanekosanjoyo@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/09/17 00:44:21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.05GB', '0.0GB', 'Unlimited', 'False', ''),
('Sonia', 'Sanny', 'niasanny@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/22 04:30:46', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.02GB', '0.93GB', 'Unlimited', 'False', ''),
('Student', 'Tes', 'student@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/27 15:53:46', '', '', '', '', 'OS', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Suci', 'Paramita', 'suci_paramita@if.uai.ac.id', '****', '', '/', '', 'Active', '2017/05/21 18:07:57', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.02GB', '0.0GB', 'Unlimited', 'False', ''),
('Suhlani', 'Juwan', 'suhlani.juwan@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/30 06:41:36', 'suhlani.juwan@gmail.com', '', '', '+628889136791', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '1.87GB', '0.3GB', 'Unlimited', 'False', ''),
('Syifa Maulida Ulvi', 'Amrinaa', 'syifamaulida@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/02/06 18:04:32', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.03GB', 'Unlimited', 'False', ''),
('Tami', 'Tes', 'tami@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Taufik', 'Adriansyah', 'taufik.adriansyah@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/18 21:40:36', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.08GB', 'Unlimited', 'False', ''),
('Tiffany', 'Noor', 'tiffanynoor@if.uai.ac.id', '****', '', '/', '', 'Active', '2016/09/29 23:55:53', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Tisha', 'Astiayu Anda', 'tishastiayuanda@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/25 20:56:53', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.14GB', 'Unlimited', 'False', ''),
('Trandy', 'Migdatumeilga Tarjuar', 'trandymt@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/05/26 20:19:46', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.16GB', '0.05GB', 'Unlimited', 'False', ''),
('trandy', 'migdatumeilga tarjuar', 'trandy@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('trandy', 'migdatumeilga', 'trandy2012@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'True', ''),
('trifani', 'andriana', 'trifani.andriana@if.uai.ac.id', '****', '', '/', '', 'Active', '2014/04/07 23:39:22', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Tsaniya', 'Rizqina', 'tsaniya.rizqina@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/08 21:43:15', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Tyas', 'Yuni', 'tyasyuni@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/08/03 05:43:35', 'tys.yuni@gmail.com', '', '', '+6285811293821', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.06GB', '0.12GB', 'Unlimited', 'False', ''),
('ullan jelita', 'kuntum cherya', 'ullanjelita@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/04/06 08:53:42', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Umiyati', 'Umi', 'umiyati@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/06/12 19:02:27', 'umiyati1996@gmail.com', '', '', '+6289635537563', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.04GB', '0.02GB', 'Unlimited', 'False', ''),
('Vareza', 'Noorliko', 'vareza@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/20 18:54:15', 'varezanoorliko@gmail.com', '', '', '+6281932063403', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '148.86GB', 'Unlimited', 'False', ''),
('Vica Junia', 'Rachmat', 'vicajuniarachmat@if.uai.ac.id', '****', '', '/', '', 'Active', '2015/06/10 10:41:08', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Virdita', 'Nadira', 'nvirdita@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/13 16:19:23', '', '', '', '+6282298900756', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.06GB', '0.0GB', 'Unlimited', 'False', ''),
('Web', 'Sosmed', 'web@if.uai.ac.id', '****', '', '/', '', 'Active', '2018/03/04 21:34:15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.02GB', '0.0GB', 'Unlimited', 'False', ''),
('Winangsari', 'Pradani', 'winangsari@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/06/26 01:15:19', 'winangsari@uai.ac.id', '', '', '+6281285508125', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('wisnu', 'yoshiro', 'wisnuyoshiro@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/07/31 21:33:07', 'wisnumomogo17@gmail.com', '', '', '+6281291036793', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.33GB', '0.0GB', 'Unlimited', 'False', ''),
('Yasmin', 'Fathia Purwani', 'yasmin.fathia@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/18 18:04:24', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018', '', 'False', 'False', '', '', '', '0.01GB', '0.0GB', 'Unlimited', 'False', ''),
('Yudha', 'Agung Perkasa', 'yudha@if.uai.ac.id', '****', '', '/', '', 'Active', '2013/05/13 23:28:02', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Yudha', 'Agung Perkasa', 'yaperkasa@if.uai.ac.id', '****', '', '/', '', 'Active', 'Never logged in', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.0GB', '0.0GB', 'Unlimited', 'False', ''),
('Yuri', 'Iskandia Barru', 'yuri@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/06/17 15:53:40', '', '', '', '+6281288068052', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.12GB', '203.39GB', 'Unlimited', 'False', ''),
('zidna tuqo', 'asy syahidah', 'zidnatuqoas@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/15 20:23:54', 'zidhnaasyahidah@gmail.com', '', '', '+6281286454644', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '0.03GB', '0.0GB', 'Unlimited', 'False', ''),
('zulmiadi', 'uai', 'zulmiadi@if.uai.ac.id', '****', '', '/', '', 'Active', '2019/08/22 18:44:02', 'zulmiadi.22@gmail.com', '', '', '+6281511874480', '', '', '', '', '', '', '', '', '', '', '', 'False', 'False', '', '', '', '1.3GB', '7.81GB', 'Unlimited', 'False', '');

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
(1, '1', 'Lab. Jaringan', 'ND.jpg'),
(2, '2', 'Lab. Computer Vision', 'CV.jpg'),
(3, '3', 'Lab. Data Science', 'SE.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `nim_user` varchar(10) NOT NULL,
  `kode_lab` varchar(100) NOT NULL,
  `tempat_duduk` int(2) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `nim_user`, `kode_lab`, `tempat_duduk`, `kegiatan`, `tanggal_pinjam`, `jam_mulai`, `jam_selesai`, `status`) VALUES
(1, '0102517024', '1', 0, 'Nugas', '2019-12-19', '10:00:00', '18:00:00', 'fas fa-check'),
(2, '0102516025', '2', 0, 'Skripsi', '2019-12-19', '14:00:00', '17:00:00', 'fas fa-fw fa-check');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman_kursi`
--

CREATE TABLE `peminjaman_kursi` (
  `id_peminjaman` int(11) NOT NULL,
  `nim_user` varchar(10) NOT NULL,
  `kode_lab` varchar(100) NOT NULL,
  `tempat_duduk` varchar(11) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `nim_user` varchar(10) NOT NULL,
  `nama_user` text NOT NULL,
  `email` text NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `password` text NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nim_user`, `nama_user`, `email`, `no_hp`, `password`, `role`) VALUES
(1, '0102517024', 'Rafi', 'rafi.annas@if.uai.ac.id', '123123123', '$2y$10$XHWtcZ/6N2wqqNMNaJUN0.t8axwWPF9tVEYLFy.O97hfQzfRiRG0W', 2),
(2, '0102516025', 'oktavianaayu', 'oktaviana@if.uai.ac.id', '091293672299', '$2y$10$yuPDBvgKozc/BZAnHfNa1eSjROvWBy.Ufql8y/XnBSPdXYO1vXbhC', 1);

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
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt'),
(2, 2, 'Peminjaman Lab', 'user', 'fas fa-fw fa-key'),
(4, 1, 'Daftar Admin', 'admin/list_admin', 'fas fa-fw fa-user-tie'),
(5, 1, 'Daftar Anggota', 'admin/list_member', 'fas fa-fw fa-user-friends'),
(6, 1, 'Daftar Laboratorium', 'admin/list_lab', '	\r\nfas fa-fw fa-store\r\n'),
(7, 1, 'Daftar Peminjaman Lab', 'admin/list_peminjaman', 'fas fa-fw fa-paste\r\n'),
(8, 1, 'Daftar Permintaan Pinjam', 'admin/req', 'fas fa-fw fa-bell'),
(9, 2, 'Riwayat Peminjaman', 'user/riwayat', 'fas fa-fw fa-history');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id_jam`);

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
-- Indeks untuk tabel `peminjaman_kursi`
--
ALTER TABLE `peminjaman_kursi`
  ADD PRIMARY KEY (`id_peminjaman`);

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
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `peminjaman_kursi`
--
ALTER TABLE `peminjaman_kursi`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tempat_duduk`
--
ALTER TABLE `tempat_duduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
