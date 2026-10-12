-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2026 at 05:09 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rental_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id_mobil` varchar(10) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `harga_sewa_per_hari` double NOT NULL,
  `kapasitas_penumpang` int DEFAULT NULL,
  `kapasitas_beban_ton` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`id_mobil`, `merk`, `kategori`, `harga_sewa_per_hari`, `kapasitas_penumpang`, `kapasitas_beban_ton`) VALUES
('M01', 'Avanza', 'Mobil Penumpang', 350000, 7, NULL),
('M02', 'Pick Up L300', 'Mobil Angkutan', 400000, NULL, 1.5);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_sewa`
--

CREATE TABLE `transaksi_sewa` (
  `id_transaksi` int NOT NULL,
  `nama_penyewa` varchar(50) NOT NULL,
  `id_mobil` varchar(10) NOT NULL,
  `lama_sewa_hari` int NOT NULL,
  `total_biaya` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi_sewa`
--

INSERT INTO `transaksi_sewa` (`id_transaksi`, `nama_penyewa`, `id_mobil`, `lama_sewa_hari`, `total_biaya`) VALUES
(1, 'Pompom', 'M01', 3, 1050000),
(2, 'Dhikaa', 'M02', 3, 1200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `transaksi_sewa`
--
ALTER TABLE `transaksi_sewa`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_mobil` (`id_mobil`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi_sewa`
--
ALTER TABLE `transaksi_sewa`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi_sewa`
--
ALTER TABLE `transaksi_sewa`
  ADD CONSTRAINT `transaksi_sewa_ibfk_1` FOREIGN KEY (`id_mobil`) REFERENCES `kendaraan` (`id_mobil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
