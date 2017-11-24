-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2017 at 11:13 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quote`
--

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `likeable_id` int(11) NOT NULL,
  `likeable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2017_09_20_231328_create_tags_table', 1),
(2, '2017_09_21_083121_create_notification_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quote_id` int(10) UNSIGNED NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `subject`, `user_id`, `quote_id`, `seen`, `created_at`, `updated_at`) VALUES
(1, 'ada komentar', 2, 16, 1, '2017-09-21 01:54:46', '2017-09-21 02:29:15'),
(2, 'ada komentar dari Ajat Darojat', 2, 16, 1, '2017-09-21 01:55:57', '2017-09-21 02:29:15'),
(3, 'ada komentar dari Ajat Darojat', 2, 16, 1, '2017-09-21 02:18:52', '2017-09-21 02:29:15');

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
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `title`, `slug`, `subject`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'sdndkfmkldfmk', 'sdndkfmkldfmk', 'dvsmldsmskld', 1, '2017-09-19 09:46:55', '2017-09-19 09:46:55'),
(2, 'rnklerj glerk ajajja', 'rnklerj-glerk-ajajja', 'bmfdlmdfldf fdm;ldf, b;ldf', 1, '2017-09-19 09:50:03', '2017-09-19 09:50:03'),
(6, 'ajat darojat', 'ajat-darojat-1505844338', 'smalksd sfnhdklsjd swefnkl;sj \r\nsdmspodk nmslms', 1, '2017-09-19 11:05:38', '2017-09-19 11:05:38'),
(7, 'berhasil disimpanm', 'berhasil-disimpanm', 'kaspkas asojopaskj askapk', 1, '2017-09-19 11:10:55', '2017-09-19 11:10:55'),
(8, 'sdfhjudfsbh sfdjnkls sdfmklds', 'sdfhjudfsbh-sfdjnkls-sdfmklds', 'mdfskjmdfs sdfmkldfs sdkflnmpolsfmd sfdlmdfsl', 1, '2017-09-19 11:25:10', '2017-09-19 11:25:10'),
(9, 'mdvsomsdv vsdnopsdv sdv sdvjopjs', 'mdvsomsdv-vsdnopsdv-sdv-sdvjopjs', 'mvsdojdvsk sdvnkodsvn svd knsdivo', 1, '2017-09-19 11:26:22', '2017-09-19 11:26:22'),
(10, 'test tag', 'test-tag', 'basknjas asklnklasm asnklas', 1, '2017-09-20 17:14:21', '2017-09-20 17:14:21'),
(11, 'mbdflm;l', 'mbdflml', 'mdsklmkls', 1, '2017-09-20 17:24:54', '2017-09-20 17:24:54'),
(12, 'agaggagagga', 'agaggagagga', 'agaggagaggaagaggagaggaagaggagaggaagaggagaggaagaggagaggaagaggagagga', 1, '2017-09-20 17:27:01', '2017-09-20 17:27:01'),
(13, 'msvklsmdkl', 'msvklsmdkl', 'mvsdlmslms', 1, '2017-09-20 17:30:33', '2017-09-20 17:30:33'),
(14, 'merdeek merdeka', 'merdeek-merdeka', 'merdeek merdekamerdeek merdekamerdeek merdekamerdeek merdekamerdeek merdekamerdeek merdeka', 1, '2017-09-20 17:31:25', '2017-09-20 17:31:25'),
(15, 'ajjat daraojay ajjat daraojay ajjat daraojay', 'ajjat-daraojay-ajjat-daraojay-ajjat-daraojay', 'ajjat daraojay ajjat daraojay ajjat daraojayajjat daraojay ajjat daraojay v', 1, '2017-09-20 18:06:02', '2017-09-20 18:06:02'),
(16, 'soekarno', 'soekarno', ',dsl;,sdl,sd', 2, '2017-09-20 22:47:21', '2017-09-20 22:47:21'),
(17, 'baru baru baru', 'baru-baru-baru', 'faesjklasjka', 2, '2017-09-21 02:52:29', '2017-09-21 02:52:29'),
(18, 'baru banget', 'baru-banget', 'msdf,;lk,ds sdm,;psw\'[ swvdmps', 2, '2017-09-21 02:54:18', '2017-09-21 02:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `quote_comments`
--

CREATE TABLE `quote_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quote_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quote_comments`
--

INSERT INTO `quote_comments` (`id`, `subject`, `quote_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'msdms;l', 2, 2, '2017-09-20 02:58:39', '2017-09-20 02:58:39'),
(2, 'hay hay ha', 5, 1, '2017-09-20 04:45:15', '2017-09-20 04:45:15'),
(3, 'vsdnksdnks', 5, 1, '2017-09-20 04:45:42', '2017-09-20 04:45:42'),
(4, 'xmdl.ds,fdmkldfmkl3132123366666', 6, 1, '2017-09-20 05:04:52', '2017-09-20 07:09:28'),
(5, 'akaak', 6, 1, '2017-09-20 05:05:09', '2017-09-20 05:05:09'),
(6, '.df;,df,df.,df,df v34223420000-', 6, 2, '2017-09-20 07:10:24', '2017-09-20 07:12:22'),
(7, 'dsfnmkdsmkdsl', 6, 1, '2017-09-20 15:48:03', '2017-09-20 15:48:03'),
(8, 'kmdfm,dfl', 6, 1, '2017-09-20 15:51:39', '2017-09-20 15:51:39'),
(9, 'ksdfllksls', 1, 1, '2017-09-20 16:11:29', '2017-09-20 16:11:29'),
(10, 'hwkiwej wojewojkewo wefnlwkej', 13, 1, '2017-09-20 21:50:47', '2017-09-20 21:50:47'),
(11, 'smd;lsmkls', 1, 2, '2017-09-20 22:36:01', '2017-09-20 22:36:01'),
(12, 'ds,m;lsd,mls', 14, 1, '2017-09-20 22:47:58', '2017-09-20 22:47:58'),
(13, 'sanmklsmdklsdm', 16, 1, '2017-09-20 22:53:20', '2017-09-20 22:53:20'),
(14, 'adsjklasja asklmaklma', 16, 1, '2017-09-21 01:54:46', '2017-09-21 01:54:46'),
(15, 'tetshasklja', 16, 1, '2017-09-21 01:55:57', '2017-09-21 01:55:57'),
(16, 'msdlkm sdnoiewjs sgjmowe', 16, 1, '2017-09-21 02:18:52', '2017-09-21 02:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `quote_tag`
--

CREATE TABLE `quote_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `quote_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quote_tag`
--

INSERT INTO `quote_tag` (`id`, `quote_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 13, 1, NULL, NULL),
(2, 14, 1, NULL, NULL),
(5, 15, 1, NULL, NULL),
(6, 16, 1, NULL, NULL),
(7, 17, 1, NULL, NULL),
(8, 18, 1, NULL, NULL),
(9, 18, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cinta', NULL, NULL),
(2, 'Motivasi', NULL, NULL),
(3, 'Kehidupan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ajat Darojat', 'ajatdarojat45@gmail.com', '$2y$10$yb2Ft3a6vHCVZiveOxoLDunMNHVcTFiJZMvHug67sLpUiOOYRLUTa', '7O43Ps8mzXB9qN1COTt5pXXMacULxdnwsMrxqCNU0H19LUV15U5jEvSRsJzM', '2017-09-19 07:24:45', '2017-09-19 07:24:45'),
(2, 'Soekarno', 'soekarno@gmail.com', '$2y$10$bd.XFIU/whDlUYMAE50R6et9zZiZUFGUVaRj03TFpYYxNpBnKnM9G', 'm5mMRGzlnLBYTNTUfbM0m8q7hzXMApUo2DrwyITI3f1uysOGozdb0J7PAlw5', '2017-09-19 18:54:51', '2017-09-19 18:54:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_quote_id_foreign` (`quote_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quote_comments`
--
ALTER TABLE `quote_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quote_tag`
--
ALTER TABLE `quote_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `quote_comments`
--
ALTER TABLE `quote_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `quote_tag`
--
ALTER TABLE `quote_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_quote_id_foreign` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
