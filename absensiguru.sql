-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 03:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensiguru`
--

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id` int(12) NOT NULL,
  `KaryawanID` int(100) NOT NULL,
  `Tanggal` date NOT NULL,
  `LeaveKategoriID` int(11) NOT NULL,
  `Masuk` time NOT NULL,
  `Pulang` time NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude1` varchar(100) NOT NULL,
  `longitude1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kehadiran`
--

INSERT INTO `kehadiran` (`id`, `KaryawanID`, `Tanggal`, `LeaveKategoriID`, `Masuk`, `Pulang`, `latitude`, `longitude`, `latitude1`, `longitude1`) VALUES
(1, 12345, '2024-04-27', 0, '18:43:00', '18:40:00', '-6.124517', '106.5423998', '-6.1316812', '106.5267481'),
(2, 123456, '2024-04-27', 0, '00:00:00', '21:20:00', '', '', '-6.154672', '106.5444241'),
(6, 12345, '2024-04-28', 0, '18:51:00', '18:52:00', '-6.1316812', '106.5267481', '-6.1316812', '106.5267481'),
(7, 123456, '2024-04-28', 0, '18:53:00', '18:53:00', '-6.1316812', '106.5267481', '-6.1316812', '106.5267481'),
(10, 123456, '2024-04-29', 0, '14:29:00', '00:00:00', '-6.1501832', '106.6880956', '', ''),
(11, 12345, '2024-04-29', 0, '19:36:00', '00:00:00', '-6.1543926', '106.5444241', '', ''),
(13, 12345, '2024-04-30', 2, '00:00:00', '00:00:00', '', '', '', ''),
(14, 12345, '2024-05-01', 0, '11:39:00', '00:00:00', '-6.154672', '106.5444241', '', ''),
(15, 123456, '2024-05-01', 1, '00:00:00', '00:00:00', '', '', '', ''),
(16, 12345, '2024-05-07', 0, '11:29:00', '00:00:00', '-6.1417632', '106.6836574', '', ''),
(17, 12345, '2024-05-08', 3, '00:00:00', '00:00:00', '', '', '', ''),
(18, 12345, '2024-05-09', 2, '00:00:00', '00:00:00', '', '', '', ''),
(19, 12345, '2024-05-13', 0, '20:23:00', '00:00:00', '-6.22592', '106.8302336', '', ''),
(20, 12345, '2024-06-01', 1, '00:00:00', '00:00:00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `leave_kategori`
--

CREATE TABLE `leave_kategori` (
  `LeaveKategoriID` int(2) NOT NULL,
  `Nama_Kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_kategori`
--

INSERT INTO `leave_kategori` (`LeaveKategoriID`, `Nama_Kategori`) VALUES
(1, 'Sakit'),
(2, 'Cuti'),
(3, 'Izin');

-- --------------------------------------------------------

--
-- Table structure for table `ms_karyawan`
--

CREATE TABLE `ms_karyawan` (
  `KaryawanID` int(12) NOT NULL,
  `Nama_Karyawan` varchar(100) NOT NULL,
  `TempatLahir` varchar(300) NOT NULL,
  `TanggalLahir` date NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Telepon` int(15) NOT NULL,
  `file` mediumblob NOT NULL,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ms_karyawan`
--

INSERT INTO `ms_karyawan` (`KaryawanID`, `Nama_Karyawan`, `TempatLahir`, `TanggalLahir`, `Alamat`, `Telepon`, `file`, `Status`) VALUES
(12345, 'Eka Putra', 'Tangerang', '2024-04-27', 'Perum', 12313321, 0x6c6f676f204253492e706e67, 1),
(123456, 'yosua koesnanto', 'Tangerang', '2024-04-01', 'Perum', 321321321, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id` int(11) NOT NULL,
  `PengajuanID` varchar(100) NOT NULL,
  `KaryawanID` int(100) NOT NULL,
  `Tanggal` date NOT NULL,
  `Tanggal2` date NOT NULL,
  `LeaveKategoriID` int(2) NOT NULL,
  `File` mediumblob NOT NULL,
  `Keterangan` varchar(100) NOT NULL,
  `StatusP` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id`, `PengajuanID`, `KaryawanID`, `Tanggal`, `Tanggal2`, `LeaveKategoriID`, `File`, `Keterangan`, `StatusP`) VALUES
(11, 'JKT240400002', 123456, '2024-05-01', '2024-05-01', 1, '', 'Asam Lambung', 1),
(15, 'JKT240500003', 12345, '2024-05-08', '2024-05-08', 3, '', 'Telat', 1),
(16, 'JKT240500004', 12345, '2024-05-09', '2024-05-09', 2, '', 'Cuti', 1),
(17, 'JKT240500005', 12345, '2024-05-13', '2024-05-13', 1, '', 'Asam Lambung', 0),
(18, 'JKT240500006', 12345, '2024-05-14', '2024-05-14', 2, '', 'cuti', 2),
(19, 'JKT240500007', 12345, '2024-06-01', '2024-06-01', 1, 0x53637265656e73686f74202835292e706e67, 'ga bisa dateng', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'Admin', '$2y$10$VC/ilvX3z69EpF7mCPwVTep/MT/Hy0HG357rt1j.Ml2zEMS4iQDIi', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
