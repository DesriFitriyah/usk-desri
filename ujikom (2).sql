-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2022 at 08:54 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_11_24_175158_create_roles_table', 1),
(5, '2022_02_10_064441_create_tb_catatans_table', 2),
(6, '2022_03_08_073916_create_profils_table', 3),
(7, '2022_03_09_021313_create_kotas_table', 3),
(8, '2022_03_09_021825_create_kecamatans_table', 3),
(9, '2022_03_09_021855_create_kelurahans_table', 3),
(10, '2022_03_09_021923_create_provinsis_table', 3),
(11, '2021_11_24_175510_create_role_user_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(3, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 3, 5, NULL, NULL),
(6, 3, 6, NULL, NULL),
(7, 3, 7, NULL, NULL),
(9, 3, 9, NULL, NULL),
(10, 3, 10, NULL, NULL),
(11, 1, 11, NULL, NULL),
(12, 3, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_catatans`
--

CREATE TABLE `tb_catatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(20) NOT NULL,
  `txt_tglperjalanan` date NOT NULL,
  `txt_jam` time NOT NULL,
  `txt_lokasi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txt_suhu` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_catatans`
--

INSERT INTO `tb_catatans` (`id`, `user_id`, `txt_tglperjalanan`, `txt_jam`, `txt_lokasi`, `txt_suhu`, `created_at`, `updated_at`) VALUES
(8, 9, '2022-03-19', '09:33:00', 'Bali', '36', '2022-03-18 19:34:27', '2022-03-18 19:34:27'),
(10, 9, '2022-03-17', '10:38:00', 'Hayalan', '36', '2022-03-18 19:38:29', '2022-03-18 19:38:29'),
(12, 10, '2022-03-24', '09:51:00', 'Bogor', '34', '2022-03-22 18:51:18', '2022-04-02 22:41:33'),
(13, 11, '2022-03-17', '14:05:00', 'Bekasi', '36,5', '2022-03-22 23:05:59', '2022-03-31 01:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `nik`, `role`, `no_telp`, `foto`, `alamat`) VALUES
(5, 'Desri Fitriyah', 'Desri@gmail.com', NULL, '$2y$10$6BMa/BRZtKJx3RbIRBz5xugxS522IkswZJ/qFb7XruWxCLQQWIyfW', NULL, '2022-03-08 18:19:10', '2022-03-12 00:15:39', '45678456', 'user', '345674567', 'cb.jpg', ''),
(6, 'Fajar', 'fajar@gmail.com', NULL, '$2y$10$k5au4XY7CCPPAAXIVhrfwOhXF3laVhJ.qICDayXbxB0eeyQUbYCAW', NULL, '2022-03-09 18:49:40', '2022-03-09 18:49:40', '2345678', 'user', '87654', '', ''),
(7, 'syalza', 'syalza@gmail.com', NULL, '$2y$10$6EV5SwGukp1kRIVfxqo9dOGGPaCquL5I.Z3qQy7lLDn7kLHA86qAK', NULL, '2022-03-13 22:38:45', '2022-03-13 22:46:22', '87654', 'user', '45678', 'test.jpg', ''),
(9, 'nisa', 'nisaaaa@gmail.com', NULL, '$2y$10$b2lPCqIOrQY1F0E7RVVoNundG5ixiY9P.iBvCUI0rx4JCv4mzNarG', NULL, '2022-03-18 19:10:43', '2022-03-18 19:10:43', '34567654', 'user', '34567654', 'png', ''),
(10, 'fayza', 'fayza@gmail.com', NULL, '$2y$10$eD82YfiQRTiHo/K0r6HobOudhcr2nXZe4wu8xHbFQ.t6RuIPvB95a', NULL, '2022-03-22 18:42:34', '2022-03-28 05:49:12', '876545678', 'user', '56787656', 'cb.jpg', NULL),
(11, 'Admin', 'Admin@gmail.com', NULL, '$2y$10$l4CjRSyO38yjn/EH4.JkxuEdVQslAPCwjFFjL/v8ljVhZHpie.rDO', NULL, '2022-03-27 20:41:47', '2022-03-31 00:46:31', '1234567890123', 'admin', '081212345678', '8.jpg', 'JL.Haji Midi, Kelurahan, Kecamatan, Kota, Provinsi,'),
(12, 'Jinyoutng Pacar Upay part2', 'jinyoung@gmail.com', NULL, '$2y$10$k0NJko7hmbT//ZJ7CoqiTOVXRoe6qQPc9B6eTXnFYZHWqQUPJS.Im', NULL, '2022-03-29 18:39:48', '2022-03-29 18:41:46', '12345678901234', 'user', '081423567829', 'test.jpg', 'jl.haji midi, WALIKUKUN, WIDODAREN, KABUPATEN NGAWI, JAWA TIMUR,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_catatans`
--
ALTER TABLE `tb_catatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_catatans`
--
ALTER TABLE `tb_catatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
