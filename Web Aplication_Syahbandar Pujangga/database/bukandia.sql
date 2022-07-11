-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2022 pada 07.39
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bukandia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(2, 1, 'abcd', 100, 4, 400),
(3, 8, 'abcd', 30, 1, 30),
(4, 2, 'abcd', 100, 3, 300),
(5, 6, 'abcd', 30, 3, 90),
(6, 11, 'admin', 30, 2, 60),
(19, 18, 'ayam', 20000, 1, 20000),
(21, 12, 'angga', 30000, 1, 30000),
(22, 24, 'ronny', 20000, 1, 20000),
(23, 24, 'nanda', 20000, 1, 20000),
(24, 34, 'azlan', 10000, 2, 20000),
(26, 15, 'seu', 15000, 1, 15000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('angga', 'angga12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_cat`
--

CREATE TABLE `food_cat` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `food_cat`
--

INSERT INTO `food_cat` (`id`, `catnm`, `sub_cat`) VALUES
(1, 'kathiyawadi', 'Maher Special'),
(2, 'kathiyawadi', 'Ringan Olo'),
(3, 'kathiyawadi', 'Dahino Olo'),
(4, 'kathiyawadi', 'Dahi tikhari'),
(5, 'kathiyawadi', 'Bharela Ringna'),
(6, 'kathiyawadi', 'Rajwadi Bateta'),
(7, 'kathiyawadi', 'Masala bhindi'),
(8, 'kathiyawadi', 'Rajwadi Dhokli'),
(9, 'kathiyawadi', 'Save Tameta'),
(10, 'kathiyawadi', 'Mag Masala'),
(11, 'kathiyawadi', 'Chole Chana Masala'),
(12, 'kathiyawadi', 'Kaju gathiya'),
(13, 'kathiyawadi', 'Adadni Dal'),
(14, 'rajsthani', 'Bati'),
(20, 'rajsthani', 'Dal'),
(21, 'rajsthani', 'Salad'),
(22, 'rajsthani', 'Butter Milk'),
(23, 'rajsthani', 'Ghee'),
(24, 'rajsthani', 'Papad'),
(25, 'rise', 'Dal Rice'),
(26, 'rise', 'Kadhi-Khichadi'),
(27, 'rise', 'Vagharela Bhat'),
(28, 'rise', 'Rajwadi Khichadi'),
(29, 'tava', 'Rotli'),
(30, 'tava', 'Ghee Rotli'),
(31, 'tava', 'Rotla'),
(48, 'tava', 'Ghee Rotla'),
(49, 'tava', 'Bhakhari'),
(50, 'tava', 'Ghee Bhakhari'),
(51, 'tava', 'Tava Paratha'),
(52, 'tava', 'Rotlanu Churmu'),
(53, 'tava', 'Bhakhari nu Churmu'),
(54, 'tava', 'Dryfruit Churmu'),
(55, 'tava', 'Vagharelo Rotlo Dry'),
(56, 'tava', 'Vagharelo Rotlo Dahi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food_parcel`
--

CREATE TABLE `food_parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `food_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(3, 'img/5c7515fc03eded3e20e78a6f_1551177212604.jpg'),
(4, 'img/5e39236bc4b7bc0c2bb659c7_1580802923546.jpg'),
(5, 'img/the-gujarati-thali-served.jpg'),
(6, 'img/the-gujarati-thali-served.jpg'),
(7, 'img/images.jpg'),
(8, 'img/thali.jpg'),
(9, 'img/chines.jpg'),
(10, 'img/abc.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`) VALUES
(4, 'kathiyawadi', 'Rajwadi Bateta', 'rajwadi bateta nu shak', 'bateta cut and fry in oil make a shak', 40000, 'mimg/e7e0aa16c95cca7deae0e222e8794bb5.jpg'),
(5, 'kathiyawadi', 'Dahi tikhari', 'dahi ni tikhari', 'fry dahi in shak', 50000, 'mimg/makanan1.jpg'),
(6, 'kathiyawadi', 'Masala bhindi', 'masla bhindi nu shak', 'garam masala add in bhindi nu shak', 30000, 'mimg/1bhindi.jpg'),
(7, 'kathiyawadi', 'Rajwadi Dhokli', 'rajwadi dhoki nu shak', 'dhokli fry in oil and fry in dal', 40000, 'mimg/hqdefault.jpg'),
(8, 'kathiyawadi', 'Save Tameta', 'save tameta nu shak', 'save add a in tomato shak and fry', 30000, 'mimg/save tameta.jpg'),
(9, 'kathiyawadi', 'Mag Masala', 'masala mag nu shak', 'masala add im mag shak ', 30000, 'mimg/mag masala.jpg'),
(10, 'kathiyawadi', 'Chole Chana Masala', 'chole chana masala nu shak', 'chana fry in shak with masala', 30000, 'mimg/chana-masala-recipe.jpg'),
(11, 'kathiyawadi', 'Adadni Dal', 'adad ni dal', 'adaa fry in dal with masala', 30000, 'mimg/Kathiyawadi_Adal_Dal_.jpg'),
(12, 'rajsthani', 'Bati', 'bati', 'rajsthani bati make by bhak', 30000, 'mimg/bati.jpg'),
(13, 'rajsthani', 'Dal', 'dal', 'dal make by tuver and alad', 30000, 'mimg/dal-fry-recipe-1.jpg'),
(14, 'rajsthani', 'Salad', 'salad', 'salad make by onion,tomato,beet,racket', 15000, 'mimg/best-salad-7.jpg'),
(15, 'rajsthani', 'Butter Milk', 'butter milk', 'butter milk make by dhorvu', 15000, 'mimg/Masala-Chaas-Recipe.jpg'),
(16, 'rajsthani', 'Ghee', 'ghee', 'ghee make by makahn', 15000, 'mimg/260px-Butterschmalz-3.jpg'),
(17, 'rajsthani', 'Papad', 'papad', 'papad make by adad and khichi', 15000, 'mimg/papad.jpg'),
(18, 'tava', 'Rotli', 'rotli', 'rotli make by wheet lot', 20000, 'mimg/rotli-2-960x1358.jpg'),
(19, 'tava', 'Ghee Rotli', 'ghwee rotli ', 'ghee add on rotli', 20000, 'mimg/desi_ghee_roti-e1542006374654.jpg'),
(20, 'tava', 'Rotla', 'rotla', 'rotla make by bajra and makai lot', 20000, 'mimg/rotla_dsc2818-(16)-9-186406.jpg'),
(21, 'tava', 'Bhakhari', 'bhakhari', 'bhakhari make by wheet lot', 20000, 'mimg/jowar-bhakri-recipe-main-photo.jpg'),
(22, 'tava', 'Ghee Rotla', 'ghee rotla', 'ghee add in rotla', 20000, 'mimg/blogger-image--689930619.jpg'),
(23, 'tava', 'Ghee Bhakhari', '20', 'ghee add on bhakhari', 20000, 'mimg/Bhakri_1.jpg'),
(24, 'tava', 'Tava Paratha', 'tava paratha', 'paratha fry in tava', 20000, 'mimg/Tawa_Paratha_Recipe-7956.jpg'),
(25, 'tava', 'Rotlanu Churmu', 'rotla nu churmu', 'churmu make by rotla', 20000, 'mimg/rotla nu churmu.jpg'),
(26, 'tava', 'Bhakhari nu Churmu', 'bhakhari nu churmu', 'churmu make by bhakhari', 20000, 'mimg/churma-step-by-step-recipe.webp'),
(27, 'tava', 'Dryfruit Churmu', 'drufruit churmu', 'dryfruit add in furmu', 20000, 'mimg/rotla nu churmu.jpg'),
(28, 'tava', 'Vagharelo Rotlo Dry', 'vagharelo rotlo dry', 'rotlo dry in oil and fry', 20000, 'mimg/Vageralo-rotlo-WS.jpg'),
(29, 'tava', 'Vagharelo Rotlo Dahi', 'vagahrelo rotlo dahi', 'dahi fry in rotlo', 20000, 'mimg/Vageralo-rotlo-WS.jpg'),
(30, 'rise', 'Dal Rice', 'dal rice', 'rice add in dal', 30000, 'mimg/DSC_0870.jpg'),
(31, 'rise', 'Kadhi-Khichadi', '25', 'khichadi add in kadhi', 25000, 'mimg/kadhi khichadi.jpg'),
(32, 'rise', 'Vagharela Bhat', 'vagahrela bhat', 'bhat fry in oli ', 25000, 'mimg/vagharela-bhaat-6.jpg'),
(33, 'rise', 'Rajwadi Khichadi', 'rajwadi khichadi', 'masala add in khichadi', 25000, 'mimg/rajwadi-khichdi-recipe-main-photo.jpg'),
(34, 'rajsthani', 'Dal', 'jaydip', 'nathi', 10000, 'mimg/chole bhature.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL,
  `jenis_pesanan` varchar(20) NOT NULL,
  `pay_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`, `jenis_pesanan`, `pay_status`) VALUES
(113, 5, 'angga', 'angga', 813722818, 'angga12@gmail.com', 'pariaman', 'Order Online', 'paid off'),
(114, 12, 'angga', 'angga', 813722818, 'angga12@gmail.com', 'pariaman', 'Order Online', 'Paid Off'),
(115, 12, 'angga', 'angga', 813722818, 'angga12@gmail.com', 'pariaman', 'Order Online', 'Paid Off'),
(116, 12, 'angga', 'angga', 813722818, 'angga12@gmail.com', 'pariaman', 'Order Online', 'Paid Off'),
(117, 24, 'ronny', 'ronny', 811722810, 'ronny15@gmail.com', 'payakumbuah', 'Place Order', 'paid off'),
(119, 24, 'ronny', 'ronny', 811722810, 'ronny15@gmail.com', 'payakumbuah', 'Place Order', 'paid off'),
(120, 24, 'ronny', 'ronny', 811722810, 'ronny15@gmail.com', 'payakumbuah', 'Place Order', 'paid off'),
(121, 24, 'ronny', 'ronny', 811722810, 'ronny15@gmail.com', 'payakumbuah', 'Place Order', 'paid off'),
(122, 24, 'nanda', 'nanda', 895722735, 'nanda17@gmail.com', 'riau', 'Order Online', 'Not Yet Paid Off'),
(123, 24, 'nanda', 'nanda', 895722735, 'nanda17@gmail.com', 'riau', 'Order Online', 'Not Yet Paid Off'),
(124, 24, 'nanda', 'nanda', 895722735, 'nanda17@gmail.com', 'riau', 'Order Online', 'Not Yet Paid Off'),
(126, 34, 'azlan', 'azlan', 812722723, 'azlan17@gmail.com', 'batusangkar', 'Place Order', 'Paid Off'),
(127, 34, 'azlan', 'azlan', 812722723, 'azlan17@gmail.com', 'batusangkar', 'Place Order', 'Paid Off'),
(128, 34, 'azlan', 'azlan', 812722723, 'azlan17@gmail.com', 'batusangkar', 'Place Order', 'Paid Off'),
(129, 34, 'azlan', 'azlan', 812722723, 'azlan17@gmail.com', 'batusangkar', 'Place Order', 'Paid Off'),
(130, 4, 'seu', 'seu', 895722810, 'seu20@gmail.com', 'padang', 'Order Online', 'Not Yet Paid Off'),
(131, 4, 'seu', 'seu', 895722810, 'seu20@gmail.com', 'padang', 'Order Online', 'Not Yet Paid Off'),
(132, 15, 'seu', 'seu', 895722810, 'seu20@gmail.com', 'padang', 'Place Order', 'Paid Off'),
(133, 15, 'seu', 'seu', 895722810, 'seu20@gmail.com', 'padang', 'Place Order', 'Paid Off'),
(134, 15, 'seu', 'seu', 895722735, 'seu20@gmail.com', 'padang', 'Order Online', 'Not Yet Paid Off');

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(6, 'angga', 'Exellent', 'makanannya sangat enak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `userid`, `password`, `email`) VALUES
(13, 'angga', 'angga12', 'angga16@gmail.com'),
(14, 'nanda', 'nanda', 'nanda16@gmail.com'),
(15, 'ronny', 'ronny', 'ronny@gmail.com'),
(16, 'azlan', 'azlan', 'azlan@gmail.com'),
(17, 'seu', 'seu', 'seu16@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indeks untuk tabel `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `food_parcel`
--
ALTER TABLE `food_parcel`
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT untuk tabel `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `food_parcel`
--
ALTER TABLE `food_parcel`
  ADD CONSTRAINT `food_parcel_ibfk_1` FOREIGN KEY (`id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
