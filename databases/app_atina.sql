-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 08:30 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_atina`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `sumber` varchar(16) NOT NULL,
  `teks` varchar(255) NOT NULL,
  `temp_klasifikasi` int(1) DEFAULT NULL,
  `fk_marketplace` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`id`, `tanggal`, `sumber`, `teks`, `temp_klasifikasi`, `fk_marketplace`) VALUES
(135, '2020-04-14 15:05:41', 'twitter', 'Yihuu Ahgase! Pada udah tau kan kalau Shopee Thailand bakalan collab sama GOT7 lho! Ehm, kalau Shopee Indonesia collab sama GOT7, pada mau gak nih? RETWEET & LIKE sebanyak-banyaknya ya!', 1, 1),
(136, '2020-04-14 14:19:51', 'twitter', 'Inisiatif yg kece dari ! Semoga lebih banyak lagi yang bikin program2 begini.', 1, 1),
(137, '2020-04-14 17:23:55', 'twitter', 'Selamat buat yang berhasil menangin Samsung A2 Core dari ! Makasih buat semua Sobat Shopee yang udah berpartisipasi!', 1, 1),
(138, '2020-04-14 15:41:39', 'twitter', 'Yukk main shopee tanam', 1, 1),
(139, '2020-04-14 16:34:58', 'twitter', 'Abis beli barang di', 1, 1),
(140, '2020-04-14 16:59:16', 'twitter', 'Bismilah semoga rezeki', 1, 1),
(141, '2020-04-14 17:24:21', 'twitter', 'Yang terakhir pengumuman pemenang ! Congrats ya , berhasil dapetin Advan S6+! Yang lain pantengin terus ya karena bakal ada giveaway menarik lainnya!', 1, 1),
(142, '2020-04-14 17:23:13', 'twitter', 'Yuhuu congrats buat pemenang giveaway ! Berhak mendapatkan JBL Go Portable Speaker~ Yang belum menang, pastiin kamu ikut giveaway lainnya di ya!', 1, 1),
(143, '2020-04-14 22:14:38', 'twitter', 'Panen pertama bismillah semoga rejeki', 1, 1),
(144, '2020-04-14 15:26:47', 'twitter', 'Yuk semuanyaa kita main Tanamnyaa yukk...', 1, 1),
(145, '2020-04-14 16:38:56', 'twitter', 'Selamat kepada para pemenang Ayo ikutan karena masih ada Uang jutaan rupiah & Samsung Galaxy S20 yang menunggu kamu! Kompetisi masih berlangsung sampai 28 April 2020', 1, 1),
(146, '2020-04-14 22:16:38', 'twitter', 'Malem2 panen.. alhamdulillah.. titik2 di syukuri..', 1, 1),
(147, '2020-04-14 22:08:20', 'twitter', 'Semogaa . Semoga @ Jakarta, Indonesia', 1, 1),
(148, '2020-04-15 05:45:08', 'twitter', 'Bismillah, yuk main shoppe tanam', 1, 1),
(149, '2020-04-15 00:30:37', 'twitter', '@ Batam, Riau, Indonesia', 1, 1),
(150, '2020-04-14 13:56:28', 'twitter', 'Terima kasih .. bismillah', 1, 1),
(151, '2020-04-14 14:25:03', 'twitter', 'Belum hari raya thr tiap hari', 1, 1),
(152, '2020-04-14 13:21:23', 'twitter', 'THR nya makin bekurang aja', 1, 1),
(153, '2020-04-14 16:30:31', 'twitter', 'Bismillah smga rezekinya.', 1, 1),
(154, '2020-04-15 06:32:19', 'twitter', 'Ditunggu iphonenya', 1, 1),
(155, '2020-04-16 13:43:50', 'twitter', 'AHGASE! Shopee Thailand resmi umumkan FANSIGN GOT7 loh Tau dong abis itu mereka akan kemana? Apakah Shopee Indonesia bakal bawa GOT7 ke sini? Atau akan GIVEAWAY TIKET FANSIGN? Kalian maunya yang mana nih? RT & REPLY sebanyak-banyaknya ya!', 1, 1),
(156, '2020-04-16 21:26:41', 'twitter', 'Bismillah ya allah', 1, 1),
(157, '2020-04-16 18:03:56', 'twitter', 'Lagi.... Bismilahh semoga ada rezeqynya aamiin', 1, 1),
(158, '2020-04-16 18:01:46', 'twitter', 'bismillah semoga rejeki . panen hari ini AAMIIN cc :', 1, 1),
(159, '2020-04-16 18:08:55', 'twitter', 'Alhamdulillah', 1, 1),
(160, '2020-04-16 18:45:24', 'twitter', 'Alhamdulillah 4 digit lagi', 1, 1),
(161, '2020-04-17 00:18:40', 'twitter', 'Alhamdulillah.. lumayan dari pada ngga sama sekali', 1, 1),
(162, '2020-04-16 15:24:56', 'twitter', 'Bismillah semoga rejeki', 1, 1),
(163, '2020-04-16 11:44:27', 'twitter', 'Panen hari ini', 1, 1),
(164, '2020-04-16 18:48:19', 'twitter', 'Coba - coba semoga beruntung', 1, 1),
(165, '2020-04-16 16:01:32', 'twitter', 'Semoga aja @ Cijantung City', 1, 1),
(166, '2020-04-17 00:45:27', 'twitter', 'Panen kedua tanam THR', 1, 1),
(167, '2020-04-16 21:30:25', 'twitter', 'Semoga dapet THR 1000000 dari', 1, 1),
(168, '2020-04-17 00:11:47', 'twitter', 'kuy tanam tanam shopee siapa tau beruntung', 1, 1),
(169, '2020-04-17 02:47:04', 'twitter', 'Wish ke luck semoga terakhir bgt dpt segini', 1, 1),
(170, '2020-04-16 15:11:05', 'twitter', 'Tetep semangat', 1, 1),
(171, '2020-04-17 00:27:37', 'twitter', 'Bikin ulang twitter demi', 1, 1),
(172, '2020-04-17 03:31:11', 'twitter', 'Panen lagi yaAllah semoga saya menang', 1, 1),
(173, '2020-04-17 06:30:55', 'twitter', 'Panen THR yg ke5', 1, 1),
(174, '2020-04-17 04:19:01', 'twitter', 'Panen lagi tpi ga prnah dpt 1k gpplh ttap semangat', 1, 1),
(175, '2020-04-18 17:43:44', 'twitter', 'Buat yang suka main , sebenernya kemarin Shopee kasih kejutan lho! Kita kasih 20.000 KOIN SHOPEE ke beberapa pengguna! Coba dong, mimin mau tau, siapa aja Sobat Shopee yang KEMARIN mendapat PANEN 20.000 Koin Shopee? RT TWEET INI!', 1, 1),
(176, '2020-04-18 17:36:22', 'twitter', 'Selamat sore menuju malam Sobat Shopee~ mau nanya nih, di sini siapa yang suka main Shopee Tanam? RT dong mimin mau tau~', 1, 1),
(177, '2020-04-18 19:52:57', 'twitter', 'Jangan sampai kelewatan Konser One World Together at Home ini ya, Sobat Shopee Buktikan kalo kita semua bisa tetap semangat dan kuat menghadapi pandemi ini. Ingat, hanya di Shopee LIVE jam 07.00 WIB!', 1, 1),
(178, '2020-04-18 22:23:37', 'twitter', 'Fhiting, semoga beruntung beb ^MG', 1, 1),
(179, '2020-04-18 18:19:41', 'twitter', 'hai sorry ya kak :( mimin saranin kamu untuk atur pengiriman melalui seller center dengan laptop atau komputer dalam 1x24 jam ke depan ya kak. Kalo lewat estimasi dan masih gak bisa, kakak bisa chat aku di DM ya kak :) ^RE', 1, 1),
(180, '2020-04-18 17:47:29', 'twitter', 'Aku min Alhamdulillah', 1, 1),
(181, '2020-04-18 21:05:03', 'twitter', 'Yeay hari ini panen nya 5x dong, makin mantap nih Semoga dapat iphone 11', 1, 1),
(182, '2020-04-18 20:21:07', 'twitter', 'Bismillah semoga menang dapet THR dari shopee', 1, 1),
(183, '2020-04-18 18:58:48', 'twitter', 'Semoga rejeki ya Kak hehe ^RF', 1, 1),
(184, '2020-04-18 19:13:58', 'twitter', 'Semoga kamu ya yang beruntung, mimin bantuin doa ya :) ^TJ', 1, 1),
(185, '2020-04-18 19:29:07', 'twitter', 'SAMSUNG A51 Bismillah', 1, 1),
(186, '2020-04-19 06:14:26', 'twitter', 'yuk main ini', 1, 1),
(187, '2020-04-21 05:39:13', 'twitter', 'Alhamdulillah panen @ Ciasem City', 1, 1),
(188, '2020-04-21 05:15:37', 'twitter', 'Alhamdulillah hasil panen hari ini meskipun kurang memuaskan tetapi harus tetap di syukuri', 1, 1),
(189, '2020-04-21 06:27:32', 'twitter', 'Aneka cemilan produk GeboyPutra hadir di gofoodindonesia @ Jln Sukalaya Barat Gang Hegarsari 4 rw 08', 1, 1),
(190, '2020-04-21 00:53:57', 'twitter', 'Uhuyyy Alhamdulillah', 1, 1),
(191, '2020-04-20 23:53:46', 'twitter', 'Hasil Panen hari ini', 1, 1),
(192, '2020-04-21 03:53:42', 'twitter', 'Bismillah', 1, 1),
(193, '2020-04-21 05:30:35', 'twitter', 'Selamat pagi', 1, 1),
(194, '2020-04-21 03:07:29', 'twitter', 'Semoga menang.', 1, 1),
(195, '2020-04-21 06:25:52', 'twitter', 'Lgi panen lgi', 1, 1),
(196, '2020-04-21 00:21:48', 'twitter', 'Kompetisi , menangkan Uang Tunai 10 Juta serta Grand Prize Samsung S20!', 1, 1),
(197, '2020-04-21 06:17:23', 'twitter', 'Panen ke 25 yg panenan ke 24 lupa enggak ke ss', 1, 1),
(198, '2020-04-21 06:14:37', 'twitter', 'maraton film ttp jangan lupa siram tanaman, biar panen hehehe pejuang hadiah', 1, 1),
(199, '2020-04-21 05:14:10', 'twitter', 'panen pagi dulu kak', 1, 1),
(200, '2020-04-21 06:14:08', 'twitter', 'THR ke 1 hari ini dan THR ke 40 dari total THR yang sudah didapat. Masih belum juga, terussss semangat Target : 1 juta point Shopee, iPhone 11 Terimakasih', 1, 1),
(201, '2020-04-21 06:21:49', 'twitter', 'Senangnya dalam hati, bila udah panen 2 kali. Wkwkwk, pagi ini baru 2 kali panen di', 1, 1),
(202, '2020-04-21 06:54:55', 'twitter', '~yuhuuuuu ^TN', 1, 1),
(203, '2020-04-21 00:28:16', 'twitter', 'Hasil siram tanam di aplikasi', 1, 1),
(204, '2020-04-21 04:48:29', 'twitter', 'bismillah walhamdulillah subuh subuh sudah panen', 1, 1),
(205, '2020-04-21 00:11:31', 'twitter', 'Katanya buah segar, kok ada liquid? Halo shopee?????', 1, 1),
(206, '2020-04-21 02:55:16', 'twitter', 'Bismillah baru ke-12', 1, 1),
(207, '2020-04-21 08:45:52', 'twitter', 'Selamat pagi Sobat Shopee dan Selamat Hari Kartini!', 1, 1),
(208, '2020-04-21 12:31:11', 'twitter', 'Dengan Menyebut Nama Allah', 1, 1),
(209, '2020-04-21 12:28:08', 'twitter', 'Bismillah udh banyak panen nihh', 1, 1),
(210, '2020-04-21 12:14:17', 'twitter', 'Kemarin malam kebangun trus ngecek thr udah bisa dipanen ternyata ???', 1, 1),
(211, '2020-04-21 12:30:05', 'twitter', 'Yuhuu, pantengin aja yah. Good luck kak ^MD', 1, 1),
(212, '2020-04-21 12:31:12', 'twitter', 'Saling siram bareng yah, biar cepet. Semangat! ^MD', 1, 1),
(213, '2020-04-21 12:23:03', 'twitter', 'Bismilah setor min semoga dapat ipone amin', 1, 1),
(214, '2020-04-21 11:56:46', 'twitter', 'Yok Join Dan dapatkan hadiahnyaaa', 1, 1),
(215, '2020-04-21 11:08:23', 'twitter', 'Hei kalian , jaga tempat jualanmu dari para mafia alkes yang bergentayangan. Memanfaatkan momen disaat rakyat sedang kesulitan. Jangankan masker, harga ester C ajah selangit. Byiuhhhhh...Byiuhhhhh Cc :', 1, 1),
(216, '2020-04-21 10:39:10', 'twitter', 'Allhamdulillah Semoga rezeki Aamiin', 1, 1),
(217, '2020-04-21 12:02:07', 'twitter', 'Bismillah, wish me luck Yuk Ikutan yuk yuk Follow ig nya shopee', 1, 1),
(218, '2020-04-21 12:28:55', 'twitter', 'Aissh mantap. Terus semangat kak! ^MD', 1, 1),
(219, '2020-04-21 11:50:48', 'twitter', 'Ok done ya ka ^DY', 1, 1),
(220, '2020-04-21 12:14:12', 'twitter', 'Panen lg dri', 1, 1),
(221, '2020-04-21 07:11:34', 'twitter', 'Bismillah alhamdulillah panen ( upload yg ke 5 )', 1, 1),
(222, '2020-04-21 11:05:05', 'twitter', 'Semangaat ^DY', 1, 1),
(224, '2020-04-21 12:37:28', 'twitter', 'Menabung di shopeepay adalah jalan ninjaku', 1, 1),
(225, '2020-04-21 12:37:55', 'twitter', 'Lama lama jadi bukit ni koin kuuu!!', 1, 1),
(226, '2020-04-21 12:37:16', 'twitter', 'Pastinya dongs :D ^AL', 1, 1),
(227, '2020-04-21 12:36:29', 'twitter', 'Yuuk cobain!!! Cuma di kita bisa menanam tumbuhan dan berkesempatan untuk memenangkan hadiah-hadiah yang menarik..', 1, 1),
(230, '2020-04-21 12:34:18', 'twitter', 'Mantappp, semangat trus dan semoga selalu sehat ya Kak :) ^SD', 1, 1),
(231, '2020-04-21 12:34:32', 'twitter', 'Heheh kayanya sering belanja nih Kakaknya, mantapp banget deh :) ^SD', 1, 1),
(233, '2020-04-21 12:29:59', 'twitter', 'Panen THR ke-29 Ayo gaes... Sing bantu siram, sama-sama panen THR yang banyak...', 1, 1),
(234, '2020-04-21 12:34:23', 'twitter', 'Hi Kak, jangan sedih dong keep tenang ya Kak, aku saranin buat kamu tetep gunain ShopeePay Laternya nih supaya tetep keren penggunaannya dan ga nutup kemungkinan bakalan balik lagi Limitnya. Yukk pantau trus notifikasi aplikasi Shopeenya. Thanks and stay ', 1, 1),
(243, '2020-04-21 11:42:00', 'twitter', 'Panen THR Dulu...', 1, 1),
(245, '2020-04-21 12:38:06', 'twitter', 'Waw boleh juga tuh kak, makasih ya sarannya. Aku tampung buat kemajuan Shopee yaw :) ^TR', 1, 1),
(264, '2020-04-21 12:38:58', 'twitter', 'Yuhuuu Kakak ^ZL', 1, 1),
(274, '2020-04-21 12:18:02', 'twitter', 'dear sering2 free ongkir min.0 dong, ni belanjaan udah ngantri di keranjang', 1, 1),
(344, '2020-04-21 12:40:35', 'twitter', 'Hai kak, untuk saat ini tersedia nih. Khusus pembelanjaan di Shopee Mart yah. Info lengkapnya bisa klik link', 1, 1),
(350, '2020-04-21 12:35:50', 'twitter', 'bisa dapet duit dari Thank you', 1, 1),
(381, '2020-04-21 05:57:20', 'twitter', 'panen tengah malem hahaha', 1, 1),
(384, '2020-04-14 12:40:04', 'twitter', 'Hi Wolfies! Bazar Buku Big Bad Wolf kini hadir ONLINE! Official Store Big Bad Wolf Book Sale Eksklusif di DISKON 50% - 90% Bebas Ongkir Ke Seluruh Indonesia', 1, 2),
(385, '2020-04-14 14:46:41', 'twitter', 'Tokopedia bersama menyampaikan dukungan semangat dan imbauan kepada masyarakat Indonesia dalam melawan pandemi COVID-19. Yuk, bersama kita . Jangan takut, tetap di rumah, dan jaga jarak.', 1, 2),
(386, '2020-04-14 15:03:55', 'twitter', 'Tokopedia dan aja udah bersatu menyampaikan dukungan semangat supaya kita bersama . Kalau kamu udah/akan melakukan apa untuk ikut dalam semangat ini? Share dong pakai ! Karena kamu nggak sendirian.', 1, 2),
(387, '2020-04-14 14:31:50', 'twitter', 'Hai semua, akan ada pesan dari Tokopedia dan nih. Ada yang mau tahu apa? Tunggu di media sosial ya!', 1, 2),
(388, '2020-04-14 14:53:39', 'twitter', 'Demi.. Bangtan nyebut.. Hai Indonesia.. : JAGA JARAK DULU.. JAGA INDONESIA.. Gemes bgt ya Allah.. Makasih Ini bermakna bgt..', 1, 2),
(389, '2020-04-14 14:59:43', 'twitter', 'JAGA INDONESIA , JAGA JARAK DULU MENANGISLAH BERJAMAAH HAIII INDOMY sini sini merapat sm aku BITIWI ITI PIMIN NGIMING BIHISI INDO LUCU BINGIT cemewmewww awww?? thx sm!!', 1, 2),
(390, '2020-04-15 01:29:37', 'twitter', '\' J A G A I N D O N E S I A \'', 1, 2),
(391, '2020-04-14 16:51:48', 'twitter', 'Aku dh nonton nih video gk tau brp kli, setiap aku nonton, hati aku tersentuh banget. Apalagi pertama nonton, aku nangis. Thank you and . I Love You', 1, 2),
(392, '2020-04-15 06:08:34', 'twitter', 'Huhu bapeeuuurrr Semoga segera pulih bumi terutama indonesiaku . Thanks', 1, 2),
(393, '2020-04-15 00:19:35', 'twitter', 'Lanjut yang kemarin ya terkait HP baru yang belum sehari udah eror.. perhatiin yaa lokasi toko JAKARTA SELATAN tapi ternyata tempat retur JAKARTA BARAT', 1, 2),
(394, '2020-04-15 00:14:26', 'twitter', 'Love bgt sm BTS, love juga sm', 1, 2),
(395, '2020-04-14 19:56:13', 'twitter', 'Makasih', 1, 2),
(396, '2020-04-14 19:55:55', 'twitter', 'malam min, request pick up lewat dari tanggal 11 sampai dengan saat ini belum ada yg pick up, ini gimana ya? saya telfon cs sama sekali tidak tersambung.', 1, 2),
(397, '2020-04-14 17:12:26', 'twitter', 'BANGTAN X    #?????   L', 1, 2),
(398, '2020-04-14 17:09:36', 'twitter', 'Menangeeess', 1, 2),
(399, '2020-04-14 16:14:14', 'twitter', 'sayang banget:\')', 1, 2),
(400, '2020-04-14 15:51:04', 'twitter', 'Terimakasih , haluku lancar', 1, 2),
(401, '2020-04-14 15:50:07', 'twitter', 'THANKYOU DITUNGGU IKLAN MEREKA PAS BULAN RAMADHAN MAKE BAJU KOKO', 1, 2),
(402, '2020-04-16 07:52:34', 'twitter', 'Pak, masker merek Evo Plusmed buatan PT.Hetzer Medical di Cimahi kan produksi lokal tp harga gila2an di jual di mencapai 350an utk 25pcs', 1, 2),
(403, '2020-04-16 18:50:40', 'twitter', 'Yuk yuk jangan cuman rebahan mulu di rumah, ikutin aja Exercise Class online di Tokopedia PLAY! _ Cek kelas mana aja yang mau kamu ikuti di jadwal ini dan langsung aktifkan remindernya di Aplikasi Tokopediamu dengan klik gambarnya!', 1, 2),
(404, '2020-04-16 13:09:12', 'twitter', 'Apakah sudah saatnya uninstall ?', 1, 2),
(405, '2020-04-16 07:01:12', 'twitter', 'I LOP U SARANGHAE makacii banyak aw makin sayang aw aw', 1, 2),
(406, '2020-04-16 10:07:37', 'twitter', 'Morning guys - ada yang baru nih! dan mengadakan Flash sale serba 10Ribu!! untuk produk dari Proteam Bola Takraw jadi Rp 10.000 aja Loh guys! Just for today! Check it out at our…', 1, 2),
(407, '2020-04-16 10:31:45', 'twitter', 'Untuk sekelas tidak sulit untuk cross check, tinggal minta price list area jual dari produsen.. langsung ketahuan. Masalahnya mau apa tidak?.. yg jawab saja robot... jadi pesimis...', 1, 2),
(408, '2020-04-16 13:26:27', 'twitter', 'Min, bagi link yg BBW online di Tokopedia dong..', 1, 2),
(409, '2020-04-17 02:18:01', 'twitter', 'Kok bisa tertahan gan dana nya?', 1, 2),
(410, '2020-04-16 22:33:40', 'twitter', 'kagak punya paketan untuk melihatnya', 1, 2),
(411, '2020-04-16 21:03:08', 'twitter', 'harga jualan masker dari official store harga flash salenya 35 rb ..di indo mart dl beli cuma 6rban', 1, 2),
(412, '2020-04-16 20:09:45', 'twitter', 'Ada Points senilai Jutaan rupiah menunggu kamu! Klik tautan berikut ini untuk ajukan pinjaman dana instan Kredit Pintar melalui', 1, 2),
(413, '2020-04-16 19:47:48', 'twitter', 'Buku baru datang! Belinya di', 1, 2),
(414, '2020-04-16 18:58:15', 'twitter', 'Mendukung kawan-kawan kopi & di', 1, 2),
(415, '2020-04-16 18:53:19', 'twitter', 'Tumbler keren ini bisa teman-teman dapatkan di ya teman. Ayo beli sekaligus berdonasi', 1, 2),
(416, '2020-04-16 18:46:28', 'twitter', 'Tolong dicek nomor resi 10000191858343 dari tanggal 12 tidak ada pergerakan. CC', 1, 2),
(417, '2020-04-16 18:25:43', 'twitter', 'Hallo gan . Saya mau tanya terkait penjualan saya dengan nomor INV/20200412/XX/IV/520450209 kenapa hilang ya? Terimakasih sebelumnya', 1, 2),
(418, '2020-04-16 18:18:51', 'twitter', 'ngga ada giveaway amibam?', 1, 2),
(419, '2020-04-16 17:13:13', 'twitter', 'Boleh kamu share di instastory untuk templatenya :D', 1, 2),
(420, '2020-04-16 16:49:51', 'twitter', 'kak, kok tiap aku upload produk selalu gagal n keluar kode ini? Padahal koneksi internet 30mbps lancar', 1, 2),
(421, '2020-04-16 15:05:42', 'twitter', 'halo saya mau bertanya informasi .. bagaimana cara kita menghapus daftar riwayat belanja kita yg sudah selesai di akun tokopedia ya ? terima kasih', 1, 2),
(422, '2020-04-19 01:43:13', 'twitter', 'Karena masih menjual masker 3M N95 dengan harga sangat tidak pantas maka kami mengajak pengguna Android melancarkan menghukum aplikasi ini: 1. Flag as inappropriate di Play Store. 2. Pilih Illegal prescription or other drug. 3. SUBMIT', 1, 2),
(423, '2020-04-18 13:43:42', 'twitter', '\"Belajar Dasar Pemrograman Web (Kurikulum Google)\" Penyedia: at Harga: 350 ribu Komen: mungkin dah tau reputasi dicoding kek mana, bagus buat pemula, bakal dapet Google Certified Associate Android Developer', 1, 2),
(424, '2020-04-18 19:33:09', 'twitter', 'mohon maaf sebesar-besarnya . Penjual di app lu kek iblis semua. Kasian tenaga medis yg butuh ini masker. Tenaga medis yg berjuang di daerah puskesmas pedalaman seperti saya. Tindak tegas lah. Bisa tolong di up', 1, 2),
(425, '2020-04-18 13:32:24', 'twitter', '\"Kelas Online Menulis untuk Pemula\" Penyedia: at Harga: 75 ribu Komen: Tempo kalo bikin tulisan kan gak kaleng-kaleng, nih yang mau belajar bikin angle tulisan, riset & reportase, wawancara, ampe publikasi', 1, 2),
(426, '2020-04-18 11:47:26', 'twitter', 'Selalu di tokped kalo belanja barang elektronik, sampe hp pun aku beli di tokped. Kali ini beli catokan, 2 hari lgsg sampe luv', 1, 2),
(427, '2020-04-19 00:15:21', 'twitter', 'Pilihan Tokopedia', 1, 2),
(428, '2020-04-18 21:57:35', 'twitter', 'Halo , kenapa status pesanan saya di kembalikan ya? Padahal kurir sama sekali belum menghubungi saya. Saya pakai jasa pengiriman SiCepat reguler', 1, 2),
(429, '2020-04-19 06:56:45', 'twitter', 'Masker ngak ada apanya dibanding jas hujan', 1, 2),
(430, '2020-04-18 12:48:53', 'twitter', 'Hari ini coba bayar stnk secara online pake dengan harapan mengurangi mobilisasi dengan nggaperlu dateng ke samsat. Prosesnya gampang banget cuma butuh stnk buat liat nomor rangka sama ktp sesuai stnk buat liat NIK nya.', 1, 2),
(431, '2020-04-18 12:21:18', 'twitter', 'Halo barang yang ada di keranjang bisa di keep berapa lama ya?', 1, 2),
(432, '2020-04-18 17:17:01', 'twitter', 'Weekend begini bukan waktunya untuk rebahan mulu! Kuuy ikutan exercise class yang bisa kamu tonton di Tokopedia PLAY setiap hari pukul 19.00 WIB! _ Aktifkan reminder untuk kelas hari ini di Aplikasi Tokopediamu dengan klik gambarnya sekarang!', 1, 2),
(433, '2020-04-18 22:11:58', 'twitter', 'Murah bagi yg berduit..klo bwat ane 60 bisa bwat makan 3hr', 1, 2),
(434, '2020-04-18 19:37:15', 'twitter', 'mahalan tuh masker ktimbang motor vega ane mbieb', 1, 2),
(435, '2020-04-19 05:28:52', 'twitter', 'Makanya gak usah beli di Tokopedia,Harganya GILAAA SUPER MAHALL', 1, 2),
(436, '2020-04-19 01:12:47', 'twitter', 'Barusan di tanggapin laporan gw. Yuk gas lapor... Linkkk paste here', 1, 2),
(437, '2020-04-19 00:13:02', 'twitter', 'Min saya mengajukan ovo primer udah lama kenapa ga da jawaban Pdahal 4 bulan yg lalu..perjanjian 24 jam gimana nih', 1, 2),
(438, '2020-04-18 23:29:13', 'twitter', 'Sampai pukul 23.24wib blm pickup pdhl nextday yg hrs dipickup tgl 18 itu juga, pelayanan buruk kq masih dipertahankan itu mah kayak regular lama. Siapa yg mau tanggung jawab kl ROTInya tidak awet????', 1, 2),
(439, '2020-04-20 15:10:07', 'twitter', 'Kejar barang incaran apapun makin mudah apalagi ada Kejar Diskon di Tokopedia dengan semua barang dibawah 99 ribu! _ Yuuk langsung aja cari barang incaranmu di Tokopedia dengan klik gambarnya!', 1, 2),
(440, '2020-04-20 18:37:26', 'twitter', 'artis baru ya kak? free tag', 1, 2),
(441, '2020-04-20 18:30:23', 'twitter', 'Situasi memang sedang berubah dan kita perlu menyesuaikan diri untuk memperbaiki keadaan. Siapa sangka, hal-hal sederhana yang kamu lakukan sekarang itu berarti penting untuk dunia. Hal-hal yang dulu salah, sekarang justru perlu dilakukan. Supaya semua me', 1, 2),
(442, '2020-04-20 09:27:18', 'twitter', 'Ada hal lain yang aku tunggu-tunggu di Ramadhan kali ini. Yaitu iklan Ramadhan edition. apakah kita akan mendapatkan nya?', 1, 2),
(443, '2020-04-20 19:01:24', 'twitter', 'Ada barang incaran yang lagi kamu tunggu-tunggu promonya? Cek aja LIVE Shopping dan Review beserta promo spesial yang hanya bisa kamu dapetin Setiap Hari pukul 11.00 WIB di Tokopedia PLAY! _ Yuuk aktifkan remindernya di Aplikasi Tokopediamu dengan klik ga', 1, 2),
(444, '2020-04-20 13:18:11', 'twitter', 'yg murah ya, biar mampu nih aku beli :)', 1, 2),
(445, '2020-04-21 05:50:49', 'twitter', ': Beli SEGER BABY Moisturizing Cream (Chamomile & Citronella)', 1, 2),
(446, '2020-04-20 14:58:56', 'twitter', 'Tokopedia lagi ada flash sale perkopian hari ini. Baru tahu dari untung masih ada waktu sampai jam 10 malam nanti. Ayo anak kopi, anak senja dan yang pasti anak yang dikasihi Tuhan, cuss meluncur ke', 1, 2),
(447, '2020-04-20 21:23:52', 'twitter', 'Camilan yang cocok saat pembelian grosir harga lebih murah Temukan churros frozen seharga Rp39999.00 hanya saja', 1, 2),
(448, '2020-04-20 18:48:21', 'twitter', 'min videonya itu disuruh tim tokped apa inisiatif bighit ?wkwk aku kepikiran ini masa random bgt,jgn2 ada konten lgi nanti ahh tokped ku g bsa moveon,makasihh', 1, 2),
(449, '2020-04-20 10:25:03', 'twitter', 'Om OM JAWAB AKU DONG WKKW bakal jual merchandisenya tour maps of the soulnya BTS di tokopedia gk? Ini mah beneran nanya sumpah dah kgk boong wkwk', 1, 2),
(450, '2020-04-20 14:25:06', 'twitter', 'Sebuah inisiasi bersama ratusan penjual kopi di seluruh negeri untuk . Majukan industri kopi nusantara sambil menjaga roda ekonomi Indonesia. Biar kamu juga bisa sambil ngopi selalu. Apa kopi favorit kamu?', 1, 2),
(451, '2020-04-20 16:50:11', 'twitter', 'Memberikan solusi yang terbaik di setiap kesempatan , menjadi prioritas kami, terutama di situasi saat ini. Terima kasih telah memercayakan untuk menemani kamu menggapai mimpi bersama ,Toppers. Selamat Hari Konsumen Nasional!', 1, 2),
(452, '2020-04-20 11:16:43', 'twitter', 'Promo Vespa khusus di bulan April bersama nih Scoots! Dapatkan Voucher UP TO Rp.900rb dengan menggunakan kode promo APRILVAGANZA di Official Account Vespa Satya di Tokopedia Promo hanya berlaku s/d 30…', 1, 2),
(453, '2020-04-21 06:33:12', 'twitter', 'hai apakah aplikasi tokped tu bisa di hack ini aku bangun tidur kaget pas buka apk ovoq karna ada pemakaian saldo ovo via tokped yaaa walaupun sedikit tapi aku kaget aja bangun tidur ngeliat ada hostory yg mencurigakan', 1, 2),
(454, '2020-04-21 05:48:59', 'twitter', 'Admin ... Aplikasi tokopedia ini sebenernya kenapa ya? Sekarang beraaaat banget kalau dibuka, sering back to home sendiri lagi buka kategori, sering nutup sendiri pas lagi cari barang, kirain harus di update, dah diupdate sama aja,knp ya?', 1, 2),
(455, '2020-04-14 22:35:39', 'twitter', 'Sebelum istirahat, mari kita selipkan doa agar pandemi ini segera berakhir, dan kehidupan normal kembali. Ada amin, Blibli friends?', 1, 3),
(456, '2020-04-14 09:13:24', 'twitter', 'Selamat pagi, Blibli friends! Kopi, teh, susu, atau cukup air mineral pagi ini?', 1, 3),
(457, '2020-04-14 13:05:27', 'twitter', 'Ladies, merapat! , sepatu Melissa diskon sampai 50% cuma di http://Blibli.com !', 1, 3),
(458, '2020-04-14 08:54:07', 'twitter', 'Gaesss info discount gaes! di sepatu melissa lagi pada discount up to 50%. Daripada mulai beli barang yang aneh2 mending cus beli melissa! Discountnya cuma sampe hari ini :(', 1, 3),
(459, '2020-04-14 20:00:00', 'twitter', 'CIMB Clicks bikin belanja di Blibli jadi makin asik! Yuk, serbu promonya sekarang Friends karena Kamu bisa dapet ekstra diskon Rp20.000! Cari Gadget kekinian? Atau Fashion favorit Kamu? Bisa banget cuma di Blibli pakai CIMB Clicks atau QR Go Mobile', 1, 3),
(460, '2020-04-14 17:00:00', 'twitter', 'Udah pertengahan bulan, harus mulai hemat ya~ Pake kartu kredit bank Mega aja belanja di Blibli. , hemat 20%!', 1, 3),
(461, '2020-04-14 15:00:00', 'twitter', 'Kesempatan terakhir buat beli kebutuhan kamera kamu. Serbu, friends!', 1, 3),
(462, '2020-04-14 18:00:00', 'twitter', 'Tripod berkualitas biar proses produksi konten Kamu jadi ciamik ya cuma Manfrotto! Cari semuanya LENGKAP dan ORISINIL cuma di Blibli! Ayo serbu Camera Brand Festival karena ada diskon hingga Rp300.000 spesial untuk Kamu', 1, 3),
(463, '2020-04-14 10:17:19', 'twitter', 'Bersih-bersih rumah, yuk~ , harus tetap bersih-bersih rumah, lindungi keluarga dengan pembersih udara terbaik. Pake kode voucher BNI-ANTIVIRUS, dapatkan diskon 10% maksimal Rp 500.000!', 1, 3),
(464, '2020-04-14 16:48:22', 'twitter', 'Respon kalau barang yang dibeli salah ukuran dan lo minta retur keren kalau kata gw sih. Yang melayani chat komunikatif banget, barang pengganti dikirim dalam 1 hari.. Kudos untuk tim CS & Return Management-nya..', 1, 3),
(465, '2020-04-14 14:00:00', 'twitter', 'Kerja lebih nyaman dan produktif dengan monitor PC! Yuk, dapetin Samsung Monitor sekarang cuma di Blibli! Bisa cicilan 0%, GRATIS ONGKIR, dan pengiriman dijamin cepat! , kamu bisa dapet free Mouse Wireless juga, lho!', 1, 3),
(466, '2020-04-14 16:00:00', 'twitter', 'Diskon 57% buat kamu yang kesemsem sama TWS Soundcore ini! Dengerin musik, conference call, jadi lebih asik~', 1, 3),
(467, '2020-04-14 08:09:00', 'twitter', 'Min perpanjang dong.', 1, 3),
(468, '2020-04-14 17:04:22', 'twitter', 'Kasi aku segelas Caffino dong kalau jawabannya benar.', 1, 3),
(469, '2020-04-14 16:45:42', 'twitter', 'kuyakin kamu takkan bisa membacanya, min.', 1, 3),
(470, '2020-04-14 13:36:29', 'twitter', 'Mau dapetin voucher hadiah total 5 juta rupiah untuk 5 pemenang? Dalam rangka menyambut hari Kartini 21 April nanti saatnya kamu ikutan kompetisi foto  x , Caranya gampang banget! _ 1. Tag…', 1, 3),
(471, '2020-04-14 17:02:43', 'twitter', 'Mantap! <3', 1, 3),
(472, '2020-04-14 08:07:23', 'twitter', 'Min Diskon buat peralatan elektronik kapan yah?', 1, 3),
(473, '2020-04-15 06:32:05', 'twitter', 'Iya itu benar.... Ini yg ke 2x kalo belanja Hp di lapak ini... pertama kejadiannya udh beberapa tahun yg lalu dan udh gak mau lagi belanja di situ. Kali ini istri yg belanja dan benar kejadian lagi yg sama seperti dulu.', 1, 3),
(474, '2020-04-15 02:55:41', 'twitter', 'Klo yg taon 2020 gmn?', 1, 3),
(475, '2020-04-16 21:00:01', 'twitter', 'Selain harganya yang ramah di kantong, iPhone SE juga punya spesifikasi yang gak kalah dengan lini produk smartphone Apple yang lain. Penasaran? Cekidot yang satu ini...', 1, 3),
(476, '2020-04-16 21:00:00', 'twitter', 'Karena masker aja nggak cukup, pake topi ini bisa melindungi diri lebih maksimal. Eits, tetap fashionable juga tentunya.', 1, 3),
(477, '2020-04-16 08:33:11', 'twitter', 'Beras-beras dari Kostraling akan masuk kedalam ware house miliki yang tersebar di seluruh Indonesia, sehingga ketersediaan beras mudah diakses oleh seluruh lapisan masyarakat Indonesia', 1, 3),
(478, '2020-04-16 20:00:01', 'twitter', 'Ke Ciamis, beli tahu petis~ Hari Kamis, waktunya promo fantastis!', 1, 3),
(479, '2020-04-16 13:14:53', 'twitter', 'Work from home. Sebelum lunch.. \"Makan dulu kali ya, biar perut keisi, ide mengalir..\" Abis lunch.. \"Hmm rebahan bentar kali ya.\" \"Satu episode Money Heist deh.\" \"Main Animal Crossing dulu sebentar gapapa, nanggung.\" Tiba-tiba jam 5. Siapa yang begini?', 1, 3),
(480, '2020-04-16 09:09:56', 'twitter', 'Satu halaman yang tepat dari buku Perjamuan Khong Guan karya Joko Pinurbo untuk mengawali hari Kamis. Dari poin 1 hingga 9, udah lakuin yang mana pagi ini?', 1, 3),
(481, '2020-04-16 09:42:30', 'twitter', 'melalui Dirjen Tanaman Pangan melakukan penandatanganan nota kerjasama dengan sebagai upaya pemerintah dalam mempercepat distribusi beras melalui aplikasi', 1, 3),
(482, '2020-04-16 20:23:00', 'twitter', 'Realme 6 pro ini punya 6 kamera dong, 4 kamera belakang masing-masing 64MP, 12 MP, 8 MP, 2 MP. 2 kamera depan dengan resolusi 16MP dan 8MP. Realme 6 Pro ini merupakan ponsel pertama dari Realme yg dibekali 6 kamera dong.Jadi kalo buat foto bakalan keliata', 1, 3),
(483, '2020-04-16 10:00:00', 'twitter', 'Beli handphone kece, dapat potongan, dapat voucher groceries pula. Cuma di http://Blibli.com  bisa seperti ini', 1, 3),
(484, '2020-04-16 19:47:35', 'twitter', '3. Performa Powerful realme 6 Pro menjadi smartphone dengan Snapdragon 720G pertama didunia. fitur 30w flash charge dengan kapasitas baterai realme ini 4.300 mAh.  4. Visual dengan Desain Terbaru tersedia dalam varian warna Lightning Blue dan Lightning Re', 1, 3),
(485, '2020-04-16 17:00:25', 'twitter', 'Sebuah perjuangan dari salah satu UMKM, snack Oyoh Jengkol menghadapi Corona. Salute!', 1, 3),
(486, '2020-04-16 21:00:15', 'twitter', 'Kuy lah ikutan!!', 1, 3),
(487, '2020-04-16 21:48:59', 'twitter', 'Yuk pokoknya klean HARUS IKUTAN woiiii...', 1, 3),
(488, '2020-04-17 04:54:19', 'twitter', 'Keunggulan realme 6 Pro 1. Mempunyai enam kamera: 4 kamera belakang (64 MP, 12 MP, 8 MP, dan 2 MP) 2 kamera depan (16 MP dan 8 MP). dilengkapi modul punch hole', 1, 3),
(489, '2020-04-16 12:00:00', 'twitter', 'Beli gadget impianmu dari Huawei dapat diskon sampai 20% di Blibli. Cari apa? Smartwatch, smartphone atau earphone semuanya original, karena ini adalah official store.', 1, 3),
(490, '2020-04-16 20:14:47', 'twitter', 'Realme 6 Pro (6,6 inci) dibekali dengan layar LCD beresolusi Full HD Plus dengan spesifikasi refresh rate 90 Hz. Realme 6 Pro sudah versi Gorilla Glass 5.', 1, 3),
(491, '2020-04-16 10:38:47', 'twitter', 'mengapa saya cari bir bintang di app tidak ketemu dan harus belanja di browser baru ketemu?', 1, 3),
(492, '2020-04-16 22:26:01', 'twitter', 'ikutan yuk..', 1, 3),
(493, '2020-04-17 05:03:14', 'twitter', 'Ayo Ikutan yuk', 1, 3),
(494, '2020-04-18 20:49:16', 'twitter', 'Curahan hati senior developer dari', 1, 3),
(495, '2020-04-18 21:45:40', 'twitter', 'Ayo Blibli Friends belanja dengan Kartu Kredit OCBC NISP di Blibli setiap hari Sabtu', 1, 3),
(496, '2020-04-18 16:34:03', 'twitter', 'Mau dapetin voucher hadiah total 5 juta rupiah untuk 5 pemenang? Dalam rangka menyambut hari Kartini 21 April nanti kamu ikutan kompetisi foto x Untuk info dan keterangan lengkap kuisnya ada disini ==>', 1, 3),
(497, '2020-04-18 12:04:22', 'twitter', 'Weekend kesekian . Bangun. Berjemur. Olahraga Mandi. Seduh kopi, teh anget. Sarapan. Lunch. Bingung mau ngapain lagi...............', 1, 3),
(498, '2020-04-18 16:00:00', 'twitter', 'Jangan sampe rasa gerah mengganggu aktivitas. Merdekakan diri dari rasa gerah dengan AC Samsung.', 1, 3),
(499, '2020-04-18 17:49:41', 'twitter', 'Hati2 jika beli di , mau berbagi info ni pengalaman, pmbtlan pesanan dana dikembalikan lewat voucher dan voucher hanya berumur 30hr, kl ga dpakai HANGUS, Next kudu lebih teliti lagi pas checkout nya jdi ga salah, kl salah pembatalannya merugikan. CC :', 1, 3),
(500, '2020-04-18 12:00:00', 'twitter', 'Biarpun social distancing, gak berarti gak boleh fashionable, dong! Dapatkan koleksi Danjyo Hiyoji X AMOTSYAMSURIMUDA X OCBC NISP cuma di Blibli! , dapatkan diskon hingga Rp100.000', 1, 3),
(501, '2020-04-18 21:00:00', 'twitter', 'Coba cek elektronik apa yang mesti diganti di rumahmu~ Mumpung ada Mega Clearance Sale, nih!', 1, 3),
(502, '2020-04-18 18:00:00', 'twitter', 'Nggak ada alasan males-malesan dong walaupun . Kebutuhan kerja kamu, ada di Blibli semuanya~', 1, 3),
(503, '2020-04-18 19:00:01', 'twitter', 'Kamera, tas, dan aksesoris lainnya lengkap! Udah tanggal segini, lumayan hematnya friends~', 1, 3),
(504, '2020-04-18 11:44:37', 'twitter', 'Ikutan yukkk', 1, 3),
(505, '2020-04-18 17:00:00', 'twitter', 'Satu kata, gemas!', 1, 3),
(506, '2020-04-18 14:06:02', 'twitter', 'Koq atm nya ga bisa di paket buat debit???', 1, 3),
(507, '2020-04-18 09:06:48', 'twitter', 'Fitur kedua yaitu layarnya refresh rate 90 Hz. (HADIR PETAMA KALI DI SERI INI) Layar ini biasanya ada di ponsel kelas atas, sebut saja realme X2 Pro. Realme 6 Pro (6,6 inci) Mantuull pokoknya.. .', 1, 3),
(508, '2020-04-18 11:54:51', 'twitter', 'Ciiieee YANTI ( YAdi dan minanTI )', 1, 3),
(509, '2020-04-18 11:46:16', 'twitter', 'PERFORMA. System-on-Chip (SoC) Snapdragon 720G fitur 30W Flash Charge (60 menit untuk mengisi penuh 100%) Batrei 4,300 mAh', 1, 3),
(510, '2020-04-18 15:25:14', 'twitter', 'Ada band favorit kamu di daftar ini? Kalau aku, ada. Deadsquad!', 1, 3),
(511, '2020-04-18 18:30:31', 'twitter', 'Tolong ih , belom sampe barangnya. Curiga ada yang kurang atau salah barangnya hmmm...', 1, 3),
(512, '2020-04-19 00:46:34', 'twitter', 'Makanya beralih ke Realme 6 Pro ??Desain menawan ??Layar lebar 6,6 inch ??Batere 4300 mAh ??Enam kamera ??Fast charging ??System Android 10 ?? Qualcomm Snapdragon 720G', 1, 3),
(513, '2020-04-20 15:58:28', 'twitter', 'Lihat deh masker-masker lucu dari designer Indonesia di , keren kan? Ada dari om juga loh. Ayo dibeli! Karena 1 masker yang kalian beli, kami akan mendonasikan 3 masker ke orang yang membutuhkan. Dapatkan disini', 1, 3),
(514, '2020-04-20 10:01:39', 'twitter', ', Blibli bergotong royong dukung gerakan . Mengajak kalian bergerak bersama cegah penyebaran virus corona dgn beli 1 printed masker kain karya kolaborasi seniman lokal Indonesia, udah berkontribusi bagikan 3 masker untuk masyarakat membutuhkan.', 1, 3),
(515, '2020-04-21 01:30:53', 'twitter', '2. Layar Refresh Rate 90 Hz Realme 6 Pro (6,6 inci) dibekali dengan Layar LCD beresolusi Full HD Plus dengan spesifikasi refresh rate 90 Hz dan sudah versi Gorilla Glass 5.', 1, 3),
(516, '2020-04-21 06:46:27', 'twitter', 'PERFORMA System-on-Chip (SoC) Snapdragon 720G fitur 30W Flash Charge (60 menit untuk mengisi penuh 100%) Batrei 4,300 mAh..', 1, 3),
(517, '2020-04-20 20:34:10', 'twitter', 'Keren2 designnya, tadi udah beli 3', 1, 3),
(518, '2020-04-20 14:00:00', 'twitter', 'Sekarang, apapun yang baru dibeli harus dibersihin, ya. Kotoran, pestisida dan bakteri rontok dengan Mama Lime. Buruan pesan, Moms!', 1, 3),
(519, '2020-04-20 13:14:26', 'twitter', 'Yuk ikutan... Semoga beruntung... [ ]', 1, 3),
(520, '2020-04-20 16:09:34', 'twitter', 'Enam kamera: 4 kamera belakang (64 MP, 12 MP, 8 MP, dan 2 MP) 2 kamera depan (16 MP dan 8 MP). dilengkapi modul punch hole..', 1, 3),
(521, '2020-04-21 01:33:45', 'twitter', '3. Performa Powerful - Smartphone pertama di dunia yang mengusung System-on-Chip (SoC) Snapdragon 720G. - Fitur 30w flash charging, yang menjamin baterai dapat terisi full dalam 1jam dengan kapasitas baterai Realme 6 Pro 4.300 mAh.', 1, 3),
(522, '2020-04-21 01:38:03', 'twitter', '4. Visual dengan Desain Terbaru Desain back cover dengan Lightning Design yang tentunya belum pernah dimiliki oleh ponsel lainnya.', 1, 3),
(523, '2020-04-20 21:24:04', 'twitter', 'Masker-masker ini juga tersedia di . Untuk pembelian satu masker kamu ikut berdonasi 3 masker bagi yg membutuhkan. Mitra distribusinya bs kalian pilih sendiri di web Masker Untuk Indonesia.', 1, 3),
(524, '2020-04-20 17:54:06', 'twitter', 'Kamu udah beli masker yang mana nih dalam gerakan ?', 1, 3),
(525, '2020-04-20 13:31:32', 'twitter', 'Hallo , barusan saya ditelfon via mobile&wa dgn no yg sama, sama org yg katanya brand ambassador Moko2 kosmetik, dan katanya dapet no saya dr apps . Saya memang pernah beli kosmetik via . Gmm ceritanya no hp saya bisa didapet org lain ya?', 1, 3),
(526, '2020-04-21 06:50:15', 'twitter', 'Ayuk ikutan', 1, 3),
(527, '2020-04-20 08:13:07', 'twitter', 'Yu Ikutan Juga. Keunggulan Realme 6 Pro 1.Enam kamera 2.Layar refresh rate 90 Hz 3.Performa Powerful 4.Visual dengan Desain Terbaru', 1, 3),
(528, '2020-04-20 22:48:58', 'twitter', 'dan indahnya berbagi, yuk dukung kolaborasi bersama http://maskeruntuk.id  untuk bergerak bersama mencegah penyebaran virus corona. Dengan membeli 1 printed masker kain karya kolaborasi seniman…', 1, 3),
(529, '2020-04-20 12:04:34', 'twitter', 'Tuker tambah baju min ?', 1, 3),
(530, '2020-04-20 13:00:00', 'twitter', 'Paket ini khusus buat kamu yang ingin melakukan karantina mandiri di hotel.', 1, 3),
(531, '2020-04-20 19:53:47', 'twitter', 'mahal. mending beli Scuba biasa. udh dpt banyak. tinggal kasih tetangga sisanya. Hargamu ga karuan', 1, 3),
(551, '2020-04-15 00:48:33', 'twitter', 'Amin min, tapi salut sama blibli barang gue dikirim smw , udh tau gue yang pesen pakek foto sama tanda tangan segala haha good sih', 1, 3),
(609, '2020-04-14 19:22:40', 'twitter', 'Jatuh cinta ga perlu mahal! Dapatkan diskon kado untuk pacarmu dengan diskon hingga 75% di Lazada dengan gratis ongkir! Mantap banget kan? Cek langsung ya >>', 1, 4),
(610, '2020-04-14 12:17:58', 'twitter', 'Lazadians, siapa suka tas dan jam tangan murah meriah? Hari ini Taobao Tuesday! Kamu juga bisa nikmatin ekstra deals dan voucher! Tunggu apalalagi langsung aja belanja di sini >>', 1, 4),
(611, '2020-04-15 06:12:33', 'twitter', 'Hi Lazadian, jika kamu memiliki permasalahan seputar pesanan di Lazada bisa langsung DM ke akun Twitter ya agar dapat dibantu lebih lanjut.', 1, 4),
(612, '2020-04-15 05:19:52', 'twitter', 'Dear , kalo mau ngasih info liat gander dulu dong', 1, 4),
(613, '2020-04-15 04:00:21', 'twitter', 'hallo min boleh dibantu, setiap hari selalu kaya gini yah ga bisa freeong', 1, 4),
(614, '2020-04-15 02:50:25', 'twitter', 'Hi Lazadian, apabila punya kendala pemesanan di Lazada bisa hubungi Tim Customer Care kami melalui DM Twitter .', 1, 4),
(615, '2020-04-15 02:34:34', 'twitter', 'Astajim. Kenapa kolom pencarian Lazada tiba-tiba muncul kayak gini? |', 1, 4),
(616, '2020-04-14 22:28:09', 'twitter', 'Sudah kami respon melalui DM. Silahkan cek kembali Kak.', 1, 4),
(617, '2020-04-14 22:04:38', 'twitter', 'Hai Kak Maria, DM sudah kami respon ya. Silakan di cek.', 1, 4),
(618, '2020-04-14 20:39:27', 'twitter', 'membeli ini tp dpt nya 1 biji penjual tidak bertanggung jawab', 1, 4),
(619, '2020-04-14 20:27:37', 'twitter', 'status sudah diterima tapi pulsa belum masuk', 1, 4),
(620, '2020-04-14 20:20:53', 'twitter', 'Jangan mau belanja di LAZADA 95% isinya penipu semua , karna sistemnya bobrok hingga tidak mampu melindungi keamanan para pembeli . Saya korban penipuan uang saya habis akibat penjual bobol akun saya Rp 4.000.000,- ,', 1, 4),
(621, '2020-04-14 18:04:07', 'twitter', 'Kayak gini gmn solusi nya?', 1, 4),
(622, '2020-04-14 15:17:25', 'twitter', 'Kenapa tidak bisa pengiriman instan', 1, 4),
(623, '2020-04-14 15:05:15', 'twitter', 'Hi Lazadian, demi keamanan data kamu bisa infokan detail pesanan dan screenshot voucher tidak bisa digunakan melalui DM Twitter di akun agar dibantu pengecekan lebih lanjut.', 1, 4),
(624, '2020-04-14 14:43:41', 'twitter', 'Hi Kak Maulana, kami turut menyesal atas kendala yang dialami. Demi keamanan data kamu bisa infokan kembali permasalahan seputar Lazada melalui DM Twitter di akun agar dibantu pengecekan lebih lanjut.', 1, 4),
(625, '2020-04-14 13:56:51', 'twitter', 'Alhamdulillah, terima kasih', 1, 4),
(626, '2020-04-14 10:25:58', 'twitter', 'Pengembalian dana Pengembalian dana saya atas pembelian yg telah dibatalkan pada tgl 04 April 2020 blm dikembalikan sampai saat ini tgl 14 April 2020 Mohon dengan sangat agar uang tersebut cepat dikembalikan apalagi situasi PSBB skrg ini..Mksh', 1, 4),
(627, '2020-04-14 08:58:15', 'twitter', 'Gak kapok belanja dan saya mau tanya kenapa paket saya gak ada pergerakan dari kemaren', 1, 4),
(628, '2020-04-14 08:24:20', 'twitter', 'kenapa email beginian sering masuk? Padahal saya gak pernah pesan sama sekali... Emang bisa ya punya akun lazada tanpa verifikasi email?', 1, 4),
(629, '2020-04-16 09:56:39', 'twitter', 'Hi Lazadians! Ada promo seru nih buat kamu! Dapetin diskon hingga 50% dari Eigerindo Store untuk pembelian koleksi tas, apparel dan jam tangan. Yuk cek di link berikut ya >>', 1, 4),
(630, '2020-04-16 13:02:40', 'twitter', 'Mau Oppo A12 dengan harga yang lebih murah? Ini adalah kesempatan kamu untuk dapatkan hp 3D Diamond Blaze Design dan Al Dual Rear Camera dengan harga flash sale! Yuk, beli sekarang >>', 1, 4),
(631, '2020-04-16 19:23:52', 'twitter', 'Lazadians! Ada kejutan spesial dari Lazada untuk nemenin kamu ! Yuk nonton konser Global Citizen: Together at Home hari Minggu besok (19/4) livestreaming hanya di aplikasi Lazada! Ini dia sebagian artis-artis yang akan tampil!', 1, 4),
(632, '2020-04-16 23:41:39', 'twitter', 'Hi Lazadian, jika kamu menerima SMS seperti itu maka mohon diabaikan saja ya Kak, karena saat ini Lazada sama sekali tidak mengadakan undian tersebut. Info resminya ada di link berikut', 1, 4),
(633, '2020-04-16 11:37:21', 'twitter', 'Lazada isinya penipu semua ,sistem bobrok ngak di ganti , Lazada makan uang kami, Menggaji pra karyawan dngan dana kami . Lihat saja 95 % yang komen di platform Lazada isi nya komplenan semua . Beda banget sama Tokopedia ,Shoppe dan juga Bukalapak .', 1, 4),
(634, '2020-04-17 06:59:34', 'twitter', 'Hi Kak Panji, demi keamanan data kamu bisa infokan detail pesanan melalui DM Twitter di akun agar dibantu pengecekan lebih lanjut ya.', 1, 4),
(635, '2020-04-17 03:49:46', 'twitter', 'Hai Kak Ponidi, jika mengalami kendala seputar Lazada dapat menghubungi melalui DM di ya. Tim kami siap membantu.', 1, 4),
(636, '2020-04-17 03:07:21', 'twitter', 'Hi Lazadian, apabila punya pertanyaan seputar Lazada bisa hubungi Tim Customer Care kami melalui DM Twitter .', 1, 4),
(637, '2020-04-17 02:45:01', 'twitter', 'WHOY OL SHOP TERKECE DAN TERHORMAT, MAU SAMPE KAPAN NILAP DUIT SAYA, G MALU??? BISA UPDATE PROMO, EVENT DSB, TAPI EMAIL MA TLP CS GA BISA BALES ATO ANGKAT???? KLO KERE G USAH SOK2AN BIKIN ACARA ATO EVENT??? DUIT SAYA DAN PARA USER LAZADA LAINNYA BALIKIN !', 1, 4),
(638, '2020-04-17 02:01:34', 'twitter', 'Hai Kak Roza, jika mengalami kendala seputar pesanan di Lazada, dapat menghubungi melalui DM di ya. Agar dibantu untuk pengecekan dan tindaklanjutnya.', 1, 4),
(639, '2020-04-17 00:25:07', 'twitter', 'tolong ini nomor terindikasi sbg pelaku penipuan. Mohon untuk di tertibkan.', 1, 4),
(640, '2020-04-17 00:09:21', 'twitter', 'Awas lazada banyak tukang tipunya', 1, 4),
(641, '2020-04-17 00:02:18', 'twitter', 'Kami sudah respon melalui DM ya. Silahkan cek kembali Kak.', 1, 4),
(642, '2020-04-16 21:27:35', 'twitter', 'Jangan di panggil lagi di kamar semedi', 1, 4),
(643, '2020-04-16 21:22:59', 'twitter', 'Kesel banget sama seller di beli barang dari tanggal 6 April 2020, sampai sekarang belum dikirim juga. Dibatalin pun gabisa karena (katanya) udah diproses sama seller. Smh', 1, 4),
(644, '2020-04-16 19:00:08', 'twitter', 'Kemarin kasih notif alat cukur rambut sendiri, giliran dicari kok ga ada yah?', 1, 4),
(645, '2020-04-16 18:30:00', 'twitter', 'Bulan Ramadan tinggal menghitung hari! Persiapkan semua kebutuhanmu selama puasa mulai hari ini, termasuk kebutuhan untuk kesehatan gigi sensitifmu. Check out belanjaan Sensodyne kamu di sekarang yuk!', 1, 4),
(646, '2020-04-16 17:40:58', 'twitter', 'Tgl 23 maret lalu saya belanja online ke dan tertera di aplikasinya kalo pesenan saya sampe paling lambat tgl 13 april tp ternyata sampe skrg belum sampe juga dan saya ngga dpt jawaban yg pasti dari pihak mohon pencerahan dari gimana ini solusinya?', 1, 4),
(647, '2020-04-16 16:22:09', 'twitter', 'Hallo saya mau sumbangkan ini ke teman2 yg membutuhkan saja!', 1, 4),
(648, '2020-04-16 15:45:23', 'twitter', 'Hi Kak , cek DM balasan dari kami ya :)', 1, 4),
(649, '2020-04-18 19:09:21', 'twitter', 'Untuk melakukan pengaduan by email gimana ya? Saya membatalkan pesanan dari bulan Maret, sudah sebulan dana tidak cair dan tidak ada tanggapan serius dari pihak Lazada', 1, 4),
(650, '2020-04-18 09:25:22', 'twitter', 'Satu-satunya e-commerce yang paling gak bener, gak bisa ngurusin sellernya, ribet, korup, bahkan curang banget bikin kebijakan yang merugikan konsumen ya cuma Ada dana refund karena kesalahan pihak toko yang salah memberikan harga, 1 minggu tidak kunjung ', 1, 4),
(651, '2020-04-19 02:41:59', 'twitter', 'Hai Kak Sapar, DM twitter kamu sudah kami respon ya. Mohon melakukan pengecekan kembali.', 1, 4),
(652, '2020-04-18 07:54:38', 'twitter', 'Selesai sudah.. Makasih', 1, 4),
(653, '2020-04-18 18:59:28', 'twitter', 'boss sudah sampai mana perkembangan laporan sy? kok malah seolah ga perduli ya? di twitter suruh tunggu jawaban di email, sudah di email ga ada balasan? maunya gmn?', 1, 4),
(654, '2020-04-18 20:31:54', 'twitter', 'Ramadhan sebentar lagi, butuh stok makan sahur yg bisa satset, dan pas bangeetttt deh ah Jutaan Pilihan Untukmu menu sahur satset dari Jadi belanja dari rumah aja, hati tenang dompet senang. Thanks a lot lazada~', 1, 4),
(655, '2020-04-19 06:01:44', 'twitter', 'tolong baca dm saya.. Saya mau ngisi formulir pengembalian dana.. Gimana caranya??', 1, 4),
(656, '2020-04-19 04:12:13', 'twitter', 'Hai Lazadian, kami turut menyesal atas kendalanya, untuk verifikasi data, bisa diinfokan nomor pesanan dan nama pemesannya melalui DM Twitter , agar kami bantu pengecekannya.', 1, 4),
(657, '2020-04-19 04:08:58', 'twitter', 'Kami turut menyesal atas ketidaknyamanannya ya Kak Tyas. Kami akan evaluasikan hal ini kepada tim terkait agar tidak terjadi lagi pada pesanan kamu selanjutnya. Mohon menunggu info selanjutnya melalui email. -Dom', 1, 4),
(658, '2020-04-18 23:33:59', 'twitter', 'Kami turut menyesal atas kendala yang kamu alami. Saat ini permasalahan tersebut sedang ditindaklanjuti oleh Tim Follow Up. Kami akan prioritaskan permasalahan kamu agar cepat terselesaikan. Mohon menunggu info selanjutnya melalui email. -Dom', 1, 4),
(659, '2020-04-18 23:15:15', 'twitter', 'Ehem user kamu pada pelit ngasih bintang 5', 1, 4),
(660, '2020-04-18 18:47:50', 'twitter', 'Aq maunya si gratis xixixi', 1, 4),
(661, '2020-04-18 15:14:27', 'twitter', 'min gmn cara nya nonton one world together at home di app ya? Terima kasih :))', 1, 4),
(662, '2020-04-18 14:32:37', 'twitter', '...mohon seler ini kurang baik... Di sisi penjualanya pesan 2 kirim 1 di komplin... Mintak bukti yg aneh2....mohon lazada ini penyakit di toko penjualan anda...terima kasih... Baru kali ini bertransaksi dengan lazada yg buruk...sebelum2 nya gk..', 1, 4),
(663, '2020-04-18 14:12:13', 'twitter', 'Kemblikan dana saya ke rekening saya saya sudah isi formulir refund tapi blm ada blasannya', 1, 4),
(664, '2020-04-18 13:44:15', 'twitter', 'Hai Kak, DM sudah kami respon ya. Mohon dibalas via DM ya Kak. -Paulina', 1, 4),
(665, '2020-04-18 12:34:01', 'twitter', 'Hai Kak, bisa info detail data pemesanan via DM Twitter di agar kami bantu cek ya. -Paulina', 0, 4),
(666, '2020-04-18 12:31:17', 'twitter', 'selamat siang saya order barang tgl 14 dan sdh bayar sampai saat ini blm dtg', 1, 4),
(667, '2020-04-18 11:59:44', 'twitter', 'Siapa mau KUOTA INTERNET 5GB GRATIS?! Yuk, isi pulsa sambil kerja di rumah, bisa dapat bonus kuota 5GB! Jangan sampai kelewataan ya! Langsung saja klik link ini >>', 1, 4),
(668, '2020-04-18 11:58:20', 'twitter', 'Lazadians! Mau langsing dan sehat? Dapatkan diskon hingga 75% + voucher untuk pakaian dan sepatu olahraga di Lazada! Yuk, ambil vouchermu sebelum kehabisan! Klik link ini ya >>', 1, 4),
(669, '2020-04-20 16:56:31', 'twitter', 'Nggak nyangka Verrel bisa segokil itu goyang pake helm lagi di iklan hahaha nontonin video ala2 gokil artis', 1, 4),
(670, '2020-04-20 18:08:55', 'twitter', 'Kok ada-ada aja ya tingkah cowok ganteng kayak Verrel ini. Joget tapi pake helm kebalik dong Aneh tapi tetep lucu kok kalo Verrel yang pake hehe. Ayo siapa yang berani ngikutin Verrel?', 1, 4),
(671, '2020-04-20 17:18:50', 'twitter', 'Awalnya ngira kalo si Verrel yang iklan pasti bawaannya cool,santai,kalem.Ehtapi kaget dong ternyata doi sekocak itu, joget pake helm wk.Ini pasti karena efek .Btw bentar lg akan memasuki bln ramadhannih,gmn persiapan kalian puasa disaat pandemic gini?', 1, 4),
(672, '2020-04-20 17:42:38', 'twitter', 'Hei hei hei.. Gimana nih persiapan Ramadhan kali ini ? Kata Verrel \"Ramadhan cuma diem di rumah bukan berarti gak dpt berkah, berkah itu ada di rumah\" Aku setuju bgt, karena walaupun self quarantine kita harus menyambut keberkahan ramadhan. bersama', 1, 4),
(673, '2020-04-20 16:16:15', 'twitter', 'Dance nya ngakak juga lah wkwkw, kalian gmna nih buat ngerayain ?', 1, 4),
(674, '2020-04-20 15:10:27', 'twitter', 'Barusan dapat sms dri buat bayar barang. Pdhl aku gk pesan apa apa. Bahkan apps lazada jg udh aku hapus. Trs pas aki cek nama nya tohir rattle. ITUU SIAPAA AKU GA KENAL?????', 1, 4),
(675, '2020-04-20 16:51:17', 'twitter', 'Ada si ganteng Verrel Bramasta di video ini guys. Kocak banget idolaku ini, semoga bisa memberikan inspirasi buat persiapan ramadhan kalian ya dengan video ini', 1, 4),
(676, '2020-04-20 16:06:42', 'twitter', 'Quarantine emang bisa bikin siapa aja bosen. Mas verrel beli helm bisa joget ampe seneng, adeknya beli hape bisa ngegame ampe bosen, kayanya aku juga harus beli sesuatu nih biar . Auto buka yuuhuuuuuuu', 1, 4),
(677, '2020-04-20 17:58:11', 'twitter', 'Tulis Draft Tweet Gokil banget dah joget-joget begitu buat ngerayain Kalian bisa ga?', 1, 4),
(678, '2020-04-20 16:50:29', 'twitter', 'yuk kita liat Varell Bramasta beli apa aja di', 1, 4),
(679, '2020-04-20 17:22:58', 'twitter', 'Lagi gabut iseng nonton video Babang Ganteng Verrel Bramasta Buat Ngerayain wagelasih ini orang joget2 pake helm terbalik kocak !', 1, 4),
(680, '2020-04-20 17:38:37', 'twitter', 'Scroll2 eh lewat tuh video si babang verrel ternyata orang cool bisa koplak juga yaaa helmnya kebalik tuh bang emang bener kata bang verrel ada bikin', 1, 4),
(681, '2020-04-20 16:44:51', 'twitter', 'Ga sengaja ngeliat video bang Verrel joget-joget di lucu amat siii, ternyata yang kayak Verrel bisa juga diajak seru-seruan kek gini, bener-bener', 1, 4),
(682, '2020-04-20 17:24:53', 'twitter', 'Ramadhan sebentar lagi, siap siap yuk, sambil ikut ngerayain dari', 1, 4),
(683, '2020-04-20 16:51:00', 'twitter', 'Gokill parah, asli !! Untung aja verrel ganteng ya jadi gak masalah kalo joget kocak buat ngerayain bersama', 1, 4),
(684, '2020-04-20 16:22:29', 'twitter', 'Ini nih contoh orang yang disiplin, joget tetep dirumah karena , kira-kira apa ya nama jogetannya, ada yang tau?', 1, 4),
(685, '2020-04-21 02:06:02', 'twitter', 'nahh, gini dong kalo iklan biar dgn sukarela diklik, jangan iklan redirect yg sangat menyebalkan hehe', 1, 4);
INSERT INTO `dataset` (`id`, `tanggal`, `sumber`, `teks`, `temp_klasifikasi`, `fk_marketplace`) VALUES
(686, '2020-04-20 17:52:09', 'twitter', 'Guyss dari video dibawah udah jelas banget meskipun ramadhan kali ini di rumah aja, kita masih bisa kok dapetin dengan berbagi lewat', 1, 4),
(687, '2020-04-20 16:16:31', 'twitter', 'Wah salut banget liat si kak Udah ganteng,keren dan gak sombong banget pokoknya dan suka banget liat gayanya kak varrel ini seru juga nih kalau aku ikutan bikin challenge ambil helm terus bikin video kayak Verrel wksksk', 1, 4),
(688, '2020-04-20 16:46:13', 'twitter', 'Dirumah aja nih biar aman, dan biar nggak bosan, gua coba joget kocak dari si ganteng Verrel Bramasta. Asyik cuy ! bareng', 1, 4),
(689, '2020-04-14 18:15:00', 'twitter', 'Rasanya udah nonton semua film dari Hollywood, Bollywood, sampai drama Korea? Bingung kudu nonton apa lagi? Biar gak bosen mending ikutan Teka Teki Miliaran Bukalapak edisi Film. Kalau beruntung kamu bisa menangin hadiahnya! Kuuy ikutan sekarang juga di', 1, 5),
(690, '2020-04-14 20:45:00', 'twitter', 'Kita asik-asikan dan tebak lagu favorit bareng Bukalapak yuuuk! Ikutan Teka Teki Miliaran Bukalapak edisi melodi sekarang juga dan menangin hadiahnya. Cek', 1, 5),
(691, '2020-04-14 18:00:00', 'twitter', 'Ada yang sabun mandinya bentar lagi habis? Kuuuy borong sabun mandi di Flash Deal Golden Hour Bukalapak. Harganya murah beneeer, cuma Rp5,000 aja!! Pasang alarm dari sekarang biar gak kelewatan yaa!', 1, 5),
(692, '2020-04-14 19:25:00', 'twitter', 'Ada yang baru nih di Bukalapak yang siap hari kamu! Hari ini kita ditemenin sama Wika Salim. Bakal seru banget sih! Yook kita belanja asik dari rumah karena ada diskon hingga 70%. Yang mantep-mantep gini pasti gamau kelewatan kaan? Klik', 1, 5),
(693, '2020-04-14 16:32:48', 'twitter', 'Dikirim beneran dong.. cuma download dan isi data diri Mayan deh ya cukup ngebass Semoga awet wkwkw', 1, 5),
(694, '2020-04-14 11:00:00', 'twitter', 'Yang mau belanja jangan lupa bayarnya pakai DANA. Lebih untuuuuung~ Pakai voucher gratis ongkir, bisa dapat motor dan mobil. Info lengkapnya kepoin di', 1, 5),
(695, '2020-04-14 12:30:00', 'twitter', 'Jangan sampai kelewatan!!! Sambil makan siang kita seru-seruan di Teka Teki Miliaran Bukalapak edisi Maut. Caranya gampang banget! Buka aplikasi Bukalapak kamu sekarang juga dan jawab pertanyaannya di', 1, 5),
(696, '2020-04-14 09:45:00', 'twitter', 'Belanja jadi lebih murah kalau bayarnya pakai Citibank. Ada diskon hingga Rp100,000 dari Citibank yang bikin kamu pengen belanja setiap hariii! Jangan lupa pake kode voucher CITYEVERYDAY pas checkout yaah! Klik', 1, 5),
(697, '2020-04-14 19:00:00', 'twitter', 'Yang demen belanja, jangan sampai kelewatan. CUMA 1 JAM AJA dari jam 19:00 - 20:00 WIB. Siap-siap pantengin aplikasi Bukalapak dan borong barang incaran kamu!', 1, 5),
(698, '2020-04-14 23:40:32', 'twitter', 'Logo baru semangat baru atuh euy... Dah berminggu-minggu cuma gitu gitu ajah...bikin beberapa artwork u donasi yg blom kunjung slesay..rehat dlu sedjenak..eh ketemu postingannya yg ramai nan…', 1, 5),
(699, '2020-04-14 15:00:00', 'twitter', 'Gak ada sih yang nolak kalo bisa dapetin Rumah 1,2 M dan mobil BMW. Makanyaa terus belanja yang banyak di Bukalapak dan kejar terus hoki kamu! Siapa tau kamu yang beruntung dan dapetin hadiahnya. Tunggu apa lagi? Goow langsung aja kejar hoki di', 1, 5),
(700, '2020-04-14 19:12:26', 'twitter', 'Paket Matras Spon & Matras Alumunium Foil via', 1, 5),
(701, '2020-04-15 06:17:40', 'twitter', 'Hi , mau tanya kenapa toko saya tidak ada badge super seller nya, padahal saya daftar super seller yg gold? Dan saya tdk mempunyai 1ulasan negatif pun. Karena perihal ini membuat toko saya tdk terindek di hal pencarian . Mohon bantuannya. Thanks', 1, 5),
(702, '2020-04-14 21:54:59', 'twitter', 'knapa jumlah daftar penyerbu program serbu rumah di buka lapak, malah turun dibanding 3 april ya? Apakah ini marketing scam. Harusnya lebih open dengan total jumlahnya, bukan di reset, bagaimana nasib yg sudah ikutan klo di reset terus?', 1, 5),
(703, '2020-04-14 21:41:22', 'twitter', 'Selalu memainkan game cacing saat Yuk ikutan juga', 1, 5),
(704, '2020-04-14 21:22:46', 'twitter', '\"RAGNAROK ONLINE\" Yuk ikutan : 1. 2. Done like Fanpage & Follow Semoga Beruntung', 1, 5),
(705, '2020-04-14 20:45:17', 'twitter', 'Sampai saat ini saldo credit tidak bisa digunakan utk belanja, komplain dari tgl 22 maret tidak ada penyelesaian Mohon bantuannya, sebagai konsumen saya merasa dirugikan karna credit berupa nominal uang', 1, 5),
(706, '2020-04-16 21:20:45', 'twitter', 'bokap gue hariini mau belanja macbook di pagi ini trs lgsg melakukan pembayaran via Bca, setelah melakukan transfer knp br ada pemberitahuan kalau toko nya dibekukan krn kasus penipuan? trs gmn refund nya kl diminta persetujuan dr toko nya dulu:” lumayan ', 1, 5),
(707, '2020-04-16 13:46:37', 'twitter', '28. Lapak di take down pembeli karna ketauan. Kalian masih tidak merasa admin return ga cacat kompetensi?', 1, 5),
(708, '2020-04-16 18:15:00', 'twitter', 'Bosen nonton film? Jawabin pertanyaan seputar film aja kalo gitu~ Kuuuy ikutan Teka Teki Miliaran Bukalapak edisi film dan menangin total hadoah 13 Juta Rupiah setiap harinya. Buruaaaan jangan sampai kelewatan', 1, 5),
(709, '2020-04-16 13:00:00', 'twitter', 'Kirim-kirim barang udah gak usah ribet lagi. BukaSend siap bantu kamu untuk kirim ini itu dengan mudah dan nyaman! Plus hemat hingga 40%, barang bisa di pick up di tempat kamu tanpa kamu perlu kemana-mana~ Cek info di', 1, 5),
(710, '2020-04-16 12:30:43', 'twitter', 'Teka Teki Miliaran Bukalapak edisi Maut udah mulai nihhh. Yuuuk stay tune sekarang juga di aplikasi Bukalapak kamu dan menangin total hadiah 13 Juta setiap harinyaaaa~~~ Klik', 1, 5),
(711, '2020-04-16 17:00:00', 'twitter', 'Udah mulai bosen ??? Gak apa, ini buat menjaga kesehatan bersama kok Nah biar bisa di Rumah, Bukalapak siap kasih kamu Ongkir Rp0, cashback, dan banyak promo menarik cuma di', 1, 5),
(712, '2020-04-16 12:47:23', 'twitter', 'For sale, RX 460 4GB 128 BIT GDDR5 Stok tinggal 1, harga lokdon lotnok aja 1juta nett rekber silahkan . RX 460 4GB via', 1, 5),
(713, '2020-04-16 18:46:31', 'twitter', 'Halo , 99% nya 5000 bukannya 4950 ya? Kok potongannya cuman 1000? Yang bener dong bikin promo', 1, 5),
(714, '2020-04-16 10:00:00', 'twitter', 'Terus jaga kesehatan kamu ya! Belanja pun mending di Bukalapak aja~ Soalnya pakai DANA, kamu bisa lebih hemat dengan diskon Rp20.000! Udah untung, bisa belanja hemat dan banyak, deh~ Cek infonya di', 1, 5),
(715, '2020-04-16 18:00:00', 'twitter', 'Promo kesayangan kamu yang paling kamu tunggu-tunggu balik lagi nih~ Hari ini bisa beli Quaker Oats Rp5,000 aja! Buat sarapan biar lebih sehat. Kuuy tungguin 1 JAM LAGI yaaa,tapi siap-siapnya dari sekarang biar gak kelewatan', 1, 5),
(716, '2020-04-16 11:00:00', 'twitter', 'Lagi tuh kudu pinter-pinter cari kegiatan biar gak bosen. Salah satunya ini nih...langganan paket anti bosen Bukalapak. Bonusnya kamu bisa nonton sepuasnyaaaa~ Kuy beli paketnya sekarang di', 1, 5),
(717, '2020-04-16 12:08:02', 'twitter', 'Sambal Lorjuk Bu Sandra 150gr via', 1, 5),
(718, '2020-04-16 12:12:37', 'twitter', 'Sambal Ikan Roa Jawara Selera 135gr. via', 1, 5),
(719, '2020-04-17 06:05:54', 'twitter', 'Perbedaan services pake kurir dengan pake kurir . Disini terlihat siapa yg kerjanya lelet..', 1, 5),
(720, '2020-04-16 23:10:39', 'twitter', 'Alhamdulillah Berawan', 1, 5),
(721, '2020-04-16 20:45:00', 'twitter', 'Siapa yang dari bangun tidur sampai mau tidur lagi gak bisa gak pasang musik? Kalo kamu adalah salah satunya, berarti bisa nebak semua pertanyaan tentang lagu-lagu paling asik saat ini. Kuuy langsung aja ikutan Teka Teki Miliaran Bukalapak edisi Melodi di', 1, 5),
(722, '2020-04-16 19:25:00', 'twitter', 'Gimana belanjaan kamu kemarin? Udah dapet belum barang incaran kamu? Tenaaang, hari ini kamu bisa coba lagi~ Tentunya masih ditemenin sama host kece kita, Wika Salim. Plus diskon hingga 70%!!! Buruan stay tune di aplikasi Bukalapak sekarang juga', 1, 5),
(723, '2020-04-16 19:00:00', 'twitter', 'Siapa mau barang dengan harga spesial mulai dari Rp5.000 aja, dapet diskon 90% plus bisa klaim barang gratis???? Sini buruan ikutan Golden Hour di Rumah! Banyak promo menarik dan gratis yang bisa kamu dapetin, cuma 1 jam dengan klik', 1, 5),
(724, '2020-04-18 18:57:27', 'twitter', 'MAU NGE SPAM IN AKUN BIAR UANG GUE YANG 9,5 JUTA DIBALIKIN DAN GAK BANYAK BACOT NYURUH KIRIM DATA TERUS!', 1, 5),
(725, '2020-04-18 11:35:54', 'twitter', 'Adobe Acrobat reader pro DC original full aktivasi via', 1, 5),
(726, '2020-04-18 21:57:45', 'twitter', 'Hai, apa kabar? Minta tolong dong. Aku butuh bantuan kamu buat potong harga barang ini jadi murah di Potongan Kalap. Klik link ini buat bantuin', 1, 5),
(727, '2020-04-18 13:31:31', 'twitter', 'Mari potong2 Poco F1 jadi murah di Potongan Kalap. Klik link yg teks ya..', 1, 5),
(728, '2020-04-18 13:00:00', 'twitter', 'Biar gak bosen, kuy jadi Pembeli Prioritas Bukalapak aja, DIjamin gak bosen karena bebas nonton di http://Vidio.com  sepuasnyaaa~ Mau nonton bola, film Indonesia, ataupun drama Korea, bisa semua, Kuy cek info lengkapnya di', 1, 5),
(729, '2020-04-18 21:46:08', 'twitter', 'Whiteboard Kamiko Ukuran 45 cm x 60 cm Gantung via', 1, 5),
(730, '2020-04-18 21:03:47', 'twitter', 'Hello teman teman dari untuk produk dari proteam Bola futsal F1000 Terpilih mengikuti Flash Deals pada Besuk hari Minggu tanggal 19 April 2020 jam 08.00 sampai jam 11.59 WIB jangan sampai…', 1, 5),
(731, '2020-04-18 07:50:00', 'twitter', 'Pagi-pagi kita borong barang incaran sepuasnya yuuuuk! Hari ini ada Flash Deal 4x sehari plus gratis ongkir. Tunggu apa lagi? Langsung aja belanja di', 1, 5),
(732, '2020-04-19 06:27:18', 'twitter', 'Paku Plastik Alas Kaki Kursi Kaki Meja Putih via', 1, 5),
(733, '2020-04-19 06:26:29', 'twitter', 'Pengaman Sudut Meja Bening Plus Perekat via', 1, 5),
(734, '2020-04-19 06:26:52', 'twitter', 'Ganjal Kaca Meja Karet Bening Bagus via', 1, 5),
(735, '2020-04-19 05:40:20', 'twitter', 'Malah suruh ikut kompetisi, tu yg komplain duit g balik urusin dl, gw si ud bodo amat, makan tu duit haram hasil lu nilep dr customer', 1, 5),
(736, '2020-04-19 00:24:17', 'twitter', 'hatihati lagi ya kak', 1, 5),
(737, '2020-04-19 00:00:06', 'twitter', 'Ancur dah toko online no 1 diindonesia:)', 1, 5),
(738, '2020-04-18 23:54:45', 'twitter', 'tp cm dikasih waktu 2 hari sama pihak Bukalapaknya kak, kalau engga ya hangus otomatis uang aku dari Bukalapaknya', 1, 5),
(739, '2020-04-18 23:15:27', 'twitter', 'Responnya cepet banget. Tp nanti tunggu hasilnya aja', 1, 5),
(740, '2020-04-18 22:54:34', 'twitter', 'makasih ya mas info nya. tp ini cm dikasih waktu 2 hari dan skrg tggl 11 jam belum ada perubahan sama sekali kl emg dalam 11 jam gada perubahan uangnya hangus otomatis dari pihak Bukalapaknya', 1, 5),
(741, '2020-04-18 22:47:47', 'twitter', 'Kok sama mba.. ane belanja d buka lapak barang kada dateng.. komplen ke bukalapaknya kaga jelas.. ketokonya malah ngakak', 1, 5),
(742, '2020-04-20 23:52:11', 'twitter', 'Baik Kak, terimakasih sudah bersedia menunggu ya dan cek secara berkala ya Kak. :) ^-', 0, 5),
(743, '2020-04-20 12:06:54', 'twitter', 'Anjing g pernah menang gue bgst', 1, 5),
(744, '2020-04-20 23:35:46', 'twitter', 'Ada apa sama sinyal w bagus aja lho. Buka shopee lancar jaya lho~ eugh', 1, 5),
(745, '2020-04-20 10:16:59', 'twitter', 'Dear kenapa gabisa beli listrik sih', 1, 5),
(746, '2020-04-21 05:39:39', 'twitter', 'Biasanya jam segini udah nyiapin iklan, beres2 stok di lha kok dari semalam sampai skrg gak bisa diakses webnya. Ini peningkatan atau penurunan tim ITnya? Level unicorn maintenance kok lama bener', 1, 5),
(747, '2020-04-20 07:50:00', 'twitter', 'Hari Senin, pagi-pagi, yang paling ya ikutan Flash Deal Bukalapak. Ada 4x sehari looh. MANTUL BANGETTT!!! Kuy pasang alarm dari sekarang biar gak kelewatan. Cek', 1, 5),
(748, '2020-04-21 06:27:32', 'twitter', 'Aneka cemilan produk GeboyPutra hadir di gofoodindonesia @ Jln Sukalaya Barat Gang Hegarsari 4 rw 08', 1, 5),
(749, '2020-04-20 20:45:00', 'twitter', 'Kangen karaokean bareng temen-temen? Nih kita ada cara asik buat ngobatin kerinduan kamu. Plus bisa menangin hadiah kalau beruntung. Yuuuk ikutan Teka-Teki Miliaran Bukalapak edisi Melodi dan tebak pertanyaan seputar lagu-lagu asik dengan benar.', 1, 5),
(750, '2020-04-20 23:49:46', 'twitter', 'Saya rasa aplikasi tiba2 error tanpa ada pemberitahuan bukan tanpa sebab dan terlebih ketentuan waktu maintance tidak diperkirakan. Saya berasumsi ini ada sebab lain yang bukan inginkan. Semoga bisa dibenahi segara, atau reputasi akan merosot. Keep calm.', 1, 5),
(751, '2020-04-20 16:49:18', 'twitter', 'Coba dicek ada nama kamu gaakkkk? Selamat ya buat semua pemenang Pesta Cuan', 1, 5),
(753, '2020-04-20 12:24:44', 'twitter', 'Mur Nanas Mur Tanam Kayu 6 mm via', 1, 5),
(754, '2020-04-21 02:17:08', 'twitter', 'Pas jadi brand ambassadornya caca handika langsung beli tiger', 1, 5),
(755, '2020-04-20 20:49:47', 'twitter', 'Halo apakah sedang gangguan?', 1, 5),
(756, '2020-04-21 00:49:54', 'twitter', 'Sepertinya BL nya kena PSBB', 1, 5),
(757, '2020-04-20 23:58:33', 'twitter', 'Hai, mohon maaf atas ketidaknyamanannya. Kami informasikan saat ini sedang terjadi pembaruan pada sistem Bukalapak dan sedang ditangani oleh tim terkait. Jangan khawatir, kami akan segera normal kembali. Kami sarank..', 1, 5),
(758, '2020-04-20 23:59:35', 'twitter', 'Server lagi down apa gimana yak? :\\ Mohon pencerahannya', 1, 5),
(759, '2020-04-20 23:02:49', 'twitter', 'Maen roda putarnya udah jelas banget rodanya bakal berhenti di PS4 eh tiba tiba puterannya dicepetin jadi free ongkir. gini amat yak startup bikin promo', 1, 5),
(760, '2020-04-20 12:30:00', 'twitter', 'Yang suka olahraga sini-sini coba merapat dulu~ Buktiin kalo kamu emang suka olahraga dengan ikutan Teka Teki Miliaran edisi Bugar. Yakin deh pasti bisa jawab semua pertanyaannya. Tunggu apa lagi? Langsung ikutan kuisnya di', 1, 5),
(761, '2020-04-20 22:56:58', 'twitter', 'Daritadi ga bisa buka, Apa sedang maintenance?', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `kata_baku`
--

CREATE TABLE `kata_baku` (
  `id` int(11) NOT NULL,
  `kata_baku` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kata_baku`
