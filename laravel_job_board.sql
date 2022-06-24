-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3307
-- Létrehozás ideje: 2022. Már 28. 22:50
-- Kiszolgáló verziója: 10.4.10-MariaDB
-- PHP verzió: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `laravel_job_board`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `clicks`
--

CREATE TABLE `clicks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_highlighted` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `title`, `slug`, `company`, `location`, `logo`, `is_highlighted`, `is_active`, `content`, `apply_link`, `created_at`, `updated_at`) VALUES
(1, 11, 'Consectetur eligendi blanditiis sunt.', 'consectetur-eligendi-blanditiis-sunt-1623', 'Lindgren-Hills', 'Algeria', '35cc5c7becd075ea73cfa7995804cb7f.png', 0, 1, '', 'http://www.upton.biz/', '2022-03-15 07:16:06', '2022-03-15 07:16:06'),
(2, 12, 'Doloremque tenetur qui officiis aliquid.', 'doloremque-tenetur-qui-officiis-aliquid-7807', 'Sawayn, Gulgowski and Raynor', 'Guinea-Bissau', '68c66fa007c0683e2b2d9eeb7bbf36cc.png', 0, 1, '', 'http://www.stehr.com/inventore-qui-et-quis-sapiente-ab-iure', '2022-03-03 03:10:05', '2022-03-03 03:10:05'),
(3, 12, 'Voluptas ut itaque veritatis nobis quia occaecati natus accusamus.', 'voluptas-ut-itaque-veritatis-nobis-quia-occaecati-natus-accusamus-3066', 'Schimmel Ltd', 'Korea', 'db944d0eeff7173a517868f515b30fd6.png', 0, 1, '', 'http://sawayn.info/', '2022-03-16 09:12:18', '2022-03-16 09:12:18'),
(4, 13, 'Dignissimos quis iusto inventore accusantium eos.', 'dignissimos-quis-iusto-inventore-accusantium-eos-4833', 'Luettgen PLC', 'Indonesia', '4c99f8bf51453d932f9c376ddd745c49.png', 0, 1, '', 'http://www.fisher.info/sed-provident-iure-doloribus-quibusdam-autem-adipisci-at-nobis.html', '2022-03-25 23:46:50', '2022-03-25 23:46:50'),
(5, 13, 'Et fuga ab minus nulla.', 'et-fuga-ab-minus-nulla-8260', 'Koepp-Walsh', 'Greece', '2eeffeea6d86d6cf5a7cd5f3de8ea166.png', 0, 1, '', 'http://renner.com/dolore-cumque-voluptatum-molestias-nihil-distinctio-aut-ut.html', '2022-03-25 09:24:50', '2022-03-25 09:24:50'),
(6, 13, 'Aut adipisci dolorem adipisci architecto.', 'aut-adipisci-dolorem-adipisci-architecto-2323', 'Turner Ltd', 'Samoa', 'e33a646d367777216ad69c44078ec7e4.png', 0, 1, '', 'http://labadie.com/', '2022-03-11 22:25:41', '2022-03-11 22:25:41'),
(7, 14, 'Voluptatem nihil est enim quam magni saepe blanditiis animi.', 'voluptatem-nihil-est-enim-quam-magni-saepe-blanditiis-animi-8384', 'Hammes-Hansen', 'United Kingdom', 'c95cf7ab6acba4684cc46d433cc1e7cc.png', 0, 1, '', 'https://www.jacobson.info/tempora-illum-tempora-hic-earum-dolorem-est', '2022-03-23 05:07:12', '2022-03-23 05:07:12'),
(8, 14, 'Laborum et rerum adipisci.', 'laborum-et-rerum-adipisci-5167', 'Schroeder Inc', 'Uruguay', '8d12c3ddb5f2923afdc23f05251d8d62.png', 0, 1, '', 'http://cartwright.com/natus-consequatur-laborum-quisquam-nostrum-aut-inventore-quia', '2022-03-09 15:25:20', '2022-03-09 15:25:20'),
(9, 14, 'Dolorem occaecati et omnis voluptate.', 'dolorem-occaecati-et-omnis-voluptate-6385', 'Wisoky-Lang', 'Gibraltar', '89f822e43298798731302acfdf83341f.png', 0, 1, '', 'http://erdman.com/', '2022-03-07 18:36:53', '2022-03-07 18:36:53'),
(10, 15, 'Error et aperiam inventore quis.', 'error-et-aperiam-inventore-quis-6773', 'Roob, Lubowitz and Bailey', 'Lao People\'s Democratic Republic', '60e5b5138db23b66f263f92a2f059ac7.png', 0, 1, '', 'http://www.halvorson.com/eum-harum-voluptates-expedita-sunt-distinctio-veniam-repudiandae.html', '2022-03-09 12:49:04', '2022-03-09 12:49:04'),
(11, 16, 'Omnis quisquam voluptatibus quis aliquid facilis praesentium.', 'omnis-quisquam-voluptatibus-quis-aliquid-facilis-praesentium-1837', 'Corwin Inc', 'Nigeria', 'd997e43de67270b3ff053baa9307a01e.png', 0, 1, '', 'https://schimmel.biz/quia-molestiae-ea-qui-harum-consequatur.html', '2022-03-05 08:07:34', '2022-03-05 08:07:34'),
(12, 17, 'Omnis et exercitationem ex.', 'omnis-et-exercitationem-ex-6653', 'O\'Kon-Medhurst', 'Marshall Islands', 'b63bfb89388a62079daa80ff3eb5303f.png', 0, 1, '', 'http://kshlerin.com/eum-voluptatem-amet-laudantium-repellendus', '2022-03-17 02:16:04', '2022-03-17 02:16:04'),
(13, 17, 'Aut impedit incidunt temporibus occaecati eum tenetur repellat.', 'aut-impedit-incidunt-temporibus-occaecati-eum-tenetur-repellat-9746', 'Murphy, Spencer and Jakubowski', 'Japan', 'abffa197b6367eea75df405558f1edb4.png', 0, 1, '', 'http://www.ullrich.net/aut-maxime-quos-sit', '2022-03-23 15:13:14', '2022-03-23 15:13:14'),
(14, 17, 'Qui doloremque possimus ut voluptas illum.', 'qui-doloremque-possimus-ut-voluptas-illum-5128', 'Jenkins, Abbott and Jast', 'Finland', 'ceb6580b5fb5a95a0542dfc6ffdf9b0a.png', 0, 1, '', 'http://www.luettgen.info/perspiciatis-illum-eum-reiciendis-ut-quis-sit', '2022-03-25 19:25:51', '2022-03-25 19:25:51'),
(15, 18, 'Nemo et earum sit officiis quasi et aut quidem.', 'nemo-et-earum-sit-officiis-quasi-et-aut-quidem-9428', 'Veum-Toy', 'Iceland', 'ad0b2870e19e9a81915a9a41c0303a18.png', 0, 1, '', 'https://www.goodwin.com/architecto-itaque-omnis-corporis-alias', '2022-03-14 11:39:26', '2022-03-14 11:39:26'),
(16, 18, 'Fugit et animi eum omnis accusamus fuga labore ut non.', 'fugit-et-animi-eum-omnis-accusamus-fuga-labore-ut-non-1411', 'Keebler, Boehm and Ratke', 'Timor-Leste', 'a34923d771e677a617115c5eed10ec3c.png', 0, 1, '', 'http://jakubowski.com/beatae-ratione-ut-amet-quo', '2022-03-25 21:08:06', '2022-03-25 21:08:06'),
(17, 18, 'Omnis enim doloribus dicta voluptatem laboriosam alias dolor.', 'omnis-enim-doloribus-dicta-voluptatem-laboriosam-alias-dolor-3384', 'Rutherford, Dach and Hoppe', 'Jordan', 'ed88a1f628025e0649437435f3e2b6c0.png', 0, 1, '', 'http://www.heathcote.com/ut-ea-dolorum-est-error-magnam.html', '2022-03-26 11:07:45', '2022-03-26 11:07:45'),
(18, 19, 'A itaque repudiandae voluptatibus ea.', 'a-itaque-repudiandae-voluptatibus-ea-3210', 'Thiel-Shanahan', 'Lebanon', '54c3d77a3087414cf2bb1c8977b022ad.png', 0, 1, '', 'http://www.mohr.com/hic-corrupti-fuga-minus-tempora', '2022-03-19 23:24:53', '2022-03-19 23:24:53'),
(19, 19, 'Dolorem ipsum ut culpa officiis.', 'dolorem-ipsum-ut-culpa-officiis-2665', 'Kohler-Waters', 'Denmark', '7c19d42f7070c58f9c95347ef4bb63a2.png', 0, 1, '', 'https://howe.info/odio-quia-dignissimos-ullam-soluta-doloremque-aut-aspernatur.html', '2022-03-22 08:59:48', '2022-03-22 08:59:48'),
(20, 19, 'Blanditiis in nisi magni omnis enim dolorum.', 'blanditiis-in-nisi-magni-omnis-enim-dolorum-6688', 'Dicki, Blanda and Wisozk', 'Switzerland', 'cab52ec7ce5b952fb0275534f737f90e.png', 0, 1, '', 'http://www.kautzer.info/', '2022-03-09 00:34:46', '2022-03-09 00:34:46'),
(21, 20, 'At asperiores quia eum velit.', 'at-asperiores-quia-eum-velit-4358', 'Moen, Emmerich and Rice', 'Brunei Darussalam', '67ecc15d4ea6294126fbfe5994386f51.png', 0, 1, '', 'https://www.jacobi.com/dolores-provident-ut-occaecati-reprehenderit-sunt-debitis', '2022-03-15 02:20:24', '2022-03-15 02:20:24'),
(22, 20, 'Illum quod quis odit quod omnis aliquam.', 'illum-quod-quis-odit-quod-omnis-aliquam-5654', 'Bernier, Wyman and Erdman', 'Kenya', 'ca0bb6c3aae6206ee3895912ce225f85.png', 0, 1, '', 'http://www.hamill.info/', '2022-03-09 13:04:00', '2022-03-09 13:04:00'),
(23, 20, 'Laudantium qui optio similique quisquam totam fugiat provident laborum.', 'laudantium-qui-optio-similique-quisquam-totam-fugiat-provident-laborum-7554', 'Swaniawski-Kris', 'Korea', '21264c530b0b9367d428bfcfd9bd8ca1.png', 0, 1, '', 'http://www.hahn.com/voluptatem-ipsa-error-laboriosam-ut-animi', '2022-03-19 02:40:33', '2022-03-19 02:40:33'),
(24, 21, 'Praesentium dolorem nemo qui qui.', 'praesentium-dolorem-nemo-qui-qui-6629', 'Kreiger-Balistreri', 'Western Sahara', 'cd7f5e5a674ca62eeb05b3979d0a95a9.png', 0, 1, '', 'http://strosin.org/ullam-sed-explicabo-consectetur.html', '2022-03-10 00:33:34', '2022-03-10 00:33:34'),
(25, 21, 'In dolor sint repudiandae dolore qui error.', 'in-dolor-sint-repudiandae-dolore-qui-error-1398', 'Watsica, Homenick and Hermiston', 'Maldives', '3a13799fdb978a591c7b584dcd6d3f0a.png', 0, 1, '', 'http://www.ortiz.com/necessitatibus-quia-tenetur-amet-sequi-dolorem-totam-magni-est.html', '2022-03-25 20:09:49', '2022-03-25 20:09:49'),
(26, 22, 'Nobis illo consequatur temporibus sed nesciunt aliquid quibusdam illo aut.', 'nobis-illo-consequatur-temporibus-sed-nesciunt-aliquid-quibusdam-illo-aut-7930', 'Wehner, Herzog and Schmeler', 'Myanmar', '97246eceb167ebdd4005b339dd788d5f.png', 1, 1, '', 'http://www.kiehn.org/qui-ut-eum-non-eius-expedita-non-facilis.html', '2022-03-03 17:26:51', '2022-03-03 17:26:51'),
(27, 22, 'Inventore porro pariatur delectus ipsum.', 'inventore-porro-pariatur-delectus-ipsum-5385', 'Bauch-Breitenberg', 'Botswana', '63d87ea19641b4866a6c75a349bb52c1.png', 0, 1, '', 'http://www.johnson.com/atque-repellendus-odit-sequi-perferendis-error-et', '2022-03-17 11:39:33', '2022-03-17 11:39:33'),
(28, 22, 'Ipsa sit autem et eum.', 'ipsa-sit-autem-et-eum-3359', 'Erdman-Cummings', 'Azerbaijan', '645d89e6ed708da810c01ed7e75ced2b.png', 0, 1, '', 'http://www.berge.com/voluptatum-nihil-et-esse-consequatur-molestias.html', '2022-03-09 18:59:03', '2022-03-09 18:59:03'),
(29, 23, 'Et esse eaque iusto.', 'et-esse-eaque-iusto-5980', 'Collier-Hermann', 'Sri Lanka', '2e4055bca7b3dbd2d0342f4f7a8bc885.png', 0, 1, '', 'https://padberg.com/voluptatem-id-repudiandae-ab-ea-fugiat-sequi.html', '2022-03-20 21:51:09', '2022-03-20 21:51:09'),
(30, 23, 'Aut omnis quibusdam aut porro.', 'aut-omnis-quibusdam-aut-porro-3072', 'Ledner-Wiza', 'Tunisia', '32c2bb47f680f71368706d2f2566042a.png', 1, 1, '', 'http://schulist.com/et-fuga-enim-praesentium-ad-sunt-aut-doloribus.html', '2022-03-07 07:31:11', '2022-03-07 07:31:11'),
(31, 23, 'Dolorem saepe ut natus.', 'dolorem-saepe-ut-natus-4112', 'Kozey-Heller', 'Bermuda', 'd6b24a9eadf8a247ef2ffd6a8f288863.png', 0, 1, '', 'https://dubuque.org/eveniet-occaecati-quia-dignissimos-quis-consectetur.html', '2022-03-16 14:13:32', '2022-03-16 14:13:32'),
(32, 23, 'Voluptas voluptas ipsum harum molestiae autem qui.', 'voluptas-voluptas-ipsum-harum-molestiae-autem-qui-8536', 'Cremin and Sons', 'Cyprus', 'bedbf2fa650cea20aac410c2ca916b48.png', 0, 1, '', 'http://price.com/ut-ad-dolores-minus-qui-nulla.html', '2022-03-10 14:57:01', '2022-03-10 14:57:01'),
(33, 24, 'Nihil sunt ut ut voluptatem labore.', 'nihil-sunt-ut-ut-voluptatem-labore-2885', 'Wunsch-Konopelski', 'New Zealand', 'a5df9ab1d44e011c70ea30e15a250288.png', 1, 1, '', 'http://www.steuber.biz/', '2022-02-28 19:45:54', '2022-02-28 19:45:54'),
(34, 25, 'Non ducimus rerum fugit sint.', 'non-ducimus-rerum-fugit-sint-6329', 'Will Ltd', 'Saint Martin', '2dc3ce4673caaa7e82a1c99ced14a2f3.png', 0, 1, '', 'http://treutel.org/repellendus-ex-ab-sunt-excepturi-hic', '2022-03-20 00:57:49', '2022-03-20 00:57:49'),
(35, 25, 'Omnis consequuntur qui ipsa illum hic.', 'omnis-consequuntur-qui-ipsa-illum-hic-7458', 'Durgan, Conroy and Monahan', 'Madagascar', '0882fbf4af20d25a8cb630381b8691c8.png', 1, 1, '', 'http://balistreri.org/recusandae-et-aut-at-ea.html', '2022-03-07 06:14:46', '2022-03-07 06:14:46'),
(36, 25, 'Libero inventore voluptatem tempora cupiditate.', 'libero-inventore-voluptatem-tempora-cupiditate-2333', 'Nitzsche PLC', 'Syrian Arab Republic', 'c340b0057a4249972d144e41825a3a94.png', 0, 1, '', 'http://www.ryan.com/cupiditate-sunt-laboriosam-culpa-autem-itaque-voluptate-praesentium', '2022-03-04 11:11:01', '2022-03-04 11:11:01'),
(37, 25, 'Enim odio doloremque perspiciatis aliquid.', 'enim-odio-doloremque-perspiciatis-aliquid-2541', 'Hilpert LLC', 'Korea', 'c387dd24365e8b85d2eb4b459bf0bb73.png', 0, 1, '', 'https://cronin.com/et-doloribus-aspernatur-accusantium-qui-et-quisquam.html', '2022-03-11 03:26:13', '2022-03-11 03:26:13'),
(38, 26, 'Dolores ab voluptatem velit quisquam tempora.', 'dolores-ab-voluptatem-velit-quisquam-tempora-3819', 'Krajcik, Legros and Gaylord', 'Holy See (Vatican City State)', '8337a90d93405581e4a9d432310ea10d.png', 0, 1, '', 'http://www.auer.com/inventore-error-a-aliquid-non-incidunt-pariatur-at.html', '2022-03-25 08:11:39', '2022-03-25 08:11:39'),
(39, 26, 'Autem facere explicabo ut eveniet saepe.', 'autem-facere-explicabo-ut-eveniet-saepe-5377', 'Krajcik Ltd', 'Reunion', '21d5e45915d28f57aa756fee91cc9fd4.png', 0, 1, '', 'http://barrows.net/itaque-aut-beatae-mollitia-quas-dolorum-culpa', '2022-03-07 19:47:41', '2022-03-07 19:47:41'),
(40, 26, 'Eum nesciunt nisi vero est.', 'eum-nesciunt-nisi-vero-est-7162', 'Yundt LLC', 'Jamaica', '3a658bccb6fd01542b45963f5380ec61.png', 0, 1, '', 'http://www.hudson.biz/earum-ratione-quia-qui-nihil-quam-quo-eligendi.html', '2022-03-27 07:47:06', '2022-03-27 07:47:06'),
(41, 27, 'Et qui quia impedit consequuntur hic itaque.', 'et-qui-quia-impedit-consequuntur-hic-itaque-3514', 'Doyle, Watsica and Jerde', 'India', 'e1382b1f03c9b18a94bfd96fb8ab0330.png', 0, 1, '', 'https://www.ferry.com/sunt-ut-dicta-voluptatibus-sunt-dicta-quo-nostrum-eos', '2022-03-09 18:58:06', '2022-03-09 18:58:06'),
(42, 28, 'Quibusdam iusto hic inventore placeat maxime.', 'quibusdam-iusto-hic-inventore-placeat-maxime-9991', 'Fisher Group', 'Kiribati', '0a8a218aeb61da6dca7e1c111c4a49b7.png', 0, 1, '', 'https://koss.com/debitis-dolore-odio-tenetur-quo.html', '2022-03-09 12:36:15', '2022-03-09 12:36:15'),
(43, 29, 'Consequuntur atque commodi dolorum sed dolorem soluta aspernatur est repellat.', 'consequuntur-atque-commodi-dolorum-sed-dolorem-soluta-aspernatur-est-repellat-2229', 'Altenwerth LLC', 'Portugal', '1930d4351ce663c3bb0ed69fe8a23db6.png', 1, 1, '', 'https://kautzer.com/saepe-minus-reiciendis-corporis-et.html', '2022-03-26 05:58:03', '2022-03-26 05:58:03'),
(44, 29, 'Soluta consequatur qui corporis voluptatem quia architecto consectetur quisquam.', 'soluta-consequatur-qui-corporis-voluptatem-quia-architecto-consectetur-quisquam-8203', 'Hartmann Ltd', 'South Africa', 'a1d9ee0161b40080e8ed7ffca9cf31f5.png', 0, 1, '', 'http://www.gorczany.com/', '2022-03-21 16:58:45', '2022-03-21 16:58:45'),
(45, 30, 'Consequatur sed deserunt et debitis accusantium.', 'consequatur-sed-deserunt-et-debitis-accusantium-4725', 'Windler, Lindgren and Hermiston', 'Cyprus', '053c20a24c7697bea35d4a45bcfba0e8.png', 0, 1, '', 'http://www.runte.com/autem-consequatur-iste-quis', '2022-03-13 01:28:38', '2022-03-13 01:28:38'),
(46, 31, 'Sint ducimus quam omnis quas minima.', 'sint-ducimus-quam-omnis-quas-minima-6822', 'Prosacco-Carroll', 'Gibraltar', 'f6705542e1723c220229a62d6256d466.png', 0, 1, '', 'http://ziemann.com/', '2022-03-13 08:29:57', '2022-03-13 08:29:57'),
(47, 32, 'Enim aliquam consectetur assumenda molestiae earum.', 'enim-aliquam-consectetur-assumenda-molestiae-earum-1337', 'Bosco, O\'Conner and Gleason', 'Belize', '919e789ccb6f39c5a56a9d070f8ff61f.png', 0, 1, '', 'http://www.howell.com/dicta-culpa-est-quia-voluptatem-fugit-omnis-dolore', '2022-03-27 14:10:16', '2022-03-27 14:10:16'),
(48, 33, 'Error fugit in ut vero dicta cum eveniet excepturi a.', 'error-fugit-in-ut-vero-dicta-cum-eveniet-excepturi-a-9705', 'Gusikowski-Schulist', 'Burkina Faso', '6a1cbfa432ece292377b7a2b53d06390.png', 0, 1, '', 'http://www.harber.com/sit-quibusdam-nam-reiciendis-nemo-perferendis-voluptatum', '2022-03-06 04:17:54', '2022-03-06 04:17:54'),
(49, 33, 'Quia inventore ea et magni.', 'quia-inventore-ea-et-magni-6149', 'Romaguera Ltd', 'Tokelau', 'f6b8835fc852d91615dab9f3197d422f.png', 1, 1, '', 'http://www.mraz.com/nisi-est-ut-nihil-voluptatem-aliquid-eos-autem-ab', '2022-03-14 00:22:18', '2022-03-14 00:22:18'),
(50, 33, 'Tempore illo mollitia placeat aut ut.', 'tempore-illo-mollitia-placeat-aut-ut-7110', 'Satterfield, Roberts and Balistreri', 'South Africa', '30d5774e77306f67f95f63a2d1aa963f.png', 0, 1, '', 'http://www.harris.com/', '2022-03-21 21:00:59', '2022-03-21 21:00:59'),
(51, 33, 'Eligendi nihil et tenetur maiores dolore velit.', 'eligendi-nihil-et-tenetur-maiores-dolore-velit-4898', 'Hackett Inc', 'Cocos (Keeling) Islands', '31068a40631b75ed67639008ed216889.png', 0, 1, '', 'http://rolfson.com/nihil-deleniti-necessitatibus-odio-porro', '2022-03-13 06:42:40', '2022-03-13 06:42:40'),
(52, 34, 'Iste et et est odit incidunt et repellat.', 'iste-et-et-est-odit-incidunt-et-repellat-6012', 'Grady-Kuhlman', 'Ethiopia', '8f344649eb77d5b2e9dcd3592d720888.png', 0, 1, '', 'http://kuphal.com/et-officia-doloremque-sed-deleniti-omnis-ut-maiores', '2022-03-13 03:52:33', '2022-03-13 03:52:33'),
(53, 35, 'Eos nisi omnis ut quia beatae adipisci libero necessitatibus.', 'eos-nisi-omnis-ut-quia-beatae-adipisci-libero-necessitatibus-9649', 'Mohr-Metz', 'Lao People\'s Democratic Republic', '57dded1668f0a66590d9d71ab8da8374.png', 0, 1, '', 'http://www.hackett.com/voluptas-excepturi-dolorem-quisquam-et-cumque.html', '2022-03-24 11:42:10', '2022-03-24 11:42:10'),
(54, 35, 'Voluptatum reprehenderit est autem accusantium repellat.', 'voluptatum-reprehenderit-est-autem-accusantium-repellat-8369', 'Hermiston, Wiegand and Feil', 'Jordan', 'c32802ed10ee4319b05537be147899f1.png', 0, 1, '', 'http://www.rodriguez.org/praesentium-et-eos-rem-soluta-praesentium-iusto-enim-quia', '2022-03-19 17:55:35', '2022-03-19 17:55:35'),
(55, 35, 'Voluptatem maiores veniam maxime.', 'voluptatem-maiores-veniam-maxime-5044', 'Hauck, Simonis and Harvey', 'Tonga', '02cbb776da333ced448aa4a1e131120c.png', 0, 1, '', 'http://kshlerin.com/et-voluptatum-quia-fugiat-dolor-et-maxime', '2022-03-25 12:18:19', '2022-03-25 12:18:19'),
(56, 35, 'Tempora et mollitia dolores itaque in numquam.', 'tempora-et-mollitia-dolores-itaque-in-numquam-5052', 'Kutch, Steuber and Abshire', 'Syrian Arab Republic', 'a365e3d69dd85ae89d05a590fc1f7609.png', 1, 1, '', 'http://keebler.biz/at-aut-occaecati-modi-quos-id-amet-eum-sint.html', '2022-03-24 07:09:41', '2022-03-24 07:09:41'),
(57, 36, 'Quasi quaerat vel ab.', 'quasi-quaerat-vel-ab-1528', 'Miller LLC', 'Uganda', 'b1916310ad3fc6daeb89e1bda773492d.png', 0, 1, '', 'https://hammes.net/natus-labore-nihil-nihil-fugiat-beatae-iusto-dolore.html', '2022-03-07 04:00:22', '2022-03-07 04:00:22'),
(58, 36, 'Qui amet reiciendis unde assumenda et eligendi.', 'qui-amet-reiciendis-unde-assumenda-et-eligendi-5998', 'Davis and Sons', 'Niue', '24fb9cd018826946f70d6f9b1bd07823.png', 0, 1, '', 'https://dooley.com/occaecati-facilis-at-est.html', '2022-03-06 09:07:15', '2022-03-06 09:07:15'),
(59, 37, 'Ipsum totam velit blanditiis animi nihil minima.', 'ipsum-totam-velit-blanditiis-animi-nihil-minima-2974', 'Wisozk, Hickle and Gottlieb', 'Seychelles', '07f1dcf14dfe4e1ba8aa474a79baef38.png', 0, 1, '', 'http://www.romaguera.com/ullam-necessitatibus-reiciendis-impedit-magnam', '2022-03-15 23:52:37', '2022-03-15 23:52:37'),
(60, 37, 'Totam pariatur ad rerum modi deleniti et doloribus quibusdam officia.', 'totam-pariatur-ad-rerum-modi-deleniti-et-doloribus-quibusdam-officia-4835', 'Greenfelder, Senger and Boyle', 'Greenland', 'a78fcf4b45617b793f62d34042659e08.png', 0, 1, '', 'http://www.weber.net/qui-laudantium-minus-voluptatum', '2022-03-11 21:51:01', '2022-03-11 21:51:01'),
(61, 38, 'Consequatur esse nostrum voluptas facere ipsam consequatur.', 'consequatur-esse-nostrum-voluptas-facere-ipsam-consequatur-9371', 'Jones, Johnson and Grady', 'Uzbekistan', 'b62d9c3f9e273fd111d450891728697d.png', 0, 1, '', 'http://www.parisian.com/', '2022-03-06 20:57:08', '2022-03-06 20:57:08'),
(62, 38, 'Molestiae quia voluptas quasi.', 'molestiae-quia-voluptas-quasi-5854', 'Donnelly, Hoeger and Gaylord', 'Saint Martin', '9a55320746f54ec1897dadffe528f64d.png', 0, 1, '', 'http://corwin.com/', '2022-03-01 15:52:59', '2022-03-01 15:52:59'),
(63, 38, 'Repudiandae ea ut quibusdam est magni.', 'repudiandae-ea-ut-quibusdam-est-magni-9950', 'Rogahn, Krajcik and Hessel', 'Honduras', 'd8c93a934788bb63beb91864b9cba06e.png', 1, 1, '', 'http://www.conn.com/non-inventore-dicta-nesciunt-rem-vel-possimus.html', '2022-03-10 03:17:08', '2022-03-10 03:17:08'),
(64, 38, 'Aut quis nobis neque deserunt explicabo.', 'aut-quis-nobis-neque-deserunt-explicabo-7100', 'Hartmann-Legros', 'British Virgin Islands', 'bff9e5fa70060a2686edc6512c379f96.png', 0, 1, '', 'http://huel.info/', '2022-03-06 16:28:57', '2022-03-06 16:28:57'),
(65, 39, 'Quia incidunt sequi aspernatur vel voluptates ipsum saepe necessitatibus.', 'quia-incidunt-sequi-aspernatur-vel-voluptates-ipsum-saepe-necessitatibus-5793', 'Haag, Rogahn and Hickle', 'Australia', '35f724e1b256d8601a56e8905d058227.png', 0, 1, '', 'https://berge.net/molestias-necessitatibus-soluta-non-deleniti-deserunt.html', '2022-03-21 05:25:05', '2022-03-21 05:25:05'),
(66, 39, 'Commodi corrupti culpa aut.', 'commodi-corrupti-culpa-aut-8337', 'Von-Schumm', 'Jersey', 'b450ee8a7dcebb9a9117945864120617.png', 0, 1, '', 'https://www.williamson.com/et-ducimus-modi-quam-possimus-beatae', '2022-03-06 23:57:34', '2022-03-06 23:57:34'),
(67, 40, 'Ipsa eum aliquid aut ullam doloribus aut.', 'ipsa-eum-aliquid-aut-ullam-doloribus-aut-4567', 'Rogahn-Olson', 'Jersey', '87ac96da679407f39941485fd3af21a8.png', 0, 1, '', 'http://www.heidenreich.com/et-fuga-repellendus-incidunt-deleniti', '2022-03-26 15:31:12', '2022-03-26 15:31:12'),
(68, 40, 'Debitis id natus voluptate et sed quo.', 'debitis-id-natus-voluptate-et-sed-quo-9302', 'Buckridge-Bashirian', 'Antarctica (the territory South of 60 deg S)', 'ef668b8ab758dc7930857c318ed2e00f.png', 0, 1, '', 'http://www.rath.com/consequatur-et-inventore-eaque-quam-sint', '2022-03-13 14:34:40', '2022-03-13 14:34:40'),
(69, 40, 'Explicabo ullam maiores voluptates expedita.', 'explicabo-ullam-maiores-voluptates-expedita-6474', 'Waelchi Inc', 'Northern Mariana Islands', '954c9399ef5f366a45b0cf75531cf8dc.png', 0, 1, '', 'http://www.nitzsche.com/est-dolorem-maiores-quod-et.html', '2022-03-16 08:08:59', '2022-03-16 08:08:59'),
(70, 41, 'Cupiditate rerum consequuntur dolor laborum enim perspiciatis.', 'cupiditate-rerum-consequuntur-dolor-laborum-enim-perspiciatis-8358', 'Gusikowski-Grady', 'Germany', '453778eb3137829191da9053c38b22c3.png', 1, 1, '', 'http://www.nikolaus.net/tenetur-illo-maxime-deleniti', '2022-03-27 00:34:40', '2022-03-27 00:34:40'),
(71, 41, 'Quidem minus voluptatem assumenda illo eaque.', 'quidem-minus-voluptatem-assumenda-illo-eaque-9894', 'Muller Group', 'Mali', '6c7bf3278d5e06323824cdc4470890e5.png', 0, 1, '', 'http://www.schimmel.org/eius-doloremque-quam-quisquam-assumenda-consectetur.html', '2022-03-05 23:40:44', '2022-03-05 23:40:44'),
(72, 41, 'Vero itaque nostrum ea et voluptate omnis.', 'vero-itaque-nostrum-ea-et-voluptate-omnis-3621', 'Torp LLC', 'Albania', '565e371395f69718eaf8c6ac8d6e701d.png', 0, 1, '', 'http://reilly.com/ad-numquam-soluta-in-adipisci-necessitatibus', '2022-03-21 00:57:44', '2022-03-21 00:57:44'),
(73, 42, 'Aliquam maiores amet rerum atque laboriosam id magnam.', 'aliquam-maiores-amet-rerum-atque-laboriosam-id-magnam-2439', 'Abbott, Watsica and Corwin', 'United States Virgin Islands', '0571b4660d6058b30b760f92fce7bd49.png', 0, 1, '', 'http://www.mosciski.net/ratione-ab-maiores-consequatur-sed-autem', '2022-03-26 13:19:11', '2022-03-26 13:19:11'),
(74, 42, 'Quae veniam voluptatem cumque iusto commodi nisi qui.', 'quae-veniam-voluptatem-cumque-iusto-commodi-nisi-qui-9062', 'Schamberger PLC', 'India', '2055799faceddcb289a906edbca3ca31.png', 0, 1, '', 'http://nikolaus.net/quaerat-quis-tempora-veritatis-facilis-veritatis', '2022-03-25 18:05:29', '2022-03-25 18:05:29'),
(75, 43, 'Neque et nam est est qui veniam.', 'neque-et-nam-est-est-qui-veniam-2919', 'Hermiston PLC', 'Palestinian Territories', '9501d001df555dc30872ba0f8587a172.png', 0, 1, '', 'http://okuneva.biz/', '2022-03-22 09:52:15', '2022-03-22 09:52:15'),
(76, 44, 'Dolor soluta assumenda dignissimos eum.', 'dolor-soluta-assumenda-dignissimos-eum-4831', 'Nienow, Russel and Nikolaus', 'Marshall Islands', 'e4bf635e3affbf837af5b86dad344acd.png', 0, 1, '', 'http://kessler.com/animi-dolor-temporibus-tempore-veritatis', '2022-03-04 14:41:13', '2022-03-04 14:41:13'),
(77, 44, 'Repellendus aut aperiam eos et ut quibusdam rerum.', 'repellendus-aut-aperiam-eos-et-ut-quibusdam-rerum-9376', 'Goodwin Inc', 'Brunei Darussalam', 'b8cecfa7c9e69fb9124d20559758aa92.png', 0, 1, '', 'http://www.streich.biz/', '2022-03-13 04:30:38', '2022-03-13 04:30:38'),
(78, 45, 'Cumque nobis officia ex quae neque et nesciunt labore.', 'cumque-nobis-officia-ex-quae-neque-et-nesciunt-labore-9369', 'Russel, Corwin and Stehr', 'Myanmar', 'e99f06efeb13af89a65262623ac71e4f.png', 0, 1, '', 'https://kassulke.biz/corporis-amet-rem-est-animi-iure-non-vel-nihil.html', '2022-03-09 20:50:29', '2022-03-09 20:50:29'),
(79, 45, 'Saepe natus sunt enim minima qui accusantium molestias.', 'saepe-natus-sunt-enim-minima-qui-accusantium-molestias-6540', 'Hartmann-Rutherford', 'British Indian Ocean Territory (Chagos Archipelago)', 'df28af863443c500353ce097bb2c92bc.png', 0, 1, '', 'http://www.aufderhar.org/', '2022-03-06 13:30:13', '2022-03-06 13:30:13'),
(80, 46, 'Illo voluptatum consequatur est quos nam est.', 'illo-voluptatum-consequatur-est-quos-nam-est-3732', 'Harvey PLC', 'Singapore', '59ce275830c86beb054af3420fdd5c77.png', 1, 1, '', 'http://buckridge.net/autem-sapiente-quis-nobis-qui-et-voluptate-deserunt', '2022-03-03 02:34:51', '2022-03-03 02:34:51'),
(81, 47, 'Corporis quaerat aliquam quo aut quae.', 'corporis-quaerat-aliquam-quo-aut-quae-6198', 'Hoppe, Collins and Kertzmann', 'Malawi', '47e2ac9b991335cfacf26a8aeb85a7d3.png', 0, 1, '', 'http://www.blick.org/', '2022-03-20 16:22:53', '2022-03-20 16:22:53'),
(82, 47, 'Officiis placeat nemo quisquam illum beatae ut vitae voluptas.', 'officiis-placeat-nemo-quisquam-illum-beatae-ut-vitae-voluptas-8015', 'Marvin Ltd', 'Uzbekistan', '28e0933bc295243d5f980afed94de096.png', 1, 1, '', 'http://daniel.biz/mollitia-ad-amet-voluptates-qui', '2022-03-28 05:53:34', '2022-03-28 05:53:34'),
(83, 47, 'Dolorem sunt ea ex laudantium deleniti at facilis saepe.', 'dolorem-sunt-ea-ex-laudantium-deleniti-at-facilis-saepe-1770', 'Durgan-Nienow', 'Lao People\'s Democratic Republic', '8952194df285c397552bd096d9f9ec49.png', 0, 1, '', 'http://www.brekke.com/vel-nihil-quibusdam-repellendus-quisquam', '2022-03-27 04:58:35', '2022-03-27 04:58:35'),
(84, 47, 'Culpa et unde suscipit distinctio voluptatem.', 'culpa-et-unde-suscipit-distinctio-voluptatem-8287', 'Volkman-Kautzer', 'Mauritius', '12116da3c4744843c313729f69055131.png', 0, 1, '', 'http://cole.com/expedita-enim-quas-non-aliquam-ut-ut', '2022-03-17 21:35:20', '2022-03-17 21:35:20'),
(85, 48, 'Incidunt consequatur qui sint assumenda dolorum impedit consequatur ex.', 'incidunt-consequatur-qui-sint-assumenda-dolorum-impedit-consequatur-ex-9662', 'McDermott-Lemke', 'Bouvet Island (Bouvetoya)', '85f50355f89bbbe37f088a0ae6e2fc97.png', 0, 1, '', 'http://kuphal.com/et-non-est-et-consectetur-assumenda-praesentium-in-cum.html', '2022-03-27 14:54:18', '2022-03-27 14:54:18'),
(86, 48, 'Dolore sed ex qui veniam vitae cupiditate minus.', 'dolore-sed-ex-qui-veniam-vitae-cupiditate-minus-4856', 'Champlin, Lowe and Labadie', 'Burundi', 'b052f3608efb44da4853a64df8f5f33c.png', 0, 1, '', 'http://www.doyle.com/necessitatibus-sit-voluptatem-doloremque-ut-a-consequatur.html', '2022-03-22 18:52:26', '2022-03-22 18:52:26'),
(87, 48, 'Consequatur aut a explicabo in.', 'consequatur-aut-a-explicabo-in-3894', 'Koepp, Champlin and Christiansen', 'Panama', '2e5c90a90f5ff8fd8489a093ec554fdc.png', 0, 1, '', 'http://feest.com/', '2022-02-28 20:53:14', '2022-02-28 20:53:14'),
(88, 48, 'Perferendis maxime illo ut ut.', 'perferendis-maxime-illo-ut-ut-2124', 'Ritchie, Huels and Botsford', 'Netherlands Antilles', '2415c050f4be1accf84255ec1bdb929d.png', 0, 1, '', 'https://gerhold.biz/enim-recusandae-ratione-veritatis-in.html', '2022-03-13 13:41:21', '2022-03-13 13:41:21'),
(89, 49, 'Quo sunt dolore aut voluptatem reiciendis.', 'quo-sunt-dolore-aut-voluptatem-reiciendis-5882', 'West PLC', 'Bermuda', '2bcaf4a3a54a9c8f7b39ad8f8d598bf6.png', 1, 1, '', 'http://mclaughlin.com/cupiditate-nisi-voluptatem-voluptatem-minima-nam-dolores-dolorem.html', '2022-03-18 08:46:07', '2022-03-18 08:46:07'),
(90, 50, 'Soluta exercitationem ut sapiente quia et quod rerum et.', 'soluta-exercitationem-ut-sapiente-quia-et-quod-rerum-et-9089', 'Cummings, Feest and Gibson', 'Palau', '779e18c055c7140aa67df0788699b560.png', 0, 1, '', 'http://www.rippin.com/aut-ad-reiciendis-quos-omnis-iste-molestiae.html', '2022-03-13 15:05:21', '2022-03-13 15:05:21'),
(91, 50, 'Autem voluptatem minima quos sequi vel.', 'autem-voluptatem-minima-quos-sequi-vel-8743', 'Greenfelder, Kunde and Tillman', 'Greece', '4ccbfa32d8afda2c6131268768fb2665.png', 0, 1, '', 'http://monahan.com/et-aut-dolor-doloribus-doloremque-facilis', '2022-03-11 15:48:03', '2022-03-11 15:48:03'),
(92, 50, 'Architecto fuga consectetur blanditiis sed deleniti.', 'architecto-fuga-consectetur-blanditiis-sed-deleniti-5875', 'Kulas-Gerlach', 'Senegal', '43bcbf937f821e33be321834a55dd3c4.png', 0, 1, '', 'http://gorczany.com/incidunt-quis-tenetur-nisi-ut', '2022-03-23 20:04:36', '2022-03-23 20:04:36');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `listing_tag`
--

