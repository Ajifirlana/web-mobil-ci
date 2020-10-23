-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 06:50 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `alamat` text,
  `no_hp` varchar(20) DEFAULT NULL,
  `foto` text NOT NULL,
  `tentang` text NOT NULL,
  `level` enum('admin') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `nama_lengkap`, `alamat`, `no_hp`, `foto`, `tentang`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin Mobil', '-', '-', '1149903433.jpeg', '-\r\n', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id_artikel` int(10) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isi` text,
  `gambar` text,
  `url` text,
  `view` int(100) DEFAULT NULL,
  `tgl_artikel` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(10) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `id_kat` int(10) NOT NULL,
  `status` enum('DI JUAL','DI SEWA') NOT NULL,
  `lokasi` text NOT NULL,
  `luas_tanah` varchar(300) NOT NULL,
  `luas_bangunan` varchar(300) NOT NULL,
  `kamar_tidur` varchar(300) NOT NULL,
  `lantai` varchar(300) NOT NULL,
  `kamar_mandi` varchar(300) NOT NULL,
  `sertifikat` varchar(100) DEFAULT NULL,
  `listrik` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` double NOT NULL,
  `gambar` text NOT NULL,
  `gambar2` text NOT NULL,
  `gambar3` text NOT NULL,
  `gambar4` text NOT NULL,
  `ket` enum('nego','net') NOT NULL,
  `view` int(11) NOT NULL,
  `tgl_barang` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `judul`, `id_kat`, `status`, `lokasi`, `luas_tanah`, `luas_bangunan`, `kamar_tidur`, `lantai`, `kamar_mandi`, `sertifikat`, `listrik`, `deskripsi`, `harga`, `gambar`, `gambar2`, `gambar3`, `gambar4`, `ket`, `view`, `tgl_barang`) VALUES
(10, 'Avanza Veloz', 1, 'DI JUAL', 'TRD Sportivo', '1000', 'Hitam', '&gt; 1.000-2.000 cc', '2011', '4x2', 'premium', 'Manual', 'Bagus', 115000000, 'img/barang/1.jpg', 'img/barang/11.jpg', 'img/barang/12.jpg', 'img/barang/13.jpg', 'nego', 3, '07-07-2020'),
(12, 'Toyota Hilux', 1, 'DI JUAL', 'TRD', '10000', 'Hitam', '&gt; 1.000-2.000 cc', '2018', 'Mantep', 'premium', 'Manual', 'Mantep Barang nya', 10000000, 'img/barang/barang_1526268105.jpg', 'img/barang/barang_15262681051.jpg', 'img/barang/barang_15262681052.jpg', 'img/barang/barang_1526268446.jpg', 'nego', 7, '14-07-2020');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kat`
--

CREATE TABLE `tbl_kat` (
  `id_kat` int(11) NOT NULL,
  `nama_kat` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kat`
--

INSERT INTO `tbl_kat` (`id_kat`, `nama_kat`) VALUES
(1, 'Mobil Sport'),
(2, 'Mobil Truk'),
(3, 'Mobil Pick Up'),
(4, 'Mobil Fuso');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kontak`
--

CREATE TABLE `tbl_kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` text,
  `email` text,
  `komentar` text,
  `tgl_kontak` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id_member` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `tgl_daftar` date NOT NULL,
  `terakhir_login` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id_member`, `nama`, `email`, `no_hp`, `alamat`, `username`, `password`, `tgl_daftar`, `terakhir_login`) VALUES
(2, 'Anwar-kun', 'asd@sdfg.com', 'sdfdsf', 'sdfsdfg', 'member', 'aa08769cdcb26674c6706093503ff0a3', '2017-11-13', '2017-11-15 08:11:01'),
(3, 'ade', 'ade@gmail.com', '08998', 'ade', 'ade', 'a562cfa07c2b1213b3a5c99b756fc206', '2020-06-14', '2020-06-19 02:06:42'),
(4, '4JI', 'aji@gmail.com', '081539803262', 'jambi', 'aji', '8d045450ae16dc81213a75b725ee2760', '2020-07-06', '2020-07-30 17:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web`
--

CREATE TABLE `tbl_web` (
  `id_web` int(10) NOT NULL,
  `nama_web` varchar(100) DEFAULT NULL,
  `telp` text,
  `twitter` text,
  `fb` text,
  `google_plus` text,
  `email` text,
  `alamat` text,
  `embed_lokasi` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_web`
--

INSERT INTO `tbl_web` (`id_web`, `nama_web`, `telp`, `twitter`, `fb`, `google_plus`, `email`, `alamat`, `embed_lokasi`) VALUES
(1, 'Penjualan Mobil', '-', '-', '-', '-', '-', '-', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_kat`
--
ALTER TABLE `tbl_kat`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indexes for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `tbl_web`
--
ALTER TABLE `tbl_web`
  ADD PRIMARY KEY (`id_web`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id_artikel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_kat`
--
ALTER TABLE `tbl_kat`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id_member` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_web`
--
ALTER TABLE `tbl_web`
  MODIFY `id_web` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