--

INSERT INTO `kata_baku` (`id`, `kata_baku`) VALUES
(1, 'terima'),
(3, 'kasih'),
(4, 'teri'),
(5, 'yang');

-- --------------------------------------------------------

--
-- Table structure for table `kata_tidak_baku`
--

CREATE TABLE `kata_tidak_baku` (
  `id` int(11) NOT NULL,
  `kata_tidak_baku` varchar(64) NOT NULL,
  `fk_kata_baku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kata_tidak_baku`
--

INSERT INTO `kata_tidak_baku` (`id`, `kata_tidak_baku`, `fk_kata_baku`) VALUES
(2, 'trima', 1),
(4, 'ksh', 3),
(5, 'terima', 4),
(6, 'yg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `marketplace`
--

CREATE TABLE `marketplace` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `twitter` varchar(128) NOT NULL,
  `website` varchar(128) NOT NULL,
  `playstore` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketplace`
--

INSERT INTO `marketplace` (`id`, `nama`, `twitter`, `website`, `playstore`) VALUES
(1, 'Shopee', 'ShopeeID', '', 'com.shopee.id'),
(2, 'Tokopedia', 'tokopedia', '', 'com.tokopedia.tkpd'),
(3, 'BliBli', 'bliblidotcom', '', 'blibli.mobile.commerce'),
(4, 'Lazada', 'lazadaID', '', 'com.lazada.android'),
(5, 'Bukalapak', 'bukalapak', '', 'com.bukalapak.android');

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `id` int(11) NOT NULL,
  `teks` varchar(255) NOT NULL,
  `klasifikasi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`id`, `teks`, `klasifikasi`) VALUES
(1, 'Terima kasih! Sering-sering belanja ya, Mas..', 0),
(2, 'Alcartian! Awali harimu bersama NESTLE agar semangat setiap hari! Nikmati potongan 10ribu ya untuk pembelian NESTLE di Store Alfacart Klik link ini untuk nikmati promonya >>', 0),
(3, 'Mantap ya kak. Hehe. Terima kasih sudah belanja di Blibli, ya.', -1),
(4, 'Lah kok ini ikut ngiklanin Masker dgn harga selangit gini sih?', -1),
(5, 'Hai selamat pagi Kak Sabai, dengan Bonita ya saat ini. Kita ada program baru dan ingin mengajak kakak untuk berpartisipasi dalam program Blibli Cinta Bumi. Boleh diinformasikan melalui DM nomor telepon kakak yang bisa dihubungi agar dapat dijelaskan lebih', -1),
(6, 'Selamat ! Lagu apa yang kamu denger mengawali hari ini? Kalau aku; Hindia - Secukupnya.', -1),
(7, 'Cari berbagai makanan untuk hewan peliharaanmu jadi lebih mudah di http://Blibli.com ! Tidak hanya mudah, tapi juga hemat karena kamu bisa mendapatkannya dengan harga mulai dari Rp7.000,- an aja! . Info selengkapnya', 0),
(8, 'Bagan kompetisi perseorangan LIMA Badminton: http://Blibli.com  West Java Conference Season 8.', -1),
(9, 'maaf mau tanya apa Lazada ada program seperti sms kepada saya ini??? Tks Lazada sukses selalu', -1),
(10, 'Hai Kak, untuk pertanyaan mengenai pemesanan di Lazada bisa langsung ke akun via DM Twitter ya agar nanti dapat dibantu lebih lanjut.', -1),
(11, 'Hi Kak Badrun, apabila kamu memiliki pertanyaan seputar Lazada bisa langsung ke akun ya agar dibantu lebih lanjut.', 1),
(12, 'Yuk, tonton Live Streaming Beauty World bersama Miss Universe 2019 & pkl 10.00 WIB di link berikut', 1),
(13, 'Terimakasih atas informasi yang kamu berikan ya Kak. Hal tersbeut akan kami jadikan bahan evaluasi kedepannya.', 1),
(14, 'Miss Universe lagi LIVE di app Lazada! Yuk tonton sekaraaang >', 1),
(15, 'pesen tgl 3 dibayar tgl 3 kok sampe skrg cm diproses payah', 1),
(16, 'Ada yang minat/mau hadiah ini? Cc', 1),
(17, 'Hi Lazadian, untuk produknya telah kami teruskan ke tim terkait dan saat ini sudah dihapus dari Website Lazada ya.', 1),
(18, 'Yuk, kenal lebih jauh cerita kepemimpinan dan upaya Miss Universe 2019 dalam pemberdayaan perempuan hanya di Live Streaming Beauty World bersama sesaat lagi di Youtube Channel KompasTV', -1),
(19, 'min minta tolong ini bisa ga alamat penagihan nya dirubah sama dengan alamat pengiriman', -1),
(20, 'Seperti apa cerita Miss Universe 2019 menghadapi stereotipe tentang gender & upayanya dalam pemberdayaan perempuan? Tonton Live Streaming Beauty World bersama & dipandu pkl 10.00 WIB di', -1),
(21, 'Rizqi mu sudah ditetapkan dek...gak usah khawatir, masih banyak pintu Rizki lain yang halal& berkah', -1),
(22, 'Tolong y klu punya aplikasi ecommers jgn mempersulit costumer, bisanya pasang iklan sana sini tapi kualitas internal tdk dibagusin. Kepercayaan costumer lebih mahal daripada perusahaan anda contohlah & costumer care sangat fast respon.', -1),
(23, 'Hallo lazada yth.kenapa uang pengembalian dana saya belum saya terima.tolonglah dikembalikan lazada yth', -1),
(24, 'Cek Dm min, belum di balas.', -1),
(25, 'Astagfirullah gw lupa. Makasih', -1),
(26, 'Tersedianya berbagai layanan produk virtual, warung Mitra menjadi warung dengan produk virtual terlengkap dan menjadi titik sentuh layanan perbankan untuk masyarakat yang belum memiliki akses terhadap layanan keuangan (unbankable).', -1),
(27, 'Ada yang asik-asik yang baru dari Bukalapak loh~ Yap, promo Ganteng Asik! Lo bisa ikutan Serbu Seru berhadiah rumah dan mobil BMW, juga belanja dengan gratis ongkir sepuasnya. Jangan sampe dianggurin yaaa!! Kuy gak pake lama langsung klik', -1),
(28, 'apresiasi berdayakan Warung Naik Kelas Melalui Virtual Produk. Dengan digitalisasi warung akan mudahkan inklusi keuangan.', 0),
(29, 'Pemberdayaan Warung Rakyat diperlukan agar usaha mereka tetap berjalan untuk menghidupi kebutuhan keluarga, karena warung kekuatan ekonomi rakyat yang paling real.', 0),
(30, 'Turut mendampingi Staf Khusus Menteri Bidang Pemberdayaan Ekonomi Kreatif Fiki Satari, Kepala Dinas Koperasi dan UKM Provinsi Jawa Barat Kusmana Hartadji, Co-founder dan President Buka Lapak Fajrin Rasyid dan CEO Rachmat Kaimuddin. Pada ngobrolin apa yua', 0),
(31, 'Hai kak Petrik, maaf banget nih jadi bikin kamu ngga nyaman. Pindah ke inbox aja yuk kak, agar lebih nyaman ceritain detail kendala kamu. Jangan lupa lampirkan juga screenshot kendala kamu serta email dan nomor t..', 0),
(32, '4X SEHARI!!! Makin puas buat ikutan Flashdeal Bukalapak karena kesempatan dapetin barang incaran makin banyaaaakkkkkk! Jangan lupa masukin kode voucher GRATISONGKIR sebelum checkout ya~ Cobain sekarang juga di', 0),
(33, 'Bahasa pemrograman sama jenis file itu beda Buambaang....', 0),
(34, 'artinya gratisan akan pernah dikirim guys, terbukti teman sayapun seperti itu? licik yah', 0),
(35, 'Yaaa, ane sekolah yg biasa aja, gak ada yg ngajarin japanese adult video. Lagian, yg ane tau .jav itu sejenis file aja kyk .doc, .txt Ane gak pinter2 amat sm IT Lagian emang ente sekolah di sekolahan yg ngajar japanese adult video gitu?', 0),
(36, 'sekarang kalau mau bayar pake Clickpay di hp pasti habis login keluar error gini, pembelian jadi tercancel terus, padahal saya coba di marketplace lain ga error', 0),
(37, 'Konsultasi Hyperhidrosis Keringat Berlebih Indonesia via', 0),
(38, 'Kampas Rem Berkualitas Untuk Honda PCX 150 CBS All New 2018 Lokal - Depan & Belakang via', 0),
(39, '*Bahasa program exe, .com,.doc, .pas,.bas,.jav,.dll, .sys adalah contoh dari : a. Bahasa pemrograman b. File extension c. Data files d. Master file *Singkatan bokep Jadi beda arti dari JAV yg diatas (Japanese adult videos)', 0),
(40, 'saya beli pake qr gomobile di bukalapak tp kok dianggap blm bayar padahal limit berjalan jalan trus', 0),
(41, 'bukalapak HAPUS DAN NON AKTIFKAN AKUN SAYA DAN SILAHKAN AMBIL SEMUA UANG YANG TERSISA DI BUKADOMPET DAN SALDO DANA SILAHKAN AMBIL SEMUA.SAYA TIDAK MAU MENGGUNAKAN BUKALAPAK LAGI KARENA SAYA SUDAH TERTIPU DAN RUGI UANG HASIL JUALAN 10JT HAK TIDAK DIBERIKAN', 0),
(42, 'Rizqi mu sudah ditetapkan dek...gak usah khawatir, masih banyak pintu Rizki lain yang halal& berkah', 1),
(43, 'siang min, bagaimana kriteria dan persyaratan pengajuan kerjasama sponsorship min makasih ?', 1),
(44, 'Kayaknya lagi2', 1),
(45, 'min status pengiriman di buka lapak belom ada histori padahal di JNE udh sampe bandung Kumaha nih min', 1),
(46, 'Hmm gimana yaa.. Mimin saranin kamu pantengin terus sosmed Shopee dan jangan lupa juga follow semua akun sosmed resmi shopee biar kamu ga ketinggalan info Giveaway ^FN', 1),
(47, 'Ada Shopee 4.4 Mega Elektronik Sale SUPER DISKON! Dapatkan DISKON s/d 99% & FLASH SALE KILAT RP99 plus GRAND PRIZE Emas 10gr & Samsung S10! BESOK, 10 Maret 2020 jam 12 siang WIB, LIVE di Shopee LIVE & GTV. Pasang REMINDER', 1),
(48, 'Maaciiww ya dapet sampo Kundal gratis. Alhamdulillah stok sampo aman', -1),
(49, 'Wah gede banget nih tas yang dipengenin. Semangat kak, rejeki gak kemana. Good luckk ya ^FN', -1),
(50, 'untung mbaknya bisa dihubungi gmn to ini bisa ketuker ketuker gitu paketnya. seller juga dihubungi gak balas. CS juga gak membantu sama sekali. semoga ga terjadi kek gini lagi. customer yang dirugikan harus nuker2 barang sendiri', -1),
(51, 'A. Fujifilm Moga aja rejeki, soalny udah lama mau kamera itu tapi belom ke sampean Bismillah Moga rejeki', -1),
(52, 'Wow.. buanyak buanget kak.. di borong semua ya ^MZ', -1),
(53, 'Bismillahirrahmanirrahim Semoga menang ya buat check out in keranjang shopee ku sebanyak ini wkwk maklum masih pengangguran', -1),
(54, 'Yuhuuu semangats beb, pasti lagi menimbang dan memilih sepatu mana yang paling cucok sama kamu yah. Atau mau diborong semua? moga beruntuuung :)^NI', -1),
(55, 'Wihhh posisi mana nih jagoanmu? :D ^AG', -1),
(56, 'Ini min', -1),
(57, 'Semangat 1000x ya Kaaak hahaha moga beruntung yess :)^NI', -1),
(58, 'Lah isinya tas semuaa yah kak ^MZ', -1),
(59, 'Caranya ngaktifin lagi gimana ya?', -1),
(60, 'Maari menyuntik virus', -1),
(61, 'Mimin baik hati boleh dong kasih giveaway nya', -1),
(62, 'Boleh gak yaa.. Hihihi yuk pastiin ikuti syarat ketentuannya. Good luck kamuuh ^FN', -1),
(63, 'Hi ka, don\'t worry ya. Kita sekarang ada gratis ongkir xtra loh hingga 50rb. Kamu bisa cek selengkapnya disini ya', -1),
(64, 'YUHUUU Sobat Shopee! Udah pada LIKE Facebook Fanpage Shopee Indonesia belum nih? Karena, cuma dengan LIKE FB Fanpage Shopee Indonesia, kamu bisa dapet HANDPHONE, lho! LIKE sekarang juga di:', 1),
(65, 'Kasih saran menu makan siang dong, Sobat Shopee!', 1),
(66, 'Member ber 8 ?? Ateez atau Stray kids ??? Tolong pencerahannya mo nangissss', 1),
(67, 'Padahal Toko Resmi dari tapi kok ikutan naikin harga maskernya?', 1),
(68, 'Ada 8 Gilak moga ini skz ,pliss', 1),
(69, 'Hello shoppee pagi pagi TL udah heboh grgr header mu kira kira siapa tuh? AKU PELANGGAN SETIA MU YA INGAT DARAH KU ORANGE wkwk jdi jgan smpe mengecewakan oke!!', 1),
(70, 'Belom apa-apa, suju udah trending', 1),
(71, 'punten mau collab sama hehhh????', 1),
(72, 'Heh Ini siapaa Fotonya mirip sama pas kambek superhuman:\"( Tp kok cuma 8 orang ??:\"(', 1),
(73, 'seminggu jadi hedon dulu lah yaa bersama', 1),
(74, '?? minnnn ini suju kaaahhh? ELF jaman baheula spt saya akan sangat senangggg', 1),
(75, 'Benar begini kan?', 1),
(76, 'Jangan bawa sujuu tolong', 1),
(77, 'Makasih', 1),
(78, 'Header guys Tlg jelasin itu siapa', 1),
(79, 'asik bgt si ojak', 1),
(80, 'HARI INI ada Super Flash Sale Spesial Fashion, belanja produk fashion favorit kamu mulai dari RP 99 aja Bukan cuman itu aja! Nikmati juga Supermarket Super Flash Sale dan dapatkan DISKON hingga 60%Cek di sini', 1);

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id` int(11) NOT NULL,
  `teks` varchar(255) NOT NULL,
  `klasifikasi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`id`, `teks`, `klasifikasi`) VALUES
