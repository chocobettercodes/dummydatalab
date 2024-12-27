-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Des 2024 pada 21.16
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dummydatalab`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `persons`
--

CREATE TABLE `persons` (
  `id_persons` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `streetname` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `persons`
--

INSERT INTO `persons` (`id_persons`, `first_name`, `last_name`, `email`, `phone`, `birthday`, `gender`, `street`, `streetname`, `city`, `image`, `created_at`) VALUES
(43, 'Alika', 'Napitupulu', 'lpurwanti@hastuti.id', '+29021621', '2023-04-28', 'female', 'Ds. Gegerkalong Hilir No. 268', 'Bhayangkara', 'Gunungsitoli', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(45, 'Jumadi', 'Halimah', 'mandala.emin@yahoo.co.id', '+50522168645', '1946-01-28', 'male', 'Gg. Pelajar Pejuang 45 No. 233', 'Dipatiukur', 'Singkawang', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(46, 'Faizah', 'Hastuti', 'pfirgantoro@gmail.co.id', '+270955485691', '1981-08-06', 'female', 'Jr. PHH. Mustofa No. 603', 'Diponegoro', 'Parepare', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(47, 'Melinda walah', 'Gunawan', 'ana87@prasetya.tv', '+432409898316', '1954-10-12', 'female', 'Ki. Yos Sudarso No. 805', 'Pasteur', 'Metro tv', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(48, 'Joko', 'Simbolon', 'gsiregar@utami.id', '+32316731744', '1977-10-19', 'male', 'Kpg. BKR No. 926', 'Lada', 'Tomohon', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(49, 'Violet', 'Nababan', 'nurdiyanti.daliono@yolanda.id', '+638208567292', '1948-07-11', 'female', 'Dk. Mahakam No. 87', 'Cokroaminoto', 'Pariaman', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(50, 'Karta', 'Yolanda', 'lprabowo@saputra.go.id', '+387825913565', '1947-08-29', 'male', 'Kpg. Cikutra Barat No. 351', 'Ujung', 'Bau-Bau', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(53, 'Novi', 'Puspita', 'praba50@yahoo.com', '+25757399225', '1965-03-01', 'female', 'Ds. Ahmad Dahlan No. 607', 'Achmad Yani', 'Yogyakarta', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(54, 'Tania', 'Anggraini', 'zelaya.prakasa@halim.go.id', '+97382000365', '1968-03-24', 'female', 'Ki. Sukajadi No. 457', 'Gremet', 'Payakumbuh', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(55, 'Lanang', 'Mulyani', 'saptono.mulyono@gmail.co.id', '+3819742224438', '1996-12-08', 'male', 'Jln. Salam No. 501', 'Bagis Utama', 'Administrasi Jakarta Pusat', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(56, 'Rangga', 'Purnawati', 'irawan.hartana@yahoo.co.id', '+2973857642', '1949-06-20', 'male', 'Gg. Haji No. 972', 'Teuku Umar', 'Sibolga', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(57, 'Putu', 'Budiyanto', 'lili.oktaviani@gmail.co.id', '+5076690719255', '1970-05-06', 'male', 'Gg. M.T. Haryono No. 14', 'Wahidin Sudirohusodo', 'Gunungsitoli', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(58, 'Bakiman', 'Samosir', 'mala.siregar@yahoo.co.id', '+998746549627', '1975-02-19', 'male', 'Jr. Wahidin No. 497', 'W.R. Supratman', 'Samarinda', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(59, 'Alika', 'Sihombing', 'maheswara.dian@wahyuni.in', '+2258249785461', '1999-05-24', 'female', 'Jln. Setia Budi No. 757', 'Gatot Subroto', 'Pontianak', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(60, 'Kenzie', 'Wasita', 'sitompul.diana@budiyanto.desa.id', '+22283234861', '1982-11-10', 'male', 'Ki. Gajah No. 102', 'Cikapayang', 'Kupang', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(61, 'Timbul', 'Winarno', 'lulut.aryani@mansur.com', '+10901222662', '1956-02-03', 'male', 'Dk. Juanda No. 765', 'Gatot Subroto', 'Tanjung Pinang', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(62, 'Titin', 'Setiawan', 'wage43@yahoo.co.id', '+962485298248', '1972-12-06', 'female', 'Jr. Cemara No. 670', 'PHH. Mustofa', 'Kupang', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(63, 'Elon', 'Kuswoyo', 'yriyanti@yahoo.com', '+8808793428639', '1988-10-02', 'male', 'Ki. Baing No. 179', 'Gajah', 'Tebing Tinggi', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(64, 'Mila', 'Hakim', 'bakti.nasyidah@wahyudin.in', '+979726594378', '1974-02-12', 'female', 'Kpg. Basoka No. 51', 'Arifin', 'Tidore Kepulauan', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(65, 'Pardi', 'Puspasari', 'safitri.emil@gmail.co.id', '+258195490924', '1939-08-13', 'male', 'Kpg. Agus Salim No. 44', 'Barasak', 'Pematangsiantar', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(66, 'Cawuk', 'Hassanah', 'mardhiyah.uchita@gmail.co.id', '+35041829526', '1956-04-07', 'male', 'Gg. Cemara No. 585', 'S. Parman', 'Lhokseumawe', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(67, 'Hani', 'Nashiruddin', 'sakti.tamba@dongoran.sch.id', '+22320141607', '2015-04-01', 'female', 'Dk. B.Agam Dlm No. 213', 'Juanda', 'Tangerang', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(68, 'Salwa', 'Hassanah', 'ina.iswahyudi@gmail.com', '+8826024189631', '1940-03-26', 'female', 'Jln. Mahakam No. 223', 'B.Agam 1', 'Metro', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(69, 'Dimas', 'Wijaya', 'jono16@mayasari.biz', '+995543924008', '1950-04-15', 'male', 'Jr. Raden No. 308', 'Ketandan', 'Ternate', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(70, 'Janet', 'Lailasari', 'tnamaga@yuniar.sch.id', '+256401003637', '2013-03-10', 'female', 'Ds. Hasanuddin No. 557', 'Ronggowarsito', 'Tidore Kepulauan', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(71, 'Rika', 'Permata', 'yolanda.leo@hariyah.or.id', '+9706536085660', '1972-03-31', 'female', 'Jln. Bakau Griya Utama No. 897', 'Kyai Gede', 'Salatiga', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(72, 'Mursita', 'Mustofa', 'safina.prastuti@gmail.co.id', '+2250255134572', '1939-04-24', 'male', 'Dk. Bawal No. 737', 'Krakatau', 'Cirebon', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(73, 'Agnes', 'Sudiati', 'swijayanti@gmail.co.id', '+35791981412', '1979-07-07', 'female', 'Dk. Kali No. 446', 'Bak Air', 'Kotamobagu', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(74, 'Karma', 'Habibi', 'karimah59@yahoo.com', '+6784387259', '1936-01-24', 'male', 'Jr. Tentara Pelajar No. 925', 'Wahid', 'Banjar', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(75, 'Yunita', 'Marpaung', 'amelia95@suartini.com', '+6834839049', '2010-11-25', 'female', 'Gg. Raden No. 683', 'Samanhudi', 'Kotamobagu', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(76, 'Mustika', 'Salahudin', 'jaswadi34@yahoo.com', '+250184578815', '1954-03-08', 'male', 'Dk. Dago No. 821', 'Yap Tjwan Bing', 'Cilegon', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(77, 'Paiman', 'Zulaika', 'wsiregar@yahoo.co.id', '+256537293899', '1973-09-07', 'male', 'Kpg. Cikutra Barat No. 702', 'Yosodipuro', 'Payakumbuh', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(78, 'Elisa', 'Sitorus', 'ulva81@gmail.com', '+2389806849', '1935-11-27', 'female', 'Jln. Rajiman No. 486', 'Ciumbuleuit', 'Jambi', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(79, 'Hana', 'Andriani', 'baktianto31@gmail.com', '+303442808949', '1992-12-12', 'female', 'Kpg. Reksoninten No. 477', 'Flores', 'Jambi', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(80, 'Rahmi', 'Kurniawan', 'shakila.wasita@gmail.co.id', '+204235375369', '1992-01-30', 'female', 'Dk. Batako No. 90', 'Tambak', 'Sungai Penuh', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(81, 'Indah', 'Situmorang', 'salahudin.nilam@gmail.co.id', '+2675758233475', '1950-03-18', 'female', 'Dk. R.E. Martadinata No. 849', 'Madrasah', 'Bogor', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(82, 'Okto', 'Hakim', 'jumari64@permadi.in', '+245047016052', '1957-02-11', 'male', 'Jr. Ciwastra No. 136', 'Tubagus Ismail', 'Gorontalo', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(83, 'Daliono', 'Dabukke', 'elvina64@yuliarti.info', '+26673803890', '1956-01-13', 'male', 'Jr. Bara Tambar No. 542', 'Rajawali Barat', 'Sukabumi', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(84, 'Kiandra', 'Halim', 'ian.tampubolon@novitasari.web.id', '+2397674592', '1972-05-17', 'female', 'Psr. Bakaru No. 297', 'Radio', 'Tangerang Selatan', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(85, 'Padma', 'Yuliarti', 'rgunarto@nainggolan.or.id', '+8864280090676', '2009-08-09', 'female', 'Ds. Basket No. 710', 'Uluwatu', 'Bima', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(86, 'Cawuk', 'Mandasari', 'andriani.elvina@gmail.com', '+85381139207', '1987-08-06', 'male', 'Jr. Ters. Buah Batu No. 829', 'W.R. Supratman', 'Ambon', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(87, 'Zulaikha', 'Laksita', 'purwanti.yance@wahyuni.co.id', '+23233123114', '1955-07-27', 'female', 'Dk. Salak No. 785', 'Yosodipuro', 'Sawahlunto', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(88, 'Atmaja', 'Pratiwi', 'keisha28@pudjiastuti.biz', '+221584807134', '1969-10-03', 'male', 'Gg. Batako No. 931', 'Kebangkitan Nasional', 'Banda Aceh', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(89, 'Ami', 'Maheswara', 'siregar.kartika@yahoo.com', '+580956667786', '1939-11-07', 'female', 'Ki. Pintu Besar Selatan No. 183', 'Bak Air', 'Batu', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(90, 'Bancar', 'Uyainah', 'digdaya68@prastuti.or.id', '+224269217274', '2002-01-11', 'male', 'Psr. Cihampelas No. 120', 'Sentot Alibasa', 'Binjai', 'http://placeimg.com/640/480/people', '2024-12-16 00:17:13'),
(91, 'Tari menari test', 'Zulaika', 'kariman.uwais@gmail.com', '+568446457486', '2002-08-30', 'female', 'Gg. Cut Nyak Dien No. 282', 'Raden Saleh No. 32', 'Banjarbaru', '', '2024-12-22 10:45:05'),
(92, 'Tari menari kok', 'Zulaika', 'kariman.uwais@gmail.com', '+568446457486', '2002-08-30', 'female', 'Gg. Cut Nyak Dien No. 282', 'Raden Saleh No. 32', 'Banjarbaru', '', '2024-12-22 10:46:33'),
(93, 'Puti', 'Fujiati', 'tantri27@rahmawati.tv', '+22826600880', '2003-01-13', 'female', 'Dk. Bazuka Raya No. 563', 'Panjaitan', 'Bogor test', '', '2024-12-28 02:34:32'),
(94, 'Puti test', 'Fujiati', 'tantri27@rahmawati.tv', '+22826600880', '2003-01-13', 'female', 'Dk. Bazuka Raya No. 563', 'Panjaitan', 'Bogor goooooooor', '', '2024-12-28 02:45:50'),
(95, 'Puti test', 'Fujiati', 'tantri27@rahmawati.tv', '+22826600880', '2003-01-13', 'female', 'Dk. Bazuka Raya No. 563', 'Panjaitan', 'Bogor gooooooooooooor', NULL, '2024-12-28 02:47:02'),
(96, 'Jumadi ddididi', 'Halimah', 'mandala.emin@yahoo.co.id', '+50522168645', '1946-01-28', 'male', 'Gg. Pelajar Pejuang 45 No. 233', 'Dipatiukur', 'Singkawang wang', NULL, '2024-12-28 02:48:46'),
(97, 'Puti putput', 'Fujiati', 'tantri27@rahmawati.tv', '+22826600880', '2003-01-13', 'female', 'Dk. Bazuka Raya No. 563', 'Panjaitan', 'Bogor gooooor', NULL, '2024-12-28 02:49:50'),
(98, 'Jessi', 'Kristin ', 'jesjes97@gmail.com', '1234509877651', '1998-09-10', 'female', 'Jl. Cemara', 'Jl. Cemara Labat, Bakunase 2', 'Kota Kupang', NULL, '2024-12-28 02:55:36'),
(99, 'kucing', 'manis', 'kucingkucing@mail.com', '00000011112', '2002-01-10', 'female', 'Jl. Bahagia ', 'Jl. Bahagia selalu', 'Kota Dalam Mimpi', NULL, '2024-12-28 03:26:26'),
(100, 'Ilyas', 'Budiyanto', 'tari.budiman@nasyidah.sch.id', '+67023278383', '1935-04-09', 'male', 'Ki. Baha No. 189', 'Sutarto', 'Pekalongan', 'http://placeimg.com/640/480/people', '2024-12-28 03:27:10'),
(101, 'Rika', 'Sitompul', 'sihombing.bakidin@gmail.com', '+299683776', '2001-01-27', 'female', 'Jr. Abang No. 84', 'Setia Budi', 'Tual', 'http://placeimg.com/640/480/people', '2024-12-28 03:27:10'),
(102, 'Pandu', 'Sudiati', 'dagel.agustina@yahoo.com', '+245868384227', '2012-06-03', 'male', 'Ki. Gajah Mada No. 434', 'Pahlawan', 'Solok', 'http://placeimg.com/640/480/people', '2024-12-28 03:27:10'),
(103, 'Martani', 'Putra', 'efirmansyah@yahoo.co.id', '+385087409463', '1942-03-11', 'male', 'Ds. Raden No. 354', 'R.M. Said', 'Bukittinggi', 'http://placeimg.com/640/480/people', '2024-12-28 03:27:10'),
(104, 'Gawati', 'Prayoga', 'qsiregar@gmail.co.id', '+5959223288833', '2019-07-24', 'female', 'Kpg. Baranang Siang Indah No. 11', 'Antapani Lama', 'Tanjung Pinang', 'http://placeimg.com/640/480/people', '2024-12-28 03:27:10'),
(105, 'Putri', 'Tarihoran', 'restu20@manullang.my.id', '+354464169253', '1971-09-08', 'female', 'Ds. Bappenas No. 388', 'Sukajadi', 'Bandar Lampung', 'http://placeimg.com/640/480/people', '2024-12-28 03:30:30'),
(106, 'Puput', 'Melani', 'ymaryati@rahayu.asia', '+397496619699', '2003-02-26', 'female', 'Ds. Barasak No. 247', 'Yogyakarta', 'Batu', 'http://placeimg.com/640/480/people', '2024-12-28 03:30:30'),
(107, 'Karja', 'Saefullah', 'wgunawan@yahoo.co.id', '+255797317257', '2015-10-17', 'male', 'Psr. Bagis Utama No. 436', 'Bahagia', 'Manado', 'http://placeimg.com/640/480/people', '2024-12-28 03:30:30'),
(108, 'Indra', 'Uyainah', 'pudjiastuti.rahmi@mulyani.or.id', '+213210565814', '1988-08-06', 'male', 'Jr. Abdul Rahmat No. 16', 'Cokroaminoto', 'Subulussalam', 'http://placeimg.com/640/480/people', '2024-12-28 03:30:30'),
(109, 'Galang', 'Sitorus', 'hpurnawati@yahoo.com', '+258077993396', '2001-08-06', 'male', 'Jr. Salam No. 701', 'Otista', 'Bengkulu', 'http://placeimg.com/640/480/people', '2024-12-28 03:30:30'),
(110, 'Budi', 'Wastuti', 'raisa.mandasari@yahoo.co.id', '+508152339777', '2017-10-13', 'male', 'Jr. Jagakarsa No. 645', 'Sudirman', 'Blitar', 'http://placeimg.com/640/480/people', '2024-12-28 03:31:17'),
(111, 'Cager', 'Palastri', 'prakosa.siregar@yahoo.com', '+2255942894313', '2019-05-22', 'male', 'Jln. Jagakarsa No. 111', 'Gajah', 'Sorong', 'http://placeimg.com/640/480/people', '2024-12-28 03:31:17'),
(112, 'Raina', 'Rahmawati', 'wardaya91@yahoo.co.id', '+651038920076', '1984-07-23', 'female', 'Ds. Sukajadi No. 945', 'Basmol Raya', 'Administrasi Jakarta Pusat', 'http://placeimg.com/640/480/people', '2024-12-28 03:31:17'),
(113, 'Taswir', 'Purwanti', 'wadi.mahendra@yahoo.co.id', '+992223579376', '1943-05-06', 'male', 'Ds. Veteran No. 504', 'Bakin', 'Pariaman', 'http://placeimg.com/640/480/people', '2024-12-28 03:31:17'),
(114, 'Prayitna', 'Dabukke', 'ganda.zulkarnain@yahoo.com', '+50586694685', '1971-11-04', 'male', 'Jln. S. Parman No. 296', 'Samanhudi', 'Sorong', 'http://placeimg.com/640/480/people', '2024-12-28 03:31:17'),
(115, 'Saka', 'Ramadan', 'padmi47@pradipta.id', '+2385862567', '1953-07-28', 'male', 'Psr. Rajiman No. 207', 'Banal', 'Banjar', 'http://placeimg.com/640/480/people', '2024-12-28 03:31:51'),
(116, 'Sakura', 'Mardhiyah', 'napitupulu.jamal@hasanah.info', '+33979468694', '2011-03-29', 'female', 'Dk. Pasteur No. 838', 'Ujung', 'Padangsidempuan', 'http://placeimg.com/640/480/people', '2024-12-28 03:31:51'),
(117, 'Nasim', 'Marpaung', 'dongoran.faizah@damanik.or.id', '+6746887697', '1941-05-22', 'male', 'Ki. Baing No. 16', 'Jambu', 'Lhokseumawe', 'http://placeimg.com/640/480/people', '2024-12-28 03:31:51'),
(118, 'Eko', 'Pratiwi', 'jati82@hutagalung.co', '+245602620590', '1947-01-22', 'male', 'Dk. Casablanca No. 809', 'Bagis Utama', 'Blitar', 'http://placeimg.com/640/480/people', '2024-12-28 03:31:51'),
(119, 'Asmadi', 'Maheswara', 'kusmawati.clara@gmail.com', '+41335676279', '2011-03-08', 'male', 'Psr. Barat No. 909', 'Yogyakarta', 'Palopo', 'http://placeimg.com/640/480/people', '2024-12-28 03:31:51'),
(120, 'Karya', 'Melani', 'cici.adriansyah@gmail.co.id', '+579451068259', '2008-07-10', 'male', 'Ki. Barat No. 189', 'Basoka Raya', 'Mataram', 'http://placeimg.com/640/480/people', '2024-12-28 03:38:19'),
(121, 'Rini', 'Kuswandari', 'carla16@gmail.co.id', '+35052806990', '1935-07-19', 'female', 'Jln. Baya Kali Bungur No. 279', 'Muwardi', 'Prabumulih', 'http://placeimg.com/640/480/people', '2024-12-28 03:38:19'),
(122, 'Halim', 'Sihotang', 'hartati.sarah@yahoo.co.id', '+992790945043', '1978-06-17', 'male', 'Psr. Supono No. 566', 'Kyai Gede', 'Mataram', 'http://placeimg.com/640/480/people', '2024-12-28 03:38:19'),
(123, 'Himawan', 'Siregar', 'gasti03@yahoo.com', '+852516370984', '1991-04-26', 'male', 'Jr. Krakatau No. 19', 'Bawal', 'Kendari', 'http://placeimg.com/640/480/people', '2024-12-28 03:38:19'),
(124, 'Raisa', 'Permadi', 'gandewa.yolanda@gmail.com', '+431924820551', '1946-04-28', 'female', 'Kpg. Baranangsiang No. 341', 'Tambun', 'Tidore Kepulauan', 'http://placeimg.com/640/480/people', '2024-12-28 03:38:19'),
(125, 'Kusuma', 'Astuti', 'yulianti.ulva@gmail.com', '+585367080012', '1969-10-30', 'male', 'Jln. Kalimantan No. 827', 'Laswi', 'Bukittinggi', 'http://placeimg.com/640/480/people', '2024-12-28 03:38:32'),
(126, 'Laila', 'Winarno', 'maryadi.kania@yahoo.com', '+6791283369', '1962-05-23', 'female', 'Jr. Pasteur No. 833', 'Adisucipto', 'Tomohon', 'http://placeimg.com/640/480/people', '2024-12-28 03:38:32'),
(127, 'Puput', 'Fujiati', 'julia82@gmail.com', '+6809269257', '1952-10-16', 'female', 'Gg. Rajawali No. 296', 'Eka', 'Cimahi', 'http://placeimg.com/640/480/people', '2024-12-28 03:38:32'),
(128, 'Cahyanto', 'Maulana', 'zelda.mayasari@yahoo.co.id', '+681768734483', '2001-08-29', 'male', 'Dk. Dahlia No. 463', 'Soekarno Hatta', 'Kotamobagu', 'http://placeimg.com/640/480/people', '2024-12-28 03:38:32'),
(129, 'Ophelia', 'Agustina', 'namaga.tantri@pudjiastuti.sch.id', '+2970512765', '1992-10-18', 'female', 'Psr. Babadak No. 423', 'Bakaru', 'Kediri', 'http://placeimg.com/640/480/people', '2024-12-28 03:38:32'),
(130, 'Darman', 'Hakim', 'ajeng81@gmail.co.id', '+628372498741', '1973-09-19', 'male', 'Dk. Raden Saleh No. 549', 'Tentara Pelajar', 'Tebing Tinggi', 'http://placeimg.com/640/480/people', '2024-12-28 03:41:26'),
(131, 'Jamil', 'Budiman', 'manggraini@tarihoran.go.id', '+5974593353', '1936-04-18', 'male', 'Psr. Gajah No. 114', 'Pacuan Kuda', 'Batam', 'http://placeimg.com/640/480/people', '2024-12-28 03:41:26'),
(132, 'Mustika', 'Nashiruddin', 'silvia.suryatmi@putra.biz.id', '+979874696001', '1938-04-08', 'male', 'Jln. Bacang No. 114', 'Suprapto', 'Surakarta', 'http://placeimg.com/640/480/people', '2024-12-28 03:41:26'),
(133, 'Ajiman', 'Namaga', 'fitria.wibowo@gmail.co.id', '+6913563364', '1987-04-10', 'male', 'Ki. Baiduri No. 400', 'Suprapto', 'Tebing Tinggi', 'http://placeimg.com/640/480/people', '2024-12-28 03:41:26'),
(134, 'Maman', 'Wibowo', 'ade.hutasoit@namaga.ac.id', '+9726213292284', '1994-10-08', 'male', 'Ki. Veteran No. 451', 'Hasanuddin', 'Solok', 'http://placeimg.com/640/480/people', '2024-12-28 03:41:26'),
(135, 'Bahuwirya', 'Haryanti', 'elvin.usamah@gunarto.asia', '+22230817061', '1998-05-16', 'male', 'Jln. Baung No. 727', 'Supono', 'Lubuklinggau', 'http://placeimg.com/640/480/people', '2024-12-28 03:44:02'),
(136, 'Yuni', 'Andriani', 'vpuspasari@yahoo.com', '+22709761390', '1962-08-02', 'female', 'Psr. Sampangan No. 34', 'Jagakarsa', 'Administrasi Jakarta Barat', 'http://placeimg.com/640/480/people', '2024-12-28 03:44:02'),
(137, 'Kenzie', 'Wasita', 'mulyani.dina@gmail.com', '+40117097103', '2015-10-25', 'male', 'Kpg. Hang No. 266', 'Rajiman', 'Cimahi', 'http://placeimg.com/640/480/people', '2024-12-28 03:44:02'),
(138, 'Karsa', 'Yolanda', 'heru.napitupulu@purnawati.asia', '+35647209357', '1937-11-28', 'male', 'Jr. Juanda No. 854', 'Soekarno Hatta', 'Kediri', 'http://placeimg.com/640/480/people', '2024-12-28 03:44:02'),
(139, 'Padma', 'Pangestu', 'hamima99@nainggolan.tv', '+37447373828', '2007-06-06', 'female', 'Kpg. Rajiman No. 918', 'Balikpapan', 'Jayapura', 'http://placeimg.com/640/480/people', '2024-12-28 03:44:02'),
(140, 'Jelita', 'Saputra', 'balapati.pranowo@gmail.com', '+351974737672', '1992-08-11', 'female', 'Dk. Umalas No. 975', 'Samanhudi', 'Singkawang', 'http://placeimg.com/640/480/people', '2024-12-28 03:44:17'),
(141, 'Zelaya', 'Mustofa', 'kuswandari.yessi@yahoo.co.id', '+5012155323', '1956-06-17', 'female', 'Kpg. Yogyakarta No. 504', 'Dipenogoro', 'Semarang', 'http://placeimg.com/640/480/people', '2024-12-28 03:44:17'),
(142, 'Mursita', 'Tarihoran', 'uoktaviani@yahoo.co.id', '+221747608850', '1967-05-26', 'male', 'Psr. Salak No. 667', 'Diponegoro', 'Pekalongan', 'http://placeimg.com/640/480/people', '2024-12-28 03:44:17'),
(143, 'Edi', 'Andriani', 'gthamrin@winarsih.sch.id', '+252955765240', '2002-06-01', 'male', 'Jln. Hayam Wuruk No. 553', 'Abdul', 'Mojokerto', 'http://placeimg.com/640/480/people', '2024-12-28 03:44:17'),
(144, 'Agnes', 'Salahudin', 'novitasari.amelia@siregar.biz.id', '+40144467093', '1967-01-31', 'female', 'Ds. Suprapto No. 196', 'Bambu', 'Madiun', 'http://placeimg.com/640/480/people', '2024-12-28 03:44:17'),
(145, 'Johan', 'Riyanti', 'jinawi.mandala@yahoo.co.id', '+75090945458', '1961-03-10', 'male', 'Ki. Babakan No. 241', 'Bayam', 'Kediri', 'http://placeimg.com/640/480/people', '2024-12-28 03:45:02'),
(146, 'Cawisadi', 'Suryatmi', 'widya21@maheswara.go.id', '+35638945116', '2001-08-15', 'male', 'Jln. Bank Dagang Negara No. 15', 'Arifin', 'Bandar Lampung', 'http://placeimg.com/640/480/people', '2024-12-28 03:45:02'),
(147, 'Bagas', 'Widiastuti', 'rajasa.simon@hartati.tv', '+2976995260', '2000-07-22', 'male', 'Jln. Achmad Yani No. 554', 'W.R. Supratman', 'Cirebon', 'http://placeimg.com/640/480/people', '2024-12-28 03:45:02'),
(148, 'Estiawan', 'Prabowo', 'titi92@mandala.desa.id', '+2670139365461', '1976-05-15', 'male', 'Ki. Pintu Besar Selatan No. 496', 'Setia Budi', 'Serang', 'http://placeimg.com/640/480/people', '2024-12-28 03:45:02'),
(149, 'Maida', 'Pranowo', 'cici.adriansyah@yahoo.com', '+883396540782', '1984-07-17', 'female', 'Jr. Ketandan No. 1', 'Bayam', 'Surakarta', 'http://placeimg.com/640/480/people', '2024-12-28 03:45:02'),
(150, 'Hari', 'Budiyanto', 'bakti.andriani@halimah.in', '+583109071319', '2017-12-17', 'male', 'Jln. Cemara No. 816', 'Cikutra Barat', 'Sawahlunto', 'http://placeimg.com/640/480/people', '2024-12-28 03:45:39'),
(151, 'Kezia', 'Yuniar', 'upurwanti@gmail.co.id', '+2385961590', '2023-05-23', 'female', 'Jr. Baung No. 544', 'B.Agam Dlm', 'Jambi', 'http://placeimg.com/640/480/people', '2024-12-28 03:45:39'),
(152, 'Jagaraga', 'Wijayanti', 'enugroho@kuswandari.asia', '+9641862138778', '1978-02-11', 'male', 'Jr. Babah No. 620', 'Juanda', 'Kediri', 'http://placeimg.com/640/480/people', '2024-12-28 03:45:39'),
(153, 'Malika', 'Wahyuni', 'hasan.wijayanti@gmail.com', '+843056307486', '1975-06-06', 'female', 'Jr. Jaksa No. 806', 'Bata Putih', 'Tanjungbalai', 'http://placeimg.com/640/480/people', '2024-12-28 03:45:39'),
(154, 'Nurul', 'Fujiati', 'ypuspita@nashiruddin.biz', '+4560090792', '1935-04-21', 'female', 'Jln. Kalimalang No. 409', 'Kartini', 'Depok', 'http://placeimg.com/640/480/people', '2024-12-28 03:45:39'),
(155, 'Devi', 'Saputra', 'siregar.nilam@yahoo.com', '+41416853561', '1953-07-15', 'female', 'Gg. Bak Air No. 224', 'Babah', 'Tarakan', 'http://placeimg.com/640/480/people', '2024-12-28 03:46:22'),
(156, 'Elvina', 'Laksmiwati', 'cakrawangsa.napitupulu@suryatmi.biz.id', '+37369525587', '1970-02-19', 'female', 'Gg. Sam Ratulangi No. 561', 'Panjaitan', 'Ambon', 'http://placeimg.com/640/480/people', '2024-12-28 03:46:22'),
(157, 'Samsul', 'Safitri', 'elvina74@yahoo.com', '+6901745355', '1949-07-08', 'male', 'Ds. Laswi No. 839', 'Batako', 'Palu', 'http://placeimg.com/640/480/people', '2024-12-28 03:46:22'),
(158, 'Kayla', 'Aryani', 'nmangunsong@rajasa.biz', '+258557757824', '2018-07-16', 'female', 'Psr. Lada No. 736', 'Jayawijaya', 'Cimahi', 'http://placeimg.com/640/480/people', '2024-12-28 03:46:22'),
(159, 'Teddy', 'Prastuti', 'ganda.nasyidah@hastuti.tv', '+37458787927', '1972-05-29', 'male', 'Kpg. Padma No. 398', 'Ters. Buah Batu', 'Prabumulih', 'http://placeimg.com/640/480/people', '2024-12-28 03:46:22'),
(160, 'Wakiman', 'Maryati', 'emangunsong@saputra.co', '+265462956050', '2022-08-07', 'male', 'Ki. Gedebage Selatan No. 176', 'Karel S. Tubun', 'Madiun', 'http://placeimg.com/640/480/people', '2024-12-28 03:46:22'),
(161, 'Banawi', 'Kuswandari', 'mandala.cindy@yahoo.co.id', '+224734525408', '1959-04-05', 'male', 'Dk. Surapati No. 469', 'Bawal', 'Lubuklinggau', 'http://placeimg.com/640/480/people', '2024-12-28 03:46:22'),
(162, 'Karman', 'Simanjuntak', 'usimbolon@winarno.or.id', '+4737784759', '1950-04-09', 'male', 'Ki. Bambu No. 202', 'Cikutra Barat', 'Pariaman', 'http://placeimg.com/640/480/people', '2024-12-28 03:46:22'),
(163, 'Langgeng', 'Puspita', 'firgantoro.agnes@gmail.co.id', '+50066482', '2008-01-04', 'male', 'Jr. Bagas Pati No. 426', 'Babakan', 'Padangsidempuan', 'http://placeimg.com/640/480/people', '2024-12-28 03:46:22'),
(164, 'Raden', 'Prakasa', 'lsiregar@budiyanto.name', '+258487788943', '1966-06-14', 'male', 'Ds. Ters. Pasir Koja No. 673', 'Panjaitan', 'Pasuruan', 'http://placeimg.com/640/480/people', '2024-12-28 03:46:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id_persons`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `persons`
--
ALTER TABLE `persons`
  MODIFY `id_persons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
