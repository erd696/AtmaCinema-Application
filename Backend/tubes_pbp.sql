-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2025 pada 06.51
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
-- Database: `tubes_pbp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `film`
--

CREATE TABLE `film` (
  `id_film` bigint(20) UNSIGNED NOT NULL,
  `judul_film` varchar(255) NOT NULL,
  `durasi` int(11) NOT NULL,
  `rating_umur` varchar(255) NOT NULL,
  `dimensi` varchar(255) NOT NULL,
  `tanggal_rilis` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `sinopsis` varchar(255) NOT NULL,
  `producer` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `writers` varchar(255) NOT NULL,
  `cast` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'available',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `film`
--

INSERT INTO `film` (`id_film`, `judul_film`, `durasi`, `rating_umur`, `dimensi`, `tanggal_rilis`, `genre`, `sinopsis`, `producer`, `director`, `writers`, `cast`, `poster`, `status`, `created_at`, `updated_at`) VALUES
(5, 'AVENGERS', 120, '17+', '2D', '11 April 2012', 'Action, Si-Fi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Josh Whedon', 'Josh Whedon, Zak Penn', 'Russo Brothers', 'Robert Downey Jr, Chris Evan, Scarlett Johansson, Jeremy Renner, Mark Ruffalo, Chris Hemsworth, Tom Hiddleston', 'images/img_poster/avengers.jpg', 'now playing', NULL, NULL),
(7, 'AVENGERS END GAME', 120, '17+', '3D', '11 April 2012', 'Action, Sci-Fi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Josh Whedon', 'Josh Whedon, Zak Penn', 'Russo Brother', 'Robert Downey Jr, Chris Evan, Scarlett Johansson, Jeremy Renner, Mark Ruffalo, Chris Hemsworth, Tom Hiddleston', 'images/img_poster/endgame.jpg', 'coming soon', NULL, NULL),
(12, 'AVENGERS Age of Ultron', 120, '17+', '2D', '11 April 2012', 'Action, Si-Fi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Josh Whedon', 'Josh Whedon, Zak Penn', 'Russo Brothers', 'Robert Downey Jr, Chris Evan, Scarlett Johansson, Jeremy Renner, Mark Ruffalo, Chris Hemsworth, Tom Hiddleston', 'images/img_poster/age_of_ultron.jpg', 'now playing', NULL, NULL),
(13, 'AVENGERS Infinity war', 120, '17+', '3D', '11 April 2012', 'Action, Sci-Fi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Josh Whedon', 'Josh Whedon, Zak Penn', 'Russo Brother', 'Robert Downey Jr, Chris Evan, Scarlett Johansson, Jeremy Renner, Mark Ruffalo, Chris Hemsworth, Tom Hiddleston', 'images/img_poster/infinity_war.jpg', 'coming soon', NULL, NULL),
(15, 'AVENGERS ENDEST GAME', 120, '17+', '3D', '11 April 2012', 'Action, Sci-Fi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Josh Whedon', 'Josh Whedon, Zak Penn', 'Russo Brother', 'Robert Downey Jr, Chris Evan, Scarlett Johansson, Jeremy Renner, Mark Ruffalo, Chris Hemsworth, Tom Hiddleston', 'images/img_poster/endgame.jpg', 'now playing', NULL, NULL),
(16, 'AVENGERS Secret War', 120, '17+', '3D', '11 April 2012', 'Action, Sci-Fi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Josh Whedon', 'Josh Whedon, Zak Penn', 'Russo Brother', 'Robert Downey Jr, Chris Evan, Scarlett Johansson, Jeremy Renner, Mark Ruffalo, Chris Hemsworth, Tom Hiddleston', 'images/img_poster/infinity_war.jpg', 'coming soon', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `histori_transaksi`
--

CREATE TABLE `histori_transaksi` (
  `id_histori` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_transaksi` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `histori_transaksi`
--

