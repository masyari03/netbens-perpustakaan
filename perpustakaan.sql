-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2024 at 05:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` int(16) NOT NULL,
  `judul_buku` varchar(30) NOT NULL,
  `penerbit` varchar(20) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `thn_terbit` year(4) NOT NULL,
  `jenis` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul_buku`, `penerbit`, `pengarang`, `thn_terbit`, `jenis`) VALUES
(1, 'puling', 'gramed', 'tree', '2000', 'fiksi'),
(3, 'Bintang', 'Gramedia', 'Tere Liye', '2017', 'Novel'),
(4, 'Bulan', 'Gramedia', 'Tere Liye', '2015', 'Cerita'),
(5, 'Matahari', 'Gramedia', 'Tere Liye', '2015', 'Makanan'),
(6, 'Bumi', 'Gramedia', 'Tere Liye', '2014', 'Novel'),
(7, 'Rembulan Tenggelam Di Wajahmu', 'Gramedia', 'Tere Liye', '2009', 'Novel'),
(8, 'Negeri Para Bedebah', 'Gramedia', 'Tere Liye', '2012', 'Novel'),
(9, 'Tentang Kamu ', 'Gramedia', 'Tere Liye', '2016', 'Novel'),
(10, 'Hujan', 'Gramedia', 'Tere Liye', '2019', 'Novel'),
(11, 'Opening The Door of your Heart', 'Gramedia', 'Ajahn Brahm', '2004', 'Fiksi'),
(12, 'The Beautiful Breath ', 'Gramedia', 'Ajahn Brahm', '2005', 'Fiksi'),
(13, 'Walking Meditation', 'Gramedia ', 'Ajahn Brahm', '2007', 'Novel'),
(14, 'The Art Of Desappearing', 'Gramedia ', 'Ajahn Brahm', '2011', 'Fiksi'),
(15, 'Dont Worry Be Grumpy', 'Gramedia', 'Ajahn Brahm', '2014', 'Novel'),
(16, 'Kindfulness', 'Gramedia', 'Ajahn Brahm', '2016', 'Novel'),
(17, 'Happy Everyday', 'Gramedia', 'Ajahn Brahm', '2018', 'Novel'),
(18, 'Falling is Flying ', 'Gramedia', 'Ajahn Brahm', '2019', 'Fiksi'),
(19, 'Meraih Bintang', 'Andi Publisher', 'Arlina I', '2017', 'Fiksi'),
(20, 'Dilan n Milaea', 'yusuf', 'mahadika', '2000', 'Novel'),
(21, 'legendaris', 'gramedia', 'jajang', '2010', 'Fiksi'),
(22, 'juki', 'gramed', 'fasha', '2018', 'komik'),
(23, 'ambon', 'gramed', 'tere', '2015', 'biografi'),
(24, 'Demond Slyer', 'Alfredo', 'Ujang ', '2021', 'Fantasi');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(16) NOT NULL,
  `nama_mahasiswa` varchar(30) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `kelas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama_mahasiswa`, `jurusan`, `kelas`) VALUES
('2021', 'Arif', 'TI', 'S6N'),
('2022', 'Edo', 'TI', 'S6N'),
('2023', 'Udjang', 'TI', 'S6N'),
('2024', 'Okta', 'TI', 'S6N'),
('2025', 'Bayu', 'TI', 'S6N'),
('2026', 'Pratama', 'IT', 'S6N'),
('2027', 'Rangga', 'TI', 'S6N'),
('2031', 'Bahar', 'TI', 'S6O'),
('2032', 'Feri', 'TI', 'S6O'),
('2034', 'Nisa', 'TI', 'S6M'),
('2035', 'Wahyu', 'TI', 'S6M'),
('2036', 'Pedro', 'TI', 'S6K'),
('2037', 'Rendi', 'TI', 'S6M'),
('2038', 'Kelvin', 'TI', 'S6M'),
('2039', 'Wildan', 'TI', 'S6K'),
('2040', 'ikhwan', 'B. Inggris', 'I1'),
('2050', 'Bagyano Alfredo', 'TI', 'S6N');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(16) NOT NULL,
  `id_users` int(11) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `id_users`, `nama_pegawai`) VALUES