CREATE TABLE `listing_tag` (
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `listing_tag`
--

INSERT INTO `listing_tag` (`listing_id`, `tag_id`) VALUES
(46, 12),
(46, 20),
(47, 13),
(47, 15),
(48, 13),
(48, 14),
(49, 13),
(49, 16),
(50, 11),
(50, 14),
(51, 14),
(51, 20),
(52, 16),
(52, 20),
(53, 13),
(53, 19),
(54, 18),
(54, 19),
(55, 14),
(55, 17),
(56, 16),
(56, 20),
(57, 19),
(57, 20),
(58, 11),
(58, 17),
(59, 12),
(59, 13),
(60, 15),
(60, 18),
(61, 14),
(61, 17),
(62, 14),
(62, 15),
(63, 12),
(63, 13),
(64, 13),
(64, 15),
(65, 12),
(65, 13),
(66, 15),
(66, 17),
(67, 12),
(67, 14),
(68, 13),
(68, 17),
(69, 14),
(69, 20),
(70, 12),
(70, 16),
(71, 11),
(71, 19),
(72, 15),
(72, 19),
(73, 11),
(73, 19),
(74, 16),
(74, 20),
(75, 11),
(75, 17),
(76, 13),
(76, 17),
(77, 15),
(77, 16),
(78, 11),
(78, 17),
(79, 15),
(79, 19),
(80, 11),
(80, 14),
(81, 17),
(81, 18),
(82, 15),
(82, 20),
(83, 14),
(83, 15),
(84, 13),
(84, 14),
(85, 16),
(85, 17),
(86, 15),
(86, 18),
(87, 12),
(87, 17),
(88, 13),
(88, 18),
(89, 14),
(89, 19),
(90, 13),
(90, 16),
(91, 18),
(91, 20),
(92, 17),
(92, 19);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_20_175825_create_listings_table', 1),
(6, '2022_02_20_185411_create_clicks_table', 1),
(7, '2022_02_20_185558_create_tags_table', 1),
(8, '2022_02_20_190409_create_listing_tag_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Omnis', 'omnis', '2022-02-21 18:16:22', '2022-02-21 18:16:22'),
(2, 'Deleniti', 'deleniti', '2022-02-21 18:16:22', '2022-02-21 18:16:22'),
(3, 'Id', 'id', '2022-02-21 18:16:22', '2022-02-21 18:16:22'),
(4, 'Necessitatibus', 'necessitatibus', '2022-02-21 18:16:22', '2022-02-21 18:16:22'),
(5, 'Qui', 'qui', '2022-02-21 18:16:22', '2022-02-21 18:16:22'),
(6, 'Ut', 'ut', '2022-02-21 18:16:22', '2022-02-21 18:16:22'),
(7, 'Consequatur', 'consequatur', '2022-02-21 18:16:22', '2022-02-21 18:16:22'),
(8, 'Hic', 'hic', '2022-02-21 18:16:22', '2022-02-21 18:16:22'),
(9, 'Sed', 'sed', '2022-02-21 18:16:22', '2022-02-21 18:16:22'),
(10, 'Voluptas', 'voluptas', '2022-02-21 18:16:22', '2022-02-21 18:16:22'),
(11, 'Quis', 'quis', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(12, 'Occaecati', 'occaecati', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(13, 'Vel', 'vel', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(14, 'Autem', 'autem', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(15, 'Illo', 'illo', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(16, 'Blanditiis', 'blanditiis', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(17, 'Et', 'et', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(18, 'Iste', 'iste', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(19, 'Occaecati', 'occaecati', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(20, 'Temporibus', 'temporibus', '2022-03-28 18:26:38', '2022-03-28 18:26:38');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Palma McDermott', 'franz91@example.net', '2022-02-21 17:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's8CQetwwJJ', '2022-02-21 17:53:58', '2022-02-21 17:53:58'),
(2, 'Lessie Reilly I', 'greenholt.christy@example.com', '2022-02-21 17:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EUYj7Hv5Ju', '2022-02-21 17:53:58', '2022-02-21 17:53:58'),
(3, 'Lonzo Tromp', 'fabiola00@example.com', '2022-02-21 17:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZGwim7q8on', '2022-02-21 17:53:58', '2022-02-21 17:53:58'),
(4, 'Ena Hamill', 'guadalupe68@example.net', '2022-02-21 17:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QO0xh08Ggr', '2022-02-21 17:53:58', '2022-02-21 17:53:58'),
(5, 'Brannon Leffler I', 'cummings.kylie@example.com', '2022-02-21 17:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '04s7aGXfs7', '2022-02-21 17:53:58', '2022-02-21 17:53:58'),
(6, 'Prof. Zella Bayer', 'jasmin.koepp@example.org', '2022-02-21 17:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PtgvavM581', '2022-02-21 17:53:58', '2022-02-21 17:53:58'),
(7, 'Lloyd McCullough', 'jacobson.kraig@example.net', '2022-02-21 17:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oASuSOrYZ8', '2022-02-21 17:53:58', '2022-02-21 17:53:58'),
(8, 'Lavonne Kohler III', 'ihodkiewicz@example.com', '2022-02-21 17:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BNIjzDC5sY', '2022-02-21 17:53:58', '2022-02-21 17:53:58'),
(9, 'Mr. Eduardo Toy', 'kkiehn@example.com', '2022-02-21 17:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y1OcPyACPG', '2022-02-21 17:53:58', '2022-02-21 17:53:58'),
(10, 'Dr. Joanny Doyle', 'kali.greenholt@example.com', '2022-02-21 17:53:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dWEtrzJDSm', '2022-02-21 17:53:58', '2022-02-21 17:53:58'),
(11, 'Amy Fritsch', 'ocole@example.net', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BSMd5ZnqIP', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(12, 'Destany Deckow', 'haley.rosendo@example.org', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5stxsXs9At', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(13, 'Isabell Hand', 'elfrieda22@example.org', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rXlVUOXRBy', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(14, 'Everette Kemmer', 'kasey06@example.org', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TpcxT6JMTW', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(15, 'Edgardo Armstrong', 'boehm.owen@example.net', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iX9jfmQR2d', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(16, 'Prof. Isac Kunze MD', 'wchristiansen@example.net', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd3EFkP5IyS', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(17, 'Lelah Will', 'napoleon70@example.net', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xdJT9q8lW2', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(18, 'Elna Kreiger', 'stracke.jenifer@example.net', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nfKBViqiBR', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(19, 'Ryleigh Howe', 'rickey42@example.org', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KIF9zs5YnA', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(20, 'Deron Lehner', 'king.abagail@example.net', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dKiQ62zKrx', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(21, 'Sean Hilpert PhD', 'ebert.jacklyn@example.net', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LvjSNWmEeO', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(22, 'Carley Gutmann', 'tparker@example.net', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V4ncbtNrEl', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(23, 'Ms. Teagan Stamm', 'alvina.robel@example.net', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LcRT8NoQc5', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(24, 'Eileen Reilly', 'terrill.morar@example.org', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a6ZjDga8ME', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(25, 'Deion Haag', 'gkovacek@example.com', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sGYZmjM7Fa', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(26, 'Charity Spencer', 'rippin.dallin@example.com', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kMZaQ6YWV3', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(27, 'Salvador Sporer IV', 'jamal22@example.com', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zW6bcCyU8B', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(28, 'Danny Hudson', 'borer.lorena@example.com', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KysneISxJ5', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(29, 'Genoveva Kulas', 'white.giovanny@example.com', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XynH1MOLOe', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(30, 'Prof. Gaylord Leffler PhD', 'bnader@example.org', '2022-03-28 18:15:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MvJAR4uGNK', '2022-03-28 18:15:03', '2022-03-28 18:15:03'),
(31, 'Robyn Swaniawski', 'eolson@example.com', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h0iA0EuUcN', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(32, 'Franz O\'Kon', 'bsmith@example.net', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cBC73kTc7i', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(33, 'Ms. Meda Price', 'hthiel@example.org', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e7T1Ji5m6Q', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(34, 'Laurianne Weber', 'mernser@example.org', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ldsxFBWtSs', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(35, 'Leslie Wilkinson', 'kjast@example.org', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u2JZ9CsgUt', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(36, 'Mr. Doris Feest V', 'pauline.pacocha@example.net', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RI4ZrL8paT', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(37, 'Mr. Jakob Tromp', 'bergnaum.adele@example.com', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7dXOaQyocH', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(38, 'Kyla Mohr', 'kaycee.jerde@example.com', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HHobD2BTfJ', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(39, 'Camryn Rogahn', 'bernadette76@example.net', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UwBvHMCXT2', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(40, 'Lenore Prohaska', 'vschiller@example.org', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aFW8V2cCvH', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(41, 'Prof. Jose Reichel', 'kurtis01@example.net', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1ZwvgBLAhr', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(42, 'Guido Conroy', 'novella.stiedemann@example.net', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dSxSQaeYKB', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(43, 'Ariel Hauck', 'vkunde@example.net', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9UZd27zqm3', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(44, 'Alexys Wiegand', 'ccarroll@example.com', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZQQxJ8ZzkC', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(45, 'Dr. Duane Kutch', 'dianna63@example.org', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gVCZxXTrvk', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(46, 'Annetta Morar', 'bmedhurst@example.com', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RWZrwz0L32', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(47, 'Oscar Gleichner', 'wolff.morris@example.org', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dTJBeoQL9E', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(48, 'Prof. Jaron Carter', 'christop78@example.org', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4CIvZsn3Pi', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(49, 'Roger Runolfsson', 'uberge@example.net', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z62s1kHNse', '2022-03-28 18:26:38', '2022-03-28 18:26:38'),
(50, 'Dr. Lea Hahn', 'sgreen@example.net', '2022-03-28 18:26:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TZ08dxpyxO', '2022-03-28 18:26:38', '2022-03-28 18:26:38');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `clicks`
--
ALTER TABLE `clicks`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `clicks`
--
ALTER TABLE `clicks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