INSERT INTO `histori_transaksi` (`id_histori`, `id_user`, `id_transaksi`, `created_at`, `updated_at`) VALUES
(2, 13, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_tayang`
--

CREATE TABLE `jadwal_tayang` (
  `id_jadwal` bigint(20) UNSIGNED NOT NULL,
  `id_film` bigint(20) UNSIGNED NOT NULL,
  `id_studio` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `jam_tayang` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal_tayang`
--

INSERT INTO `jadwal_tayang` (`id_jadwal`, `id_film`, `id_studio`, `tanggal`, `jam_tayang`, `harga`, `created_at`, `updated_at`) VALUES
(5, 5, 4, '2024-12-04', '10:30', 50000.00, NULL, NULL),
(6, 5, 4, '30-10-2024', '12:30', 50000.00, NULL, NULL),
(7, 5, 4, '30-10-2024', '15:30', 50000.00, NULL, NULL),
(8, 5, 4, '30-10-2024', '20:30', 50000.00, NULL, NULL),
(9, 5, 4, '30-10-2024', '23:30', 50000.00, NULL, NULL),
(10, 12, 4, '30-10-2024', '01:30', 50000.00, NULL, NULL),
(11, 5, 4, '12-12-2024', '01:30', 50000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan_minuman`
--

CREATE TABLE `makanan_minuman` (
  `id_makanan_minuman` bigint(20) UNSIGNED NOT NULL,
  `nama_item` varchar(255) NOT NULL,
  `harga_item` decimal(10,2) NOT NULL,
  `deskripsi_item` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `makanan_minuman`
--

INSERT INTO `makanan_minuman` (`id_makanan_minuman`, `nama_item`, `harga_item`, `deskripsi_item`, `kategori`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Hamburger', 35000.00, 'Roti dengan Daging Lezat', 'makanan', 'images/img_fnb/hamburger.jpeg', '2024-11-20 03:43:07', '2024-11-20 03:43:07'),
(3, 'hot dog', 35000.00, 'Roti dengan Daging Lezat', 'makanan', 'images/img_fnb/hamburger.jpeg', '2024-11-20 03:43:07', '2024-11-20 03:43:07'),
(4, 'coca cola', 35000.00, 'soda', 'minuman', 'images/img_fnb/hamburger.jpeg', '2024-11-20 03:43:07', '2024-11-20 03:43:07'),
(5, 'sprite', 35000.00, 'soda', 'minuman', 'images/img_fnb/hamburger.jpeg', '2024-11-20 03:43:07', '2024-11-20 03:43:07'),
(6, 'bundle 1', 35000.00, 'soda', 'bundle', 'images/img_fnb/hamburger.jpeg', '2024-11-20 03:43:07', '2024-11-20 03:43:07'),
(7, 'bandel 2', 35000.00, 'soda', 'bundle', 'images/img_fnb/hamburger.jpeg', '2024-11-20 03:43:07', '2024-11-20 03:43:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_11_17_090247_create_films_table', 1),
(2, '2024_11_17_090335_create_users_table', 1),
(3, '2024_11_17_090509_create_studios_table', 1),
(4, '2024_11_17_090630_create_makanan_minumen_table', 1),
(5, '2024_11_17_090740_create_reviews_table', 2),
(6, '2024_11_17_090842_create_transaksis_table', 2),
(10, '2024_11_17_091008_create_histori_transaksis_table', 3),
(11, '2024_11_17_091104_create_jadwal_tayangs_table', 3),
(12, '2024_11_17_091233_create_pembayarans_table', 3),
(13, '2024_11_17_091404_create_tikets_table', 4),
(15, '2024_11_17_104702_add_profile_picture_to_user_table', 5),
(16, '2024_11_20_090407_create_personal_access_tokens_table', 6),
(17, '2024_11_20_091739_create_sessions_table', 7),
(19, '2024_11_28_155518_add_status_to_film_table', 8),
(20, '2024_12_01_112428_add_junction_table_film_jadwal_tayang', 9),
(21, '2024_12_01_112439_add_junction_table_studio_jadwal_tayang', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` bigint(20) UNSIGNED NOT NULL,
  `id_transaksi` bigint(20) UNSIGNED NOT NULL,
  `metode_pembayaran` varchar(255) NOT NULL,
  `waktu_pembayaran` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(31, 'App\\Models\\User', 11, 'Personal Access Token', 'ee346f2867159bfc0aef1c2bc39b44c4d0a247f6e5529ed201ba8c74ca45a04b', '[\"*\"]', '2024-12-01 05:53:11', NULL, '2024-12-01 05:53:09', '2024-12-01 05:53:11'),
(35, 'App\\Models\\User', 13, 'Personal Access Token', '438f23855b525a240976901e2ff948912eb37d69f623bf55fe4ebfc95b12f930', '[\"*\"]', '2024-12-01 22:02:10', NULL, '2024-12-01 21:43:50', '2024-12-01 22:02:10'),
(36, 'App\\Models\\User', 13, 'Personal Access Token', '236d0eb6c212e38347abf15fdd9347bec7c0fab743f273b56e01ee7d0cbfe2b1', '[\"*\"]', '2024-12-01 22:02:42', NULL, '2024-12-01 22:02:34', '2024-12-01 22:02:42'),
(37, 'App\\Models\\User', 13, 'Personal Access Token', '3fa495ac0bf2701b853cf41ce0ebe582b7a84d408118a43de86656f7d74e90e5', '[\"*\"]', '2024-12-01 22:11:51', NULL, '2024-12-01 22:03:37', '2024-12-01 22:11:51'),
(38, 'App\\Models\\User', 13, 'Personal Access Token', 'a894c905da5c709c0f1b7590344c15d75268a1165833b587a0a868dba95b586d', '[\"*\"]', '2024-12-01 22:16:27', NULL, '2024-12-01 22:12:46', '2024-12-01 22:16:27'),
(39, 'App\\Models\\User', 13, 'Personal Access Token', 'a947b941bcade42c768736e5ac2206d6ba91ddef86bad81c9f5ac4489ec5e534', '[\"*\"]', '2024-12-04 23:31:21', NULL, '2024-12-01 22:16:40', '2024-12-04 23:31:21'),
(40, 'App\\Models\\User', 11, 'Personal Access Token', '89464ee6ba226bc070774688b4abacdcc94cc46a8962e90ad8e840d18fe121b8', '[\"*\"]', '2024-12-04 04:03:44', NULL, '2024-12-03 10:15:11', '2024-12-04 04:03:44'),
(42, 'App\\Models\\User', 14, 'Personal Access Token', '156aefe18abf0180a21d19c87f6ffa44612b8c1450ed932631a6ba24e879390a', '[\"*\"]', '2024-12-12 08:17:05', NULL, '2024-12-05 00:13:34', '2024-12-12 08:17:05'),
(43, 'App\\Models\\User', 9, 'Personal Access Token', '4f1082d660ac0b4f3bb0c8c51f62b9d0cce1bd21bedea275f8bbd5dd3615ed48', '[\"*\"]', '2024-12-09 23:06:28', NULL, '2024-12-09 23:06:26', '2024-12-09 23:06:28'),
(44, 'App\\Models\\User', 9, 'Personal Access Token', 'a3444e9abf35adbd608d2fec8d553150d215b74adf9423c220c116ee861e22ad', '[\"*\"]', '2024-12-10 00:50:58', NULL, '2024-12-09 23:06:27', '2024-12-10 00:50:58'),
(45, 'App\\Models\\User', 9, 'Personal Access Token', '1f15669c57b45f05756213ae11ac08b00b5cf4f2f8042ec2692657400b1649d9', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:37', '2024-12-10 01:12:37'),
(46, 'App\\Models\\User', 9, 'Personal Access Token', '3d387bbff2dcf81a9b544f12500bd72c54a509fe94b9cab535097a36f945501b', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:37', '2024-12-10 01:12:37'),
(47, 'App\\Models\\User', 9, 'Personal Access Token', '9e87cb0cd72c5886950cecc73bb99442d97ed95ec80a639e5b23dbe61d734022', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:37', '2024-12-10 01:12:37'),
(48, 'App\\Models\\User', 9, 'Personal Access Token', '32eff907e0c18b7a0e5dfc4cc75e48ebd5ebb77c53885bea7bd2e0af145c55ee', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:38', '2024-12-10 01:12:38'),
(49, 'App\\Models\\User', 9, 'Personal Access Token', '0eb3a50fbf1524ff68630318fad6133f3cb96ec75a2e90aa41f64ece1a5e8eb8', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:38', '2024-12-10 01:12:38'),
(50, 'App\\Models\\User', 9, 'Personal Access Token', '527f78391899ef90ba52bad04f2ffd9966b2b67cbe70cf4c79e3b1d62b753c27', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:39', '2024-12-10 01:12:39'),
(51, 'App\\Models\\User', 9, 'Personal Access Token', '6097ee804bc3a354a21fd7715bec58130059a5a4bc9c9cb0b42f79e569b47040', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:39', '2024-12-10 01:12:39'),
(52, 'App\\Models\\User', 9, 'Personal Access Token', '17f1a6c602881e469fa29cdd72aa3aa7fb7bf2e307a056edc58803bfa3b6c236', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:39', '2024-12-10 01:12:39'),
(53, 'App\\Models\\User', 9, 'Personal Access Token', 'bdcc47246a945a51815e53ef04e3b7309dd4ac98b34185b5b385e5af2fe7feb2', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:40', '2024-12-10 01:12:40'),
(54, 'App\\Models\\User', 9, 'Personal Access Token', 'eef054753bc594375bd642583e2d4b00ad7db4e9fd464fafd369d68db797bd09', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:40', '2024-12-10 01:12:40'),
(55, 'App\\Models\\User', 9, 'Personal Access Token', '569dfa4a522034f534bd4af803abeb498e7e3bcc6cbfd1d18b223c0cace58625', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:41', '2024-12-10 01:12:41'),
(56, 'App\\Models\\User', 9, 'Personal Access Token', 'd07f01647fe9d9d10d469d9f5246fa7f8359da9990b74fa0c43366ca651da6a3', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:41', '2024-12-10 01:12:41'),
(57, 'App\\Models\\User', 9, 'Personal Access Token', 'a9d77e9a2ea97a447dfb9413b1bc671fbef14d7b2043f54fe0500fe2524d420a', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:41', '2024-12-10 01:12:41'),
(58, 'App\\Models\\User', 9, 'Personal Access Token', '3b036dbac71f9d12b3a5c7d12e7698b5f7a125c01a58c457e2606049d8812379', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:42', '2024-12-10 01:12:42'),
(59, 'App\\Models\\User', 9, 'Personal Access Token', '4abf0ec7d5dfa468b5d8db605908a3b6cdcbc413b9469381cd6ae47b70a179a2', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:42', '2024-12-10 01:12:42'),
(60, 'App\\Models\\User', 9, 'Personal Access Token', '4098f7ac43c8bf835ce7c8bad531ab7ad190b85ad5b8e8712f22f81cc405c6fd', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:43', '2024-12-10 01:12:43'),
(61, 'App\\Models\\User', 9, 'Personal Access Token', 'be68bf1b2927f2103d07344b369c35dfa51adab93aafa71714a45e2a71cfac79', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:43', '2024-12-10 01:12:43'),
(62, 'App\\Models\\User', 9, 'Personal Access Token', 'b425e97219afdb81ccd3359e52954f82708d08845944984af8155225357d0acd', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:43', '2024-12-10 01:12:43'),
(63, 'App\\Models\\User', 9, 'Personal Access Token', '418521907bf71151a0607546cc377d29027b1f56774098dc44785aa7cb832e8c', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:44', '2024-12-10 01:12:44'),
(64, 'App\\Models\\User', 9, 'Personal Access Token', '214683cef91614970aac5723e51cf9fa751771897f9f05348a971c4646fab9d8', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:44', '2024-12-10 01:12:44'),
(65, 'App\\Models\\User', 9, 'Personal Access Token', 'ae482f10f534c0b04b93354dad5574433a59d2db3809dc3200e8f1f05e3df9fc', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:44', '2024-12-10 01:12:44'),
(66, 'App\\Models\\User', 9, 'Personal Access Token', 'ab16a7d1ca54e64a633bff2c0fa8477bca2c79c1105bd430226065ecf0b27f0f', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:45', '2024-12-10 01:12:45'),
(67, 'App\\Models\\User', 9, 'Personal Access Token', '33a4f13b7353a7a91cca373d5bb64cb3e64d20f43c5849994c0b9e06ec62e393', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:45', '2024-12-10 01:12:45'),
(68, 'App\\Models\\User', 9, 'Personal Access Token', '97a85b78e9fa4593787e59ad9028a2e8ac0746bc71d697cda3424e6f53e4335a', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:46', '2024-12-10 01:12:46'),
(69, 'App\\Models\\User', 9, 'Personal Access Token', '8c91b214356d43abd25474b912608809d6786d1993cd92f818013010749975c7', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:46', '2024-12-10 01:12:46'),
(70, 'App\\Models\\User', 9, 'Personal Access Token', 'b0a9cce11d94443a4665fbaf89da09743c8625421a737cc557d7df420b68d24f', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:46', '2024-12-10 01:12:46'),
(71, 'App\\Models\\User', 9, 'Personal Access Token', 'f68b8e7c5e56b1cfeeee7d6665cd2c8a25e18f0710a4e4db5d47d276677bf779', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:47', '2024-12-10 01:12:47'),
(72, 'App\\Models\\User', 9, 'Personal Access Token', 'b43093d1e9afe3b78fcd62dc0acb6e3891cbf1d3a9e71f36aadb1f0970c24f2d', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:47', '2024-12-10 01:12:47'),
(73, 'App\\Models\\User', 9, 'Personal Access Token', 'a69011333112fec972dc4990e19eb9332b35aa5d4ee101efe1c87969daa2d33b', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:47', '2024-12-10 01:12:47'),
(74, 'App\\Models\\User', 9, 'Personal Access Token', 'e89a8c9beef60208f47c2ff57c8f949514ab8dc74f0b3af27b57ce5543851f5c', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:48', '2024-12-10 01:12:48'),
(75, 'App\\Models\\User', 9, 'Personal Access Token', '755bc516140e2624ea89ac11238ea3cf06769193db94af4ac8ae69eb9490501d', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:48', '2024-12-10 01:12:48'),
(76, 'App\\Models\\User', 9, 'Personal Access Token', '807d24a05c00f562228eda42f08714853c6c70e484a61d399534b8e02107bb77', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:49', '2024-12-10 01:12:49'),
(77, 'App\\Models\\User', 9, 'Personal Access Token', 'e5123f35d03b535e9b1803c11468ba018d2506381d90456919c2229b769afafd', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:49', '2024-12-10 01:12:49'),
(78, 'App\\Models\\User', 9, 'Personal Access Token', 'e86cd6750fce1b00ff1507e83b26e8d2febc23763d5eaebe67fb4a5d9bba2f47', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:49', '2024-12-10 01:12:49'),
(79, 'App\\Models\\User', 9, 'Personal Access Token', 'efa492950aa7bb60213f9196ab4c5f3af67c8f4c89e395248a828dbbaa6d5f0c', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:50', '2024-12-10 01:12:50'),
(80, 'App\\Models\\User', 9, 'Personal Access Token', 'f1a1e4d73624536a55d270cc15813a49be6b551bbe5f3c0dd7dead4c51c9587e', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:50', '2024-12-10 01:12:50'),
(81, 'App\\Models\\User', 9, 'Personal Access Token', '6cc93ee2d27fc650329642a1d93822f24b97e740115a91ba4a13c3d16c64eb85', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:50', '2024-12-10 01:12:50'),
(82, 'App\\Models\\User', 9, 'Personal Access Token', 'c7be74cbce792aa143af8076af19088d4f509fb3748c75331524719bbc090367', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:51', '2024-12-10 01:12:51'),
(83, 'App\\Models\\User', 9, 'Personal Access Token', '562630c755dae7770fa70a8a41c5dc2f07e9683ecde806e49986f08b08c9870c', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:51', '2024-12-10 01:12:51'),
(84, 'App\\Models\\User', 9, 'Personal Access Token', 'b998b01485b26a2ae7754c8c1a3c846d3860a8d591c5d9ecd102784d06968b53', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:52', '2024-12-10 01:12:52'),
(85, 'App\\Models\\User', 9, 'Personal Access Token', 'a262d59391e2c904cc450963b180af057c43d6ab513032ad1db0c6700d5b675a', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:52', '2024-12-10 01:12:52'),
(86, 'App\\Models\\User', 9, 'Personal Access Token', '57f103f82c6ca20c6d717153f4ddbdd633dbe132ef2353b36eb5cdd53d3d8d8e', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:52', '2024-12-10 01:12:52'),
(87, 'App\\Models\\User', 9, 'Personal Access Token', '953bc6ab8f559bc260599b3c965247559c140502d65186bdacc1f5fae362b7a2', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:53', '2024-12-10 01:12:53'),
(88, 'App\\Models\\User', 9, 'Personal Access Token', '5ab21ac85eae74bc06b0e18a8957c31d64abdb5e0e11f6e42059698bba56eff3', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:53', '2024-12-10 01:12:53'),
(89, 'App\\Models\\User', 9, 'Personal Access Token', '2e25f49aa90bcef719da61ba66f47eb3e4ec27957cfb8f083be59d3af8853e9f', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:53', '2024-12-10 01:12:53'),
(90, 'App\\Models\\User', 9, 'Personal Access Token', 'b05b19aacaf1940e5ad0be022b8fb10f2cd4bed3a69f1edb7b4a53cc31de6e6e', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:54', '2024-12-10 01:12:54'),
(91, 'App\\Models\\User', 9, 'Personal Access Token', '4f5173c3cc9806ab5c5f539fee976f02f77a90d2f955080a7fc244b25ddb9c80', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:54', '2024-12-10 01:12:54'),
(92, 'App\\Models\\User', 9, 'Personal Access Token', '1526b6cfe0035500129063ae6ee49b80bc30c5b6f707cff41f859fba21b6d2cc', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:54', '2024-12-10 01:12:54'),
(93, 'App\\Models\\User', 9, 'Personal Access Token', '3b7415af339a2d36107f3c8d0e61530a7b89f08a9062669f47bf765cd420a638', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:55', '2024-12-10 01:12:55'),
(94, 'App\\Models\\User', 9, 'Personal Access Token', '124002afa0d7a8a0ed8ad31af3c5934877c841ffe0e7de69f0e19dc7ad75b2f4', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:55', '2024-12-10 01:12:55'),
(95, 'App\\Models\\User', 9, 'Personal Access Token', '4aa5a3b1712dbde0807ab8d94d281fa54dd9252d4165354725faf8f969096a58', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:56', '2024-12-10 01:12:56'),
(96, 'App\\Models\\User', 9, 'Personal Access Token', 'c8c5360c0df5ddd01df8dd22ffc66a7c72843de9cfe66c0bc9bced8a67595b68', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:56', '2024-12-10 01:12:56'),
(97, 'App\\Models\\User', 9, 'Personal Access Token', '44e62c4bbf2eb715409093f238874f9dda974c388a3f1cf1c45346d11829e408', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:56', '2024-12-10 01:12:56'),
(98, 'App\\Models\\User', 9, 'Personal Access Token', 'a429d7917baac999beff36fb0f8e2b4b0ffeed5111392a5f7aa9a27c212a1a7d', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:57', '2024-12-10 01:12:57'),
(99, 'App\\Models\\User', 9, 'Personal Access Token', '0bc6454b3343a775d9d8fbeace949fc10e1085a92beb5b318e4f195c7e9c2d5b', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:57', '2024-12-10 01:12:57'),
(100, 'App\\Models\\User', 9, 'Personal Access Token', '8aea93442314419a0362caf4e6a34ac20c142d8e4ebeb1fe06f906ae0dc2941c', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:57', '2024-12-10 01:12:57'),
(101, 'App\\Models\\User', 9, 'Personal Access Token', '0485a3fe5a81b2d3c4ab963c4e196b869194d02f57537d062fda2e659d70e350', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:58', '2024-12-10 01:12:58'),
(102, 'App\\Models\\User', 9, 'Personal Access Token', '41fe0b7ca2c2adaa8b5afd64b104d0a18d89d18f295447910de627cc41d876c7', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:58', '2024-12-10 01:12:58'),
(103, 'App\\Models\\User', 9, 'Personal Access Token', '0892db9c8a8cf931ee7dc7c39004d6cc3f24674d23b4edf64398a716297609f8', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:59', '2024-12-10 01:12:59'),
(104, 'App\\Models\\User', 9, 'Personal Access Token', '5dfba51d15bda8ffebe2a61c82e0268a613bb216d28b7c26b1a123ff2152317e', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:59', '2024-12-10 01:12:59'),
(105, 'App\\Models\\User', 9, 'Personal Access Token', 'fffc67384a92c8e765d37a21850f7fceb2c567d29612ecb554f9302eec37d254', '[\"*\"]', NULL, NULL, '2024-12-10 01:12:59', '2024-12-10 01:12:59'),
(106, 'App\\Models\\User', 9, 'Personal Access Token', '9df813ae1643f4492c0eb738bc5c4af3745f29f2dc6dfac34d3c80a03fd0419e', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:00', '2024-12-10 01:13:00'),
(107, 'App\\Models\\User', 9, 'Personal Access Token', 'b7711e78e7510b80dad0dd45a3e3275f5ee1cd44064c46a8895898e35a0e6019', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:00', '2024-12-10 01:13:00'),
(108, 'App\\Models\\User', 9, 'Personal Access Token', '66cc6acda233c9584a564f3a73d76f17f22eb29e768096f21baf09cecb71c49e', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:00', '2024-12-10 01:13:00'),
(109, 'App\\Models\\User', 9, 'Personal Access Token', '6943921e60fb3ff27f24c13a6f378af5e76d63dfcb9688a679b1930586e0b285', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:01', '2024-12-10 01:13:01'),
(110, 'App\\Models\\User', 9, 'Personal Access Token', '76270ee5eb0c967d31c19b8f4efb1596f95cc55c5584b9bea62cdec5a69e9e75', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:01', '2024-12-10 01:13:01'),
(111, 'App\\Models\\User', 9, 'Personal Access Token', 'c643433382d48a37d207121b5a78f4c824a08fa6a40d6ab0827f67207b046063', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:02', '2024-12-10 01:13:02'),
(112, 'App\\Models\\User', 9, 'Personal Access Token', '6f876bea2eccc4c44b962446646b8cc71dcee9dfedd563821efd89fd2d750947', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:02', '2024-12-10 01:13:02'),
(113, 'App\\Models\\User', 9, 'Personal Access Token', '146dbf55b678018df30301b866d92eb794b9a2dd9b986d4bfc122c60b59d894e', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:02', '2024-12-10 01:13:02'),
(114, 'App\\Models\\User', 9, 'Personal Access Token', '77d7c2364542de7bc4473cc61098f0da8fbeca8e60112ffa2876c43ad78defc6', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:03', '2024-12-10 01:13:03'),
(115, 'App\\Models\\User', 9, 'Personal Access Token', 'ef5b97357d1ad15b29df0591e6d3fc45924f114b6821b50fe6169d9f16674e89', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:03', '2024-12-10 01:13:03'),
(116, 'App\\Models\\User', 9, 'Personal Access Token', 'd1ff27d8dfdf48aebcf6dfbb597a5fa7a29deb62452770a414c60988b391b5b8', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:03', '2024-12-10 01:13:03'),
(117, 'App\\Models\\User', 9, 'Personal Access Token', 'a5295810f1665e3aebef3a33dabec1a980a394a313428c1416cda71552015229', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:04', '2024-12-10 01:13:04'),
(118, 'App\\Models\\User', 9, 'Personal Access Token', '38664b8943533f4df1b072715ff66720cea4edb3edf7c9a11f7c67063229ffff', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:04', '2024-12-10 01:13:04'),
(119, 'App\\Models\\User', 9, 'Personal Access Token', '2dc67d6671b70e1c6adc3a6ecdf41ea19764bd58a94442a569c31c66f75141af', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:04', '2024-12-10 01:13:04'),
(120, 'App\\Models\\User', 9, 'Personal Access Token', '4d97e4c7be8d15aa92a72f0f9fa171b3bf939cddf1418ac3798ab3e49efc0d20', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:05', '2024-12-10 01:13:05'),
(121, 'App\\Models\\User', 9, 'Personal Access Token', '5f0302c55dc6fb55b10b5bd202bb1ac97aa89165f22f98420bef83a161ed82f2', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:05', '2024-12-10 01:13:05'),
(122, 'App\\Models\\User', 9, 'Personal Access Token', 'f1a1802860be29adeaab7ffb8194d691ddb99d890e1b51298aecefa37818bf44', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:06', '2024-12-10 01:13:06'),
(123, 'App\\Models\\User', 9, 'Personal Access Token', 'b1e1b922c28e035f56bb25a7708cb595a004b95c4004cf9f3d5a321eb9cac58c', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:06', '2024-12-10 01:13:06'),
(124, 'App\\Models\\User', 9, 'Personal Access Token', '4d236a697aca8905f17e31059fc34f5877702a28eb4f824a5fd6e145dfc18c28', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:06', '2024-12-10 01:13:06'),
(125, 'App\\Models\\User', 9, 'Personal Access Token', '4f35736c407b18e0ec24ade088ab5d8fb3ff9d48be2d912794668f994d007f1c', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:07', '2024-12-10 01:13:07'),
(126, 'App\\Models\\User', 9, 'Personal Access Token', '023b34d2401f504db741655d46eb77249a0b0ebe2aac1266e9262ecb8ad92b74', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:07', '2024-12-10 01:13:07'),
(127, 'App\\Models\\User', 9, 'Personal Access Token', 'cfd92cd6fc24a531d563a159304aff1b7fea965d58b6bb42c1da1f505ae4e5ab', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:07', '2024-12-10 01:13:07'),
(128, 'App\\Models\\User', 9, 'Personal Access Token', '396f6c513b74e51161ef95c23d405f19a98a3a266c44f6c19c836185dfd6b7cd', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:08', '2024-12-10 01:13:08'),
(129, 'App\\Models\\User', 9, 'Personal Access Token', '6bbb821b03a6104c9a267ddcf732f59a52487cc4898b3ec3445a7380f6a5806d', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:08', '2024-12-10 01:13:08'),
(130, 'App\\Models\\User', 9, 'Personal Access Token', '2416968269dc5edc6d1b69b9b97bb5ddad3e24f3d1ede3a01972b615a7ffa84f', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:09', '2024-12-10 01:13:09'),
(131, 'App\\Models\\User', 9, 'Personal Access Token', '98343b1af8c465bd81e1dceb893ea1cdd672302d4d8ce4bf576a4abf490c4fbf', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:09', '2024-12-10 01:13:09'),
(132, 'App\\Models\\User', 9, 'Personal Access Token', '3f4354848a3115320718ed8597519811e7f8343a395fabe31efe7b057c784327', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:09', '2024-12-10 01:13:09'),
(133, 'App\\Models\\User', 9, 'Personal Access Token', '8d481a6fb042bd197a23ecd1cac83a6720f51fa37cbad577b5d9a2c11bf7d5a1', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:10', '2024-12-10 01:13:10'),
(134, 'App\\Models\\User', 9, 'Personal Access Token', 'd6df5bafaa3452b3832a7a67091efe329b25fdf71f7b59b2ed209921ac840035', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:10', '2024-12-10 01:13:10'),
(135, 'App\\Models\\User', 9, 'Personal Access Token', '29900e4fa44310ec02fb49689eb90bd170b0af33e9f2f20d44cb9a12badeb3f5', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:10', '2024-12-10 01:13:10'),
(136, 'App\\Models\\User', 9, 'Personal Access Token', '274225ec6bbb54ffb19fd5d0ad27223245cc3c3c5e84acbaafdcf9d8c66d2df7', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:11', '2024-12-10 01:13:11'),
(137, 'App\\Models\\User', 9, 'Personal Access Token', 'e4121ed0a4ddb143b1282df4650a6e9e4c92ab46d00711b06c37a05d740421b0', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:11', '2024-12-10 01:13:11'),
(138, 'App\\Models\\User', 9, 'Personal Access Token', '3fc1eadf062c71b20993c56e3935958fe08e1b88e6e4be44b023988ae0a7195d', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:12', '2024-12-10 01:13:12'),
(139, 'App\\Models\\User', 9, 'Personal Access Token', 'a629d9ddcc9d78f0a536c4c17fbbb9550f3873e683e86175e6f3bf09d184ba8b', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:12', '2024-12-10 01:13:12'),
(140, 'App\\Models\\User', 9, 'Personal Access Token', '97368d6e0adffc56a95b7fa3522fe0f78be11b47eb4a74b71a7e68e46464db42', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:12', '2024-12-10 01:13:12'),
(141, 'App\\Models\\User', 9, 'Personal Access Token', '0f0c321a40efb99d26792acf55102da8eeea2f0cdc9bad68068c6ffe4c3a3f14', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:13', '2024-12-10 01:13:13'),
(142, 'App\\Models\\User', 9, 'Personal Access Token', '02dd7bfccfe5bd8f76c79aae0aa3221e547ccd2fa6caff325050532eacb9bd19', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:13', '2024-12-10 01:13:13'),
(143, 'App\\Models\\User', 9, 'Personal Access Token', '344231ae1e88a01e3d9faaa2f2ac4819d9fb93ed301d79806626789b71ec7b24', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:13', '2024-12-10 01:13:13'),
(144, 'App\\Models\\User', 9, 'Personal Access Token', 'e28f977b2902fa1428128f5abf30d2f5c2d08a1d17e60c741faa3022ebc947af', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:14', '2024-12-10 01:13:14'),
(145, 'App\\Models\\User', 9, 'Personal Access Token', '0ea70e9a258a51f8b52b96f6092eca798b09cb25736acff42edec5ca34b4c93e', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:14', '2024-12-10 01:13:14'),
(146, 'App\\Models\\User', 9, 'Personal Access Token', 'd13eec6e0a8e1c8851416f86868c131904cd1ef653c3955c924f398eddfc42a4', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:15', '2024-12-10 01:13:15'),
(147, 'App\\Models\\User', 9, 'Personal Access Token', '9a4a7d8ea533ffda036c2a2489a427a048d5f226be1c6986ab0138b5a84c8c43', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:15', '2024-12-10 01:13:15'),
(148, 'App\\Models\\User', 9, 'Personal Access Token', 'bf3bcb892445c4f4c904a0c9298ba26f7053fdf680f66e52fde9b1203fe8bd88', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:15', '2024-12-10 01:13:15'),
(149, 'App\\Models\\User', 9, 'Personal Access Token', '03d1201941272d4536168d4290a6462eb1eb453052bdcf0677c0b124e7f26c34', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:16', '2024-12-10 01:13:16'),
(150, 'App\\Models\\User', 9, 'Personal Access Token', 'd4a1cbc17cd3e99c049a0872d9355cd20af6e9850ddb0e5b96d7029414accc97', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:16', '2024-12-10 01:13:16'),
(151, 'App\\Models\\User', 9, 'Personal Access Token', '4d39126be01b178f54cb9cc1a46c5c75f3daf10f34edc0014d859d45baec21f7', '[\"*\"]', '2024-12-10 01:13:43', NULL, '2024-12-10 01:13:16', '2024-12-10 01:13:43'),
(152, 'App\\Models\\User', 9, 'Personal Access Token', '71142f8276b6ac6e4a3de5596c369f8ebe68b23b86bdc38dcf70d713c4743dfb', '[\"*\"]', '2024-12-10 01:13:44', NULL, '2024-12-10 01:13:17', '2024-12-10 01:13:44'),
(153, 'App\\Models\\User', 9, 'Personal Access Token', '852c34fdc0604bb802ebeab98b4a3aaa08e31bb64b657272bb9ee0d4eac32fbb', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:17', '2024-12-10 01:13:17'),
(154, 'App\\Models\\User', 9, 'Personal Access Token', '52659459e8b3ed42e26a3eb0ca9900b3a5cd1e6f8046195fe0fe070a99c62e96', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:18', '2024-12-10 01:13:18'),
(155, 'App\\Models\\User', 9, 'Personal Access Token', 'de85612a33568d0a6018a23c845078627dc18015fd5c64027fd2bf9aa8d4afa3', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:18', '2024-12-10 01:13:18'),
(156, 'App\\Models\\User', 9, 'Personal Access Token', '35ba3ff8c7d5b8843f2cc6583e726372e9687c86a93954c06482fa60d0968e11', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:18', '2024-12-10 01:13:18'),
(157, 'App\\Models\\User', 9, 'Personal Access Token', '0304c951384108442eae9ba1c5deabc0e37624912ffa401ef4756ca956d7f4c1', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:19', '2024-12-10 01:13:19'),
(158, 'App\\Models\\User', 9, 'Personal Access Token', 'fc809420e7fb816316d702f00519dffa613eae7c3edfa20a1b3ee32282d3b8cb', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:19', '2024-12-10 01:13:19'),
(159, 'App\\Models\\User', 9, 'Personal Access Token', 'dc77875d67bf8138b48fe8d916650c826dd534fdd56eed8a0ba59f540e2a0d11', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:20', '2024-12-10 01:13:20'),
(160, 'App\\Models\\User', 9, 'Personal Access Token', 'b0454a0d0a74110899bdefa5d58a5641e6cd01e86bf3dfea1af7b220ffa16e82', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:20', '2024-12-10 01:13:20'),
(161, 'App\\Models\\User', 9, 'Personal Access Token', '162190b3b1c44055525d65fc2f51dc5d7f188f95c3ab5481d76387f3e6e61efd', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:20', '2024-12-10 01:13:20'),
(162, 'App\\Models\\User', 9, 'Personal Access Token', '1e2d5d2a9a865aeb53488518b37fe21852792fc0c0c5183083b2b7f2a340f7b1', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:21', '2024-12-10 01:13:21'),
(163, 'App\\Models\\User', 9, 'Personal Access Token', '5d86dc15735105941cdbf3ec5e0ccbd4fac7034d7bf628505c136c85da5d2e3c', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:21', '2024-12-10 01:13:21'),
(164, 'App\\Models\\User', 9, 'Personal Access Token', 'f320402ef6e8fe7d48d065b7d56ecff7967a34453f7fe8dea2d63cda4ddc7570', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:22', '2024-12-10 01:13:22'),
(165, 'App\\Models\\User', 9, 'Personal Access Token', 'effaf9946419c36b5de3bee8459734fa7dc1737111f3d10590e6d7182daef489', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:22', '2024-12-10 01:13:22'),
(166, 'App\\Models\\User', 9, 'Personal Access Token', '24cf677734784289abb77255b44f371d2babf2286a15d629359eccc79d79247f', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:22', '2024-12-10 01:13:22'),
(167, 'App\\Models\\User', 9, 'Personal Access Token', '9a34f5da976d3aaad7cc6b2c6d2e87ffd9bc90c5a038a220eaef2e1e89cd26e3', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:23', '2024-12-10 01:13:23'),
(168, 'App\\Models\\User', 9, 'Personal Access Token', '7bb5212c029a0f96e73e37b1d3f0891abaf114c937b4272a7c1bc2cd73109e69', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:23', '2024-12-10 01:13:23'),
(169, 'App\\Models\\User', 9, 'Personal Access Token', '6ae1e532d04bc24a3afc738f18defa32c17366a9268e490171e29aaffb777e27', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:24', '2024-12-10 01:13:24'),
(170, 'App\\Models\\User', 9, 'Personal Access Token', '6c03a15b5fcd68fb5a58df347e965a49814b570eb553885c0493695b5fd6a0b2', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:24', '2024-12-10 01:13:24'),
(171, 'App\\Models\\User', 9, 'Personal Access Token', 'b7b2023e4efc85668c5c79dcefe7d3bb1f0234e743f479bc7d8010e504816368', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:24', '2024-12-10 01:13:24'),
(172, 'App\\Models\\User', 9, 'Personal Access Token', '241ae3bc796d05f275c93bda8340ce75b6b7aa7366a59e9ea4fa947ae6aeeb99', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:25', '2024-12-10 01:13:25'),
(173, 'App\\Models\\User', 9, 'Personal Access Token', '344966c23501b14c0a99edbddd2ffcdb891ab2dea3f6a352d4692835b0b484d6', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:25', '2024-12-10 01:13:25'),
(174, 'App\\Models\\User', 9, 'Personal Access Token', '89ae0973fe478836f949968f1447cccd565b032639f008e9d2cf8247565360ca', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:26', '2024-12-10 01:13:26'),
(175, 'App\\Models\\User', 9, 'Personal Access Token', '2fad06ba82370476a6579d2dffc372a20de8492b2070f7a56d50c8ffc8ade65f', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:26', '2024-12-10 01:13:26'),
(176, 'App\\Models\\User', 9, 'Personal Access Token', '645adedf035c8bcaa45c680c7b362660b3d03c45f2bc5c8456a7ca55b98de7ad', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:26', '2024-12-10 01:13:26'),
(177, 'App\\Models\\User', 9, 'Personal Access Token', '868e6df05e252ca3fbbcc1ad266322c3ee8907bc3ff07d8a6bfab72b9af137b5', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:27', '2024-12-10 01:13:27'),
(178, 'App\\Models\\User', 9, 'Personal Access Token', '4d7f082bbbcf357d1e0eed56cc5b2f64929fa2764d49ad04a00dce588647b56f', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:27', '2024-12-10 01:13:27'),
(179, 'App\\Models\\User', 9, 'Personal Access Token', '9b07fc40d6fbc1e115a79b8f17aad9c364e7bd84ea022d28928c79f1b2b76c4c', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:28', '2024-12-10 01:13:28'),
(180, 'App\\Models\\User', 9, 'Personal Access Token', 'd0aef7861e68264a19b7f30c68a80cbf590c7d30eb3f374f4e2a50c995a56dea', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:28', '2024-12-10 01:13:28'),
(181, 'App\\Models\\User', 9, 'Personal Access Token', 'f6996405aa9bf5bca87cb9422ba6030a76ad798e4f5d165efa4da01597ed9ee1', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:28', '2024-12-10 01:13:28'),
(182, 'App\\Models\\User', 9, 'Personal Access Token', 'da35aef32e72f3c04c056d78b25bfa6086139cfbf7b4d4da0c1b6f98192b0cfb', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:29', '2024-12-10 01:13:29'),
(183, 'App\\Models\\User', 9, 'Personal Access Token', 'd323c781b4137f36796a084d806105a195c3c99898323210d8943d492b50acc0', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:29', '2024-12-10 01:13:29'),
(184, 'App\\Models\\User', 9, 'Personal Access Token', '4e66e3ed7eefb027c33227eed4c92e86f85da338e89accf92f57420792d3f532', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:30', '2024-12-10 01:13:30'),
(185, 'App\\Models\\User', 9, 'Personal Access Token', '35e6e5e56b191669ac5f9dbfa940f94cbe1de40d0c075b7c5e6f85242da64075', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:30', '2024-12-10 01:13:30'),
(186, 'App\\Models\\User', 9, 'Personal Access Token', '3d67e684dd771a975852fbdc24f64824e8199c4675e1f119e5a081c128312995', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:30', '2024-12-10 01:13:30'),
(187, 'App\\Models\\User', 9, 'Personal Access Token', 'd4dbdb296bdd4f75ed8cc4837b1e096927ee76ab5d1d4078bee60b6b066bd72f', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:31', '2024-12-10 01:13:31'),
(188, 'App\\Models\\User', 9, 'Personal Access Token', 'b0e41202cf3e10f962ec0130aba499e491ded5dc0282a8bff967a18727bf587e', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:31', '2024-12-10 01:13:31'),
(189, 'App\\Models\\User', 9, 'Personal Access Token', '1d8c76163a4f083b3b2ca3cd4952dcd35d6844aeb30f95795b4c383eb3023128', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:32', '2024-12-10 01:13:32'),
(190, 'App\\Models\\User', 9, 'Personal Access Token', '5f8716c54b8da89d2fbd3594c94d460080468c0a6141d3112c75004e6e34f6d6', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:32', '2024-12-10 01:13:32'),
(191, 'App\\Models\\User', 9, 'Personal Access Token', '812b647c4824ce0cd284ac2bbc67597c5b6c6f76502e2fefc9accc86986cba26', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:33', '2024-12-10 01:13:33'),
(192, 'App\\Models\\User', 9, 'Personal Access Token', 'e4a2de9a6083d52913474e8095ec256660f1096be0defa46eb50df474197040f', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:33', '2024-12-10 01:13:33'),
(193, 'App\\Models\\User', 9, 'Personal Access Token', '58d3a6e1643329570ec84ef5fec84f1b4c2149828a5ba92c11fea3c7086aeae6', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:34', '2024-12-10 01:13:34'),
(194, 'App\\Models\\User', 9, 'Personal Access Token', '2bc82783a1bc1a799c979be488c2cf609ee2f024f8f3ea2fcfc8d34cec17420b', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:34', '2024-12-10 01:13:34'),
(195, 'App\\Models\\User', 9, 'Personal Access Token', 'eeee93b2c377a4502cb4c95494f6f9a12c7dc62392389918a55b0adb1578b2ba', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:34', '2024-12-10 01:13:34'),
(196, 'App\\Models\\User', 9, 'Personal Access Token', '1422f41163b2188abcc6bee6d91a74c9a482b001b0e6109cc4b54e9e1b9f2bc2', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:35', '2024-12-10 01:13:35'),
(197, 'App\\Models\\User', 9, 'Personal Access Token', '36b381c1dcf584f130d11f24f3871b107eef2432061a4cf6f18999d01bd6f932', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:35', '2024-12-10 01:13:35'),
(198, 'App\\Models\\User', 9, 'Personal Access Token', 'b7d26b20364e0dd45bcddeae8dd7b70841627bf9c0b3887fce7e8b872722cb90', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:36', '2024-12-10 01:13:36'),
(199, 'App\\Models\\User', 9, 'Personal Access Token', 'b1f3b875b0460330dc8fe84cf6400e566e220e9e9903bd19028609f214578609', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:36', '2024-12-10 01:13:36'),
(200, 'App\\Models\\User', 9, 'Personal Access Token', 'd97ae99e7490dc5bad6600e3bf7049fd1e2517537914b030338c721e1c083247', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:37', '2024-12-10 01:13:37'),
(201, 'App\\Models\\User', 9, 'Personal Access Token', 'f97b411b1349390fd8f8f901904e7428f91dbf9376a6d6960648a5aac69b93e9', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:37', '2024-12-10 01:13:37'),
(202, 'App\\Models\\User', 9, 'Personal Access Token', '17d2fd5e26aae5b56f23195c5dcbe14dc2a290b70c44d4e4b7ad8aee01133a9d', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:37', '2024-12-10 01:13:37'),
(203, 'App\\Models\\User', 9, 'Personal Access Token', '5122541d575df2387e91e5b87b991f559ba273894324bdd1f2afd2ccdd32876a', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:38', '2024-12-10 01:13:38'),
(204, 'App\\Models\\User', 9, 'Personal Access Token', 'ebae7f0d2a58c89e120affa53d7be97eec6b2b9ba1b71aaeeb7fad82b25153ff', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:38', '2024-12-10 01:13:38'),
(205, 'App\\Models\\User', 9, 'Personal Access Token', 'f8843127b9fe8b3f9a11f25590c5775e1793d4041ad87c3080d9893d52aff370', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:39', '2024-12-10 01:13:39'),
(206, 'App\\Models\\User', 9, 'Personal Access Token', '38e88b0d50c8a09a241a50bc0bcb8e315b69a77fe4e09cca1aeb9fb2fbbcb796', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:39', '2024-12-10 01:13:39'),
(207, 'App\\Models\\User', 9, 'Personal Access Token', 'd74cf2a039e511ba3d45670ff490966ba7afa6dd3348295d7cc0eb9a926e1033', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:39', '2024-12-10 01:13:39'),
(208, 'App\\Models\\User', 9, 'Personal Access Token', 'bc066d5f4f783e37e3967d34a4258576c7577d84f98c58207578db6b9c4452c0', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:40', '2024-12-10 01:13:40'),
(209, 'App\\Models\\User', 9, 'Personal Access Token', 'c85d8b8db3e099d202e0786f243c775862eeb09eb8780a07a69cea9c38a5d49d', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:40', '2024-12-10 01:13:40'),
(210, 'App\\Models\\User', 9, 'Personal Access Token', 'cd8f51e99e1825645775a4d330f391faafa8f0ba66005e3f3b0f321b12e1b01b', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:41', '2024-12-10 01:13:41'),
(211, 'App\\Models\\User', 9, 'Personal Access Token', '4bf4ffa90c2f07cc17a9aeefd4e731a22badfbd808426be0f667e245ecc429bf', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:41', '2024-12-10 01:13:41'),
(212, 'App\\Models\\User', 9, 'Personal Access Token', '168da060786db3ca8146582b2d65a597b769552b3ad06a4b75402feeee302612', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:41', '2024-12-10 01:13:41'),
(213, 'App\\Models\\User', 9, 'Personal Access Token', '9d817b0c2d41dd7889cc31e23923e1c7beedf499029265822ab8867610bfbd6c', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:42', '2024-12-10 01:13:42'),
(214, 'App\\Models\\User', 9, 'Personal Access Token', 'cab23dd0c6d45905ebdc8a87bf00ac3ce3a341c4110ba697f426d4712fee1243', '[\"*\"]', NULL, NULL, '2024-12-10 01:13:42', '2024-12-10 01:13:42'),
(215, 'App\\Models\\User', 9, 'Personal Access Token', 'fb76aae35a484657a402c20462ca8029475e7dfabf10995fb3802f86cc444f76', '[\"*\"]', '2024-12-10 09:38:14', NULL, '2024-12-10 01:13:43', '2024-12-10 09:38:14'),
(216, 'App\\Models\\User', 9, 'Personal Access Token', 'dd96f0bc78e4c220f6a697cbc2213073c1d82a389c3347b79e6ac4a1b9843932', '[\"*\"]', '2024-12-10 07:44:38', NULL, '2024-12-10 07:43:13', '2024-12-10 07:44:38'),
(223, 'App\\Models\\User', 11, 'Personal Access Token', '10983b74eafc71e26c54fb8ee61db128267a513d248414e4dfaf48a85b2949af', '[\"*\"]', '2024-12-13 02:40:41', NULL, '2024-12-12 22:59:53', '2024-12-13 02:40:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `id_review` bigint(20) UNSIGNED NOT NULL,
  `id_film` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `rating_review` int(11) NOT NULL,
  `deskripsi_review` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`id_review`, `id_film`, `id_user`, `rating_review`, `deskripsi_review`, `created_at`, `updated_at`) VALUES
(3, 5, 11, 5, 'Bagus Banget', NULL, NULL),
(4, 5, 11, 3, 'Bagus Banget', NULL, NULL),
(5, 5, 13, 5, 'adawdawd', '2024-12-04 23:11:00', '2024-12-04 23:11:00'),
(6, 5, 13, 5, 'bikini pusing', '2024-12-04 23:11:29', '2024-12-04 23:11:29'),
(7, 5, 13, 5, 'Agak bingung yah', '2024-12-04 23:14:32', '2024-12-04 23:14:32'),
(8, 5, 13, 3, 'gak suka', '2024-12-04 23:17:52', '2024-12-04 23:17:52'),
(9, 5, 11, 5, 'dasdas', '2024-12-04 23:54:05', '2024-12-04 23:54:05'),
(10, 5, 14, 1, 'Bagus', '2024-12-05 00:16:23', '2024-12-05 00:16:23'),
(11, 5, 11, 5, 'Bagus banget', '2024-12-12 09:16:58', '2024-12-12 09:16:58'),
(12, 5, 11, 5, 'asdas', '2024-12-12 23:00:10', '2024-12-12 23:00:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GeZrv5AIHyK6KxteayfZf3ucj3ZXX3p9Jlv9TPDw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFVuTFNCQkxTMklVWUFMbXZsWFZZd3NnVVNhVzFVYVE3aDNmeXRPZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1732094265);

-- --------------------------------------------------------

--
-- Struktur dari tabel `studio`
--

CREATE TABLE `studio` (
  `id_studio` bigint(20) UNSIGNED NOT NULL,
  `nomor_studio` int(11) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `studio`
--

INSERT INTO `studio` (`id_studio`, `nomor_studio`, `kapasitas`, `created_at`, `updated_at`) VALUES
(4, 1, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` bigint(20) UNSIGNED NOT NULL,
  `id_transaksi` bigint(20) UNSIGNED NOT NULL,
  `id_jadwal` bigint(20) UNSIGNED NOT NULL,
  `jumlah_kursi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `id_transaksi`, `id_jadwal`, `jumlah_kursi`, `created_at`, `updated_at`, `id_user`) VALUES
(9, 13, 5, 1, '2024-12-10 09:37:26', '2024-12-10 09:37:26', 9),
(10, 14, 6, 1, '2024-12-10 09:37:54', '2024-12-10 09:37:54', 9),
(11, 15, 5, 10, '2024-12-10 09:38:11', '2024-12-10 09:38:11', 9),
(12, 16, 11, 5, '2024-12-12 08:16:07', '2024-12-12 08:16:07', 14),
(13, 17, 11, 1, '2024-12-12 08:16:59', '2024-12-12 08:16:59', 14),
(14, 18, 11, 1, '2024-12-12 09:15:06', '2024-12-12 09:15:06', 11),
(15, 19, 11, 3, '2024-12-12 09:28:34', '2024-12-12 09:28:34', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `total_harga` decimal(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `total_harga`, `status`, `created_at`, `updated_at`) VALUES
(2, 13, 15000.00, 1, NULL, NULL),
(4, 9, 50000.00, 1, '2024-12-10 08:46:53', '2024-12-10 08:46:53'),
(6, 9, 50000.00, 1, '2024-12-10 09:01:16', '2024-12-10 09:01:16'),
(7, 9, 50000.00, 1, '2024-12-10 09:28:15', '2024-12-10 09:28:15'),
(8, 9, 50000.00, 1, '2024-12-10 09:28:57', '2024-12-10 09:28:57'),
(9, 9, 50000.00, 1, '2024-12-10 09:29:04', '2024-12-10 09:29:04'),
(10, 9, 50000.00, 1, '2024-12-10 09:30:37', '2024-12-10 09:30:37'),
(11, 9, 50000.00, 1, '2024-12-10 09:32:09', '2024-12-10 09:32:09'),
(12, 9, 50000.00, 1, '2024-12-10 09:33:36', '2024-12-10 09:33:36'),
(13, 9, 50000.00, 1, '2024-12-10 09:37:26', '2024-12-10 09:37:26'),
(14, 9, 50000.00, 1, '2024-12-10 09:37:54', '2024-12-10 09:37:54'),
(15, 9, 500000.00, 1, '2024-12-10 09:38:11', '2024-12-10 09:38:11'),
(16, 14, 250000.00, 1, '2024-12-12 08:16:07', '2024-12-12 08:16:07'),
(17, 14, 50000.00, 1, '2024-12-12 08:16:59', '2024-12-12 08:16:59'),
(18, 11, 50000.00, 1, '2024-12-12 09:15:06', '2024-12-12 09:15:06'),
(19, 11, 150000.00, 1, '2024-12-12 09:28:33', '2024-12-12 09:28:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `first_name`, `last_name`, `email`, `password`, `no_telp`, `gender`, `tanggal_lahir`, `profile_picture`, `created_at`, `updated_at`) VALUES
(9, 'df', 'as', 'frendy@gmail.com', '$2y$12$oGXRNOLxO46YGF7SBLMOl.mj./rlq5Tkvilpsm7Ok6RFXPCGdS2jG', '123123123', 'Female', '10/12/2024', 'profile_pictures/EcgaXxBLzsdr6SifmqEW62bd9LVZmMsEVGD0NpMC.jpg', '2024-11-29 04:13:08', '2024-12-09 23:14:55'),
(10, 'Frendy', 'Heng', 'frendy@gmail.com', '$2y$12$/jhaD/WaNSvG4vAYDtxynuiDlPltBvl0RRssqdLaIEd9O7kgbYLPW', '111111111111', 'female', '01-11-2024', 'images/blank-profile-picture.jpg', '2024-11-29 04:13:08', '2024-11-29 04:13:08'),
(11, 'Fabian', 'Alexander', 'fabian@gmail.com', '$2y$12$QV6UKGrcq.25dQZgYOqV.Ov7qxzXeZ95oyTQPwKjbJ8AuFmxOUQ7u', '111111111111', 'Female', '24-11-2024', 'profile_pictures/qeUbji0Vp0slvISufCgB1xcbeGfbHyCY6nYDU0Zx.jpg', '2024-11-29 04:15:46', '2024-12-12 23:01:05'),
(12, 'Eric', 'Daniswara', 'eric@gmail.com', '$2y$12$.lSxl1nnvNnfuLKJwIL0lO7c55TQmdrfm1et4bmLh36pVIApRd2Ni', '11111111', 'male', '01-12-2024', 'images/blank-profile-picture.jpg', '2024-12-01 06:06:09', '2024-12-01 06:06:09'),
(13, 'Vince', 'Carter', 'vince@gmail.com', '$2y$12$HyTBEtABMMN33ShYZV762uKRSwWDbP5aPuTxewTvpx5rJke3oFyMe', '12345678', 'male', '02-12-2024', 'images/blank-profile-picture.jpg', '2024-12-01 21:43:38', '2024-12-01 21:43:38'),
(14, 'Testingtesting', 'Testlast', 'testing@gmail.com', '$2y$12$INrDw9hS0mFXhY7isVHBJugy2qL4i0I9e2Vox2PcS2UH3IGMpFDAe', '0835345345', 'Female', '05/12/2024', 'profile_pictures/jn1C1PDaieWOwACbGheEZUKbEbAygciRE1eB2QXX.jpg', '2024-12-05 00:13:14', '2024-12-05 00:14:32'),
(15, 'Eric', 'Daniswara', 'ericdaniswara@gmail.com', '$2y$12$dEnGR/m5Wec5jh8zp044Qegw7cYAGF.uTiLD53.ARXUbTGcg0mRsC', '111111111', 'male', '08-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 21:20:17', '2024-12-12 21:20:17'),
(20, 'asd', 'asd', 'adsad@gmail.com', '$2y$12$Pb1T.yehVioRa/j1Eb1kMO1YgVJzKkpzfyMSO0V2SxJo4Jpbt5RQ6', '111111', 'male', '13-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 21:46:32', '2024-12-12 21:46:32'),
(21, 'dasdas', 'adad', 'dasda@gmail.com', '$2y$12$dsDO3O8pFAGU2DblF3KSHetD0dgivGnrs.E22g9gzzqANSzj5xuKq', '1111111', 'male', '13-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 21:48:06', '2024-12-12 21:48:06'),
(22, 'aasdas', 'asdasd', 'adasda@gmail.com', '$2y$12$gZA806DKj8uqcnDIKpQ3w.vLGoi6aOBxHXQmijLFefeThxDbXIcO.', '111111', 'male', '13-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 22:01:51', '2024-12-12 22:01:51'),
(23, 'aasdas', 'asdasd', 'adasda@gmail.com', '$2y$12$bNiA5X9miDXBRaMGS0kaOuNu/eIJHg3QVCatwltS3if60QECRl952', '111111', 'male', '13-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 22:01:51', '2024-12-12 22:01:51'),
(24, 'ADAAD', 'ASDASD', 'ADAS@GMAIL.COM', '$2y$12$sEwo/wGvlvS2Iq1kea883.rNDUuGBU0h9KGBbvE8OHoLrpIlr0Sfy', '111111', 'male', '13-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 22:05:25', '2024-12-12 22:05:25'),
(25, 'ASDA', 'ASDA', 'ASDSD@GMAIL.COM', '$2y$12$g4xEghcfDmeUPzi7VzF3w.y0Gm8mGmd.6L8CQXe9W.ufXK8GbyTPa', '111111', 'male', '13-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 22:06:11', '2024-12-12 22:06:11'),
(26, 'ASDA', 'ASDA', 'ASDSD@GMAIL.COM', '$2y$12$3hIoIxK0wWfBvRCkjOSDfupYfzhvHr/1h8lNsgCrLBPLI5eLLWhXe', '111111', 'male', '13-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 22:06:12', '2024-12-12 22:06:12'),
(27, 'ASDA', 'ASDA', 'ASDSD@GMAIL.COM', '$2y$12$2HOvP0XCvREKc98r9hNt9e1pZF2hhUiBI0qrCd86xiVD98yCJHSHi', '111111', 'female', '13-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 22:06:13', '2024-12-12 22:06:13'),
(28, 'ASDA', 'ASDA', 'ASDSD@GMAIL.COM', '$2y$12$V.eCHWckjGua7XOVFyy.mOy4UZlQiu3FdkKsEppbd6e2.o.W45Kiy', '111111', 'female', '01-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 22:06:13', '2024-12-12 22:06:13'),
(29, 'ASDA', 'ASDA', 'ASDSD@GMAIL.COM', '$2y$12$BmP6sgE.f4Tq7JYuG6gbV.1teIv.ihk8bIZgnoOsFKJtmWRlCrMe2', '111111', 'female', '01-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 22:06:13', '2024-12-12 22:06:13'),
(30, 'asdas', 'asdas', 'adasuiygd@gmail.com', '$2y$12$SbMbERGg.bODOls99Vd02efjXGhfQpVPKAsK/AFsYKfptHtcamuxq', '111111', 'male', '13-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 22:37:10', '2024-12-12 22:37:10'),
(31, 'asdas', 'adsasd', 'dadhas@gmail.com', '$2y$12$PTeWREsz9PHdudKf9Y/.R./6ACMkgMS6FkMRDCeTNkV0ZT91Xaq9u', '111111', 'male', '13-12-2024', 'images/blank-profile-picture.jpg', '2024-12-12 22:40:14', '2024-12-12 22:40:14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Indeks untuk tabel `histori_transaksi`
--
ALTER TABLE `histori_transaksi`
  ADD PRIMARY KEY (`id_histori`),
  ADD KEY `histori_transaksi_id_user_foreign` (`id_user`),
  ADD KEY `histori_transaksi_id_transaksi_foreign` (`id_transaksi`);

--
-- Indeks untuk tabel `jadwal_tayang`
--
ALTER TABLE `jadwal_tayang`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_film_foreign_jadwal` (`id_film`),
  ADD KEY `id_studio_foreign_jadwal` (`id_studio`);

--
-- Indeks untuk tabel `makanan_minuman`
--
ALTER TABLE `makanan_minuman`
  ADD PRIMARY KEY (`id_makanan_minuman`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `pembayaran_id_transaksi_foreign` (`id_transaksi`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `review_id_film_foreign` (`id_film`),
  ADD KEY `review_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`id_studio`);

--
-- Indeks untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `tiket_id_transaksi_foreign` (`id_transaksi`),
  ADD KEY `id_film_id_tiket_foreign` (`id_jadwal`),
  ADD KEY `id_user_tiket_foreign` (`id_user`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `transaksi_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `film`
--
ALTER TABLE `film`
  MODIFY `id_film` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `histori_transaksi`
--
ALTER TABLE `histori_transaksi`
  MODIFY `id_histori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jadwal_tayang`
--
ALTER TABLE `jadwal_tayang`
  MODIFY `id_jadwal` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `makanan_minuman`
--
ALTER TABLE `makanan_minuman`
  MODIFY `id_makanan_minuman` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT untuk tabel `review`
--
ALTER TABLE `review`
  MODIFY `id_review` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `studio`
--
ALTER TABLE `studio`
  MODIFY `id_studio` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `histori_transaksi`
--
ALTER TABLE `histori_transaksi`
  ADD CONSTRAINT `histori_transaksi_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE,
  ADD CONSTRAINT `histori_transaksi_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal_tayang`
--
ALTER TABLE `jadwal_tayang`
  ADD CONSTRAINT `id_film_foreign_jadwal` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_studio_foreign_jadwal` FOREIGN KEY (`id_studio`) REFERENCES `studio` (`id_studio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_id_film_foreign` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `id_jadwal_id_tiket_foreign` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal_tayang` (`id_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_tiket_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_user_tiket_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