('09876', 54, 'jajang'),
('114055', 13, 'Afham Kautsar Sahal'),
('1140556', 15, 'Nurdin M Sarif'),
('1140557', 16, 'Evita Sukaesih'),
('1140558', 18, 'Joda Akbar'),
('1140559', 19, 'Saibun'),
('1140560', 20, 'Yulia'),
('1140561', 22, 'Tomi'),
('1140562', 23, 'Ade Bombon'),
('1140564', 25, 'Judika'),
('1140565', 26, 'King Nasar'),
('1140566', 27, 'Mahalini Hapsari'),
('1140567', 28, 'Febrian Sinaga'),
('1140568', 29, 'Sulewati'),
('1140569', 30, 'Junior Andika'),
('1140570', 31, 'Joyko'),
('1140571', 34, 'Melita Sari Pudin'),
('1194055', 1, 'Muhammad Fahri Ramadhan'),
('123', 53, 'salman al'),
('2021', 50, 'edo'),
('202143502236', 14, 'Muhammad Asyari Arif Yusuf'),
('20244350', 57, 'salman ali');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `kode_buku` int(16) NOT NULL,
  `nip` varchar(16) NOT NULL,
  `npm` varchar(16) NOT NULL,
  `tgl_pinjam` date NOT NULL DEFAULT current_timestamp(),
  `tgl_kembali` date DEFAULT NULL,
  `kembali` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id_pinjam`, `kode_buku`, `nip`, `npm`, `tgl_pinjam`, `tgl_kembali`, `kembali`) VALUES
(26, 4, '114055', '2023', '2024-06-15', '2024-06-22', 'n'),
(28, 5, '114055', '2025', '2024-06-15', '2024-06-22', 'n'),
(29, 6, '114055', '2026', '2024-06-15', '2024-06-22', 'n'),
(32, 18, '114055', '2039', '2024-06-15', '2024-06-22', 'n'),
(33, 17, '114055', '2038', '2024-06-15', '2024-06-22', 'n'),
(34, 17, '114055', '2036', '2024-06-15', '2024-06-22', 'n'),
(38, 10, '114055', '2031', '2024-06-15', '2024-06-22', 'n'),
(64, 22, '202143502236', '2023', '2024-07-05', '2024-07-12', 'n'),
(65, 23, '202143502236', '2022', '2024-07-05', '2024-07-12', 'n'),
(67, 5, '202143502236', '2022', '2024-07-05', '2024-07-12', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `rak_buku`
--

CREATE TABLE `rak_buku` (
  `jenis` varchar(10) NOT NULL,
  `blok` varchar(10) NOT NULL,
  `lantai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rak_buku`
--

INSERT INTO `rak_buku` (`jenis`, `blok`, `lantai`) VALUES
('Biografi', '2B', 2),
('Fiksi', '1F', 1),
('Novel', '1N', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(11, 'asyari', '81dc9bdb52d04dc20036dbd8313ed055'),
(13, 'afham', '81dc9bdb52d04dc20036dbd8313ed055'),
(14, 'arif', '0ff6c3ace16359e41e37d40b8301d67f'),
(15, 'Unindraku11', '6f4922f45568161a8cdf4ad2299f6d23'),
(16, 'Unindraku12', '1f0e3dad99908345f7439f8ffabdffc4'),
(17, 'Unidraku12', '1f0e3dad99908345f7439f8ffabdffc4'),
(18, 'Unidraku13', '98f13708210194c475687be6106a3b84'),
(19, 'Unidraku14', '3c59dc048e8850243be8079a5c74d079'),
(20, 'Unidraku15', 'b6d767d2f8ed5d21a44b0e5886680cb9'),
(22, 'Unidraku16', '37693cfc748049e45d87b8c7d8b9aacd'),
(23, 'Undiraku17', '1ff1de774005f8da13f42943881c655f'),
(24, 'Unidraku18', '8e296a067a37563370ded05f5a3bf3ec'),
(25, 'Unidraku19', '4e732ced3463d06de0ca9a15b6153677'),
(26, 'Unidraku20', '02e74f10e0327ad868d138f2b4fdd6f0'),
(27, 'Unidraku21', '33e75ff09dd601bbe69f351039152189'),
(28, 'Unidraku22', '6ea9ab1baa0efb9e19094440c317e21b'),
(29, 'Unidraku23', '34173cb38f07f89ddbebc2ac9128303f'),
(30, 'Unidraku24', 'c16a5320fa475530d9583c34fd356ef5'),
(31, 'Unidraku25', '6364d3f0f495b6ab9dcf8d3b5c6e0b01'),
(32, 'Undiraku26', '182be0c5cdcd5072bb1864cdee4d3d6e'),
(34, 'Undiraku27', '182be0c5cdcd5072bb1864cdee4d3d6e'),
(35, 'Unidraku28', 'e369853df766fa44e1ed0ff613f563bd'),
(37, 'arif cuyy', '81dc9bdb52d04dc20036dbd8313ed055'),
(40, 'nur', '81dc9bdb52d04dc20036dbd8313ed055'),
(41, 'ari', 'fc292bd7df071858c2d0f955545673c1'),
(42, 'uli', 'dd55cec2ce59aca4e6647dcfbc90dc27'),
(43, 'ila', 'aafe26449a364e5d6b5db7dc565a9b6a'),
(44, 'fahri', '0d3133e7ed48278b30af611b4a8cd833'),
(46, 'ijul', '2037a7b65f3bc47544d8f7e00b32e203'),
(48, 'urin', '9305b73d359bd06734fee0b3638079e1'),
(49, 'unjun sutomang', '81dc9bdb52d04dc20036dbd8313ed055'),
(50, 'alfredo', '21232f297a57a5a743894a0e4a801fc3'),
(52, 'salmanbung', '81dc9bdb52d04dc20036dbd8313ed055'),
(53, 'salman', '81dc9bdb52d04dc20036dbd8313ed055'),
(54, 'jang', '81dc9bdb52d04dc20036dbd8313ed055'),
(57, 'man', 'd41d8cd98f00b204e9800998ecf8427e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`),
  ADD KEY `jenis` (`jenis`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `nip` (`nip`,`npm`),
  ADD KEY `npm` (`npm`),
  ADD KEY `kode_buku` (`kode_buku`) USING BTREE;

--
-- Indexes for table `rak_buku`
--
ALTER TABLE `rak_buku`
  ADD PRIMARY KEY (`jenis`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pinjam_ibfk_2` FOREIGN KEY (`npm`) REFERENCES `mahasiswa` (`npm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pinjam_ibfk_3` FOREIGN KEY (`kode_buku`) REFERENCES `buku` (`kode_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