(1, 'Terima kasih! Sering-sering belanja ya, Mas..', 0),
(2, 'Alcartian! Awali harimu bersama NESTLE agar semangat setiap hari! Nikmati potongan 10ribu ya untuk pembelian NESTLE di Store Alfacart Klik link ini untuk nikmati promonya >>', 0),
(3, 'Mantap ya kak. Hehe. Terima kasih sudah belanja di Blibli, ya.', -1),
(4, 'Lah kok ini ikut ngiklanin Masker dgn harga selangit gini sih?', -1),
(5, 'Hai selamat pagi Kak Sabai, dengan Bonita ya saat ini. Kita ada program baru dan ingin mengajak kakak untuk berpartisipasi dalam program Blibli Cinta Bumi. Boleh diinformasikan melalui DM nomor telepon kakak yang bisa dihubungi agar dapat dijelaskan lebih', -1),
(6, 'Selamat ! Lagu apa yang kamu denger mengawali hari ini? Kalau aku; Hindia - Secukupnya.', -1),
(7, 'Cari berbagai makanan untuk hewan peliharaanmu jadi lebih mudah di http://Blibli.com ! Tidak hanya mudah, tapi juga hemat karena kamu bisa mendapatkannya dengan harga mulai dari Rp7.000,- an aja! . Info selengkapnya', 0),
(8, 'Bagan kompetisi perseorangan LIMA Badminton: http://Blibli.com  West Java Conference Season 8.', -1),
(9, 'maaf mau tanya apa Lazada ada program seperti sms kepada saya ini??? Tks Lazada sukses selalu', -1),
(10, 'Hai Kak, untuk pertanyaan mengenai pemesanan di Lazada bisa langsung ke akun via DM Twitter ya agar nanti dapat dibantu lebih lanjut.', -1),
(11, 'Hi Kak Badrun, apabila kamu memiliki pertanyaan seputar Lazada bisa langsung ke akun ya agar dibantu lebih lanjut.', 1),
(12, 'Yuk, tonton Live Streaming Beauty World bersama Miss Universe 2019 & pkl 10.00 WIB di link berikut', 1),
(13, 'Terimakasih atas informasi yang kamu berikan ya Kak. Hal tersbeut akan kami jadikan bahan evaluasi kedepannya.', 1),
(14, 'Miss Universe lagi LIVE di app Lazada! Yuk tonton sekaraaang >', 1),
(15, 'pesen tgl 3 dibayar tgl 3 kok sampe skrg cm diproses payah', 1),
(16, 'Ada yang minat/mau hadiah ini? Cc', 1),
(17, 'Hi Lazadian, untuk produknya telah kami teruskan ke tim terkait dan saat ini sudah dihapus dari Website Lazada ya.', 1),
(18, 'Yuk, kenal lebih jauh cerita kepemimpinan dan upaya Miss Universe 2019 dalam pemberdayaan perempuan hanya di Live Streaming Beauty World bersama sesaat lagi di Youtube Channel KompasTV', -1),
(19, 'min minta tolong ini bisa ga alamat penagihan nya dirubah sama dengan alamat pengiriman', -1),
(20, 'Seperti apa cerita Miss Universe 2019 menghadapi stereotipe tentang gender & upayanya dalam pemberdayaan perempuan? Tonton Live Streaming Beauty World bersama & dipandu pkl 10.00 WIB di', -1),
(21, 'Rizqi mu sudah ditetapkan dek...gak usah khawatir, masih banyak pintu Rizki lain yang halal& berkah', -1),
(22, 'Tolong y klu punya aplikasi ecommers jgn mempersulit costumer, bisanya pasang iklan sana sini tapi kualitas internal tdk dibagusin. Kepercayaan costumer lebih mahal daripada perusahaan anda contohlah & costumer care sangat fast respon.', -1),
(23, 'Hallo lazada yth.kenapa uang pengembalian dana saya belum saya terima.tolonglah dikembalikan lazada yth', -1),
(24, 'Cek Dm min, belum di balas.', -1),
(25, 'Astagfirullah gw lupa. Makasih', -1),
(26, 'Tersedianya berbagai layanan produk virtual, warung Mitra menjadi warung dengan produk virtual terlengkap dan menjadi titik sentuh layanan perbankan untuk masyarakat yang belum memiliki akses terhadap layanan keuangan (unbankable).', -1),
(27, 'Ada yang asik-asik yang baru dari Bukalapak loh~ Yap, promo Ganteng Asik! Lo bisa ikutan Serbu Seru berhadiah rumah dan mobil BMW, juga belanja dengan gratis ongkir sepuasnya. Jangan sampe dianggurin yaaa!! Kuy gak pake lama langsung klik', -1),
(28, 'apresiasi berdayakan Warung Naik Kelas Melalui Virtual Produk. Dengan digitalisasi warung akan mudahkan inklusi keuangan.', 0),
(29, 'Pemberdayaan Warung Rakyat diperlukan agar usaha mereka tetap berjalan untuk menghidupi kebutuhan keluarga, karena warung kekuatan ekonomi rakyat yang paling real.', 0),
(30, 'Turut mendampingi Staf Khusus Menteri Bidang Pemberdayaan Ekonomi Kreatif Fiki Satari, Kepala Dinas Koperasi dan UKM Provinsi Jawa Barat Kusmana Hartadji, Co-founder dan President Buka Lapak Fajrin Rasyid dan CEO Rachmat Kaimuddin. Pada ngobrolin apa yua', 0),
(31, 'Hai kak Petrik, maaf banget nih jadi bikin kamu ngga nyaman. Pindah ke inbox aja yuk kak, agar lebih nyaman ceritain detail kendala kamu. Jangan lupa lampirkan juga screenshot kendala kamu serta email dan nomor t..', 0),
(32, '4X SEHARI!!! Makin puas buat ikutan Flashdeal Bukalapak karena kesempatan dapetin barang incaran makin banyaaaakkkkkk! Jangan lupa masukin kode voucher GRATISONGKIR sebelum checkout ya~ Cobain sekarang juga di', 0),
(33, 'Bahasa pemrograman sama jenis file itu beda Buambaang....', 0),
(34, 'artinya gratisan akan pernah dikirim guys, terbukti teman sayapun seperti itu? licik yah', 0),
(35, 'Yaaa, ane sekolah yg biasa aja, gak ada yg ngajarin japanese adult video. Lagian, yg ane tau .jav itu sejenis file aja kyk .doc, .txt Ane gak pinter2 amat sm IT Lagian emang ente sekolah di sekolahan yg ngajar japanese adult video gitu?', 0),
(36, 'sekarang kalau mau bayar pake Clickpay di hp pasti habis login keluar error gini, pembelian jadi tercancel terus, padahal saya coba di marketplace lain ga error', 0),
(37, 'Konsultasi Hyperhidrosis Keringat Berlebih Indonesia via', 0),
(38, 'Kampas Rem Berkualitas Untuk Honda PCX 150 CBS All New 2018 Lokal - Depan & Belakang via', 0),
(39, '*Bahasa program exe, .com,.doc, .pas,.bas,.jav,.dll, .sys adalah contoh dari : a. Bahasa pemrograman b. File extension c. Data files d. Master file *Singkatan bokep Jadi beda arti dari JAV yg diatas (Japanese adult videos)', 0),
(40, 'saya beli pake qr gomobile di bukalapak tp kok dianggap blm bayar padahal limit berjalan jalan trus', 0),
(41, 'bukalapak HAPUS DAN NON AKTIFKAN AKUN SAYA DAN SILAHKAN AMBIL SEMUA UANG YANG TERSISA DI BUKADOMPET DAN SALDO DANA SILAHKAN AMBIL SEMUA.SAYA TIDAK MAU MENGGUNAKAN BUKALAPAK LAGI KARENA SAYA SUDAH TERTIPU DAN RUGI UANG HASIL JUALAN 10JT HAK TIDAK DIBERIKAN', 0),
(42, 'Rizqi mu sudah ditetapkan dek...gak usah khawatir, masih banyak pintu Rizki lain yang halal& berkah', 1),
(43, 'siang min, bagaimana kriteria dan persyaratan pengajuan kerjasama sponsorship min makasih ?', 1),
(44, 'Kayaknya lagi2', 1),
(45, 'min status pengiriman di buka lapak belom ada histori padahal di JNE udh sampe bandung Kumaha nih min', 1),
(46, 'Hmm gimana yaa.. Mimin saranin kamu pantengin terus sosmed Shopee dan jangan lupa juga follow semua akun sosmed resmi shopee biar kamu ga ketinggalan info Giveaway ^FN', 1),
(47, 'Ada Shopee 4.4 Mega Elektronik Sale SUPER DISKON! Dapatkan DISKON s/d 99% & FLASH SALE KILAT RP99 plus GRAND PRIZE Emas 10gr & Samsung S10! BESOK, 10 Maret 2020 jam 12 siang WIB, LIVE di Shopee LIVE & GTV. Pasang REMINDER', 1),
(48, 'Maaciiww ya dapet sampo Kundal gratis. Alhamdulillah stok sampo aman', -1),
(49, 'Wah gede banget nih tas yang dipengenin. Semangat kak, rejeki gak kemana. Good luckk ya ^FN', -1),
(50, 'untung mbaknya bisa dihubungi gmn to ini bisa ketuker ketuker gitu paketnya. seller juga dihubungi gak balas. CS juga gak membantu sama sekali. semoga ga terjadi kek gini lagi. customer yang dirugikan harus nuker2 barang sendiri', -1),
(51, 'A. Fujifilm Moga aja rejeki, soalny udah lama mau kamera itu tapi belom ke sampean Bismillah Moga rejeki', -1),
(52, 'Wow.. buanyak buanget kak.. di borong semua ya ^MZ', -1),
(53, 'Bismillahirrahmanirrahim Semoga menang ya buat check out in keranjang shopee ku sebanyak ini wkwk maklum masih pengangguran', -1),
(54, 'Yuhuuu semangats beb, pasti lagi menimbang dan memilih sepatu mana yang paling cucok sama kamu yah. Atau mau diborong semua? moga beruntuuung :)^NI', -1),
(55, 'Wihhh posisi mana nih jagoanmu? :D ^AG', -1),
(56, 'Ini min', -1),
(57, 'Semangat 1000x ya Kaaak hahaha moga beruntung yess :)^NI', -1),
(58, 'Lah isinya tas semuaa yah kak ^MZ', -1),
(59, 'Caranya ngaktifin lagi gimana ya?', -1),
(60, 'Maari menyuntik virus', -1),
(61, 'Mimin baik hati boleh dong kasih giveaway nya', -1),
(62, 'Boleh gak yaa.. Hihihi yuk pastiin ikuti syarat ketentuannya. Good luck kamuuh ^FN', -1),
(63, 'Hi ka, don\'t worry ya. Kita sekarang ada gratis ongkir xtra loh hingga 50rb. Kamu bisa cek selengkapnya disini ya', -1),
(64, 'YUHUUU Sobat Shopee! Udah pada LIKE Facebook Fanpage Shopee Indonesia belum nih? Karena, cuma dengan LIKE FB Fanpage Shopee Indonesia, kamu bisa dapet HANDPHONE, lho! LIKE sekarang juga di:', 1),
(65, 'Kasih saran menu makan siang dong, Sobat Shopee!', 1),
(66, 'Member ber 8 ?? Ateez atau Stray kids ??? Tolong pencerahannya mo nangissss', 1),
(67, 'Padahal Toko Resmi dari tapi kok ikutan naikin harga maskernya?', 1),
(68, 'Ada 8 Gilak moga ini skz ,pliss', 1),
(69, 'Hello shoppee pagi pagi TL udah heboh grgr header mu kira kira siapa tuh? AKU PELANGGAN SETIA MU YA INGAT DARAH KU ORANGE wkwk jdi jgan smpe mengecewakan oke!!', 1),
(70, 'Belom apa-apa, suju udah trending', 1),
(71, 'punten mau collab sama hehhh????', 1),
(72, 'Heh Ini siapaa Fotonya mirip sama pas kambek superhuman:\"( Tp kok cuma 8 orang ??:\"(', 1),
(73, 'seminggu jadi hedon dulu lah yaa bersama', 1),
(74, '?? minnnn ini suju kaaahhh? ELF jaman baheula spt saya akan sangat senangggg', 1),
(75, 'Benar begini kan?', 1),
(76, 'Jangan bawa sujuu tolong', 1),
(77, 'Makasih', 1),
(78, 'Header guys Tlg jelasin itu siapa', 1),
(79, 'asik bgt si ojak', 1),
(80, 'HARI INI ada Super Flash Sale Spesial Fashion, belanja produk fashion favorit kamu mulai dari RP 99 aja Bukan cuman itu aja! Nikmati juga Supermarket Super Flash Sale dan dapatkan DISKON hingga 60%Cek di sini', 1),
(81, 'Terima kasih! Sering-sering belanja ya, Mas..', 0),
(82, 'Alcartian! Awali harimu bersama NESTLE agar semangat setiap hari! Nikmati potongan 10ribu ya untuk pembelian NESTLE di Store Alfacart Klik link ini untuk nikmati promonya >>', 0),
(83, 'Mantap ya kak. Hehe. Terima kasih sudah belanja di Blibli, ya.', -1),
(84, 'Lah kok ini ikut ngiklanin Masker dgn harga selangit gini sih?', -1),
(85, 'Hai selamat pagi Kak Sabai, dengan Bonita ya saat ini. Kita ada program baru dan ingin mengajak kakak untuk berpartisipasi dalam program Blibli Cinta Bumi. Boleh diinformasikan melalui DM nomor telepon kakak yang bisa dihubungi agar dapat dijelaskan lebih', -1),
(86, 'Selamat ! Lagu apa yang kamu denger mengawali hari ini? Kalau aku; Hindia - Secukupnya.', -1),
(87, 'Cari berbagai makanan untuk hewan peliharaanmu jadi lebih mudah di http://Blibli.com ! Tidak hanya mudah, tapi juga hemat karena kamu bisa mendapatkannya dengan harga mulai dari Rp7.000,- an aja! . Info selengkapnya', 0),
(88, 'Bagan kompetisi perseorangan LIMA Badminton: http://Blibli.com  West Java Conference Season 8.', -1),
(89, 'maaf mau tanya apa Lazada ada program seperti sms kepada saya ini??? Tks Lazada sukses selalu', -1),
(90, 'Hai Kak, untuk pertanyaan mengenai pemesanan di Lazada bisa langsung ke akun via DM Twitter ya agar nanti dapat dibantu lebih lanjut.', -1),
(91, 'Hi Kak Badrun, apabila kamu memiliki pertanyaan seputar Lazada bisa langsung ke akun ya agar dibantu lebih lanjut.', 1),
(92, 'Yuk, tonton Live Streaming Beauty World bersama Miss Universe 2019 & pkl 10.00 WIB di link berikut', 1),
(93, 'Terimakasih atas informasi yang kamu berikan ya Kak. Hal tersbeut akan kami jadikan bahan evaluasi kedepannya.', 1),
(94, 'Miss Universe lagi LIVE di app Lazada! Yuk tonton sekaraaang >', 1),
(95, 'pesen tgl 3 dibayar tgl 3 kok sampe skrg cm diproses payah', 1),
(96, 'Ada yang minat/mau hadiah ini? Cc', 1),
(97, 'Hi Lazadian, untuk produknya telah kami teruskan ke tim terkait dan saat ini sudah dihapus dari Website Lazada ya.', 1),
(98, 'Yuk, kenal lebih jauh cerita kepemimpinan dan upaya Miss Universe 2019 dalam pemberdayaan perempuan hanya di Live Streaming Beauty World bersama sesaat lagi di Youtube Channel KompasTV', -1),
(99, 'min minta tolong ini bisa ga alamat penagihan nya dirubah sama dengan alamat pengiriman', -1),
(100, 'Seperti apa cerita Miss Universe 2019 menghadapi stereotipe tentang gender & upayanya dalam pemberdayaan perempuan? Tonton Live Streaming Beauty World bersama & dipandu pkl 10.00 WIB di', -1),
(101, 'Rizqi mu sudah ditetapkan dek...gak usah khawatir, masih banyak pintu Rizki lain yang halal& berkah', -1),
(102, 'Tolong y klu punya aplikasi ecommers jgn mempersulit costumer, bisanya pasang iklan sana sini tapi kualitas internal tdk dibagusin. Kepercayaan costumer lebih mahal daripada perusahaan anda contohlah & costumer care sangat fast respon.', -1),
(103, 'Hallo lazada yth.kenapa uang pengembalian dana saya belum saya terima.tolonglah dikembalikan lazada yth', -1),
(104, 'Cek Dm min, belum di balas.', -1),
(105, 'Astagfirullah gw lupa. Makasih', -1),
(106, 'Tersedianya berbagai layanan produk virtual, warung Mitra menjadi warung dengan produk virtual terlengkap dan menjadi titik sentuh layanan perbankan untuk masyarakat yang belum memiliki akses terhadap layanan keuangan (unbankable).', -1),
(107, 'Ada yang asik-asik yang baru dari Bukalapak loh~ Yap, promo Ganteng Asik! Lo bisa ikutan Serbu Seru berhadiah rumah dan mobil BMW, juga belanja dengan gratis ongkir sepuasnya. Jangan sampe dianggurin yaaa!! Kuy gak pake lama langsung klik', -1),
(108, 'apresiasi berdayakan Warung Naik Kelas Melalui Virtual Produk. Dengan digitalisasi warung akan mudahkan inklusi keuangan.', 0),
(109, 'Pemberdayaan Warung Rakyat diperlukan agar usaha mereka tetap berjalan untuk menghidupi kebutuhan keluarga, karena warung kekuatan ekonomi rakyat yang paling real.', 0),
(110, 'Turut mendampingi Staf Khusus Menteri Bidang Pemberdayaan Ekonomi Kreatif Fiki Satari, Kepala Dinas Koperasi dan UKM Provinsi Jawa Barat Kusmana Hartadji, Co-founder dan President Buka Lapak Fajrin Rasyid dan CEO Rachmat Kaimuddin. Pada ngobrolin apa yua', 0),
(111, 'Hai kak Petrik, maaf banget nih jadi bikin kamu ngga nyaman. Pindah ke inbox aja yuk kak, agar lebih nyaman ceritain detail kendala kamu. Jangan lupa lampirkan juga screenshot kendala kamu serta email dan nomor t..', 0),
(112, '4X SEHARI!!! Makin puas buat ikutan Flashdeal Bukalapak karena kesempatan dapetin barang incaran makin banyaaaakkkkkk! Jangan lupa masukin kode voucher GRATISONGKIR sebelum checkout ya~ Cobain sekarang juga di', 0),
(113, 'Bahasa pemrograman sama jenis file itu beda Buambaang....', 0),
(114, 'artinya gratisan akan pernah dikirim guys, terbukti teman sayapun seperti itu? licik yah', 0),
(115, 'Yaaa, ane sekolah yg biasa aja, gak ada yg ngajarin japanese adult video. Lagian, yg ane tau .jav itu sejenis file aja kyk .doc, .txt Ane gak pinter2 amat sm IT Lagian emang ente sekolah di sekolahan yg ngajar japanese adult video gitu?', 0),
(116, 'sekarang kalau mau bayar pake Clickpay di hp pasti habis login keluar error gini, pembelian jadi tercancel terus, padahal saya coba di marketplace lain ga error', 0),
(117, 'Konsultasi Hyperhidrosis Keringat Berlebih Indonesia via', 0),
(118, 'Kampas Rem Berkualitas Untuk Honda PCX 150 CBS All New 2018 Lokal - Depan & Belakang via', 0),
(119, '*Bahasa program exe, .com,.doc, .pas,.bas,.jav,.dll, .sys adalah contoh dari : a. Bahasa pemrograman b. File extension c. Data files d. Master file *Singkatan bokep Jadi beda arti dari JAV yg diatas (Japanese adult videos)', 0),
(120, 'saya beli pake qr gomobile di bukalapak tp kok dianggap blm bayar padahal limit berjalan jalan trus', 0),
(121, 'bukalapak HAPUS DAN NON AKTIFKAN AKUN SAYA DAN SILAHKAN AMBIL SEMUA UANG YANG TERSISA DI BUKADOMPET DAN SALDO DANA SILAHKAN AMBIL SEMUA.SAYA TIDAK MAU MENGGUNAKAN BUKALAPAK LAGI KARENA SAYA SUDAH TERTIPU DAN RUGI UANG HASIL JUALAN 10JT HAK TIDAK DIBERIKAN', 0),
(122, 'Rizqi mu sudah ditetapkan dek...gak usah khawatir, masih banyak pintu Rizki lain yang halal& berkah', 1),
(123, 'siang min, bagaimana kriteria dan persyaratan pengajuan kerjasama sponsorship min makasih ?', 1),
(124, 'Kayaknya lagi2', 1),
(125, 'min status pengiriman di buka lapak belom ada histori padahal di JNE udh sampe bandung Kumaha nih min', 1),
(126, 'Hmm gimana yaa.. Mimin saranin kamu pantengin terus sosmed Shopee dan jangan lupa juga follow semua akun sosmed resmi shopee biar kamu ga ketinggalan info Giveaway ^FN', 1),
(127, 'Ada Shopee 4.4 Mega Elektronik Sale SUPER DISKON! Dapatkan DISKON s/d 99% & FLASH SALE KILAT RP99 plus GRAND PRIZE Emas 10gr & Samsung S10! BESOK, 10 Maret 2020 jam 12 siang WIB, LIVE di Shopee LIVE & GTV. Pasang REMINDER', 1),
(128, 'Maaciiww ya dapet sampo Kundal gratis. Alhamdulillah stok sampo aman', -1),
(129, 'Wah gede banget nih tas yang dipengenin. Semangat kak, rejeki gak kemana. Good luckk ya ^FN', -1),
(130, 'untung mbaknya bisa dihubungi gmn to ini bisa ketuker ketuker gitu paketnya. seller juga dihubungi gak balas. CS juga gak membantu sama sekali. semoga ga terjadi kek gini lagi. customer yang dirugikan harus nuker2 barang sendiri', -1),
(131, 'A. Fujifilm Moga aja rejeki, soalny udah lama mau kamera itu tapi belom ke sampean Bismillah Moga rejeki', -1),
(132, 'Wow.. buanyak buanget kak.. di borong semua ya ^MZ', -1),
(133, 'Bismillahirrahmanirrahim Semoga menang ya buat check out in keranjang shopee ku sebanyak ini wkwk maklum masih pengangguran', -1),
(134, 'Yuhuuu semangats beb, pasti lagi menimbang dan memilih sepatu mana yang paling cucok sama kamu yah. Atau mau diborong semua? moga beruntuuung :)^NI', -1),
(135, 'Wihhh posisi mana nih jagoanmu? :D ^AG', -1),
(136, 'Ini min', -1),
(137, 'Semangat 1000x ya Kaaak hahaha moga beruntung yess :)^NI', -1),
(138, 'Lah isinya tas semuaa yah kak ^MZ', -1),
(139, 'Caranya ngaktifin lagi gimana ya?', -1),
(140, 'Maari menyuntik virus', -1),
(141, 'Mimin baik hati boleh dong kasih giveaway nya', -1),
(142, 'Boleh gak yaa.. Hihihi yuk pastiin ikuti syarat ketentuannya. Good luck kamuuh ^FN', -1),
(143, 'Hi ka, don\'t worry ya. Kita sekarang ada gratis ongkir xtra loh hingga 50rb. Kamu bisa cek selengkapnya disini ya', -1),
(144, 'YUHUUU Sobat Shopee! Udah pada LIKE Facebook Fanpage Shopee Indonesia belum nih? Karena, cuma dengan LIKE FB Fanpage Shopee Indonesia, kamu bisa dapet HANDPHONE, lho! LIKE sekarang juga di:', 1),
(145, 'Kasih saran menu makan siang dong, Sobat Shopee!', 1),
(146, 'Member ber 8 ?? Ateez atau Stray kids ??? Tolong pencerahannya mo nangissss', 1),
(147, 'Padahal Toko Resmi dari tapi kok ikutan naikin harga maskernya?', 1),
(148, 'Ada 8 Gilak moga ini skz ,pliss', 1),
(149, 'Hello shoppee pagi pagi TL udah heboh grgr header mu kira kira siapa tuh? AKU PELANGGAN SETIA MU YA INGAT DARAH KU ORANGE wkwk jdi jgan smpe mengecewakan oke!!', 1),
(150, 'Belom apa-apa, suju udah trending', 1),
(151, 'punten mau collab sama hehhh????', 1),
(152, 'Heh Ini siapaa Fotonya mirip sama pas kambek superhuman:\"( Tp kok cuma 8 orang ??:\"(', 1),
(153, 'seminggu jadi hedon dulu lah yaa bersama', 1),
(154, '?? minnnn ini suju kaaahhh? ELF jaman baheula spt saya akan sangat senangggg', 1),
(155, 'Benar begini kan?', 1),
(156, 'Jangan bawa sujuu tolong', 1),
(157, 'Makasih', 1),
(158, 'Header guys Tlg jelasin itu siapa', 1),
(159, 'asik bgt si ojak', 1),
(160, 'HARI INI ada Super Flash Sale Spesial Fashion, belanja produk fashion favorit kamu mulai dari RP 99 aja Bukan cuman itu aja! Nikmati juga Supermarket Super Flash Sale dan dapatkan DISKON hingga 60%Cek di sini', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` int(11) NOT NULL,
  `gambar` varchar(128) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `level`, `gambar`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '4bfdebe82d55f0cd2b200474ce84232b.jpg'),
(2, 'parfum', 'parfum123', '68194b57b3477f647dda9c680a896443', 1, 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_index` (`sumber`,`teks`,`fk_marketplace`),
  ADD KEY `fk_marketplace` (`fk_marketplace`);

--
-- Indexes for table `kata_baku`
--
ALTER TABLE `kata_baku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kata_tidak_baku`
--
ALTER TABLE `kata_tidak_baku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kata_baku` (`fk_kata_baku`);

--
-- Indexes for table `marketplace`
--
ALTER TABLE `marketplace`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=762;

--
-- AUTO_INCREMENT for table `kata_baku`
--
ALTER TABLE `kata_baku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kata_tidak_baku`
--
ALTER TABLE `kata_tidak_baku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `marketplace`
--
ALTER TABLE `marketplace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testing`
--
ALTER TABLE `testing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
