-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 06:30 AM
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
(1, '2020-03-09 10:40:50', 'twitter', 'Terima kasih! Sering-sering belanja ya, Mas..', 1, 3),
(2, '2020-03-09 09:45:34', 'twitter', 'Alcartian! Awali harimu bersama NESTLE agar semangat setiap hari! Nikmati potongan 10ribu ya untuk pembelian NESTLE di Store Alfacart Klik link ini untuk nikmati promonya >>', 1, 3),
(3, '2020-03-09 10:29:49', 'twitter', 'Mantap ya kak. Hehe. Terima kasih sudah belanja di Blibli, ya.', 1, 3),
(4, '2020-03-09 09:46:10', 'twitter', 'Lah kok ini ikut ngiklanin Masker dgn harga selangit gini sih?', 1, 3),
(5, '2020-03-09 10:30:57', 'twitter', 'Hai selamat pagi Kak Sabai, dengan Bonita ya saat ini. Kita ada program baru dan ingin mengajak kakak untuk berpartisipasi dalam program Blibli Cinta Bumi. Boleh diinformasikan melalui DM nomor telepon kakak yang bisa dihubungi agar dapat dijelaskan lebih', 1, 3),
(6, '2020-03-09 10:17:25', 'twitter', 'Selamat ! Lagu apa yang kamu denger mengawali hari ini? Kalau aku; Hindia - Secukupnya.', 1, 3),
(7, '2020-03-09 08:00:15', 'twitter', 'Cari berbagai makanan untuk hewan peliharaanmu jadi lebih mudah di http://Blibli.com ! Tidak hanya mudah, tapi juga hemat karena kamu bisa mendapatkannya dengan harga mulai dari Rp7.000,- an aja! . Info selengkapnya', 1, 3),
(8, '2020-03-09 09:03:22', 'twitter', 'Bagan kompetisi perseorangan LIMA Badminton: http://Blibli.com  West Java Conference Season 8.', 1, 3),
(9, '2020-03-09 11:57:24', 'twitter', 'maaf mau tanya apa Lazada ada program seperti sms kepada saya ini??? Tks Lazada sukses selalu', 1, 4),
(10, '2020-03-09 11:54:58', 'twitter', 'Hai Kak, untuk pertanyaan mengenai pemesanan di Lazada bisa langsung ke akun via DM Twitter ya agar nanti dapat dibantu lebih lanjut.', 1, 4),
(11, '2020-03-09 10:16:47', 'twitter', 'Hi Kak Badrun, apabila kamu memiliki pertanyaan seputar Lazada bisa langsung ke akun ya agar dibantu lebih lanjut.', 1, 4),
(12, '2020-03-09 09:00:00', 'twitter', 'Yuk, tonton Live Streaming Beauty World bersama Miss Universe 2019 & pkl 10.00 WIB di link berikut', 1, 4),
(13, '2020-03-09 11:20:38', 'twitter', 'Terimakasih atas informasi yang kamu berikan ya Kak. Hal tersbeut akan kami jadikan bahan evaluasi kedepannya.', 1, 4),
(14, '2020-03-09 11:15:08', 'twitter', 'Miss Universe lagi LIVE di app Lazada! Yuk tonton sekaraaang >', 1, 4),
(15, '2020-03-09 11:42:01', 'twitter', 'pesen tgl 3 dibayar tgl 3 kok sampe skrg cm diproses payah', 1, 4),
(16, '2020-03-09 09:16:13', 'twitter', 'Ada yang minat/mau hadiah ini? Cc', 1, 4),
(17, '2020-03-09 09:15:27', 'twitter', 'Hi Lazadian, untuk produknya telah kami teruskan ke tim terkait dan saat ini sudah dihapus dari Website Lazada ya.', 1, 4),
(18, '2020-03-09 10:00:00', 'twitter', 'Yuk, kenal lebih jauh cerita kepemimpinan dan upaya Miss Universe 2019 dalam pemberdayaan perempuan hanya di Live Streaming Beauty World bersama sesaat lagi di Youtube Channel KompasTV', 1, 4),
(19, '2020-03-09 10:10:33', 'twitter', 'min minta tolong ini bisa ga alamat penagihan nya dirubah sama dengan alamat pengiriman', 1, 4),
(20, '2020-03-09 09:29:33', 'twitter', 'Seperti apa cerita Miss Universe 2019 menghadapi stereotipe tentang gender & upayanya dalam pemberdayaan perempuan? Tonton Live Streaming Beauty World bersama & dipandu pkl 10.00 WIB di', 1, 4),
(21, '2020-03-09 11:50:13', 'twitter', 'Rizqi mu sudah ditetapkan dek...gak usah khawatir, masih banyak pintu Rizki lain yang halal& berkah', 1, 4),
(22, '2020-03-09 11:23:03', 'twitter', 'Tolong y klu punya aplikasi ecommers jgn mempersulit costumer, bisanya pasang iklan sana sini tapi kualitas internal tdk dibagusin. Kepercayaan costumer lebih mahal daripada perusahaan anda contohlah & costumer care sangat fast respon.', 1, 4),
(23, '2020-03-09 10:30:31', 'twitter', 'Hallo lazada yth.kenapa uang pengembalian dana saya belum saya terima.tolonglah dikembalikan lazada yth', 1, 4),
(24, '2020-03-09 09:27:06', 'twitter', 'Cek Dm min, belum di balas.', 1, 4),
(25, '2020-03-09 07:59:03', 'twitter', 'Astagfirullah gw lupa. Makasih', 1, 4),
(26, '2020-03-09 10:27:32', 'twitter', 'Tersedianya berbagai layanan produk virtual, warung Mitra menjadi warung dengan produk virtual terlengkap dan menjadi titik sentuh layanan perbankan untuk masyarakat yang belum memiliki akses terhadap layanan keuangan (unbankable).', 1, 5),
(27, '2020-03-09 11:00:00', 'twitter', 'Ada yang asik-asik yang baru dari Bukalapak loh~ Yap, promo Ganteng Asik! Lo bisa ikutan Serbu Seru berhadiah rumah dan mobil BMW, juga belanja dengan gratis ongkir sepuasnya. Jangan sampe dianggurin yaaa!! Kuy gak pake lama langsung klik', 1, 5),
(28, '2020-03-09 10:26:40', 'twitter', 'apresiasi berdayakan Warung Naik Kelas Melalui Virtual Produk. Dengan digitalisasi warung akan mudahkan inklusi keuangan.', 1, 5),
(29, '2020-03-09 10:23:02', 'twitter', 'Pemberdayaan Warung Rakyat diperlukan agar usaha mereka tetap berjalan untuk menghidupi kebutuhan keluarga, karena warung kekuatan ekonomi rakyat yang paling real.', 1, 5),
(30, '2020-03-09 09:37:08', 'twitter', 'Turut mendampingi Staf Khusus Menteri Bidang Pemberdayaan Ekonomi Kreatif Fiki Satari, Kepala Dinas Koperasi dan UKM Provinsi Jawa Barat Kusmana Hartadji, Co-founder dan President Buka Lapak Fajrin Rasyid dan CEO Rachmat Kaimuddin. Pada ngobrolin apa yua ', 1, 5),
(31, '2020-03-09 09:15:54', 'twitter', 'Hai kak Petrik, maaf banget nih jadi bikin kamu ngga nyaman. Pindah ke inbox aja yuk kak, agar lebih nyaman ceritain detail kendala kamu. Jangan lupa lampirkan juga screenshot kendala kamu serta email dan nomor t..', 1, 5),
(32, '2020-03-09 07:50:00', 'twitter', '4X SEHARI!!! Makin puas buat ikutan Flashdeal Bukalapak karena kesempatan dapetin barang incaran makin banyaaaakkkkkk! Jangan lupa masukin kode voucher GRATISONGKIR sebelum checkout ya~ Cobain sekarang juga di', 1, 5),
(33, '2020-03-09 09:03:48', 'twitter', 'Bahasa pemrograman sama jenis file itu beda Buambaang....', 1, 5),
(34, '2020-03-09 10:05:50', 'twitter', 'artinya gratisan akan pernah dikirim guys, terbukti teman sayapun seperti itu? licik yah', 1, 5),
(35, '2020-03-09 08:20:33', 'twitter', 'Yaaa, ane sekolah yg biasa aja, gak ada yg ngajarin japanese adult video. Lagian, yg ane tau .jav itu sejenis file aja kyk .doc, .txt Ane gak pinter2 amat sm IT Lagian emang ente sekolah di sekolahan yg ngajar japanese adult video gitu?', 1, 5),
(36, '2020-03-09 11:27:49', 'twitter', 'sekarang kalau mau bayar pake Clickpay di hp pasti habis login keluar error gini, pembelian jadi tercancel terus, padahal saya coba di marketplace lain ga error', 1, 5),
(37, '2020-03-09 07:45:05', 'twitter', 'Konsultasi Hyperhidrosis Keringat Berlebih Indonesia via', 1, 5),
(38, '2020-03-09 09:40:28', 'twitter', 'Kampas Rem Berkualitas Untuk Honda PCX 150 CBS All New 2018 Lokal - Depan & Belakang via', 1, 5),
(39, '2020-03-09 08:30:43', 'twitter', '*Bahasa program exe, .com,.doc, .pas,.bas,.jav,.dll, .sys adalah contoh dari : a. Bahasa pemrograman b. File extension c. Data files d. Master file *Singkatan bokep Jadi beda arti dari JAV yg diatas (Japanese adult videos)', 1, 5),
(40, '2020-03-09 10:22:38', 'twitter', 'saya beli pake qr gomobile di bukalapak tp kok dianggap blm bayar padahal limit berjalan jalan trus', 1, 5),
(41, '2020-03-09 08:31:10', 'twitter', 'bukalapak HAPUS DAN NON AKTIFKAN AKUN SAYA DAN SILAHKAN AMBIL SEMUA UANG YANG TERSISA DI BUKADOMPET DAN SALDO DANA SILAHKAN AMBIL SEMUA.SAYA TIDAK MAU MENGGUNAKAN BUKALAPAK LAGI KARENA SAYA SUDAH TERTIPU DAN RUGI UANG HASIL JUALAN 10JT HAK TIDAK DIBERIKAN', 1, 5),
(42, '2020-03-09 11:50:13', 'twitter', 'Rizqi mu sudah ditetapkan dek...gak usah khawatir, masih banyak pintu Rizki lain yang halal& berkah', 1, 5),
(43, '2020-03-09 11:17:17', 'twitter', 'siang min, bagaimana kriteria dan persyaratan pengajuan kerjasama sponsorship min makasih ?', 1, 5),
(44, '2020-03-09 10:43:55', 'twitter', 'Kayaknya lagi2', 1, 5),
(45, '2020-03-09 10:32:30', 'twitter', 'min status pengiriman di buka lapak belom ada histori padahal di JNE udh sampe bandung Kumaha nih min', 1, 5),
(46, '2020-03-09 12:49:42', 'twitter', 'Hmm gimana yaa.. Mimin saranin kamu pantengin terus sosmed Shopee dan jangan lupa juga follow semua akun sosmed resmi shopee biar kamu ga ketinggalan info Giveaway ^FN', 1, 1),
(47, '2020-03-09 12:05:46', 'twitter', 'Ada Shopee 4.4 Mega Elektronik Sale SUPER DISKON! Dapatkan DISKON s/d 99% & FLASH SALE KILAT RP99 plus GRAND PRIZE Emas 10gr & Samsung S10! BESOK, 10 Maret 2020 jam 12 siang WIB, LIVE di Shopee LIVE & GTV. Pasang REMINDER', 1, 1),
(48, '2020-03-09 12:47:22', 'twitter', 'Maaciiww ya dapet sampo Kundal gratis. Alhamdulillah stok sampo aman', 1, 1),
(49, '2020-03-09 12:54:48', 'twitter', 'Wah gede banget nih tas yang dipengenin. Semangat kak, rejeki gak kemana. Good luckk ya ^FN', 1, 1),
(50, '2020-03-09 12:47:45', 'twitter', 'untung mbaknya bisa dihubungi gmn to ini bisa ketuker ketuker gitu paketnya. seller juga dihubungi gak balas. CS juga gak membantu sama sekali. semoga ga terjadi kek gini lagi. customer yang dirugikan harus nuker2 barang sendiri', 1, 1),
(51, '2020-03-09 12:54:48', 'twitter', 'A. Fujifilm Moga aja rejeki, soalny udah lama mau kamera itu tapi belom ke sampean Bismillah Moga rejeki', 1, 1),
(52, '2020-03-09 12:41:10', 'twitter', 'Wow.. buanyak buanget kak.. di borong semua ya ^MZ', 1, 1),
(53, '2020-03-09 12:48:33', 'twitter', 'Bismillahirrahmanirrahim Semoga menang ya buat check out in keranjang shopee ku sebanyak ini wkwk maklum masih pengangguran', 1, 1),
(54, '2020-03-09 12:43:03', 'twitter', 'Yuhuuu semangats beb, pasti lagi menimbang dan memilih sepatu mana yang paling cucok sama kamu yah. Atau mau diborong semua? moga beruntuuung :)^NI', 1, 1),
(55, '2020-03-09 11:06:39', 'twitter', 'Wihhh posisi mana nih jagoanmu? :D ^AG', 1, 1),
(56, '2020-03-09 12:41:45', 'twitter', 'Ini min', 1, 1),
(57, '2020-03-09 12:44:32', 'twitter', 'Semangat 1000x ya Kaaak hahaha moga beruntung yess :)^NI', 1, 1),
(58, '2020-03-09 12:41:11', 'twitter', 'Lah isinya tas semuaa yah kak ^MZ', 1, 1),
(59, '2020-03-09 10:29:18', 'twitter', 'Caranya ngaktifin lagi gimana ya?', 1, 1),
(60, '2020-03-09 09:58:14', 'twitter', 'Maari menyuntik virus', 1, 1),
(61, '2020-03-09 12:30:09', 'twitter', 'Mimin baik hati boleh dong kasih giveaway nya', 1, 1),
(62, '2020-03-09 12:38:55', 'twitter', 'Boleh gak yaa.. Hihihi yuk pastiin ikuti syarat ketentuannya. Good luck kamuuh ^FN', 1, 1),
(63, '2020-03-09 12:03:10', 'twitter', 'Hi ka, don\'t worry ya. Kita sekarang ada gratis ongkir xtra loh hingga 50rb. Kamu bisa cek selengkapnya disini ya', 1, 1),
(64, '2020-03-04 14:36:39', 'twitter', 'YUHUUU Sobat Shopee! Udah pada LIKE Facebook Fanpage Shopee Indonesia belum nih? Karena, cuma dengan LIKE FB Fanpage Shopee Indonesia, kamu bisa dapet HANDPHONE, lho! LIKE sekarang juga di:', 1, 1),
(65, '2020-03-04 11:27:00', 'twitter', 'Kasih saran menu makan siang dong, Sobat Shopee!', 1, 1),
(66, '2020-03-04 12:01:25', 'twitter', 'Member ber 8 ?? Ateez atau Stray kids ??? Tolong pencerahannya mo nangissss', 1, 1),
(67, '2020-03-04 20:53:37', 'twitter', 'Padahal Toko Resmi dari tapi kok ikutan naikin harga maskernya?', 1, 1),
(68, '2020-03-04 15:49:51', 'twitter', 'Ada 8 Gilak moga ini skz ,pliss', 1, 1),
(69, '2020-03-04 11:32:10', 'twitter', 'Hello shoppee pagi pagi TL udah heboh grgr header mu kira kira siapa tuh? AKU PELANGGAN SETIA MU YA INGAT DARAH KU ORANGE wkwk jdi jgan smpe mengecewakan oke!!', 1, 1),
(70, '2020-03-04 13:57:41', 'twitter', 'Belom apa-apa, suju udah trending', 1, 1),
(71, '2020-03-04 13:12:18', 'twitter', 'punten mau collab sama hehhh????', 1, 1),
(72, '2020-03-04 11:39:42', 'twitter', 'Heh Ini siapaa Fotonya mirip sama pas kambek superhuman:\"( Tp kok cuma 8 orang ??:\"(', 1, 1),
(73, '2020-03-04 21:15:38', 'twitter', 'seminggu jadi hedon dulu lah yaa bersama', 1, 1),
(74, '2020-03-04 13:26:57', 'twitter', '?? minnnn ini suju kaaahhh? ELF jaman baheula spt saya akan sangat senangggg', 1, 1),
(75, '2020-03-04 10:58:10', 'twitter', 'Benar begini kan?', 1, 1),
(76, '2020-03-04 13:53:56', 'twitter', 'Jangan bawa sujuu tolong', 1, 1),
(77, '2020-03-04 15:13:16', 'twitter', 'Makasih', 1, 1),
(78, '2020-03-04 10:31:27', 'twitter', 'Header guys Tlg jelasin itu siapa', 1, 1),
(79, '2020-03-04 20:06:21', 'twitter', 'asik bgt si ojak', 1, 1),
(80, '2020-03-04 09:32:39', 'twitter', 'HARI INI ada Super Flash Sale Spesial Fashion, belanja produk fashion favorit kamu mulai dari RP 99 aja Bukan cuman itu aja! Nikmati juga Supermarket Super Flash Sale dan dapatkan DISKON hingga 60%Cek di sini', 1, 1),
(81, '2020-03-04 11:32:58', 'twitter', 'Min mohon pencerahan :)', 1, 1),
(82, '2020-03-05 02:04:12', 'twitter', 'Ini knp gabisa semuaaa', 1, 1),
(83, '2020-03-06 16:04:10', 'twitter', '1. FOLLOW 2. RETWEET & LIKE tweet ini 3. REPLY PILIHAN KAMU pake hestek SEBANYAK-BANYAKNYA 4. 1 pemenang dipilih ACAK buat dapetin FUJIFILM Instax, diumumin 10 Maret 2020 Periode giveaway sampai 9 Maret 2020 GOODLUCK!', 1, 1),
(84, '2020-03-06 14:43:23', 'twitter', 'Sobat Shopee! Pada mau HANDPHONE GRATIS? YUK Like Facebook Fanpage Shopee Indonesia dan dapetin HANDPHONE! Langsung aja klik \'LIKE\' di:', 1, 1),
(85, '2020-03-06 15:51:24', 'twitter', 'Sore semua, pilih hadiah balik lagi nih! Pasti pada mau dapetin FUJIFILM Instax Party Package GRATIS kan? Cuss, pantau tweet kita habis ini ya Sobat Shopee!', 1, 1),
(86, '2020-03-06 19:32:58', 'twitter', 'Hari Jumat masih pada lembur atau udah rebahan nih?', 1, 1),
(87, '2020-03-06 17:46:03', 'twitter', 'A. FUJIFILM menangin aku dong, aku ikut berkali kali ga menang mulu', 1, 1),
(88, '2020-03-06 21:07:35', 'twitter', 'Cakep banget ya Kak kameranya, moga rejeki kamu :) ^WL', 1, 1),
(89, '2020-03-06 17:46:42', 'twitter', 'A. FUJIFILM Ayo dong kamera nya bisa aku pake buat vlog nih', 1, 1),
(90, '2020-03-06 17:44:30', 'twitter', 'A. FUJIFILM Min menangin aku dong. Sayang Mimin deh', 1, 1),
(91, '2020-03-06 17:45:10', 'twitter', 'A. FUJIFILM Ayo semua nya Komen pake hastag ini biar trending', 1, 1),
(92, '2020-03-06 18:18:53', 'twitter', 'Kira-kira siapa yaaaaaaa ??', 1, 1),
(93, '2020-03-06 18:17:22', 'twitter', 'min cek dm', 1, 1),
(94, '2020-03-06 22:01:31', 'twitter', 'Coba aja, barangkali rezeki Maknya Zamy A A A', 1, 1),
(95, '2020-03-06 16:12:02', 'twitter', 'A semoga nyantol', 1, 1),
(96, '2020-03-06 20:55:12', 'twitter', 'Serdadu Tridatu raih tiga poin pertamanya di musim ini. Cuplikan pertandingan selengkapnya dapat disaksikan melalui aplikasi atau klik link berikut', 1, 1),
(97, '2020-03-06 16:36:20', 'twitter', 'Wiih semangatss ya :D ^NP', 1, 1),
(98, '2020-03-06 18:41:23', 'twitter', 'Wiiih semangat yaaw kaka zheyenk ^NP', 1, 1),
(99, '2020-03-06 20:17:08', 'twitter', 'Amin ka, mudah mudahan kamu menang ya :) ^SO', 1, 1),
(100, '2020-03-07 06:53:52', 'twitter', 'dear , , mungkin bisa contoh', 1, 1),
(101, '2020-03-07 06:37:29', 'twitter', 'Aku sih A', 1, 1),
(102, '2020-03-07 06:22:36', 'twitter', 'KENAPAAAA??????', 1, 1),
(103, '2020-03-09 06:16:31', 'twitter', 'Terimakasih atas promo 3.3 nya', 1, 1),
(104, '2020-03-08 20:51:19', 'twitter', 'Ketagihan sama', 1, 1),
(105, '2020-03-08 16:11:30', 'twitter', 'Buat para wanita diluar sana,', 1, 1),
(106, '2020-03-08 13:23:41', 'twitter', 'Waahh udah yakin belum nih kak hihi ^VN', 1, 1),
(107, '2020-03-08 15:18:22', 'twitter', 'Mantaappss kalo udah udah yakin kak hehe :) ^VN', 1, 1),
(108, '2020-03-08 12:15:57', 'twitter', 'Cuss ditebak! Kali aja kamu yang berhasil dapetin SMARTPHONEnya', 1, 1),
(109, '2020-03-09 06:03:10', 'twitter', 'Pasti ga dpt ini:(', 1, 1),
(110, '2020-03-09 01:26:49', 'twitter', 'Abis borong serum mask nya beli di . Mau rutinin pake setiap 2 hari sekali, biar terwujud resolusi punya wajah yg shining, shimmering, splendid wml', 1, 1),
(111, '2020-03-08 21:53:32', 'twitter', 'Pengen yang A sih, jadi kalo punya kamera bisa modus ajarin ke gebetan hehe. Wish me luck', 1, 1),
(112, '2020-03-08 17:00:16', 'twitter', 'Neymar kontil gituan doang neymar si raja diving wkw', 1, 1),
(113, '2020-03-09 01:52:55', 'twitter', 'Da valent mah Bobotoh mang meskipun teu ngaku ge,', 1, 1),
(114, '2020-03-08 17:47:17', 'twitter', 'dear nanemnya ga pernah beras atau buah lg mendingan voucher gratisongkir krn syopi makin pelit gratis ongkir utk via trf. semuanya syopipey mlz. gold member harusnya dpt 10gratis ongkir via trf aja jgn syopipey. kenapa sekarang lbh banyak utk syopipey ya', 1, 1),
(115, '2020-03-08 17:56:51', 'twitter', 'Min tolong bawa mereka ya...Gua kangen mereka', 1, 1),
(116, '2020-03-08 17:23:45', 'twitter', 'Niatnya kan mau buang bola Kak hehe :) ^DP', 1, 1),
(117, '2020-03-09 04:05:25', 'twitter', 'Mantappp semangatnya Kakak ^SD', 1, 1),
(118, '2020-03-22 10:06:01', 'twitter', 'Minggu pagi biasanya ngapain aja nih, Sobat Shopee?', 1, 1),
(119, '2020-03-22 11:00:52', 'twitter', 'Sama nih kayak akuu :D ^AG', 1, 1),
(120, '2020-03-22 10:54:31', 'twitter', 'benar apa gak ya', 1, 1),
(121, '2020-03-22 10:55:58', 'twitter', 'Hi kak. Udah aku respons ya DMnya, yuuk dicek :) ^IS', 1, 1),
(122, '2020-03-22 10:50:23', 'twitter', 'Buat ongkir di sesuaiin sama jasa kirim kak, soalnya diitung dari berat, volume barang dan jarak pengiriman yaa. Pastiin kamu ikutin syarat ketentuan yg berlaku di kode vouchernya kak ^TK', 1, 1),
(123, '2020-03-22 10:12:47', 'twitter', 'Lebih Aman Melalui Aplikasi |', 1, 1),
(124, '2020-03-22 10:42:41', 'twitter', 'Wadoow sorry banget kak, coba clear cache dan upgrade aplikasinya dulu biar gak error. Pastiin internet stabil yah :) ^IS', 1, 1),
(125, '2020-03-22 08:11:31', 'twitter', 'Mau apa nih coba, coba-coba di ceki lagi kalo mau udah pas sama syarat dan ketentuannya belum nih hihi :)^FB', 1, 1),
(126, '2020-03-22 10:25:00', 'twitter', 'Team rebahan yaa kak~ ^TK', 1, 1),
(127, '2020-03-22 10:52:28', 'twitter', 'Yg A donggg', 1, 1),
(128, '2020-03-22 09:23:30', 'twitter', 'Jo lali rek 4.4 Mega Elektronik Sale hanya ada di pastine akeh diskon', 1, 1),
(129, '2020-03-22 09:22:17', 'twitter', 'Yakin nih kak hehee ^TK', 1, 1),
(130, '2020-03-22 09:22:05', 'twitter', 'Maantaap kak, skuy usaha terus yaaw ^TK', 1, 1),
(131, '2020-03-22 10:05:32', 'twitter', 'Aku pilih yang A Samsung S20, bismillah semoga rezeki dapat handphone baru..Aamiin', 1, 1),
(132, '2020-03-22 09:43:55', 'twitter', 'MAU MIN KALO BISA SEKALIAN RIKUES PC BIAS *lah ngelunjak', 1, 1),
(133, '2020-03-22 10:23:06', 'twitter', 'Semangat terus, aku bantu doain nih beb :)^FB', 1, 1),
(134, '2020-03-22 10:47:56', 'twitter', 'Harus dapet pokoknya !!! A', 1, 1),
(135, '2020-03-22 10:06:01', 'twitter', 'Minggu pagi biasanya ngapain aja nih, Sobat Shopee?', 1, 1),
(136, '2020-03-22 11:02:04', 'twitter', 'contoh yg bikin emosi.', 1, 1),
(137, '2020-03-22 11:00:52', 'twitter', 'Sama nih kayak akuu :D ^AG', 1, 1),
(138, '2020-03-22 10:55:58', 'twitter', 'Hi kak. Udah aku respons ya DMnya, yuuk dicek :) ^IS', 1, 1),
(139, '2020-03-22 10:54:31', 'twitter', 'benar apa gak ya', 1, 1),
(140, '2020-03-22 10:50:23', 'twitter', 'Buat ongkir di sesuaiin sama jasa kirim kak, soalnya diitung dari berat, volume barang dan jarak pengiriman yaa. Pastiin kamu ikutin syarat ketentuan yg berlaku di kode vouchernya kak ^TK', 1, 1),
(141, '2020-03-22 10:12:47', 'twitter', 'Lebih Aman Melalui Aplikasi |', 1, 1),
(142, '2020-03-22 10:56:54', 'twitter', 'A dong minnn biar samaan kya bts hhhehe', 1, 1),
(143, '2020-03-22 08:11:31', 'twitter', 'Mau apa nih coba, coba-coba di ceki lagi kalo mau udah pas sama syarat dan ketentuannya belum nih hihi :)^FB', 1, 1),
(144, '2020-03-22 10:42:41', 'twitter', 'Wadoow sorry banget kak, coba clear cache dan upgrade aplikasinya dulu biar gak error. Pastiin internet stabil yah :) ^IS', 1, 1),
(145, '2020-03-22 10:46:54', 'twitter', 'Mau dong yg A :>', 1, 1),
(146, '2020-03-22 10:25:00', 'twitter', 'Team rebahan yaa kak~ ^TK', 1, 1),
(147, '2020-03-22 09:23:30', 'twitter', 'Jo lali rek 4.4 Mega Elektronik Sale hanya ada di pastine akeh diskon', 1, 1),
(148, '2020-03-22 09:22:05', 'twitter', 'Maantaap kak, skuy usaha terus yaaw ^TK', 1, 1),
(149, '2020-03-22 09:22:17', 'twitter', 'Yakin nih kak hehee ^TK', 1, 1),
(150, '2020-03-22 09:43:55', 'twitter', 'MAU MIN KALO BISA SEKALIAN RIKUES PC BIAS *lah ngelunjak', 1, 1),
(151, '2020-03-22 10:37:19', 'twitter', 'Hai guys ikutan u games dari seru2 loh dah banyak bgt hadiahnya, aku udah jadi member selver di Shopee Loh karena aku sering bgtt belanja di karena banyak bgt Vocer, gratis onkir, dan lain2.', 1, 1),
(152, '2020-03-22 10:06:01', 'twitter', 'Minggu pagi biasanya ngapain aja nih, Sobat Shopee?', 1, 1),
(153, '2020-03-22 11:00:52', 'twitter', 'Sama nih kayak akuu :D ^AG', 1, 1),
(154, '2020-03-22 11:02:04', 'twitter', 'contoh yg bikin emosi.', 1, 1),
(155, '2020-03-22 10:12:47', 'twitter', 'Lebih Aman Melalui Aplikasi |', 1, 1),
(156, '2020-03-22 10:55:58', 'twitter', 'Hi kak. Udah aku respons ya DMnya, yuuk dicek :) ^IS', 1, 1),
(157, '2020-03-22 10:54:31', 'twitter', 'benar apa gak ya', 1, 1),
(158, '2020-03-22 10:50:23', 'twitter', 'Buat ongkir di sesuaiin sama jasa kirim kak, soalnya diitung dari berat, volume barang dan jarak pengiriman yaa. Pastiin kamu ikutin syarat ketentuan yg berlaku di kode vouchernya kak ^TK', 1, 1),
(159, '2020-03-22 11:00:50', 'twitter', 'MAU wishmeluck', 1, 1),
(160, '2020-03-22 08:11:31', 'twitter', 'Mau apa nih coba, coba-coba di ceki lagi kalo mau udah pas sama syarat dan ketentuannya belum nih hihi :)^FB', 1, 1),
(161, '2020-03-22 11:00:10', 'twitter', 'Waaa jelas pilih C dong', 1, 1),
(162, '2020-03-22 10:56:54', 'twitter', 'A dong minnn biar samaan kya bts hhhehe', 1, 1),
(163, '2020-03-22 10:25:00', 'twitter', 'Team rebahan yaa kak~ ^TK', 1, 1),
(164, '2020-03-22 09:43:55', 'twitter', 'MAU MIN KALO BISA SEKALIAN RIKUES PC BIAS *lah ngelunjak', 1, 1),
(165, '2020-03-22 10:37:19', 'twitter', 'Hai guys ikutan u games dari seru2 loh dah banyak bgt hadiahnya, aku udah jadi member selver di Shopee Loh karena aku sering bgtt belanja di karena banyak bgt Vocer, gratis onkir, dan lain2.', 1, 1),
(166, '2020-03-22 10:23:06', 'twitter', 'Semangat terus, aku bantu doain nih beb :)^FB', 1, 1),
(167, '2020-03-22 10:12:23', 'twitter', 'Tinggal tunggu suara \"paket, paket\" dari dalam rumah ya kan kaaaa~~ ^TK', 1, 1),
(168, '2020-03-22 10:01:36', 'twitter', 'Aamiin kak, mangat terussss ^TK', 1, 1),
(169, '2020-04-18 14:41:29', 'website', 'Produk original, dapet pas harga lgi diskon. Makasih..', 1, 1),
(170, '2020-04-15 10:09:19', 'website', 'Barang sampai dengan selamat tanpa kekurangan sesuatu apapun.\nTerima kasih dan sukses selalu ya.', 1, 1),
(171, '2020-04-13 17:07:11', 'website', 'Awal dipoleskan pink nya beda banget sama warna bibir.\nTp lama2 jd soft & terlihat natural.\nWanginya biasa aja\nTransferproof jd pas minum/makan,\nWarna lipstik ga ketransfer d benda dan tetap bertahan dlm waktu lama.\nHanya saja matte bgt jd agak lengket da', 1, 1),
(172, '2020-04-13 15:24:52', 'website', 'Kecewa banget pesen yang infinite vanilla,di kirim yang chery berry ????????????besok2 tolong di cek dulu ya sebelum di kirim,baru kali ini kecewa krn salah shade warna', 1, 1),
(173, '2020-04-18 16:20:23', 'website', '', 1, 1),
(174, '2020-04-13 11:27:13', 'website', 'Baguuuuuuuuuuuuuussss. Suka dgn produknya. Pengiriman baik. Packaging baik', 1, 1),
(175, '2020-04-11 22:40:56', 'website', 'Gak tau harus omong apa,\nPromonya kagak kejadian di pembelian gw, boro2 promo gratis2 lha pesananku nya aja ada yg kagak terkirim.\nDah ajuin komplain tau2 lenyap gitu aja tanpa uang kembali.\nBuang sial dah ke loreal', 1, 1),
(176, '2020-04-08 12:06:09', 'website', 'Packaging rapih, barang pengkap & benar. Seller responsif dan pengiriman faster. Selalu suka belanja di official store loreal disamping harganya murah karena sering diskon shade lengkap dan seneng bgt langsung punya lipstick terbarunya. Semoga performa ba', 1, 1),
(177, '2020-04-11 19:03:12', 'website', 'Warna nya bagusss.. Buat bibir gelap ini bikin cerah. Ini awet & beneran awet.. Thx ya', 1, 1),
(178, '2020-04-11 20:16:10', 'website', 'Suka banget terima kasih penjual cepat pengemasannya rapi kualitas produknya original', 1, 1),
(179, '2020-04-09 05:45:58', 'website', 'Packaging rapi banget, pengiriman standar lah, semoga warnanya cocok karena belum coba, wangi juga', 1, 1),
(180, '2020-04-07 12:38:39', 'website', 'teksturnya spt yg ink..agak2 lengket.. cuman warnanya pucet ke sy????..jd sptnya hrs diombre dg warna lain yg lbh bold. pengennya warna yg infinite spice..tp pas mau checkout kok uda abis????jd coba2 aja pilih yg guava gush.. warna2nya sptnya lbh cocok ut', 1, 1),
(181, '2020-04-10 21:34:45', 'website', 'Cocok untuk nutupin garis bibir hitam ketika mau buat ombre. Lebih cocok untuk fair skin, buat yang warmtone jadinya lebih pucet.\nDi luar itu packaging nya elegan, belum ada', 1, 1),
(182, '2020-04-06 06:17:59', 'website', 'Sukak bgt sama warnanya, teksturenya n beneran stand out bgt di bibir, jatuh cinta bgt sama lipstick ini, ini pertama kali coba L\'Oreal, lbh enak ini dibandingkan manybelline,padahal sama2 matte.\nKekurangannya cuma pengirimannya yg lamaaaaa bgt, pdhal sam', 1, 1),
(183, '2020-04-09 16:16:55', 'website', 'Pengiriman sangat cepat. Respon penjual sangat baaaaiiiikk', 1, 1),
(184, '2020-04-07 11:17:28', 'website', 'Akhirny ada juga liquid lipstick dari loreal yg warna ny bisa aku pake jalan maupun sehari2...soalny dari infallible matte yg lalu2 gak ad yg masuk warna ny dibibir...', 1, 1),
(185, '2020-04-11 13:38:59', 'website', 'Kurang suka karena lengket rasanya', 1, 1),
(186, '2020-04-08 22:52:04', 'website', 'Sebelumnya udh punya seri cherry berry nyaman bgt di bibir,  tp yg ini krg nyatu warnanya di bibir..   N kerasa kering sekali..  Ntah cuma perasaan ku saja.  Tapi pengirimannya cepet.', 1, 1),
(187, '2020-04-09 07:59:19', 'website', 'warna cantik...\ndan aweettt bangeeetttt.....\nsuka bangettt', 1, 1),
(188, '2020-04-09 15:09:56', 'website', 'Cantik banget warnanya, dan wangiiiii banget kayak macaroon baru dari panggangan', 1, 1),
(189, '2020-03-22 00:00:00', 'website', 'barang bagus sama dengan yg di gambar packing rapih', 1, 4),
(190, '2020-03-22 00:00:00', 'website', 'lumayanlah.\ntpi kok ngk ad memori nya sama betrei...', 1, 4),
(191, '2020-03-22 00:00:00', 'website', 'ka ini ko GK ada baterai nya tolong buat penjelasan nya dibantu', 1, 4),
(192, '2020-03-22 00:00:00', 'website', 'kamera nya sudah nyampe mksih ,, barang nya oke lahk bgus ,, mkasih lazada', 1, 4),
(193, '2020-03-22 00:00:00', 'website', 'terimah kasih lazada kiriman cpt dan kurirnya ramah\nsalam buat lg kerja ???????? 1 ???? lazada', 1, 4),
(194, '2020-03-22 00:00:00', 'website', 'camerNya ringan bangat ya tapi okee lah', 1, 4),
(195, '2020-03-22 00:00:00', 'website', 'Barang sesuai harga. Untuk keperluan dokumentasi cukuplah... Terima kasih.', 1, 4),
(196, '2020-03-22 00:00:00', 'website', 'bagus  tapi saya aga ngeheng', 1, 4),
(197, '2020-03-22 00:00:00', 'website', 'Kecewa', 1, 4),
(198, '2020-03-22 00:00:00', 'website', 'barang sudah di terima dan kurirnya ramah', 1, 4),
(199, '2020-03-22 00:00:00', 'website', 'saya kurang puas memerynya gak ada sama baterai nyaa juga gk ada', 1, 4),
(200, '2020-03-22 00:00:00', 'website', 'barang nya jelek ,kualitas kayak kamera anak anak taik lah', 1, 4),
(201, '2020-03-22 00:00:00', 'website', 'sesuai dgn harga', 1, 4),
(202, '2020-03-22 00:00:00', 'website', 'Lumayan lah', 1, 4),
(203, '2020-03-22 00:00:00', 'website', 'paket saya ud sampe kondisinya baik\nterimksi lasada', 1, 4),
(204, '2020-03-22 00:00:00', 'website', 'nyesel ih beli kamera ini. kyk mainan anak2????', 1, 4),
(205, '2020-03-22 00:00:00', 'website', 'Mantap kamera nya sesuai dg harga nya. Pengiriman nya jg cepat.', 1, 4),
(206, '2020-03-22 00:00:00', 'website', 'Barang yah udah sampai ke pulau Nias Selatan makasih ya lazada', 1, 4),
(207, '2020-03-22 00:00:00', 'website', 'Barang sesuai pesanan, ya lumayan, untuk kamera 16 mega pixel dan trimakasih lazada kurir', 1, 4),
(208, '2020-03-22 00:00:00', 'website', 'barang bagus sama dengan yg di gambar packing rapih', 1, 4),
(209, '2020-03-22 00:00:00', 'website', 'lumayanlah.\ntpi kok ngk ad memori nya sama betrei...', 1, 4),
(210, '2020-03-22 00:00:00', 'website', 'ka ini ko GK ada baterai nya tolong buat penjelasan nya dibantu', 1, 4),
(211, '2020-03-22 00:00:00', 'website', 'kamera nya sudah nyampe mksih ,, barang nya oke lahk bgus ,, mkasih lazada', 1, 4),
(212, '2020-03-22 00:00:00', 'website', 'terimah kasih lazada kiriman cpt dan kurirnya ramah\nsalam buat lg kerja ???????? 1 ???? lazada', 1, 4),
(213, '2020-03-22 00:00:00', 'website', 'camerNya ringan bangat ya tapi okee lah', 1, 4),
(214, '2020-03-22 00:00:00', 'website', 'Barang sesuai harga. Untuk keperluan dokumentasi cukuplah... Terima kasih.', 1, 4),
(215, '2020-03-22 00:00:00', 'website', 'bagus  tapi saya aga ngeheng', 1, 4),
(216, '2020-03-22 00:00:00', 'website', 'Kecewa', 1, 4),
(217, '2020-03-22 00:00:00', 'website', 'barang sudah di terima dan kurirnya ramah', 1, 4),
(218, '2020-03-22 00:00:00', 'website', 'saya kurang puas memerynya gak ada sama baterai nyaa juga gk ada', 1, 4),
(219, '2020-03-22 00:00:00', 'website', 'barang nya jelek ,kualitas kayak kamera anak anak taik lah', 1, 4),
(220, '2020-03-22 00:00:00', 'website', 'sesuai dgn harga', 1, 4),
(221, '2020-03-22 00:00:00', 'website', 'Lumayan lah', 1, 4),
(222, '2020-03-22 00:00:00', 'website', 'paket saya ud sampe kondisinya baik\nterimksi lasada', 1, 4),
(223, '2020-03-22 00:00:00', 'website', 'nyesel ih beli kamera ini. kyk mainan anak2????', 1, 4),
(224, '2020-03-22 00:00:00', 'website', 'Mantap kamera nya sesuai dg harga nya. Pengiriman nya jg cepat.', 1, 4),
(225, '2020-03-22 00:00:00', 'website', 'Barang yah udah sampai ke pulau Nias Selatan makasih ya lazada', 1, 4),
(226, '2020-03-22 00:00:00', 'website', 'Barang sesuai pesanan, ya lumayan, untuk kamera 16 mega pixel dan trimakasih lazada kurir', 1, 4),
(227, '2020-04-18 14:41:29', 'website', 'Produk original, dapet pas harga lgi diskon. Makasih..', 1, 1),
(228, '2020-04-15 10:09:19', 'website', 'Barang sampai dengan selamat tanpa kekurangan sesuatu apapun.\nTerima kasih dan sukses selalu ya.', 1, 1),
(229, '2020-04-13 17:07:11', 'website', 'Awal dipoleskan pink nya beda banget sama warna bibir.\nTp lama2 jd soft & terlihat natural.\nWanginya biasa aja\nTransferproof jd pas minum/makan,\nWarna lipstik ga ketransfer d benda dan tetap bertahan dlm waktu lama.\nHanya saja matte bgt jd agak lengket da', 1, 1),
(230, '2020-04-13 15:24:52', 'website', 'Kecewa banget pesen yang infinite vanilla,di kirim yang chery berry ????????????besok2 tolong di cek dulu ya sebelum di kirim,baru kali ini kecewa krn salah shade warna', 1, 1),
(231, '2020-04-18 16:20:23', 'website', '', 1, 1),
(232, '2020-04-13 11:27:13', 'website', 'Baguuuuuuuuuuuuuussss. Suka dgn produknya. Pengiriman baik. Packaging baik', 1, 1),
(233, '2020-04-11 22:40:56', 'website', 'Gak tau harus omong apa,\nPromonya kagak kejadian di pembelian gw, boro2 promo gratis2 lha pesananku nya aja ada yg kagak terkirim.\nDah ajuin komplain tau2 lenyap gitu aja tanpa uang kembali.\nBuang sial dah ke loreal', 1, 1),
(234, '2020-04-08 12:06:09', 'website', 'Packaging rapih, barang pengkap & benar. Seller responsif dan pengiriman faster. Selalu suka belanja di official store loreal disamping harganya murah karena sering diskon shade lengkap dan seneng bgt langsung punya lipstick terbarunya. Semoga performa ba', 1, 1),
(235, '2020-04-11 19:03:12', 'website', 'Warna nya bagusss.. Buat bibir gelap ini bikin cerah. Ini awet & beneran awet.. Thx ya', 1, 1),
(236, '2020-04-11 20:16:10', 'website', 'Suka banget terima kasih penjual cepat pengemasannya rapi kualitas produknya original', 1, 1),
(237, '2020-04-09 05:45:58', 'website', 'Packaging rapi banget, pengiriman standar lah, semoga warnanya cocok karena belum coba, wangi juga', 1, 1),
(238, '2020-04-07 12:38:39', 'website', 'teksturnya spt yg ink..agak2 lengket.. cuman warnanya pucet ke sy????..jd sptnya hrs diombre dg warna lain yg lbh bold. pengennya warna yg infinite spice..tp pas mau checkout kok uda abis????jd coba2 aja pilih yg guava gush.. warna2nya sptnya lbh cocok ut', 1, 1),
(239, '2020-04-10 21:34:45', 'website', 'Cocok untuk nutupin garis bibir hitam ketika mau buat ombre. Lebih cocok untuk fair skin, buat yang warmtone jadinya lebih pucet.\nDi luar itu packaging nya elegan, belum ada', 1, 1),
(240, '2020-04-06 06:17:59', 'website', 'Sukak bgt sama warnanya, teksturenya n beneran stand out bgt di bibir, jatuh cinta bgt sama lipstick ini, ini pertama kali coba L\'Oreal, lbh enak ini dibandingkan manybelline,padahal sama2 matte.\nKekurangannya cuma pengirimannya yg lamaaaaa bgt, pdhal sam', 1, 1),
(241, '2020-04-09 16:16:55', 'website', 'Pengiriman sangat cepat. Respon penjual sangat baaaaiiiikk', 1, 1),
(242, '2020-04-07 11:17:28', 'website', 'Akhirny ada juga liquid lipstick dari loreal yg warna ny bisa aku pake jalan maupun sehari2...soalny dari infallible matte yg lalu2 gak ad yg masuk warna ny dibibir...', 1, 1),
(243, '2020-04-11 13:38:59', 'website', 'Kurang suka karena lengket rasanya', 1, 1),
(244, '2020-04-08 22:52:04', 'website', 'Sebelumnya udh punya seri cherry berry nyaman bgt di bibir,  tp yg ini krg nyatu warnanya di bibir..   N kerasa kering sekali..  Ntah cuma perasaan ku saja.  Tapi pengirimannya cepet.', 1, 1),
(245, '2020-04-09 07:59:19', 'website', 'warna cantik...\ndan aweettt bangeeetttt.....\nsuka bangettt', 1, 1),
(246, '2020-04-09 15:09:56', 'website', 'Cantik banget warnanya, dan wangiiiii banget kayak macaroon baru dari panggangan', 1, 1),
(247, '2020-05-08 12:38:41', 'website', 'Bagus banget liplienya, stain setelah dibuat makan. Gak gampang hilang. Btw swatchnya yg paling atas yaa teman-teman. Huhuhu murah bgt beli psket combo ini jadi 25.900 berapa gitu lupaaa????', 1, 1),
(248, '2020-05-06 17:06:12', 'website', 'Warnanya cangtip bgt!!!!!???????? mana dapet diskon lg paket 114 rb, lipsticknya cuma 25ribuan aja! Wanginya juga enak bangettt', 1, 1),
(249, '2020-05-08 11:01:00', 'website', 'Alhamdulillah .. paket.y sampai .. packing rapi dan pengiriman juga cepet .. barang.y sesuaii pesanan dapet harga murah donk buat lipstik.y .. love bgt lah ????????????', 1, 1),
(250, '2020-05-08 16:43:23', 'website', 'Niat awal cuma mau beli sabun muka aja . Ngeliat ada kombo hemat gw kira shopee ngeprank nih . Sampe nanya 3 kali ke cs eh gataunya beneran dong huhuu. Thx banget diskonnya ya loreal . 22 nya beneran wishlist gw ini sumpah .????????????', 1, 1),
(251, '2020-05-09 05:44:55', 'website', 'Paket comboo yeayyyy essence nya bagus ccok di aku lipsticknyaaaaabagusss bingitttpen nangisss sama facial wash nya udh lama pake tooppppp pokonyaaa loreal sering2 adain promo ama vocher biar semangat blanjanya hihihi', 1, 1),
(252, '2020-05-06 14:44:25', 'website', 'Teman suami nya kena phk krn covid, anaknya 3 kecil2, dgn segala keberanian dia ambil tabungan nya yg tdk seberapa unt membeli 1 set mesin jahit listrik dan mulai memproduksi masker kain. Pesanan pun berdaatangan....', 1, 1),
(253, '2020-05-09 08:20:41', 'website', 'Packing cepat dan rapi\nSeneng banget dapet les macarons harga 25rb deng \nbeli facial foam ????????????\nWarnanya bagus kok, agak gonjreng dikit tapi texturenya juaraaaa\nMakasih loreaaal\nSering2 diskon yaa buat lipstiknyaaaa', 1, 1),
(254, '2020-05-14 08:02:21', 'website', 'yeayyy terima kasih banyak seller, semoga barokah. harga terjangkau. barang kondisi bagus, tidak ada cacat, pengiriman lumayan. aku doakan semoga tokonya laris hehehehehehe. many thanks.', 1, 1),
(255, '2020-05-06 18:12:28', 'website', 'Walaupun ada yg wrnnya mentereng bgt tp kl diskon gini mah ganolak! ?????? Kapan lagi 50rb dpt 3 lipcream loreal. Thankyouuu ????', 1, 1),
(256, '2020-05-07 07:48:30', 'website', 'Dapet ini harga murah krn paket kombo.. Belom dicoba si.. Tapi Moga2 sesuai harapan yaaaa...packing bagus pake buble sama kardus, pengiriman agak lama.. Biasanya cepet.. Thanks loreal', 1, 1),
(257, '2020-05-07 15:36:30', 'website', 'Di foto ini swatch nya yang paling atasm cantik banget warnanya brownish pink gitu. Transferproof juga. Pengiriman aman, bubble wrap tebal. Makasih seller, sukses selalu buat loreal', 1, 1),
(258, '2020-05-11 16:24:11', 'website', 'Bagusss bangeettt, dapat ini seharga 25k/pcs ???????????? Pengiriman agak lama but its okay barangnya aman pas smpe', 1, 1),
(259, '2020-05-10 18:30:07', 'website', 'Sering diskon ya...bagus banget produknya\nSering diskon ya...bagus banget produknya\nSering diskon ya...bagus banget produknya\nSering diskon ya...bagus banget produknya\nSering diskon ya...bagus banget produknya\nSering diskon ya...bagus banget produknya\nSer', 1, 1),
(260, '2020-05-10 09:40:39', 'website', 'Kualitas produk baik, pengiriman cepat, packing rapih dan aman, harga terjangkau bgt karna dpt pas paket kombo hihiii shade nya bagus euyyyyyy', 1, 1),
(261, '2020-05-10 16:48:52', 'website', 'Thanks kak barang udah sampek. dikirim sesuai pesanan. Pengiriman tumben sedikit lama, tp gppa yg penting barang udah sampek. Lipstick nya murah banget ???? cuman 25rb aja. udah aku coba baguss banget warna nya cocok di bibir ku ????', 1, 1),
(262, '2020-05-10 07:17:51', 'website', 'Pengemasan cepat dan rapi disertai bubble wrap dan kardus, pesanan sesuai dengan invoice, harga kombo yg sangat murah terimakasih seller', 1, 1),
(263, '2020-04-29 15:51:08', 'website', 'Ternyata packagingnya kecil.... Pas di dompet , warnanya bagus banget...  Tks', 1, 1),
(264, '2020-05-06 16:39:28', 'website', 'Warna ini soft tp cerah jd kita keliatabln segar. Tahqn lama tapi tetap lembab.. produk berkualitas. Terima kasih Loreal dan shoppe', 1, 1),
(265, '2020-05-11 12:15:15', 'website', 'Bener bener hemat kombo hematnya, sering sering begini ya loreal, pengiriman agak lama yaa karena ada corona tp gapapa yg penting kualitas barang memuaskan', 1, 1),
(266, '2020-05-11 23:47:15', 'website', 'Belum pernah sebahagia ini nunggu paket datang ..... Karena dapat kombo ini dengan harga yang terjangkau banget, trima kasih L\'oreal', 1, 1),
(267, '2031-02-01 09:47:40', 'website', 'Mantap, pengiriman cepat sekali', 1, 3),
(268, '2030-05-28 13:21:26', 'website', 'Pesanan cpt sampai..', 1, 3),
(269, '2020-07-18 03:24:04', 'website', 'Bagus dan puas', 1, 3),
(270, '2012-05-24 09:16:29', 'website', 'Produk Original dapet baterai, berfungsi dgn baik, pengiriman cepat,', 1, 3),
(271, '2012-05-13 13:19:56', 'website', 'Mantap', 1, 3),
(272, '2008-03-11 01:41:04', 'website', 'Ok', 1, 3),
(273, '2006-05-17 19:01:52', 'website', 'Mantappp...pesan malam kemarin...pagi ini sudah datang..original', NULL, 3),
(274, '2003-11-11 17:14:40', 'website', 'Produk dikemas amaann. Syiip berfungsi dg sangattt baikkk', NULL, 3),
(275, '1986-10-17 23:43:26', 'website', 'baguss dan murah ... terimakasih blibli', NULL, 3),
(276, '1978-03-13 00:52:50', 'website', 'Berfungsi baik,thxx..........', NULL, 3),
(277, '1958-03-12 09:34:15', 'website', 'Produk bagus, pengiriman kilat. Puas sekali belanja di blibli', NULL, 3),
(278, '1942-10-10 17:12:52', 'website', 'Ok', NULL, 3),
(279, '1941-04-29 15:59:19', 'website', 'Produk bekerja dengan baik, sesuai deskripsi', NULL, 3),
(280, '1932-08-02 06:02:20', 'website', 'Barang sudah diterima dengan baik dan sesuai, sudah dicoba dan berfungsi baik. Untuk scroll agak sedikit kesat, tapi masih ok, terutama untuk harga yg sangat terjangkau', NULL, 3),
(281, '1915-12-25 08:24:58', 'website', 'sesuai dg pesanan, murah jg ........................................', NULL, 3),
(282, '1913-11-02 07:15:27', 'website', 'Pesanan sesuai dengan yang diharapkan.. ????', NULL, 3),
(283, '1913-08-18 15:47:49', 'website', 'Mantaaaapposss.....', NULL, 3),
(284, '1997-07-16 03:06:25', 'website', 'Packing aman, pengiriman lumayan cepat, produk OK, harga murah', NULL, 3),
(285, '1984-03-27 09:27:26', 'website', 'Murah', NULL, 3),
(286, '1945-04-19 20:19:52', 'website', 'Mantullll', NULL, 3),
(287, '1936-09-18 12:41:55', 'website', 'Mantap..langsung pakai.. beratnya pas..', NULL, 3),
(288, '1935-02-07 05:30:18', 'website', 'Good product fast delivery', NULL, 3),
(289, '1934-11-26 09:20:57', 'website', 'Mantul', NULL, 3),
(290, '1933-10-21 20:51:07', 'website', 'Sangat baik!', NULL, 3),
(291, '1914-05-17 05:57:22', 'website', 'Produk berfungsi dengan baik', NULL, 3),
(292, '2024-08-03 10:20:52', 'website', 'Produk dapat dipakai', NULL, 3),
(293, '2018-08-14 08:49:26', 'website', 'Sesuai deskripsi', NULL, 3),
(294, '2016-09-21 15:08:45', 'website', 'Belum dicoba sih', NULL, 3),
(295, '2013-07-01 14:15:33', 'website', 'mouse mantap', NULL, 3),
(296, '2012-12-06 18:30:31', 'website', 'Sesuai', NULL, 3),
(297, '2002-10-20 11:07:31', 'website', 'Berfungsi sangat baik...\nSemoga awet...', NULL, 3),
(298, '1966-02-08 04:16:47', 'website', 'Thx buat produknya yg bagus', NULL, 3),
(299, '1960-07-21 23:48:29', 'website', 'Good product!! Affordable price', NULL, 3),
(300, '1959-02-12 20:17:52', 'website', 'Barang sudah dicoba langsung setelah diterima dan berfungsi dengan baik, tidak ada cacatnya juga.', NULL, 3),
(301, '1958-06-02 09:45:40', 'website', 'Pembelian yg k-2 ????????', NULL, 3),
(302, '1948-10-13 08:50:01', 'website', 'Ok', NULL, 3),
(303, '1945-05-06 10:37:47', 'website', 'nice lah utk harga sgt', NULL, 3),
(304, '1945-01-03 07:40:29', 'website', 'Sip', NULL, 3),
(305, '1944-07-31 10:28:25', 'website', 'barangnya sesuai', NULL, 3),
(306, '1942-03-09 16:00:56', 'website', 'Mantap dah', NULL, 3),
(307, '1939-11-07 12:37:29', 'website', 'mantab cepat kirimnya', NULL, 3),
(308, '1939-10-27 12:28:10', 'website', 'terima kasih', NULL, 3),
(309, '1932-10-08 09:27:00', 'website', 'Good', NULL, 3),
(310, '1928-07-16 23:48:55', 'website', 'produk berfungsi dengan baik. cepat dan murah', NULL, 3),
(311, '1908-09-06 14:26:29', 'website', 'berfungsi dengan baik, pengiriman cepat, harga dapet ptomo', NULL, 3),
(312, '1907-01-13 23:14:24', 'website', 'Bagusss puasss dahh thanks blibli', NULL, 3),
(313, '1906-03-20 04:03:28', 'website', 'Baguslah , pengiriman sangat cepat', NULL, 3),
(314, '1905-03-18 17:36:18', 'website', 'Ok', NULL, 3),
(315, '1905-03-18 04:34:38', 'website', 'Sip', NULL, 3),
(316, '1903-10-04 03:57:03', 'website', 'Ok', NULL, 3),
(317, '2026-05-21 22:08:29', 'website', 'Expres banged.. pesan subuh.. sore sdh diantar.. luar biasaaaa Blibli... I love you full\n\nBarang jg oke, original...', NULL, 3),
(318, '2005-08-24 00:39:12', 'website', 'Ok', NULL, 3),
(319, '2003-03-25 22:46:32', 'website', 'Pagi pesan Sore sudah sampai.. emang blibli paling TOP BGT deh..', NULL, 3),
(320, '1957-02-26 15:50:16', 'website', '????', NULL, 3),
(321, '1955-06-06 12:48:35', 'website', 'Produk diterima sesuai deskripsi dan berfungsi dengan baik, terima kasih blibli........', NULL, 3),
(322, '1948-08-18 01:04:34', 'website', 'So far ok', NULL, 3),
(323, '1941-03-31 20:06:01', 'website', 'Barang ori, harga promo. Siip', NULL, 3),
(324, '1940-10-14 11:41:58', 'website', 'Bagus sekali', NULL, 3),
(325, '1939-07-02 19:14:44', 'website', 'Bagus. Barang original', NULL, 3),
(326, '1996-11-04 21:36:13', 'website', 'Sesuai deskripsi', NULL, 3),
(327, '1982-04-22 09:29:25', 'website', 'packing rapi.. barang ori.. mantap', NULL, 3),
(328, '1974-03-19 04:14:37', 'website', 'barang bagus bisa digunakan', NULL, 3),
(329, '1947-10-16 06:44:39', 'website', 'Bagus', NULL, 3),
(330, '1939-01-21 17:53:03', 'website', 'Bagus', NULL, 3),
(331, '1937-01-28 03:34:37', 'website', 'bagusssss', NULL, 3),
(332, '1936-02-15 15:53:59', 'website', 'berfungsi dengan  baik', NULL, 3),
(333, '1934-09-18 03:13:36', 'website', 'Barang sesuai diskripsi di lapak.', NULL, 3),
(334, '1929-02-23 02:50:42', 'website', 'Produk bagus..... Dapat pas flash shell....lumayan ngirit....', NULL, 3),
(335, '1914-02-26 15:24:26', 'website', 'Bagus', NULL, 3),
(336, '1914-02-17 20:08:02', 'website', 'Sip', NULL, 3),
(337, '1911-04-22 04:47:13', 'website', 'Barang bagus. Packingan rapi pengiriman cepat', NULL, 3),
(338, '1908-12-03 07:12:15', 'website', 'Siiip', NULL, 3),
(339, '1903-01-11 15:40:06', 'website', 'Barang sesuai, packing rapi dan pengiriman cepat', NULL, 3),
(340, '2015-04-08 01:24:16', 'website', 'Bagus dan murah. Thanks', NULL, 3),
(341, '2013-07-29 05:52:29', 'website', 'Berfungsi dengan baik', NULL, 3),
(342, '2001-09-27 02:35:19', 'website', 'Good', NULL, 3),
(343, '1999-11-16 10:14:12', 'website', 'Bagus', NULL, 3),
(344, '1966-03-02 15:33:24', 'website', 'Barang bagus sesuai deskripsi', NULL, 3),
(345, '1959-04-08 08:06:33', 'website', 'Kualitas logitech, bukan yang terbaik yang pernah sy pakai tapi tetap nyaman dengan harga yang ditawarkan. Dapat bonus batere, untuk durasi pengiriman selayaknya dapat bintang lebih dari 5. Setelah subuh pesan sampainya maghrib :)', NULL, 3),
(346, '1958-03-02 04:00:38', 'website', 'Okkk', NULL, 3),
(347, '1957-07-31 17:57:46', 'website', 'Sesuai pesanan\nThx blibli', NULL, 3),
(348, '1957-03-15 22:29:09', 'website', 'mantap bro', NULL, 3),
(349, '1955-10-10 18:38:03', 'website', 'Mantappppp', NULL, 3),
(350, '1952-04-15 07:04:46', 'website', 'pengiriman super fast, sehari sampai. kualitas barang bagus sesuai gambar dan murah', NULL, 3),
(351, '1949-12-25 20:14:20', 'website', 'Produk berfungsi dengan semestinya, pengiriman sangat cepat dan akurat, Terima Kasih Blibli.com', NULL, 3),
(352, '1933-01-11 09:42:22', 'website', 'barang bagus serta cepat sampai', NULL, 3),
(353, '1930-07-22 20:50:03', 'website', 'Recomended', NULL, 3),
(354, '1924-02-04 00:34:18', 'website', 'Bagus', NULL, 3),
(355, '1914-11-12 21:15:22', 'website', 'produk sesuai', NULL, 3),
(356, '1913-12-14 20:51:53', 'website', 'Pengiriman sangat cepat, packing sangat rapih, produk ori, walaupun blom dicoba, harga cukup bersaing, jempol berbicara', NULL, 3),
(357, '1907-10-22 13:40:18', 'website', 'Cpt bgt & lsg plug in bs dipake tanpa alas, dpt murah lg pas cashback gopay', NULL, 3),
(358, '1905-12-11 08:13:37', 'website', 'Ok', NULL, 3),
(359, '2032-11-29 07:32:45', 'website', 'Barang 100% original\nDapar harg flash sale...\nRespon cepat\nTerima kasih blibli', NULL, 3),
(360, '2031-09-12 00:01:19', 'website', 'sesuai pesanan', NULL, 3),
(361, '2029-12-20 19:13:27', 'website', 'MantaPKS', NULL, 3),
(362, '2027-12-18 06:49:56', 'website', 'Produk berfungsi dengan baik, bisa digunakan di berbagai permukaan tanpa kendala, cocok untuk penggunaan sehari-hari. oiya produk sudah include baterai, jadi saat sampai bisa langsung digunakan', NULL, 3),
(363, '2025-02-10 14:57:00', 'website', 'Produk baik', NULL, 3),
(364, '2025-02-06 14:05:17', 'website', 'Barang sudah di terima', NULL, 3),
(365, '2022-09-05 08:37:55', 'website', 'Good', NULL, 3),
(366, '2022-02-17 21:17:18', 'website', 'Belum dicoba', NULL, 3),
(367, '2020-04-14 00:00:00', 'website', 'Mengecewakan  Batre nga ada  memori nga ada apaan ini ke mainan bocah', NULL, 4),
(368, '2020-04-14 00:00:00', 'website', 'barang bagus sama dengan yg di gambar packing rapih', NULL, 4),
(369, '2020-04-14 00:00:00', 'website', 'lumayanlah.\ntpi kok ngk ad memori nya sama betrei...', NULL, 4),
(370, '2020-04-14 00:00:00', 'website', 'ka ini ko GK ada baterai nya tolong buat penjelasan nya dibantu', NULL, 4),
(371, '2020-04-14 00:00:00', 'website', 'kamera nya sudah nyampe mksih ,, barang nya oke lahk bgus ,, mkasih lazada', NULL, 4),
(372, '2020-04-14 00:00:00', 'website', 'terimah kasih lazada kiriman cpt dan kurirnya ramah\nsalam buat lg kerja ???????? 1 ???? lazada', NULL, 4),
(373, '2020-04-14 00:00:00', 'website', 'camerNya ringan bangat ya tapi okee lah', NULL, 4),
(374, '2020-04-14 00:00:00', 'website', 'Barang sesuai harga. Untuk keperluan dokumentasi cukuplah... Terima kasih.', NULL, 4),
(375, '2020-04-14 00:00:00', 'website', 'bagus  tapi saya aga ngeheng', NULL, 4),
(376, '2020-04-14 00:00:00', 'website', 'Kecewa', NULL, 4),
(377, '2020-04-14 00:00:00', 'website', 'barang sudah di terima dan kurirnya ramah', NULL, 4),
(378, '2020-04-14 00:00:00', 'website', 'saya kurang puas memerynya gak ada sama baterai nyaa juga gk ada', NULL, 4),
(379, '2020-04-14 00:00:00', 'website', 'barang nya jelek ,kualitas kayak kamera anak anak taik lah', NULL, 4),
(380, '2020-04-14 00:00:00', 'website', 'sesuai dgn harga', NULL, 4),
(381, '2020-04-14 00:00:00', 'website', 'Lumayan lah', NULL, 4),
(382, '2020-04-14 00:00:00', 'website', 'paket saya ud sampe kondisinya baik\nterimksi lasada', NULL, 4),
(383, '2020-04-14 00:00:00', 'website', 'nyesel ih beli kamera ini. kyk mainan anak2????', NULL, 4),
(384, '2020-04-14 00:00:00', 'website', 'Mantap kamera nya sesuai dg harga nya. Pengiriman nya jg cepat.', NULL, 4),
(385, '2020-04-14 00:00:00', 'website', 'Barang yah udah sampai ke pulau Nias Selatan makasih ya lazada', NULL, 4),
(386, '2020-04-14 00:00:00', 'website', 'Barang sesuai pesanan, ya lumayan, untuk kamera 16 mega pixel dan trimakasih lazada kurir', NULL, 4),
(387, '2019-03-15 15:28:04', 'website', 'Barang bagus banget! Dikasih kantong bagus tapi robek????', NULL, 5),
(388, '2019-01-29 18:29:55', 'website', 'Wah, Puas Banget! Barang belum di test, tapi kalo liat dari packing nya sih kayaknya okkkeeehhh', NULL, 5),
(389, '2019-10-18 09:20:47', 'website', 'Barang bagus banget! Barang oke', NULL, 5),
(390, '2019-07-27 18:53:46', 'website', 'Barang bagus banget! langsung dites semuanya berfungsi,gampang nyala in sama matiinnya', NULL, 5),
(391, '2019-03-11 13:55:12', 'website', 'Wah, Puas Banget! Barang bagus sesuai pesanan,tapi tdk free batereinya', NULL, 5),
(392, '2019-01-31 19:28:53', 'website', 'Wah, Puas Banget! Barang sesuai gambar dan deskripsi....\nHanya ada baut 1 yang hilang tetapi secara keseluruhan ok...\n????????????????????????', NULL, 5),
(393, '2019-01-28 11:40:41', 'website', 'Barang bagus banget! Kualitas sesuai ', NULL, 5),
(394, '2019-01-14 16:44:19', 'website', 'Barang bagus banget! ketika lilin digoyang ke atas 1x otomatis hidup.\nmematikan nya pun cukup digoyang ke atas lagi 1x.. material bagus,recomended bgt lah', NULL, 5),
(395, '2019-02-21 06:46:25', 'website', 'Wah, Puas Banget! ', NULL, 5),
(396, '2019-01-29 20:35:19', 'website', 'Wah, Puas Banget! ', NULL, 5),
(397, '2019-01-12 16:36:51', 'website', 'Wah, Puas Banget! ', NULL, 5),
(398, '2019-01-29 22:37:19', 'website', 'Saya Puas! semoga tdk boros baterenya', NULL, 5),
(399, '2019-01-12 19:58:09', 'website', 'Saya Puas! Barang sesuai pesanan. Berfungsi dengan baik.', NULL, 5),
(400, '2019-02-26 06:14:01', 'website', 'it so so ordinary previous bought just because have flash sale disc, maybe i just has to much high intepretation of it', NULL, 5),
(401, '2019-03-15 15:28:04', 'website', 'Barang bagus banget! Dikasih kantong bagus tapi robek????', NULL, 5);
INSERT INTO `dataset` (`id`, `tanggal`, `sumber`, `teks`, `temp_klasifikasi`, `fk_marketplace`) VALUES
(402, '2019-01-29 18:29:55', 'website', 'Wah, Puas Banget! Barang belum di test, tapi kalo liat dari packing nya sih kayaknya okkkeeehhh', NULL, 5),
(403, '2019-10-18 09:20:47', 'website', 'Barang bagus banget! Barang oke', NULL, 5),
(404, '2019-07-27 18:53:46', 'website', 'Barang bagus banget! langsung dites semuanya berfungsi,gampang nyala in sama matiinnya', NULL, 5),
(405, '2019-03-11 13:55:12', 'website', 'Wah, Puas Banget! Barang bagus sesuai pesanan,tapi tdk free batereinya', NULL, 5),
(406, '2019-01-31 19:28:53', 'website', 'Wah, Puas Banget! Barang sesuai gambar dan deskripsi....\nHanya ada baut 1 yang hilang tetapi secara keseluruhan ok...\n????????????????????????', NULL, 5),
(407, '2019-01-28 11:40:41', 'website', 'Barang bagus banget! Kualitas sesuai ', NULL, 5),
(408, '2019-01-14 16:44:19', 'website', 'Barang bagus banget! ketika lilin digoyang ke atas 1x otomatis hidup.\nmematikan nya pun cukup digoyang ke atas lagi 1x.. material bagus,recomended bgt lah', NULL, 5),
(409, '2019-02-21 06:46:25', 'website', 'Wah, Puas Banget! ', NULL, 5),
(410, '2019-01-29 20:35:19', 'website', 'Wah, Puas Banget! ', NULL, 5),
(411, '2019-01-12 16:36:51', 'website', 'Wah, Puas Banget! ', NULL, 5),
(412, '2019-01-29 22:37:19', 'website', 'Saya Puas! semoga tdk boros baterenya', NULL, 5),
(413, '2019-01-12 19:58:09', 'website', 'Saya Puas! Barang sesuai pesanan. Berfungsi dengan baik.', NULL, 5),
(414, '2019-02-26 06:14:01', 'website', 'it so so ordinary previous bought just because have flash sale disc, maybe i just has to much high intepretation of it', NULL, 5),
(415, '2019-03-15 15:28:04', 'website', 'Barang bagus banget! Dikasih kantong bagus tapi robek????', NULL, 5),
(416, '2019-01-29 18:29:55', 'website', 'Wah, Puas Banget! Barang belum di test, tapi kalo liat dari packing nya sih kayaknya okkkeeehhh', NULL, 5),
(417, '2019-10-18 09:20:47', 'website', 'Barang bagus banget! Barang oke', NULL, 5),
(418, '2019-07-27 18:53:46', 'website', 'Barang bagus banget! langsung dites semuanya berfungsi,gampang nyala in sama matiinnya', NULL, 5),
(419, '2019-03-11 13:55:12', 'website', 'Wah, Puas Banget! Barang bagus sesuai pesanan,tapi tdk free batereinya', NULL, 5),
(420, '2019-01-31 19:28:53', 'website', 'Wah, Puas Banget! Barang sesuai gambar dan deskripsi....\nHanya ada baut 1 yang hilang tetapi secara keseluruhan ok...\n????????????????????????', NULL, 5),
(421, '2019-01-28 11:40:41', 'website', 'Barang bagus banget! Kualitas sesuai ', NULL, 5),
(422, '2019-01-14 16:44:19', 'website', 'Barang bagus banget! ketika lilin digoyang ke atas 1x otomatis hidup.\nmematikan nya pun cukup digoyang ke atas lagi 1x.. material bagus,recomended bgt lah', NULL, 5),
(423, '2019-02-21 06:46:25', 'website', 'Wah, Puas Banget! ', NULL, 5),
(424, '2019-01-29 20:35:19', 'website', 'Wah, Puas Banget! ', NULL, 5),
(425, '2019-01-12 16:36:51', 'website', 'Wah, Puas Banget! ', NULL, 5),
(426, '2019-01-29 22:37:19', 'website', 'Saya Puas! semoga tdk boros baterenya', NULL, 5),
(427, '2019-01-12 19:58:09', 'website', 'Saya Puas! Barang sesuai pesanan. Berfungsi dengan baik.', NULL, 5),
(428, '2019-02-26 06:14:01', 'website', 'it so so ordinary previous bought just because have flash sale disc, maybe i just has to much high intepretation of it', NULL, 5),
(429, '2019-03-15 15:28:04', 'website', 'Barang bagus banget! Dikasih kantong bagus tapi robek????', NULL, 5),
(430, '2019-01-29 18:29:55', 'website', 'Wah, Puas Banget! Barang belum di test, tapi kalo liat dari packing nya sih kayaknya okkkeeehhh', NULL, 5),
(431, '2019-10-18 09:20:47', 'website', 'Barang bagus banget! Barang oke', NULL, 5),
(432, '2019-07-27 18:53:46', 'website', 'Barang bagus banget! langsung dites semuanya berfungsi,gampang nyala in sama matiinnya', NULL, 5),
(433, '2019-03-11 13:55:12', 'website', 'Wah, Puas Banget! Barang bagus sesuai pesanan,tapi tdk free batereinya', NULL, 5),
(434, '2019-01-31 19:28:53', 'website', 'Wah, Puas Banget! Barang sesuai gambar dan deskripsi....\nHanya ada baut 1 yang hilang tetapi secara keseluruhan ok...\n????????????????????????', NULL, 5),
(435, '2019-01-28 11:40:41', 'website', 'Barang bagus banget! Kualitas sesuai ', NULL, 5),
(436, '2019-01-14 16:44:19', 'website', 'Barang bagus banget! ketika lilin digoyang ke atas 1x otomatis hidup.\nmematikan nya pun cukup digoyang ke atas lagi 1x.. material bagus,recomended bgt lah', NULL, 5),
(437, '2019-02-21 06:46:25', 'website', 'Wah, Puas Banget! ', NULL, 5),
(438, '2019-01-29 20:35:19', 'website', 'Wah, Puas Banget! ', NULL, 5),
(439, '2019-01-12 16:36:51', 'website', 'Wah, Puas Banget! ', NULL, 5),
(440, '2019-01-29 22:37:19', 'website', 'Saya Puas! semoga tdk boros baterenya', NULL, 5),
(441, '2019-01-12 19:58:09', 'website', 'Saya Puas! Barang sesuai pesanan. Berfungsi dengan baik.', NULL, 5),
(442, '2019-02-26 06:14:01', 'website', 'it so so ordinary previous bought just because have flash sale disc, maybe i just has to much high intepretation of it', NULL, 5),
(443, '2019-03-15 15:28:04', 'website', 'Barang bagus banget! Dikasih kantong bagus tapi robek????', NULL, 5),
(444, '2019-01-29 18:29:55', 'website', 'Wah, Puas Banget! Barang belum di test, tapi kalo liat dari packing nya sih kayaknya okkkeeehhh', NULL, 5),
(445, '2019-10-18 09:20:47', 'website', 'Barang bagus banget! Barang oke', NULL, 5),
(446, '2019-07-27 18:53:46', 'website', 'Barang bagus banget! langsung dites semuanya berfungsi,gampang nyala in sama matiinnya', NULL, 5),
(447, '2019-03-11 13:55:12', 'website', 'Wah, Puas Banget! Barang bagus sesuai pesanan,tapi tdk free batereinya', NULL, 5),
(448, '2019-01-31 19:28:53', 'website', 'Wah, Puas Banget! Barang sesuai gambar dan deskripsi....\nHanya ada baut 1 yang hilang tetapi secara keseluruhan ok...\n????????????????????????', NULL, 5),
(449, '2019-01-28 11:40:41', 'website', 'Barang bagus banget! Kualitas sesuai ', NULL, 5),
(450, '2019-01-14 16:44:19', 'website', 'Barang bagus banget! ketika lilin digoyang ke atas 1x otomatis hidup.\nmematikan nya pun cukup digoyang ke atas lagi 1x.. material bagus,recomended bgt lah', NULL, 5),
(451, '2019-02-21 06:46:25', 'website', 'Wah, Puas Banget! ', NULL, 5),
(452, '2019-01-29 20:35:19', 'website', 'Wah, Puas Banget! ', NULL, 5),
(453, '2019-01-12 16:36:51', 'website', 'Wah, Puas Banget! ', NULL, 5),
(454, '2019-01-29 22:37:19', 'website', 'Saya Puas! semoga tdk boros baterenya', NULL, 5),
(455, '2019-01-12 19:58:09', 'website', 'Saya Puas! Barang sesuai pesanan. Berfungsi dengan baik.', NULL, 5),
(456, '2019-02-26 06:14:01', 'website', 'it so so ordinary previous bought just because have flash sale disc, maybe i just has to much high intepretation of it', NULL, 5),
(457, '2020-04-09 00:00:00', 'playstore', 'Pengembalian dana ribet bgt gara2 dicancel sama seller ga jelas. Dana yg dikembalikan berupa voucher, musti isi form kalo mau diuangkan dananya . Udah isi form ditunggu 3 hari kerja, dana ga balik juga. Akhirnya dipakai saja itu voucher. Pesanan di cancel', NULL, 1),
(458, '2020-04-09 00:00:00', 'playstore', 'Susah banget menghubungi pihak lazada. Di telp ga pernah dijawab. Layanannya gimana sih.... ga usah di kasih no kontak kl ga bs dihubungi. live chat nya juga ga guna. Pengembalian dana saya gimana? Statusnya sudah di kembalikan tapi duitnya gak masuk. Gim', NULL, 1),
(459, '2020-04-09 00:00:00', 'playstore', 'Selama ini sih aman aman aja sama lazada, cuma karena untuk proses pengembalian dana ke rekening bank nya lama kali diproses, gak lagi lah. Udah lewat hari yang ditentukan pun. Sampe sekarang belum diproses juga. Udah capek ngisi formulir teros,gak dipros', NULL, 1),
(460, '2020-04-09 00:00:00', 'playstore', 'Tolong dong pihak lazada yg terhormat , saya hanya ingin uang saya yg dalam bentuk voucher itu segera di kembalikan ke rekening saya tolong jangan di persulit pihak lazada yg terhormat, saya orang susah pak/bu saya butuh uang itu untuk makan. Tolong seger', NULL, 1),
(461, '2020-04-09 00:00:00', 'playstore', 'Eksklusif untuk anggota Lazada Samsung Galaxy S10 Anda telah dipesan oleh Lazada! Syarat dan ketentuan: 1. Pada halaman berikutnya, isi formulir pengiriman dengan detail kontak Anda; 2. Samsung Galaxy S10 Anda akan dikirimkan oleh kami dalam waktu 3 hingg', NULL, 1),
(462, '2020-04-10 00:00:00', 'playstore', 'saya kecewa dengan penjual di lazada pesanan sudah 10 hari dari tanggal 1 s/d 10 masih blum di proses. saya tekan \"batalkan\" malah gak bisa. sekiranya tidak bisa kirim padahal tinggal batalkan saja dari penjualnya. mending kalo metode pembayarannya COD sa', NULL, 1),
(463, '2020-04-09 00:00:00', 'playstore', 'Pengembalian dana sampai 3 minggu belum masuk juga dan Klo boleh saran,seller yang udah gak aktif atau seller yang bermasalah(bisa diliat dari komen2 konsumen mengenai produk yang gak sesuai) didelete saja. Dan kepada CS via live chat tolong jangan suka P', NULL, 1),
(464, '2020-04-10 00:00:00', 'playstore', 'Beacukai harus nya di tiadakan jika dibawah $75 itu syarat dari pihak bea cukai. Tapi oleh lazada itu dijadikan sebagai keuntungan. Inti nya Lazada tidak jujur. Pihak Lazada pasti tidak berani tanggapi comen saya. Paling di suruh kirim email ke cs Lazada.', NULL, 1),
(465, '2020-04-10 00:00:00', 'playstore', 'Aku udh 2 kali beli dan bayar yg pertama dibatalin karena stock habis, yang kedua di batalin karena AKUN ku banyak. Woigw cuma punya satu akun. Nipu banget lah lazada ini hati2 aja guys. Pikir 2kali klo mau beli di lazada. Pengembalian uang juga sangat la', NULL, 1),
(466, '2020-04-09 00:00:00', 'playstore', 'Saya pesen magic com sudah saya bayar baru ada notif barang habis. Ud ngisi form aplikasi refund tp belum ada balasan juga. Katanya pengembalian langsung jika jam kerja..ini ud 7 hari belum ada balasan apapun baik email maupun live chat...tolong segera di', NULL, 1),
(467, '2020-04-10 00:00:00', 'playstore', 'Ini kenapa para pelapak mengarahkan agar pesan lewat chat WhatsApp dengan alasan LAZADA SELLER sedang sibuk, Lapak sedang banyak pesanan agar pesan lewat WhatsApp aja, untuk Info pesanan lebih lanjut bisa melalui WhatsApp di nomor.... Di Lazada tertulis C', NULL, 1),
(468, '2020-04-09 00:00:00', 'playstore', 'Saya kecewa skli sama pelayanan kurir lazada sekarang ini. Kurirnya tidak sabaran, barang yg dipesan sudah dikonfirmasi cancel tidak jadi diambil masih saja dikirim kerumah. Giliran barang yg dipesan diantar kurir nya malah tidak sabaran menunggu sebentar', NULL, 1),
(469, '2020-04-09 00:00:00', 'playstore', 'Maaf sebelumnya. Hanya ingin bertanya, apakah tidak ada jasa pengiriman selain NinjaVan? Karena setiap kali pesanan sy dikirim melalui jasa pengiriman NinjaVan pasti lama sekali, selalu lewat dr estimasi. Kali ini sy pesan dari hr Senin dan telah di picku', NULL, 1),
(470, '2020-04-08 00:00:00', 'playstore', 'Sya persen Tv di lazada sudah sya TF 1.649.000 dari tanggal 28 Maret.. sya sudah mengisi formulir pendaftaran pengembalian uang...di suruh menunggu Ampe 7 hari.. Ampe sekarang blom ada info lebih lanjut.nya... apa yg Harus sya lakukan.... Sya ingin uang s', NULL, 1),
(471, '2020-04-08 00:00:00', 'playstore', 'Aplikasi lazada emang bagus olshop buat cod,tapi untuk pelayanan customer servicenya paraaaah bangke bikin jengkel.. mau minta bantuan lewat live chat yg balez CLEO komputer bego.. mana ada live chat yg bales komputer bukan cs asli.. saya coba hubungi lew', NULL, 1),
(472, '2020-04-08 00:00:00', 'playstore', 'Kecewa seberat beratnya, pesen barang saldo rekening sudah berkurang 200 ribu tapi di lacak pesenan masi status menunggu pembayaran. Apa apa an ini gak jelas aplikasinya, sudah hubungi cs cuma di suruh nunggu 1x24jam, kalo pembayaran diterima bakal dikiri', NULL, 1),
(473, '2020-03-27 00:00:00', 'playstore', 'Tolong yach d perhatikan para penjual nya, saya sering kali order tdk sesuai pesanan. Kalo memang stok habis jangan d d pajang , jangan kirim barang yg bukan pesanan, itu sbuah penipuan. Saya kemaren pesan permadani/karpet tapi yang datang sandal jepit , ', NULL, 1),
(474, '2020-03-28 00:00:00', 'playstore', 'Untuk lazada mohon penjelasan nya,. Kemaren saya beli produk pakean dan si toko menunda krena barang habis, dan di tunda sampai hari yg di tentukan, sampai hari H yg di tentukan barang belom juga di sediakan, ehh malah dana saya di kembalikan dengan bentu', NULL, 1),
(475, '2020-04-02 00:00:00', 'playstore', 'Licik sekali lazada ini. Saya belanja namun di kembalikan. Lalu danaku masuk ke voucer refound. Mau di cairkan sistemnya lelet wrod teruz. Telpon cs sudah ke 4 kali sampai sekarang blom maauk duitku. Padahal aq butuh duitnya. Pokoknya klo duit saya gak di', NULL, 1),
(476, '2020-04-08 00:00:00', 'playstore', 'Sangat berterima kasih untuk aplikasi LAZADA, disaat sudah menunggu nunggu pesanan datang sesuai tanggal malah pesanan saya DIBATALKAN!! Layanan live chat dibalas BOT, maunya apa ? UNTUK PERTAMA DAN TERAKHIR SAYA MELAKUKAN PESANAN DI LAZADA, TERIMA KASIH ', NULL, 1),
(477, '2020-04-08 00:00:00', 'playstore', 'Saya menyesal download aplikasi lazada karena uang pengembalian dana saya tidak masuk ke rekening saya apakah seribet ini ya aplikasi lazada mengembalikan dana saya kan juga bukan salah saya dana itu di kembalikan. Kalau memang tidak bisa mengembalikan ua', NULL, 1),
(478, '2020-04-09 00:00:00', 'playstore', 'Saya belanja online di lazada dari pertama Kali sampai sekarang..alhamdulillah Tidak mengecewakan..kiriman,barang nya,kurirnya ramah,lancar,sesuai..terima kasih lazada semoga sukses berkah semuanya.. Aamiin Yaa Alloh..', NULL, 1),
(479, '2020-03-25 00:00:00', 'playstore', 'Aneh ini aplikasi. Saya sudah memesan barang dan sudah saya bayar tapi dibatalkan dengan alasan gak jelas. Sampe sekarang uang saya belum kembali. Di aplikasi tertera dana sudah dikembalikan ke rekening anda. Saat saya cek belum masuk ke rekening saya. To', NULL, 1),
(480, '2020-03-28 00:00:00', 'playstore', 'Sengaja kasih bintang satu, biar langsung di perhatiin, ini kenapa ya Update terbaru langsung blank, semua pesanan yg terkirim tidak ada di daftar terkirim. Kaya blank gtu, biasanya ada keterangan saya belanja sampe 5 seller ga ada satu pun keterangannya,', NULL, 1),
(481, '2020-04-01 00:00:00', 'playstore', 'aplikasi kalian ini aku anggap sampahh,, yg di iklan beda dgn yg asli,, td semua barang yg ak pesan udah sampai,,ada 4pcs.. tp 2pcs nya itu sangat jauh dari yg kubayangkan,,dan yg kuharapkan.???? penipu kalian,,taikkk???? cukup ini pertama dan terakhir ak', NULL, 1),
(482, '2020-04-05 00:00:00', 'playstore', 'mau jualan disini ribetnya minta ampun, pertanyaannya ribet bngt terlalu detail untuk hal yg gak penting. nunggu verifikasinya lama. pengunjung atau pemakai app yg aktifnya nya sedikit lagi. gak kaya competitornya Sh*** to*** dll simple, tampilanya oke si', NULL, 1),
(483, '2020-04-06 00:00:00', 'playstore', 'Kenapa setiap pembelian barang,, selalu double ketika jaringan jelek,, dan kita udh proses terakhir,, koneksi gagal,, truss konek lagi tiba2 barang jadi 2 dan itu udh deal,, sementara seller gak bisa di chat,, tolong dong kerja samanya', NULL, 1),
(484, '2020-04-05 00:00:00', 'playstore', 'Maaf saya suka dgn lazada.tapi saya benci dan sakit hati sama penjual nya..5 barang yg saya pesen smuanya ga ssuai dan barang rongsokan.saya blanja lbh dari 40 kali dan yg bener cuma ada beberapa saja.dari pihak lazada mohon dong gmna caranya agar penjual', NULL, 1),
(485, '2020-04-07 00:00:00', 'playstore', 'Pesanan nya sangat lama , 4 sampai 5 hari baru di kirim , saya juga pesan kan karna ada orang lagi yang pesan ke saya , jadi lama dan kebanyakan di batalin dengn pelanggan saya , saya mohon dong percepat pengiriman nya????', NULL, 1),
(486, '2020-04-09 00:00:00', 'playstore', 'Parahhhhh. Baru kali ini belanja di lazada uda kecewa. Masa pesan barang dari 29 Maret sampe skrg 9 April status masih packing. Chat seller katanya antri. Yg betul aja masa sampe 2 minggu blm juga di prosess. Nyesellllllll', NULL, 1),
(487, '2020-03-27 00:00:00', 'playstore', 'Pertama kali belanja di lazada. Order malam. Waktu tf 24 jam. Sore hari sudah sy tf. Habis di tf langsung masuk notif pengembalian dana karna produk habis. Kl di shopee g ada macam gtu ???????. Kl memang habis. Harusnya ketika habis langsung notif. Bukan ', NULL, 1),
(488, '2020-04-05 00:00:00', 'playstore', 'Saya kira saya saja yang mengalami pembatalan pesanan dan uang dikembalikan dalam bentuk voucher. Halo, kita gak butuh voucher, kalau memang dibatalkan uangnya dikembalikan dalam bentuk rupiah dong, kami tidak butuh voucher. Waktu melihat komentar orang j', NULL, 1),
(489, '2020-04-09 00:00:00', 'playstore', 'Kecewa...harusnya ada call centre 2x24 jam ketika ada penipuan bisa dibantu...banyak jebakan harga dan di dalamnya banyak mafia saya mengalami hal itu alhamdulilah bisa digagalkan...uang saya...minta otp lah alasanya kode barang alasanya dapat ces beklah ', NULL, 1),
(490, '2020-04-07 00:00:00', 'playstore', 'Sebener nya aku suka aplikasi nya tapi.. Yg bikin aku suka ragu,,klo pesan takut ga sesuai yg d foto,, soal nya bnyak yg komen nya jlek\"\"pesanan ga sesuai dengan gmbar tolong dong.klo kita pesan.harus sesuai jngan mengecewakan Brang udah abis tapi d kirim', NULL, 1),
(491, '2020-04-03 00:00:00', 'playstore', 'Tolong direspon yang benar dong CS dichatnya. Minta perubahan status di akun saya segala pembayaran dan review barang masih seperti itu 2 bulan lebih. Sama pembayaran transfer BNI dan bank lainnya. Dulu ga ada masalah sekarang tiap kali pake itu keluar se', NULL, 1),
(492, '2020-04-09 00:00:00', 'playstore', 'Halo lazada.. Knp skrg sulit sekali unt dpt voucher gratis ongkir? Pdhal dl gampang sekali dan bisa bolak balik klaim voucher.. Skrg hanya sekali kesempatan dan itupun sering sekali ga dpt..pdhal aq sering belanja di lazada.. Dan selalu memanfaatkan vouch', NULL, 1),
(493, '2020-04-03 00:00:00', 'playstore', 'stok barang tidak ada, iklan penjual masih tayang, buang waktu dan tenaga konsumen, dan pengembalian uang anda ribetnya bukan main, bayak notifikasi yang membingungkan, uang anda ditahan dan dipaksa dalam lazada credit dan voucher, kalo tidak mau, tunggu ', NULL, 1),
(494, '2020-03-29 00:00:00', 'playstore', 'Sedikit curhat ,kecewa banget sm lazada. Saya belanja flash sale 120rb lalu saya langsung bayar ke alfa namun alfa gangguan dan pembayaran tidak bisa di ganti ke yg lain/ harus pembatalan pesanan dlu baru bisa ganti. Sore saya bayar, dan ternyata ada noti', NULL, 1),
(495, '2020-04-08 00:00:00', 'playstore', 'Tidak bisa buat top up voucher game ML, PUBG, COD, Free Fire dan game lainnya... Padahal saya sering belanja disini... Baru pertama kali saya kecewa karena toko online tidak bisa buat top up voucher game... Tolong diperbaiki jika ingin bintang nya tambah.', NULL, 1),
(496, '2020-04-08 00:00:00', 'playstore', 'Pembelian saya sudah 3 kali canceled tanpa alasan yg jelas, uang dikembalikan berupa voucher tetapi aneh nya ongkir dan bea masuk tidak dikembalikan jadi tetap dipotong dari voucher saya, padahal barang tidak jadi diimpor tapi ada bea masuk, barang tidak ', NULL, 1),
(497, '2019-01-01 11:24:10', 'twitter', 'Hi Kak, mohon kamu pastikan kamu memilih toko yang berlogo truck hijau ya. Selengkapnya ketentuan Gratis Ongkir kamu dapat melihat di link berikut:', NULL, 1),
(498, '2019-01-01 19:56:50', 'twitter', 'Hai Kak, pastikan kamu sudah mengikuti syarat dan ketentuan yang berlaku ya kak :) ^RM', NULL, 1),
(499, '2019-01-01 11:56:28', 'twitter', 'aku liatnya disini. apakah shopee php?', NULL, 1),
(500, '2019-01-01 09:00:00', 'twitter', 'Pagi Gans! Jangan lupa produk Hooligans ada juga di Belanja sekarang dan dapatkan diskonnya gans!', NULL, 1),
(501, '2019-01-01 15:40:50', 'twitter', 'Sama-sama ya kak. :)^RS', NULL, 1),
(502, '2019-01-01 13:20:25', 'twitter', 'Kecewa sama', NULL, 1),
(503, '2019-01-01 13:13:00', 'twitter', 'Mau tanya dong, kok paket saya nyasar ke Halim segala sih? Tujuan matraman tapi kok jalan lagi ke halim', NULL, 1),
(504, '2019-01-01 08:46:08', 'twitter', 'Pagi min, kenapa mau buka goyang shopee gk bisa ya? Padahal ada jadwal goyang jam 9.00 tapi ini jam 8.44 kkok blm bisa d buka?', NULL, 1),
(505, '2019-01-01 13:05:09', 'twitter', 'Kalian ngerayain libur tahun baru kemana nih? Jangan sampai lupa untuk vote kontestan favorit kamu di Shopee ya! Buruan download Shopee dan vote agar kontestan favoritmu jadi Juara Favorit Shopee! Menangkan ratusan juta rupiah!', NULL, 1),
(506, '2019-01-01 18:07:56', 'twitter', 'Hai Kak, kami memahami kendala yang kamu alami ya. Mohon memastikan nomor yang kamu terdaftar di Shopee aktif yaa dan dalam kondisi sinyal baik sehingga dapat menerima SMS OTP dari sistem Shopee ya kak. Semoga membantu, untuk detail dapat menghubungi mela', NULL, 1),
(507, '2019-01-01 17:53:01', 'twitter', 'Hai Kak, mohon maaf atas ketidaknyamanannya. terkait kendala kamu pada Gojek mohon informasikan : - Kapan waktu pick up barang ( tanggal & jam ) - Email aktif kamu Lalu kirimnkan bukti screenshot kendala OTP kamu ya melalui DM. Kami tunggu. Terima kasih. ', NULL, 1),
(508, '2019-01-01 17:27:02', 'twitter', 'Paket Buku EDISI TANDA TANGAN 2 buku Rp 115rb Pemesanan via >>', NULL, 1),
(509, '2019-01-01 16:06:56', 'twitter', 'Hi Kak, jika terdapat kendala silakan hubungi kami melalui DM ya. Terima kasih.^ES', NULL, 1),
(510, '2019-01-01 09:40:48', 'twitter', 'udah lebih dari setengah jam, masih gini terus? -__-', NULL, 1),
(511, '2019-01-01 14:55:11', 'twitter', 'Hai Kak, mohon maaf atas ketidaknyamanannya. Jika kamu memiliki kendala terkait Shopee mohon kesediaan kamu untuk menginformasikannya melalui DM ya kak. Dengan senang hati kami akan membantu kamu. :) ^MI', NULL, 1),
(512, '2019-01-01 20:18:20', 'twitter', 'Hi Kak, kami memahami kendala kamu. Untuk menjaga privasi kamu dan pengecekan lebih lanjut mohon informasikan bukti tangkapan layar kendala kamu melalui DM kami ya kak, kami tunggu :) ^HS', NULL, 1),
(513, '2019-01-01 12:44:58', 'twitter', 'Kamu dapat mengikuti sesi Goyang Shopee pada hari ini jam 14.00 ya Kak, Jangan sampai ketinggalan. :) ^MY', NULL, 1),
(514, '2019-01-02 01:12:26', 'twitter', 'Hi Kak, kami sarankan kamu untuk mengaktifkan ShopeePay dan rekening Bank kamu terlebih dahulu ya kak. :) ^IR', NULL, 1),
(515, '2019-01-01 21:22:20', 'twitter', 'Hai Kak, kami memahami kendala yang kamu alami. Kami sarankan agar kamu melakukan clear cache kamu log out dan log in kembali, pastikan kamu menggunakan sinyal yang stabil dan sudah mengupdate aplikasi Shopee kamu ke versi yang terbaru ya kak. Mohon dilak', NULL, 1),
(516, '2019-01-01 16:52:35', 'twitter', 'Hi Kak, mohon maaf atas ketidaknyamanannya, kami sarankan kamu melakukan clear cache pada aplikasi ya kak lalu log out dan log in kembali, pastikan jaringan kamu dalam keadaan stabil dan aplikasi sudah terupdate ke versi terbaru, terima kasih :) ^IL', NULL, 1),
(517, '2019-01-03 17:18:30', 'twitter', 'Hai, Sobat Shopee! Pasti udah nunggu-nunggu kan kisi-kisi ? Catat ya.. ini kisi-kisinya: Jam 21.00 WIB - Film Catatan (Harian) Si Boy Retweet tweet ini buat kamu yang udah gak sabar nunggu Kuis Shopee!', NULL, 1),
(518, '2019-01-03 19:43:25', 'twitter', 'Pemecah telur tahun ini........ By: Alhamdullillah @ Senggigi', NULL, 1),
(519, '2019-01-04 06:01:35', 'twitter', 'Yuk gabung grup Goyang Shopee aku, Bonus koin hingga 100% dengan main bersama grup!', NULL, 1),
(520, '2019-01-03 14:22:34', 'twitter', 'Serunya belanja online di SPG nya cewek2 korea.. Udah gitu nggak ada tukang parkir yang tiba-tiba muncul..', NULL, 1),
(521, '2019-01-03 13:55:35', 'twitter', 'Hai Kak , terima kasih telah menghubungi Shopee. Kamu tidak perlu khawatir kak, untuk informasi voucher Gratis Ongkir kamu dapat pantau melalui tautan ini ya', NULL, 1),
(522, '2019-01-04 02:22:58', 'twitter', 'Hi Kak, kami memahami kendala yang kamu alami. Mengenai gratis ongkir kamu dapat mengikuti syarat dan ketentuannya dengan klik link berikut ini', NULL, 1),
(523, '2019-01-03 14:05:38', 'twitter', 'ini udah 3 hari statusnya ko ttep gini aja ya .. Kapan nyampenya nih ..pesen dari tanggal 29 loh', NULL, 1),
(524, '2019-01-03 17:53:43', 'twitter', 'Mohon follow up. Sudah hampir sebulan belum sampe', NULL, 1),
(525, '2019-01-03 11:02:59', 'twitter', 'Gak paham akutu apa maksud flash sale ini', NULL, 1),
(526, '2019-01-03 07:47:35', 'twitter', 'Min saya habis topup shopeepay dr kemaren siang kenapa blm masuk sampe sekarang?', NULL, 1),
(527, '2019-01-03 17:47:10', 'twitter', 'Mohon untuk di follow Up Pengiriman tgl 12 Desember 2018. Kapan sampainya?', NULL, 1),
(528, '2019-01-03 17:21:32', 'twitter', 'saldo yang di dompet bisa dibelanjain otomatis gak sih??', NULL, 1),
(529, '2019-01-03 12:33:17', 'twitter', 'i\'d gladly use shopee pay if it\'s not creepy af. nyetor poto ktp aja uda rawan disalahgunakan sebenernya... nama ibu kandung??? seriously ???', NULL, 1),
(530, '2019-01-03 16:18:47', 'twitter', 'Min, kok saya beli paket data 3 gak sampe sampe siiihhh', NULL, 1),
(531, '2019-01-03 22:02:46', 'twitter', 'Kenapasih aplikasi shopee lemot bgt kesel tau ga?!', NULL, 1),
(532, '2019-01-03 18:41:21', 'twitter', 'Terima kasih Kak, Sukses selalu juga ya kak. :) ^OV', NULL, 1),
(533, '2019-01-03 14:37:25', 'twitter', 'Hai Kak, kami infokan untuk informasi tersebut tidak benar ya kak. Kami mohon kamu tidak bertransaksi di link yang diinfokan. Kami sarankan kedepannya kamu lebih berhati-hati untuk segala bentuk penipuan yang mengatasnamakan Shopee ^RN', NULL, 1),
(534, '2019-01-04 03:13:51', 'twitter', 'Hi Kak, terima kasih telah setia menggunakan Shopee. :) ^IF', NULL, 1),
(535, '2019-01-04 02:39:27', 'twitter', 'Hi Kak, ada yang bisa dibantu terkait dengan Shopee? :) ^IF', NULL, 1),
(536, '2019-01-03 18:30:43', 'twitter', 'saya tidak bisa mengikuti kuis shopee. Selalu muncul tulisan tersebut dan keluar lagi. Padahal saya sudah update aplikasi dan sudah pake wifi', NULL, 1),
(537, '2019-01-01 11:24:10', 'twitter', 'Hi Kak, mohon kamu pastikan kamu memilih toko yang berlogo truck hijau ya. Selengkapnya ketentuan Gratis Ongkir kamu dapat melihat di link berikut:', NULL, 1),
(538, '2019-01-01 19:56:50', 'twitter', 'Hai Kak, pastikan kamu sudah mengikuti syarat dan ketentuan yang berlaku ya kak :) ^RM', NULL, 1),
(539, '2019-01-01 11:56:28', 'twitter', 'aku liatnya disini. apakah shopee php?', NULL, 1),
(540, '2019-01-01 09:00:00', 'twitter', 'Pagi Gans! Jangan lupa produk Hooligans ada juga di Belanja sekarang dan dapatkan diskonnya gans!', NULL, 1),
(541, '2019-01-01 15:40:50', 'twitter', 'Sama-sama ya kak. :)^RS', NULL, 1),
(542, '2019-01-01 13:20:25', 'twitter', 'Kecewa sama', NULL, 1),
(543, '2019-01-01 13:13:00', 'twitter', 'Mau tanya dong, kok paket saya nyasar ke Halim segala sih? Tujuan matraman tapi kok jalan lagi ke halim', NULL, 1),
(544, '2019-01-01 08:46:08', 'twitter', 'Pagi min, kenapa mau buka goyang shopee gk bisa ya? Padahal ada jadwal goyang jam 9.00 tapi ini jam 8.44 kkok blm bisa d buka?', NULL, 1),
(545, '2019-01-01 13:05:09', 'twitter', 'Kalian ngerayain libur tahun baru kemana nih? Jangan sampai lupa untuk vote kontestan favorit kamu di Shopee ya! Buruan download Shopee dan vote agar kontestan favoritmu jadi Juara Favorit Shopee! Menangkan ratusan juta rupiah!', NULL, 1),
(546, '2019-01-01 18:07:56', 'twitter', 'Hai Kak, kami memahami kendala yang kamu alami ya. Mohon memastikan nomor yang kamu terdaftar di Shopee aktif yaa dan dalam kondisi sinyal baik sehingga dapat menerima SMS OTP dari sistem Shopee ya kak. Semoga membantu, untuk detail dapat menghubungi mela', NULL, 1),
(547, '2019-01-01 17:53:01', 'twitter', 'Hai Kak, mohon maaf atas ketidaknyamanannya. terkait kendala kamu pada Gojek mohon informasikan : - Kapan waktu pick up barang ( tanggal & jam ) - Email aktif kamu Lalu kirimnkan bukti screenshot kendala OTP kamu ya melalui DM. Kami tunggu. Terima kasih. ', NULL, 1),
(548, '2019-01-01 17:27:02', 'twitter', 'Paket Buku EDISI TANDA TANGAN 2 buku Rp 115rb Pemesanan via >>', NULL, 1),
(549, '2019-01-01 16:06:56', 'twitter', 'Hi Kak, jika terdapat kendala silakan hubungi kami melalui DM ya. Terima kasih.^ES', NULL, 1),
(550, '2019-01-01 09:40:48', 'twitter', 'udah lebih dari setengah jam, masih gini terus? -__-', NULL, 1),
(551, '2019-01-01 14:55:11', 'twitter', 'Hai Kak, mohon maaf atas ketidaknyamanannya. Jika kamu memiliki kendala terkait Shopee mohon kesediaan kamu untuk menginformasikannya melalui DM ya kak. Dengan senang hati kami akan membantu kamu. :) ^MI', NULL, 1),
(552, '2019-01-01 20:18:20', 'twitter', 'Hi Kak, kami memahami kendala kamu. Untuk menjaga privasi kamu dan pengecekan lebih lanjut mohon informasikan bukti tangkapan layar kendala kamu melalui DM kami ya kak, kami tunggu :) ^HS', NULL, 1),
(553, '2019-01-01 12:44:58', 'twitter', 'Kamu dapat mengikuti sesi Goyang Shopee pada hari ini jam 14.00 ya Kak, Jangan sampai ketinggalan. :) ^MY', NULL, 1),
(554, '2019-01-02 01:12:26', 'twitter', 'Hi Kak, kami sarankan kamu untuk mengaktifkan ShopeePay dan rekening Bank kamu terlebih dahulu ya kak. :) ^IR', NULL, 1),
(555, '2019-01-01 21:22:20', 'twitter', 'Hai Kak, kami memahami kendala yang kamu alami. Kami sarankan agar kamu melakukan clear cache kamu log out dan log in kembali, pastikan kamu menggunakan sinyal yang stabil dan sudah mengupdate aplikasi Shopee kamu ke versi yang terbaru ya kak. Mohon dilak', NULL, 1),
(556, '2019-01-01 16:52:35', 'twitter', 'Hi Kak, mohon maaf atas ketidaknyamanannya, kami sarankan kamu melakukan clear cache pada aplikasi ya kak lalu log out dan log in kembali, pastikan jaringan kamu dalam keadaan stabil dan aplikasi sudah terupdate ke versi terbaru, terima kasih :) ^IL', NULL, 1),
(557, '2019-01-03 17:18:30', 'twitter', 'Hai, Sobat Shopee! Pasti udah nunggu-nunggu kan kisi-kisi ? Catat ya.. ini kisi-kisinya: Jam 21.00 WIB - Film Catatan (Harian) Si Boy Retweet tweet ini buat kamu yang udah gak sabar nunggu Kuis Shopee!', NULL, 1),
(558, '2019-01-03 19:43:25', 'twitter', 'Pemecah telur tahun ini........ By: Alhamdullillah @ Senggigi', NULL, 1),
(559, '2019-01-04 06:01:35', 'twitter', 'Yuk gabung grup Goyang Shopee aku, Bonus koin hingga 100% dengan main bersama grup!', NULL, 1),
(560, '2019-01-03 14:22:34', 'twitter', 'Serunya belanja online di SPG nya cewek2 korea.. Udah gitu nggak ada tukang parkir yang tiba-tiba muncul..', NULL, 1),
(561, '2019-01-03 13:55:35', 'twitter', 'Hai Kak , terima kasih telah menghubungi Shopee. Kamu tidak perlu khawatir kak, untuk informasi voucher Gratis Ongkir kamu dapat pantau melalui tautan ini ya', NULL, 1),
(562, '2019-01-04 02:22:58', 'twitter', 'Hi Kak, kami memahami kendala yang kamu alami. Mengenai gratis ongkir kamu dapat mengikuti syarat dan ketentuannya dengan klik link berikut ini', NULL, 1),
(563, '2019-01-03 14:05:38', 'twitter', 'ini udah 3 hari statusnya ko ttep gini aja ya .. Kapan nyampenya nih ..pesen dari tanggal 29 loh', NULL, 1),
(564, '2019-01-03 17:53:43', 'twitter', 'Mohon follow up. Sudah hampir sebulan belum sampe', NULL, 1),
(565, '2019-01-03 11:02:59', 'twitter', 'Gak paham akutu apa maksud flash sale ini', NULL, 1),
(566, '2019-01-03 07:47:35', 'twitter', 'Min saya habis topup shopeepay dr kemaren siang kenapa blm masuk sampe sekarang?', NULL, 1),
(567, '2019-01-03 17:47:10', 'twitter', 'Mohon untuk di follow Up Pengiriman tgl 12 Desember 2018. Kapan sampainya?', NULL, 1),
(568, '2019-01-03 17:21:32', 'twitter', 'saldo yang di dompet bisa dibelanjain otomatis gak sih??', NULL, 1),
(569, '2019-01-03 12:33:17', 'twitter', 'i\'d gladly use shopee pay if it\'s not creepy af. nyetor poto ktp aja uda rawan disalahgunakan sebenernya... nama ibu kandung??? seriously ???', NULL, 1),
(570, '2019-01-03 16:18:47', 'twitter', 'Min, kok saya beli paket data 3 gak sampe sampe siiihhh', NULL, 1),
(571, '2019-01-03 22:02:46', 'twitter', 'Kenapasih aplikasi shopee lemot bgt kesel tau ga?!', NULL, 1),
(572, '2019-01-03 18:41:21', 'twitter', 'Terima kasih Kak, Sukses selalu juga ya kak. :) ^OV', NULL, 1),
(573, '2019-01-03 14:37:25', 'twitter', 'Hai Kak, kami infokan untuk informasi tersebut tidak benar ya kak. Kami mohon kamu tidak bertransaksi di link yang diinfokan. Kami sarankan kedepannya kamu lebih berhati-hati untuk segala bentuk penipuan yang mengatasnamakan Shopee ^RN', NULL, 1),
(574, '2019-01-04 03:13:51', 'twitter', 'Hi Kak, terima kasih telah setia menggunakan Shopee. :) ^IF', NULL, 1),
(575, '2019-01-04 02:39:27', 'twitter', 'Hi Kak, ada yang bisa dibantu terkait dengan Shopee? :) ^IF', NULL, 1),
(576, '2019-01-03 18:30:43', 'twitter', 'saya tidak bisa mengikuti kuis shopee. Selalu muncul tulisan tersebut dan keluar lagi. Padahal saya sudah update aplikasi dan sudah pake wifi', NULL, 1),
(577, '2020-05-08 12:38:41', 'website', 'Bagus banget liplienya, stain setelah dibuat makan. Gak gampang hilang. Btw swatchnya yg paling atas yaa teman-teman. Huhuhu murah bgt beli psket combo ini jadi 25.900 berapa gitu lupaaa????', NULL, 1),
(578, '2020-05-06 17:06:12', 'website', 'Warnanya cangtip bgt!!!!!???????? mana dapet diskon lg paket 114 rb, lipsticknya cuma 25ribuan aja! Wanginya juga enak bangettt', NULL, 1),
(579, '2020-05-08 11:01:00', 'website', 'Alhamdulillah .. paket.y sampai .. packing rapi dan pengiriman juga cepet .. barang.y sesuaii pesanan dapet harga murah donk buat lipstik.y .. love bgt lah ????????????', NULL, 1),
(580, '2020-05-08 16:43:23', 'website', 'Niat awal cuma mau beli sabun muka aja . Ngeliat ada kombo hemat gw kira shopee ngeprank nih . Sampe nanya 3 kali ke cs eh gataunya beneran dong huhuu. Thx banget diskonnya ya loreal . 22 nya beneran wishlist gw ini sumpah .????????????', NULL, 1),
(581, '2020-05-09 05:44:55', 'website', 'Paket comboo yeayyyy essence nya bagus ccok di aku lipsticknyaaaaabagusss bingitttpen nangisss sama facial wash nya udh lama pake tooppppp pokonyaaa loreal sering2 adain promo ama vocher biar semangat blanjanya hihihi', NULL, 1),
(582, '2020-05-06 14:44:25', 'website', 'Teman suami nya kena phk krn covid, anaknya 3 kecil2, dgn segala keberanian dia ambil tabungan nya yg tdk seberapa unt membeli 1 set mesin jahit listrik dan mulai memproduksi masker kain. Pesanan pun berdaatangan....', NULL, 1),
(583, '2020-05-09 08:20:41', 'website', 'Packing cepat dan rapi\nSeneng banget dapet les macarons harga 25rb deng \nbeli facial foam ????????????\nWarnanya bagus kok, agak gonjreng dikit tapi texturenya juaraaaa\nMakasih loreaaal\nSering2 diskon yaa buat lipstiknyaaaa', NULL, 1),
(584, '2020-05-16 13:37:39', 'website', 'Kualitas produk sangat baik. Produk original. Harga produk sangat baik. Kecepatan pengiriman sangat baik. Respon penjual sangat baik', NULL, 1),
(585, '2020-05-14 08:02:21', 'website', 'yeayyy terima kasih banyak seller, semoga barokah. harga terjangkau. barang kondisi bagus, tidak ada cacat, pengiriman lumayan. aku doakan semoga tokonya laris hehehehehehe. many thanks.', NULL, 1),
(586, '2020-05-06 18:12:28', 'website', 'Walaupun ada yg wrnnya mentereng bgt tp kl diskon gini mah ganolak! ?????? Kapan lagi 50rb dpt 3 lipcream loreal. Thankyouuu ????', NULL, 1),
(587, '2020-05-07 07:48:30', 'website', 'Dapet ini harga murah krn paket kombo.. Belom dicoba si.. Tapi Moga2 sesuai harapan yaaaa...packing bagus pake buble sama kardus, pengiriman agak lama.. Biasanya cepet.. Thanks loreal', NULL, 1),
(588, '2020-05-07 15:36:30', 'website', 'Di foto ini swatch nya yang paling atasm cantik banget warnanya brownish pink gitu. Transferproof juga. Pengiriman aman, bubble wrap tebal. Makasih seller, sukses selalu buat loreal', NULL, 1),
(589, '2020-05-11 16:24:11', 'website', 'Bagusss bangeettt, dapat ini seharga 25k/pcs ???????????? Pengiriman agak lama but its okay barangnya aman pas smpe', NULL, 1),
(590, '2020-05-10 18:30:07', 'website', 'Sering diskon ya...bagus banget produknya\nSering diskon ya...bagus banget produknya\nSering diskon ya...bagus banget produknya\nSering diskon ya...bagus banget produknya\nSering diskon ya...bagus banget produknya\nSering diskon ya...bagus banget produknya\nSer', NULL, 1),
(591, '2020-05-10 09:40:39', 'website', 'Kualitas produk baik, pengiriman cepat, packing rapih dan aman, harga terjangkau bgt karna dpt pas paket kombo hihiii shade nya bagus euyyyyyy', NULL, 1),
(592, '2020-05-10 16:48:52', 'website', 'Thanks kak barang udah sampek. dikirim sesuai pesanan. Pengiriman tumben sedikit lama, tp gppa yg penting barang udah sampek. Lipstick nya murah banget ???? cuman 25rb aja. udah aku coba baguss banget warna nya cocok di bibir ku ????', NULL, 1),
(593, '2020-05-10 07:17:51', 'website', 'Pengemasan cepat dan rapi disertai bubble wrap dan kardus, pesanan sesuai dengan invoice, harga kombo yg sangat murah terimakasih seller', NULL, 1),
(594, '2020-04-29 15:51:08', 'website', 'Ternyata packagingnya kecil.... Pas di dompet , warnanya bagus banget...  Tks', NULL, 1),
(595, '2020-05-06 16:39:28', 'website', 'Warna ini soft tp cerah jd kita keliatabln segar. Tahqn lama tapi tetap lembab.. produk berkualitas. Terima kasih Loreal dan shoppe', NULL, 1),
(596, '2020-05-11 12:15:15', 'website', 'Bener bener hemat kombo hematnya, sering sering begini ya loreal, pengiriman agak lama yaa karena ada corona tp gapapa yg penting kualitas barang memuaskan', NULL, 1),
(597, '2020-04-13 00:00:00', 'playstore', '(untuk kesekian kalinya) Pesanan dikembalikan (cancel), padahal nunggu stocknya aja udah seharian ???????. kalau memang stock produk kosong harusnya nextday gak muncul di sistem, tp ini hari berikutnya ada (itu jg cepet banget habis), giliran check out ke', NULL, 5),
(598, '2020-04-10 00:00:00', 'playstore', 'Maaf, entah ini hanya akun saya atau terjadi juga dg akun yg lain. Sering kali akun saya bermasalah dan mengharuskan instal ulang. Hari ini yg plng sedih, ndak bisa mindah saldo ke bukadana. Kode verifikasi yg dikirim dibilang tdk tepat. Sdh d coba berula', NULL, 5),
(599, '2020-04-13 00:00:00', 'playstore', 'Waktu Transaksi Saya Tekan \"Bayar\" gak bisa, masih dalam menu pembayatan, Saya Tekan \"Bayar\" masuk dalam menu Proses. Tapi setelah saya Cek Terjadi 2X pembayaran. MOHON PERBAIKANNYA AGAR TIDAK TERJADI TRANSAKSI DOBEL SEPERTI INI. BERILAH JEDA WAKTU JIKA M', NULL, 5),
(600, '2020-04-13 00:00:00', 'playstore', 'Sebenernya aplikasi bagus harga murah ...tapi tolong dong saya pedagang pulsa kecil isi saldo 100rb via mobile banking tapi gak masuk..udah chat ke customer servis tapi sampai kapan ...belom jelas kapan masuknya....tolong dibantu dong baru kali ini gak ma', NULL, 5),
(601, '2020-04-11 00:00:00', 'playstore', 'Seharusnya tiap transaksi menggunakan password pengguna biar lebih aman..jadi jika hp hilang tidak bisa digunakan sembarang orang...hingga saldo tetep utuh sampe yg punya akun memiliki no yg sama lagi...please tingkatkan keamanan..jaga saldo konsumenmu da', NULL, 5),
(602, '2020-04-13 00:00:00', 'playstore', 'Mohon untuk di perbaiki pada paket data Telkomsel. Tidak jelas pada keterangan paketnya. Serta ada menu bagikan poster jualan, kok tidak bisa di download ataupun di bagikan. Terimakasih, sementara itu saja semoga tidak ada masalah lagi', NULL, 5),
(603, '2020-04-14 00:00:00', 'playstore', 'Kalo ngisi pulsa malem pasti gagal, sampe malu terus sama orang, ga tau udh 3x kecewa tapi klo siang lancar aja, ga usah kebanyakan promo micin ini itu lah ga guna juga user udh pada tau permainan semacam ini, yg penting ongkir diskon setengah harga tiap ', NULL, 5),
(604, '2020-04-12 00:00:00', 'playstore', 'Min, kalau transaksi pulsa yang terlalu lama \'sukses\'-nya, kenapa gak bisa dibatalkan? Pelanggan yg udah bosan nunggu akhirnya membatalkan pembelian. Saya udah ajukan pembatalan tapi gak ditanggapi. Lalu setelah beberapa jam rupanya transaksi berhasil. Sa', NULL, 5),
(605, '2020-04-13 00:00:00', 'playstore', 'Engga bisa transaksi gara* akun dana engga. Bisa di putusin.. Mutusin nya sangat ribet dan berputar putar di situ doang tekan tombol mutusin malah di arahkan ke buka bantuan pas di buka bantuan cuman di ksi tutor buat mutusin dan ujung ujungnya ke buka ba', NULL, 5),
(606, '2020-04-01 00:00:00', 'playstore', 'Kacau apk mitra bukalapak makin kesini makin parah Saya belum mencapai limit harian saya sudah gak bisa transaksi.. Mohon di perbaiki ya boss Kalo kaya gini terus bisa pinda mitra Mohon maaf kalo kata kata saya terlalu frontal, demi kebaikan apk dan pengg', NULL, 5),
(607, '2020-03-22 00:00:00', 'playstore', '2 kali order barang.. Orderan pertama barang kurang 1 item! Orderan ke2, transaksi sukses tapi TIDAK ADA SATUPUN BARANG YG SAMPAI!!! DI KOMPLEN RESPON SAMA SEKALI TIDAK MANFAAT DAN TIDAK NYAMBUNG!!!!!!!! SAYA PENGGUNA BARU, DAN LANGSUNG AMAT SANGAT KECEWA', NULL, 5),
(608, '2020-04-12 00:00:00', 'playstore', 'Sy ada kendala lagi. Saya buka plikasi nya ga bisa. Pdhl nomer yg saya masukkan sudah benar. Dan pasword juga benar. Ini ada apa ya,? Saya nau byr cicilan tidak bisa. Terakhir tgl 24 april.', NULL, 5),
(609, '2020-04-12 00:00:00', 'playstore', 'Promo grosir nya udah ok..cuma promo nya tidak langsung masuk ke saldo.. banyak promo yg saya dapat hangus..kalo bisa kalo ada promo.. langsung di potong di harga nya atau langsung masuk ke saldonya..tks', NULL, 5),
(610, '2020-04-02 00:00:00', 'playstore', 'Aplikasinya keren, usulan klo bisa untuk produk virtual khususnya di pulsa telkomsel dikasih lengkap nominal pulsa yg bisa dijual misalnya pulsa 35, 40, 45, 55, dst.. Terimakasih dan sukses selalu..', NULL, 5),
(611, '2020-03-23 00:00:00', 'playstore', 'Aplikasi maling saldo mitra. Hati2 yang mau pake. Dengan alasan ada potongan, di arahkan belanja dengan saldo mitra. Tapi modusnya barang dikirim sebagian, dgn alasan kosong. Katanya saldo akan dikembalikan maksimal 2 hari. Faktanya udh 2 minggu saldo ga ', NULL, 5),
(612, '2020-04-01 00:00:00', 'playstore', 'Sya terpaksa kasih bintang 1... Sudah2 berkali2 saya komplain masalah transaksi pengiriman uang saya... bahkan sudah 2 hari belum juga sukses. Tetapi Cs nya cuma bilang akan diperiksa transaksi terkait.. itu2 saja jawabanya.. smpai sekarang uang itu belum', NULL, 5),
(613, '2020-04-03 00:00:00', 'playstore', 'Pas belanja, dan sdh mesan. Pas dtg barang bnyak gk ada. Tp pas mesen gak di ksh tau dulu. Barang apa yg ready dan gknya. Jdi saya sdh berharap semua barang ada. Nyatanya gak. Semoga ada perubahan sistem buat mitra bukalapak ini', NULL, 5),
(614, '2020-04-10 00:00:00', 'playstore', 'Saya kecewa sama aplikasi ini .. Kalau server nya agak lama mutar pasti pulsa konsumen bisa 2 kali isi .. Itu udah lebih dari 3 kali kejadian dengan saya .. ya rugi dong kalau terus²an seperti ini ..', NULL, 5),
(615, '2020-04-09 00:00:00', 'playstore', 'mohon di perbaiki...saya sering kecewa tapi saya tetap setia pakai ni aplikasi.. saya sudah sering rugi..isi pulsa 10 rebu di aplikasi sukses tapi di hpnya gak masuk,trus isi paket nelpon 25 rebu di apk sukses tapi di hp gk masuk.. ya kan saya rugi..pakai', NULL, 5),
(616, '2020-04-12 00:00:00', 'playstore', '3 tahun pakai aplikasi buka lapak baru hari ini saya rugi iya kena komplain sama pelangan iya , saldo terpotong tapi pulsa gk jugak masuk ,,, klau memang hri ini gk bisa ngirim pulsa beri pemberitahuan lah ,,,,', NULL, 5),
(617, '2020-04-12 00:00:00', 'playstore', 'Aplikasi abal Abal ..terus seperti ini .. Mending di tutup aja ... Setiap dibuka ..aplikasinya Kembali terus ke menu Awal ...sudah di hub CS .. Katanya Siap Membantu ...tapi gak tau sampai Kapan di bantu ...', NULL, 5),
(618, '2020-04-01 00:00:00', 'playstore', 'Kepada mitra Bukalapak ko banyak banget yah gangguan nya sekarang tuh...2hari wayah susah transaksi karna alasan nya batas limit habis...ehh barusan saya di suruh logout kata pihak mitra Bukalapak ehhh pas login susah masuk mending kalo ga ada saldonya ga', NULL, 5),
(619, '2020-04-06 00:00:00', 'playstore', 'sudah lebih dari 3 hari nih... kenapa verifikasi belum ada kejelasannya... acc atau tolak & sudah chat solusinya suruh tunggu sedang diproses... tidak sesuai diapknya (proses verifikasi 1-3 hari kerja)', NULL, 5),
(620, '2020-04-05 00:00:00', 'playstore', 'Diaplikasi ini urutan no pelanggan ga sesuai abjad, jadi agak ribet aja klo nyari no pelanggan. Sama catatan hutang pelanggan awalnya bisa dibuka,skrg ko jadi ga bisa dibuka ya? Cuma itu aja sih,selebihnya terimakasih buka lapak semoga berkah', NULL, 5),
(621, '2020-04-11 00:00:00', 'playstore', 'isi saldo dari tanggal 2 april sampe sekarang gak masuk di chat persyaratannya ribet,padahal ada bukti mutasinya diminta suruh ini dan itu. gk lagi deh pake mitra bukalapak,duit saya hilang.. aturan bisa buat yg lain ini malah hilang gk jelas. . verifikas', NULL, 5),
(622, '2020-04-04 00:00:00', 'playstore', 'Dua bintang dulu hingga akun saya bisa terverifikasi... Saya sudah daftar mitra bukalapak sejak 8 maret 2020 dan hingga saat ini tgl 4 april 2020 belum juga terverifikasi,, di chat via aplikasi tidak bisa. Tolong admin bantu untuk akun saya agar bisa terv', NULL, 5),
(623, '2020-04-08 00:00:00', 'playstore', 'Saya kecewa samaa aplikasi ini . Pesenan saya gak di kirim2 sudah coumplen malah di kirim jam setengah 1 mlm itu pun orang nya gak ke rumah hanya di jalan .dan ngabarin cuma lewat whatsapp dan posisi saya sudah tdr .skrg di chat gak ada jawaban .entah bar', NULL, 5),
(624, '2020-04-08 00:00:00', 'playstore', 'Kasus yg sama ,barang belum diterima tapi keterangan selesai ??? Sudah 4 hari nungguin tapi belum juga datang.isi warung sudah habis, terpaksa beli ditempat lain lagi ?? Maaf ini terakhir kali saya order, kapok kalau seperti ini pelayanan nya . Mohon sece', NULL, 5),
(625, '2020-04-04 00:00:00', 'playstore', 'Kenapa saya tidak bisa login di Aplikasi Mitra Bukalapk, padahal saya sudah memasukkan Nomer Hp dan Password yang benar. Namun selalu muncul tulisan kamu harus login untuk mengakses halaman ini.', NULL, 5),
(626, '2020-04-03 00:00:00', 'playstore', 'Saya lumayan kecewa, karna tdi beberapa kali saya melakukan transaksi pengisian pulsa namun gagal terus, walaupun saldo nya dikembalikan. Tpi ini bisa membuat beberapa pelanggan saya kecewa.. Lalu saya coba menghubungi CS mitra bukalapak tpi dia hanya men', NULL, 5),
(627, '2020-03-19 00:00:00', 'playstore', 'Mantaf, kalo bisa modal yang perlu di keluarkan lebih bersaing dengan aplikasi yang lain, sehingga memberikan pendapatan lebih bagi mitra yang akan berakibat secara masifnya berpindahnya mitra-mitra lain ke mitra bukalapak. Aplikasi dan pelayanan lebih di', NULL, 5),
(628, '2020-04-12 00:00:00', 'playstore', 'Aplikasi tak bagus, isi saldo pertama lancar. Isi saldo ke 2 kalinya tak ada masuk. Menyesal banget sudah pakai Bukalapak. Tak ada penyelesaian. Bukannya bikin untung , Mala buat rugi', NULL, 5),
(629, '2020-03-19 00:00:00', 'playstore', 'Saya Kasih Bintang 5 Karna Saya Berharap Bisa Jadi Pemicu Untuk Pengembang Agar Lebih Meningkatkan Aplikasi Ini. Krn Akhir2 ini Banyak Yang Mengeluh Tentang Transaksi Dan Top Up. meski Saya pribadi Sdh Mengalami Dari Salah Satu nya, Saya Harap Ini Jadi Ba', NULL, 5),
(630, '2020-04-12 00:00:00', 'playstore', 'Tolong dong utk rincian saldo transaksi bisa lebih detail lagi agar mudah croscek.. kmudian bila gagal bayar. supaya bisa di cancel. kmarin saya ngisi pulsa planggan. lama gk masuk2. gk bs di cancel. sdh 1jam lbh baru sukses. sementara planggan sdh beli d', NULL, 5),
(631, '2020-04-07 00:00:00', 'playstore', 'Hatihati sama aplikasi ini ! Isi saldo sdh sukses dari indomaret tapi dari buka lapak di tahan, sudah berulang ulang nnya bantuan respon ny gak ada ! Tolong balikin uang saya, jgn ngakalin !!!', NULL, 5),
(632, '2020-04-09 00:00:00', 'playstore', 'MANTAPPPPPPP...... apalagi sekarang di Bukalapak ada menu transfer antar bank gratis lagi Naya otomatis pindah ke sini sejak ada menu transfer sekaligus gampang banget bikin struknya. Otomatis Saya pindah dari Sophee,payfazz ,Tokopedia, Ovo ,go-pay ,paytr', NULL, 5),
(633, '2020-04-03 00:00:00', 'playstore', 'Saya salah satu pengguna Mitrabukalapak dan Bukalapak. Kasih bintang lima dengan harapan pelayanannya terus tingkatkan. Oh ya setiap transaksi pulsa ada hadiah kejutan tapi harus ngajak nomor yang beli pulsa pake aplikasi mitrabukalapak. Tolong dong hadia', NULL, 5),
(634, '2020-04-11 00:00:00', 'playstore', 'mohon solusinya.. aplikasi buka lapak waktu saya buka .medadak keluar sendiri.. dan ada tulisan . mitra bukalapak terhenti. apakah hp saya yg ga sanggup buka aplikasi tersebut?', NULL, 5),
(635, '2020-04-02 00:00:00', 'playstore', 'Aplikasi gk jelas, mau komplain Top Up saldo Mitra yg tidak masuk aja di persulit udah gitu prosesnya bertele-tele di suruh upload bukti transaksi saya ladeni, besoknya upload Mutasi Rekening saya ladeni, besoknya lagi upload KTP Sampai sekarang masih bel', NULL, 5),
(636, '2020-03-24 00:00:00', 'playstore', 'Buat aplikasi mitra Bukalapak pertahankan kualitas aplikasi nya. Saya sangat suka dengan aplikasi mitra Bukalapak, bagi saya sangat membantu ekonomi menengah. Dan mempermudah transaksi perbankan, Itu aja saran saya terimakasih...', NULL, 5),
(637, '2020-04-15 00:00:00', 'playstore', 'Ini aplikasi penipu. Sellernya yg not respon. Di refund sama voucer, trus voucernya dibatasi. Pakai minimun pembelian dan ada batas waktu. Sumpah gak bakalan belanjan di aplikasi ini lagi. Kalian jgn pernah belanja di sini. Nyesel pasti, fitur chat jaman ', NULL, 3),
(638, '2020-04-15 00:00:00', 'playstore', 'Pengalaman pertama yg sangat buruk, stok barang kosong tapi dari pihak Blibli tidak update kepada merchant. Alhasil ganti dngn item lain yg lebih murah, berarti ada sisal saldo, bahkan ketika pencairan sisa saldo pun sangat sulit dngn harus menunggu 3 har', NULL, 3),
(639, '2020-04-10 00:00:00', 'playstore', 'Aplikasinya bagus, diskonnya jelas,, cuman tukar tambahnya harus disekitar tempat,, saya di jatim ga bisa tuker tambah kenapa ya! Tolong kasih penjelasan kenapa diluar jakarta ga bisa tukar tambah nanti saya kasih bintang 5 ?????', NULL, 3),
(640, '2020-04-12 00:00:00', 'playstore', 'Setiap beli produk luar mesti ada biaya cukai. Ga seru... Males jadi nya... biasa nya juga ga kaya gini tolonglah bli bli kembali ke yg dulu saya penguna setia bli bli masa skng beli prosak luar hrga nya 3 x lipat sihh ogkir nya... Kmrn2 ga kaya gini', NULL, 3),
(641, '2020-04-14 00:00:00', 'playstore', 'Terimakasih blibli, saya kasih bintang 5 karena ga tau mau dimana ucapin makasih atas bantuannya, udah bantu kendala dalam pengiriman saya sangat cepat responnya. Mantap????', NULL, 3);
INSERT INTO `dataset` (`id`, `tanggal`, `sumber`, `teks`, `temp_klasifikasi`, `fk_marketplace`) VALUES
(642, '2020-04-14 00:00:00', 'playstore', 'Barang sudah sebulan tidak sampai. Cs tidak ada yg bertanggung jawab. Bantuan lewat chat harus di ulang. Tidak ada sistem save chat pengaduan seperti apk lain.', NULL, 3),
(643, '2020-04-12 00:00:00', 'playstore', 'Tadinya saya pengen nyoba!!! tapi setelah saya cek harga, ternyata Mahal. Lebih baik belanja di tempat lain saja lah. Maaf saya unistal aplikasi nya.', NULL, 3),
(644, '2020-04-11 00:00:00', 'playstore', 'SANGAT MENGECEWAKAN!!! DANA REFUND SAYA PERLU WAKTU SAMPAI BERHARI2.EMAIL KE CS SEMUA JAWABAN SAMA.KECEWA BERAT DENGAN TANGGAPAN YANG SANGAT LAMA DARI BLIBLI.JIKA SUDAH TAHU DAN DAPAT INFO BARANG TIDAK JADI TUKAR TAMBAH KARNA KENDALA,HARUSNYA LANGSUNG DI ', NULL, 3),
(645, '2020-04-14 00:00:00', 'playstore', 'Satu satunya Online Shop yg pengembalian produknya sangat gampang dan responnya terbaik dari semua olshop.....Yang terjelek Pertama adalah SHOPEE dgn seller banyak yg tak terpercaya sangat jelek sekali pelayanannya barang saya rusak tak bisa diganti dan t', NULL, 3),
(646, '2020-04-10 00:00:00', 'playstore', 'Susah banget mau batalin pesanan .... Saya salah alamat baru 5 menit tp enga bisa di batalin .. Awas aja kalau emang di kirim .. enga mungkin saya trima .. soalnya itu bukan alamat saya', NULL, 3),
(647, '2020-03-26 00:00:00', 'playstore', 'Toko online yang satu ini bermasalah di promo. Ceritanya saya mau beli realme 6 pro, ada promo pake kartu kredit diskon 300rb dan ada metode tukar tambah sama hp lama. Stlh sampai di langkah verifikasi hp, hp saya dibilang udh di root, pdhl saya gak perna', NULL, 3),
(648, '2020-04-09 00:00:00', 'playstore', 'Thank you, BLIBLI! disaat seperti ini, ekspedisi yg lain overload, pengiriman lelet.. tapi kalau pesan di blibli pakai ekspedisi Blibli BES keren banget pelayanannya, karena barang cepat diantar dan sampai tepat waktu! Perahankan ya. Semoga kurirnya sehat', NULL, 3),
(649, '2020-03-31 00:00:00', 'playstore', 'Tidak terdapat menu pembatalan pesanan, untuk orderan saya sudah lewat dari batas waktu pengiriman sampai 3 hari, tetapi belum sampai juga. Jika di tanya ke customer care jawabannya selalu sama akan bantu fu tapi tidak ada hasilnya, pesanan juga belum sam', NULL, 3),
(650, '2020-04-04 00:00:00', 'playstore', 'Mohonyya! pihak bliblk di perjelas saya sudah kecewa, penjual nya bilang ready ready tapi alhasil sampek 3 hari mala bilang unready atau habis barngnya trus aku sudah nglaporin trus kayak diabaikan maksutnya apa!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', NULL, 3),
(651, '2020-03-25 00:00:00', 'playstore', 'Promo free ongkirnya selalu menarik, dan pesanan saya selalu sampai tepat waktu dengan packaging yg rapih, bagus dan aman, tapi sayang sepertinya belum ada pilihan untuk membatalkan pesanan dari pihak pembeli/penjual, harus melapor ke customer service dul', NULL, 3),
(652, '2020-03-27 00:00:00', 'playstore', 'aplikasi bodoh banget . ga pernah bikin akun disini eh tulisannya uda punya akun . terus aku coba pencet lupa kata sandi tetep aja ga bisa . perbaiki lah sistem aplikasi goblok ini . bikin kesel . mau beli disini ga jadi malah bikin emosi . UNINSTALL AJA', NULL, 3),
(653, '2020-03-29 00:00:00', 'playstore', 'Hati2 bagi yang mau borong barang dengan jumlah yang banyak nominal besar dan mau pake promo, blibli suka membatalkan pesanan anda dan membuat uang anda terkait lama, (berlindung dibalik sk blibli), herannya kalo nominak barangnya kecil ga pernah dibatali', NULL, 3),
(654, '2020-03-27 00:00:00', 'playstore', 'Jangan pernah beli di MarketPlace BliBli. Parah banget 9 orderanku gak ada yang beres. ???????????? Padahal 9 orderan itu pengirim dari BliBli nya langsung. Ntah bagaimana sekarang orderan saya gak ada kejelasan. Kapok beli diBliBli terakhir ini aja dan g', NULL, 3),
(655, '2020-03-26 00:00:00', 'playstore', 'Ongkir sekarang bayar, pengiriman bukan makin cepat malah makin lambat. Jakarta ke Jakarta 4 hari baru sampe, Bekasi ke Jakarta 6 hari gak sampai juga. Di chat komplain janji manis doang tidak ada tindak lanjut. Pengen punya kurir sendiri tapi berantakan ', NULL, 3),
(656, '2020-04-10 00:00:00', 'playstore', 'Blibli ok sich,tapi pengirimanya tdk memuaskan sama skali JNE ,kirim ke Waru sidoarja,dan barang orderan sudah di Surabaya,eeeeeee.......tapi malah di kirim ke Waru Pamekasan,setelah itu nunggu sampek 1minggu blum juga nongol barang orderan,parah.........', NULL, 3),
(657, '2020-04-08 00:00:00', 'playstore', 'Sebenernya mau bintang 0, tapi karna ga bisa ya saya kasih bintang 1,itupun terpaksa kasih bintang...not recomended, ngga ada fitur kontak penjual, susah buat follow pembelian barang, di tracking pengiriman juga ngga di cantumkan kontak yg bisa dihubungi,', NULL, 3),
(658, '2020-04-12 00:00:00', 'playstore', 'Kereeeenn, aplikasinya mudah bgt digunain beda sama ecommerce sebelah dan banyak promo promo jg yg bener2 berguna buat kebutuhan. Gak ribett, top deh pokoknya', NULL, 3),
(659, '2020-04-13 00:00:00', 'playstore', 'Bagaimana cara nya pembatalan kok gak bisa? Metode pembayaran saya cod Tolong beri tahu saya cara nya dong!', NULL, 3),
(660, '2020-03-23 00:00:00', 'playstore', 'Suka belanja di blibli ini. Harganya murah dan langsung ada potongan ongkirnya. Tapi sayang, untuk tanya2 gak bisa langsung chat di toko/diproduknya langsung. Dan di keterangan barangnya, gada keterangan expirednya. Jadi bertanya tanya deh..', NULL, 3),
(661, '2020-03-31 00:00:00', 'playstore', 'Sebenarnya asik belanja di blibli cuma saya aga kecewa dimasalah kebijakan refund, saran... apabila ternyata barang yg ditawarkan kosong dr sananya sebaiknya uang dikembalikan full jgn dipotong berupa voucher belanja, krn kesalahan bukan dr pihak pembeli.', NULL, 3),
(662, '2020-04-02 00:00:00', 'playstore', 'Pernah pesan loudspeaker bloototh dr aplikasi lain dan sudah transper uangnya, barang tidak tersedia padahal pilihan sdh ditentukan berdasarkan spesikasinya, 9 bulan kemudian uang dikembalikan. Konsumen pasti kecewa dgn kejadian ini. Kita berharap blibli ', NULL, 3),
(663, '2020-03-26 00:00:00', 'playstore', 'Tadi saya beli pulsa 150 truz bayar pake mobile banking truz berhasil truz status gagal truz uang gk dapa refund....mana kembalikan dana ke saya. Mencuri dana punya saya. Haram banget blibli....bapak dan ibu jangan beli pulsa pake aplikasi blibli karena s', NULL, 3),
(664, '2020-04-14 00:00:00', 'playstore', 'Uninstall, sudah bayar tiba tiba di batalkan sepihak karena barang kosong katanya!!!', NULL, 3),
(665, '2020-04-07 00:00:00', 'playstore', 'berkat blibli saya jd mudah belanja online dan pengiriman cepat krn 1 kota, terutama kebutuhan pokok diperbanyak lg stok brg lainnya dan diskon pastinya, ditengah pandemi corona ini blibli menawarkan opsi terbaik. udh gt brg nya original semua jd ga nyese', NULL, 3),
(666, '2020-04-02 00:00:00', 'playstore', 'Aplikasi cacat aja iklan dmana2 ... Kalau gak tau pasaran hp gak usah sok2 ada tukar tambah segala.masak hp Vivo y17 ram 4/128 . Di hargai 800rb ... Ngakak gwe ....dan lebih lucu nya LG gwe iseng mau TT sma Samsung j2 ram 1gb/512 .. gwe suruh nambah 300 .', NULL, 3),
(667, '2020-04-02 00:00:00', 'playstore', 'Saya baca semua ulasan di toko ini dan ratingnya 4,4 berarti banyak yang komplain.. Barang yang saya mau beli tidak dapat saya temukan.. Mohon maaf saya uninstall yaa..', NULL, 3),
(668, '2020-04-09 00:00:00', 'playstore', 'Pemesanan realme 6 pro lighting red keterlambatan pengiriman tidak sesuai perjanjian awal tgl 4 April dan mendapatkan email pemberitahuan pengiriman tgl 6. Dan mendapatkan konfirmasi pengiriman tgl 7 april keterlambatan pengiriman 1 hari. Kecewa jasa peng', NULL, 3),
(669, '2020-04-09 00:00:00', 'playstore', 'Untuk program tuker tambah.. Kasih hrga hp lamanya lebih parah cuy.. Beda ama aplikasi tetangga yg warna ijo.. Masih masuk akal ksh hrganya..', NULL, 3),
(670, '2020-04-13 00:00:00', 'playstore', 'KATANYA Blibli BISA COD KOK SAYA MAU BELI BIBIT POHON APEL HARGA 35.000 KOK NGGAK ADA BAYAR DI TEMPAT ADANYA MELALUI KREDIT BCA Dll. NGGAK ADA BAYAR DI TEMPAT', NULL, 3),
(671, '2020-04-08 00:00:00', 'playstore', 'Keren, lebih nyaman berbelanja karena tersedia berbagai macam produk pilihan dengan harga yang sangat menawan. Promonya sangat menarik hati, siapa cepat dia dapat. Jujur dari dulu sering banget belanja disini ????', NULL, 3),
(672, '2020-03-23 00:00:00', 'playstore', 'Untuk saat ini blibli paling top, karena masih jual masker, hand sanitizer dan dettol dengan harga manusiawi meskipun stok sangat amat terbatas dan pembelian dibatasi. Thank you sangat membantu.', NULL, 3),
(673, '2020-04-13 00:00:00', 'playstore', 'Apakah di blibli ini kita tidak bisa berjualan? Apakah hanya menjadi pembeli?', NULL, 3),
(674, '2020-03-20 00:00:00', 'playstore', 'Bintang nya saya naekin 2. Sy selalu nyari barang yg saya butuhin ongkir - potongan ongkir = nol. Dan selalu ada meskipun aga sedikit lama Keluar masuk cekout. Klo ongkir lbh gede drpd potongan ongkir. Sy ga jd beli. ????????????', NULL, 3),
(675, '2020-03-31 00:00:00', 'playstore', 'Saya kasih bintang 1 ya. Karena tidak memfilter penjual yg memanfaatkan keadaan. Jual item yg dibutuhkan masyarakat jauh diatas normal (hand sanitizer, termometer). Klo di toko sebelah udah dimusnahkan.', NULL, 3),
(676, '2020-04-05 00:00:00', 'playstore', 'bebas ongkirnya harus jd icon blibli, tanpa syarat ya kalo bs, harga lebih murah meriah dr toko online seperti tokopedia dan banyakin promo lg dan bisa bertanya ke penjual tentang barang yg akan dijual..terima kasih blibli..????', NULL, 3);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=677;

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
