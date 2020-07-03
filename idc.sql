-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2020 at 09:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idc`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `com_name_TH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_name_EN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_creator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `com_editor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_statuses`
--

CREATE TABLE `customer_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `cs_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(61, '2014_10_12_100000_create_password_resets_table', 1),
(62, '2020_05_26_040712_create_projects_table', 1),
(63, '2020_05_26_040856_create_customer_statuses_table', 1),
(64, '2020_05_26_040935_create_project_types_table', 1),
(65, '2020_05_26_041044_create_service_types_table', 1),
(66, '2020_05_26_041059_create_service_plans_table', 1),
(67, '2020_05_26_041317_create_project_details_table', 1),
(68, '2020_05_26_041326_create_companies_table', 1),
(69, '2020_05_26_041336_create_visitors_table', 1),
(70, '2020_05_26_041350_create_visitor_works_table', 1),
(71, '2020_05_26_041400_create_visitor_contacts_table', 1),
(72, '2020_05_26_041412_create_workings_table', 1),
(73, '2020_05_26_041422_create_worker_types_table', 1),
(74, '2020_05_26_041433_create_workers_table', 1),
(75, '2020_06_04_082357_create_users_table', 1);

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_date_start` date NOT NULL,
  `pro_date_end` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

CREATE TABLE `project_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rack_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rack_unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pd_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_id` int(10) UNSIGNED NOT NULL,
  `cs_id` int(10) UNSIGNED NOT NULL,
  `pt_id` int(10) UNSIGNED NOT NULL,
  `sp_id` int(10) UNSIGNED NOT NULL,
  `pro_creator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_editor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_types`
--

CREATE TABLE `project_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `pt_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_plans`
--

CREATE TABLE `service_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `sp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_types`
--

CREATE TABLE `service_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `st_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kawinwat Sayangbarp', 'kawinwat_charp@hotmail.com', NULL, '$2y$10$elCeQatwkEZicvpP.rRckOTrL6b5TSVlfnrB52kUrUxB0tFLslPuG', 'User', NULL, '2020-06-14 21:52:32', '2020-06-14 21:52:32'),
(2, 'ชาร์ป', 'charp@gmail.com', NULL, '$2y$10$gIJNtHDC/ajVYXC1tByDS.uWBr4l53HWHBH8xUCKCU5CdD9N7hRCC', 'Admin', NULL, '2020-06-14 22:13:49', '2020-06-14 22:13:49'),
(3, 'Job', 'jobmunjoo@gmail.com', NULL, '$2y$10$BNkT2EusDJMTitxySx6FJ./C9DypSRA3k1e8ZyJ3pHDIbsHVH5g.G', 'User', NULL, '2020-06-14 22:27:30', '2020-06-14 22:27:30'),
(4, '45646', '59310@go.buu.ac.th', NULL, '$2y$10$vZeGa1iQY3ph04SIyo7.eela6GLBAKReyrJdWiJJhFpeeF9kEuBs.', 'User', NULL, '2020-06-14 23:59:00', '2020-06-14 23:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `vis_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vis_lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vis_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vis_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vis_doc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vis_creator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vis_editor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_contacts`
--

CREATE TABLE `visitor_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `vw_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_works`
--

CREATE TABLE `visitor_works` (
  `id` int(10) UNSIGNED NOT NULL,
  `vis_id` int(10) UNSIGNED NOT NULL,
  `com_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `id` int(10) UNSIGNED NOT NULL,
  `work_id` int(10) UNSIGNED NOT NULL,
  `vw_id` int(10) UNSIGNED NOT NULL,
  `wt_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `worker_types`
--

CREATE TABLE `worker_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `wt_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workings`
--

CREATE TABLE `workings` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(10) UNSIGNED NOT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_date_start` date NOT NULL,
  `work_date_end` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_statuses`
--
ALTER TABLE `customer_statuses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_details`
--
ALTER TABLE `project_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_details_pro_id_foreign` (`pro_id`),
  ADD KEY `project_details_st_id_foreign` (`st_id`),
  ADD KEY `project_details_cs_id_foreign` (`cs_id`),
  ADD KEY `project_details_pt_id_foreign` (`pt_id`),
  ADD KEY `project_details_sp_id_foreign` (`sp_id`);

--
-- Indexes for table `project_types`
--
ALTER TABLE `project_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_plans`
--
ALTER TABLE `service_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_types`
--
ALTER TABLE `service_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_contacts`
--
ALTER TABLE `visitor_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitor_contacts_pro_id_foreign` (`pro_id`),
  ADD KEY `visitor_contacts_vw_id_foreign` (`vw_id`);

--
-- Indexes for table `visitor_works`
--
ALTER TABLE `visitor_works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitor_works_vis_id_foreign` (`vis_id`),
  ADD KEY `visitor_works_com_id_foreign` (`com_id`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workers_work_id_foreign` (`work_id`),
  ADD KEY `workers_vw_id_foreign` (`vw_id`),
  ADD KEY `workers_wt_id_foreign` (`wt_id`);

--
-- Indexes for table `worker_types`
--
ALTER TABLE `worker_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workings`
--
ALTER TABLE `workings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workings_pro_id_foreign` (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_statuses`
--
ALTER TABLE `customer_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_details`
--
ALTER TABLE `project_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_types`
--
ALTER TABLE `project_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_plans`
--
ALTER TABLE `service_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_types`
--
ALTER TABLE `service_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_contacts`
--
ALTER TABLE `visitor_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_works`
--
ALTER TABLE `visitor_works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `worker_types`
--
ALTER TABLE `worker_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workings`
--
ALTER TABLE `workings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project_details`
--
ALTER TABLE `project_details`
  ADD CONSTRAINT `project_details_cs_id_foreign` FOREIGN KEY (`cs_id`) REFERENCES `customer_statuses` (`id`),
  ADD CONSTRAINT `project_details_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `project_details_pt_id_foreign` FOREIGN KEY (`pt_id`) REFERENCES `project_types` (`id`),
  ADD CONSTRAINT `project_details_sp_id_foreign` FOREIGN KEY (`sp_id`) REFERENCES `service_plans` (`id`),
  ADD CONSTRAINT `project_details_st_id_foreign` FOREIGN KEY (`st_id`) REFERENCES `service_types` (`id`);

--
-- Constraints for table `visitor_contacts`
--
ALTER TABLE `visitor_contacts`
  ADD CONSTRAINT `visitor_contacts_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `visitor_contacts_vw_id_foreign` FOREIGN KEY (`vw_id`) REFERENCES `visitor_works` (`id`);

--
-- Constraints for table `visitor_works`
--
ALTER TABLE `visitor_works`
  ADD CONSTRAINT `visitor_works_com_id_foreign` FOREIGN KEY (`com_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `visitor_works_vis_id_foreign` FOREIGN KEY (`vis_id`) REFERENCES `visitors` (`id`);

--
-- Constraints for table `workers`
--
ALTER TABLE `workers`
  ADD CONSTRAINT `workers_vw_id_foreign` FOREIGN KEY (`vw_id`) REFERENCES `visitor_works` (`id`),
  ADD CONSTRAINT `workers_work_id_foreign` FOREIGN KEY (`work_id`) REFERENCES `workings` (`id`),
  ADD CONSTRAINT `workers_wt_id_foreign` FOREIGN KEY (`wt_id`) REFERENCES `worker_types` (`id`);

--
-- Constraints for table `workings`
--
ALTER TABLE `workings`
  ADD CONSTRAINT `workings_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `projects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
