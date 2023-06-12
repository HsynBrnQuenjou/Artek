-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: sql303.epizy.com
-- Üretim Zamanı: 10 Haz 2023, 16:01:23
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `epiz_34236397_meslekiproje`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_kadi` varchar(300) NOT NULL,
  `admin_posta` varchar(300) NOT NULL,
  `admin_sifre` varchar(300) NOT NULL,
  `admin_durum` tinyint(1) NOT NULL DEFAULT 1,
  `admin_tarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_kadi`, `admin_posta`, `admin_sifre`, `admin_durum`, `admin_tarih`) VALUES
(1, 'Artek', 'artek@hotmail.com', 'a3bc2734083931eb533acbf935fa7735bd1762af', 1, '2022-04-09 22:30:06');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adminlog`
--

CREATE TABLE `adminlog` (
  `alogid` int(11) NOT NULL,
  `alogadmin` int(11) NOT NULL,
  `alogtarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `alogaciklama` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `adminlog`
--

INSERT INTO `adminlog` (`alogid`, `alogadmin`, `alogtarih`, `alogaciklama`) VALUES
(1, 1, '2022-04-09 22:51:08', '0'),
(2, 1, '2022-04-13 14:45:29', '0'),
(3, 1, '2022-04-13 21:22:16', '0'),
(4, 1, '2022-04-19 17:08:51', '0'),
(5, 1, '2022-04-23 21:15:18', '0'),
(6, 1, '2022-04-25 21:00:28', '0'),
(7, 1, '2022-04-30 13:40:43', '0'),
(8, 1, '2022-05-13 17:30:23', '0'),
(9, 1, '2022-05-16 18:07:07', 'Yönetici girişi yapıldı'),
(10, 1, '2022-05-24 20:23:39', 'Yönetici girişi yapıldı'),
(11, 1, '2022-05-24 22:34:18', 'Yönetici girişi yapıldı'),
(12, 1, '2022-05-24 22:40:14', 'Yönetici girişi yapıldı'),
(13, 1, '2022-05-26 06:38:51', 'Yönetici girişi yapıldı'),
(14, 1, '2022-05-28 15:51:57', 'Yönetici girişi yapıldı'),
(15, 1, '2023-05-02 13:02:01', 'Yönetici girişi yapıldı'),
(16, 1, '2023-05-02 13:02:36', 'Yönetici girişi yapıldı'),
(17, 1, '2023-05-02 13:06:28', 'Yönetici girişi yapıldı'),
(18, 1, '2023-05-02 13:10:58', 'Yönetici girişi yapıldı'),
(19, 1, '2023-05-02 13:13:00', 'Yönetici girişi yapıldı'),
(20, 1, '2023-05-02 13:54:17', 'Yönetici girişi yapıldı'),
(21, 1, '2023-05-02 13:56:14', 'Yönetici girişi yapıldı'),
(22, 1, '2023-05-02 14:28:59', 'Yönetici girişi yapıldı'),
(23, 1, '2023-05-02 15:29:13', 'Yönetici girişi yapıldı'),
(24, 1, '2023-05-02 15:29:35', 'Yönetici girişi yapıldı'),
(25, 1, '2023-05-03 12:14:39', 'Yönetici girişi yapıldı'),
(26, 1, '2023-05-03 12:14:54', 'Yönetici girişi yapıldı'),
(27, 1, '2023-05-03 17:42:30', 'Yönetici girişi yapıldı'),
(28, 1, '2023-05-03 17:43:43', 'Yönetici girişi yapıldı'),
(29, 1, '2023-05-04 12:20:51', 'Yönetici girişi yapıldı'),
(30, 1, '2023-05-04 14:13:03', 'Yönetici girişi yapıldı'),
(31, 1, '2023-05-04 14:21:41', 'Yönetici girişi yapıldı'),
(32, 1, '2023-05-15 15:41:58', 'Yönetici girişi yapıldı'),
(33, 1, '2023-05-20 12:22:53', 'Yönetici girişi yapıldı'),
(34, 1, '2023-05-20 12:29:36', 'Yönetici girişi yapıldı'),
(35, 1, '2023-05-20 23:56:30', 'Yönetici girişi yapıldı'),
(36, 1, '2023-05-21 12:13:49', 'Yönetici girişi yapıldı'),
(37, 1, '2023-05-21 16:13:56', 'Yönetici girişi yapıldı'),
(38, 1, '2023-05-22 13:09:19', 'Yönetici girişi yapıldı'),
(39, 1, '2023-05-23 12:53:05', 'Yönetici girişi yapıldı'),
(40, 1, '2023-05-23 22:11:25', 'Yönetici girişi yapıldı'),
(41, 1, '2023-05-24 14:27:35', 'Yönetici girişi yapıldı'),
(42, 1, '2023-05-26 13:21:27', 'Yönetici girişi yapıldı'),
(43, 1, '2023-05-26 15:22:56', 'Yönetici girişi yapıldı'),
(44, 1, '2023-05-27 12:47:24', 'Yönetici girişi yapıldı'),
(45, 1, '2023-05-27 12:53:30', 'Yönetici girişi yapıldı'),
(46, 1, '2023-05-27 15:56:50', 'Yönetici girişi yapıldı'),
(47, 1, '2023-05-27 16:02:13', 'Yönetici girişi yapıldı'),
(48, 1, '2023-05-27 16:25:33', 'Yönetici girişi yapıldı'),
(49, 1, '2023-05-27 16:26:11', 'Yönetici girişi yapıldı'),
(50, 1, '2023-05-27 16:26:13', 'Yönetici girişi yapıldı'),
(51, 1, '2023-05-29 15:04:33', 'Yönetici girişi yapıldı'),
(52, 1, '2023-05-29 16:32:09', 'Yönetici girişi yapıldı'),
(53, 1, '2023-05-30 15:15:39', 'Yönetici girişi yapıldı'),
(54, 1, '2023-06-01 11:39:58', 'Yönetici girişi yapıldı'),
(55, 1, '2023-06-01 11:48:03', 'Yönetici girişi yapıldı'),
(56, 1, '2023-06-01 11:48:49', 'Yönetici girişi yapıldı'),
(57, 1, '2023-06-01 11:52:24', 'Yönetici girişi yapıldı'),
(58, 1, '2023-06-01 12:08:20', 'Yönetici girişi yapıldı'),
(59, 1, '2023-06-01 12:35:17', 'Yönetici girişi yapıldı'),
(60, 1, '2023-06-01 12:41:08', 'Yönetici girişi yapıldı'),
(61, 1, '2023-06-01 13:03:05', 'Yönetici girişi yapıldı'),
(62, 1, '2023-06-01 13:22:12', 'Yönetici girişi yapıldı'),
(63, 1, '2023-06-01 13:30:07', 'Yönetici girişi yapıldı'),
(64, 1, '2023-06-02 11:06:33', 'Yönetici girişi yapıldı'),
(65, 1, '2023-06-02 12:19:04', 'Yönetici girişi yapıldı'),
(66, 1, '2023-06-02 12:55:27', 'Yönetici girişi yapıldı'),
(67, 1, '2023-06-02 15:20:18', 'Yönetici girişi yapıldı'),
(68, 1, '2023-06-03 14:49:20', 'Yönetici girişi yapıldı'),
(69, 1, '2023-06-03 15:40:14', 'Yönetici girişi yapıldı'),
(70, 1, '2023-06-03 17:00:49', 'Yönetici girişi yapıldı'),
(71, 1, '2023-06-03 18:19:08', 'Yönetici girişi yapıldı'),
(72, 1, '2023-06-04 12:53:27', 'Yönetici girişi yapıldı'),
(73, 1, '2023-06-04 13:31:05', 'Yönetici girişi yapıldı'),
(74, 1, '2023-06-04 14:28:54', 'Yönetici girişi yapıldı'),
(75, 1, '2023-06-04 14:38:24', 'Yönetici girişi yapıldı'),
(76, 1, '2023-06-04 14:54:38', 'Yönetici girişi yapıldı'),
(77, 1, '2023-06-04 15:00:33', 'Yönetici girişi yapıldı'),
(78, 1, '2023-06-04 23:36:10', 'Yönetici girişi yapıldı'),
(79, 1, '2023-06-05 10:47:20', 'Yönetici girişi yapıldı'),
(80, 1, '2023-06-05 14:46:31', 'Yönetici girişi yapıldı'),
(81, 1, '2023-06-05 14:55:45', 'Yönetici girişi yapıldı'),
(82, 1, '2023-06-05 16:12:40', 'Yönetici girişi yapıldı'),
(83, 1, '2023-06-05 16:12:59', 'Yönetici girişi yapıldı'),
(84, 1, '2023-06-05 16:15:53', 'Yönetici girişi yapıldı'),
(85, 1, '2023-06-05 16:22:32', 'Yönetici girişi yapıldı'),
(86, 1, '2023-06-05 16:26:37', 'Yönetici girişi yapıldı'),
(87, 1, '2023-06-05 16:34:34', 'Yönetici girişi yapıldı'),
(88, 1, '2023-06-05 16:36:46', 'Yönetici girişi yapıldı'),
(89, 1, '2023-06-07 15:14:06', 'Yönetici girişi yapıldı'),
(90, 1, '2023-06-10 14:28:46', 'Yönetici girişi yapıldı'),
(91, 1, '2023-06-10 14:29:29', 'Yönetici girişi yapıldı');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `sitebaslik` varchar(300) NOT NULL,
  `siteurl` varchar(300) NOT NULL,
  `sitekeyw` varchar(300) NOT NULL,
  `sitedesc` varchar(300) NOT NULL,
  `sitelogo` varchar(300) NOT NULL,
  `sitekdv` int(11) NOT NULL,
  `sitesiparisdurum` varchar(200) NOT NULL,
  `sitedurum` tinyint(1) NOT NULL DEFAULT 1,
  `smtphost` varchar(300) NOT NULL,
  `smtpmail` varchar(300) NOT NULL,
  `smtpsifre` varchar(300) NOT NULL,
  `smtpsec` varchar(100) NOT NULL,
  `smtpport` varchar(100) NOT NULL,
  `smtpkime` varchar(300) NOT NULL,
  `tel` varchar(200) DEFAULT NULL,
  `fax` varchar(200) DEFAULT NULL,
  `eposta` varchar(200) DEFAULT NULL,
  `adres` text DEFAULT NULL,
  `map` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `sitebaslik`, `siteurl`, `sitekeyw`, `sitedesc`, `sitelogo`, `sitekdv`, `sitesiparisdurum`, `sitedurum`, `smtphost`, `smtpmail`, `smtpsifre`, `smtpsec`, `smtpport`, `smtpkime`, `tel`, `fax`, `eposta`, `adres`, `map`) VALUES
(1, 'ARTEK-Arel Teknoloji', 'http://artek.epizy.com', 'ARTEK-Arel Teknoloji', 'Arel ARTEK-Arel Teknoloji-Mesleki Proje', 'artek-arel-teknoloji-647b73dd3cb01.png', 18, '1', 1, 'smtp.yandex.com', 'calisanplesk@yavuz-selim.com', '251970527yavuz@@', 'tls', '587', 'softwarencoder@yavuz-selim.com', '+90 850 222 1 222', '+90 850 222 1 223', 'iletisim@artek.com', 'İstanbul / Sefaköy', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3011.160087751062!2d28.791627352379148!3d40.999869146312705!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14caa38e89dfac13%3A0xddc019fd2f592e91!2s%C4%B0stanbul%20Arel%20%C3%9Cniversitesi%20Sefak%C3%B6y%20Yerle%C5%9Fkesi!5e0!3m2!1str!2str!4v1683033827238!5m2!1str!2str\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bankalar`
--

CREATE TABLE `bankalar` (
  `bankaid` int(11) NOT NULL,
  `bankaadi` varchar(300) NOT NULL,
  `bankahesap` varchar(300) NOT NULL,
  `bankasube` varchar(300) NOT NULL,
  `bankaiban` varchar(300) NOT NULL,
  `bankadurum` tinyint(1) NOT NULL DEFAULT 1,
  `bankaekleyen` int(11) NOT NULL,
  `bankatarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bankalar`
--

INSERT INTO `bankalar` (`bankaid`, `bankaadi`, `bankahesap`, `bankasube`, `bankaiban`, `bankadurum`, `bankaekleyen`, `bankatarih`) VALUES
(2, 'Yapı ve Kredi Bankası', '9876543210', '002', 'TR12 0002 0001 9876 5432 1000 02', 1, 1, '2023-05-27 14:57:49'),
(1, 'Türkiye İş Bankası', '1234567890', '001', 'TR12 0001 0001 2345 6789 0000 01', 1, 1, '2023-05-27 14:56:49'),
(3, 'Akbank', '2468135790', '003', 'TR12 0003 0002 4681 3579 0000 03', 1, 1, '2023-05-27 14:58:31'),
(4, 'Garanti BBVA', '1357924680', '004', 'TR12 0004 0003 5792 4680 0000 04', 1, 1, '2023-05-27 14:59:03'),
(5, 'Ziraat Bankası', '8642097531', '005', 'TR12 0005 0004 8642 0975 3100 05', 1, 1, '2023-05-27 14:59:43'),
(6, 'VakıfBank', '9753102468', '006', 'TR12 0006 0005 9753 1024 6800 06', 1, 1, '2023-05-27 15:00:17'),
(7, 'Halkbank', '1234876509', '007', 'TR12 0007 0006 1234 8765 0900 07', 1, 1, '2023-05-27 15:00:41'),
(8, 'Denizbank', '9876501234', '008', 'TR12 0008 0007 9876 5012 3400 08', 1, 1, '2023-05-27 15:01:03'),
(9, 'İşbankası', '3698521470', '009', 'TR12 0009 0008 3698 5214 7000 09', 1, 1, '2023-05-27 15:02:02'),
(10, 'Finansbank', '7410852963', '010', 'TR12 0010 0009 7410 8529 6300 10', 1, 1, '2023-05-27 15:02:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bayiler`
--

CREATE TABLE `bayiler` (
  `id` int(11) NOT NULL,
  `bayikodu` varchar(200) NOT NULL,
  `bayiadi` varchar(300) NOT NULL,
  `bayimail` varchar(300) NOT NULL,
  `bayisifre` varchar(300) NOT NULL,
  `bayidurum` tinyint(1) NOT NULL DEFAULT 2,
  `bayitarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `bayilogo` varchar(300) DEFAULT 'b2b.webp',
  `bayiindirim` tinyint(3) NOT NULL DEFAULT 0,
  `bayitelefon` varchar(50) NOT NULL,
  `bayifax` varchar(50) DEFAULT NULL,
  `bayivergino` varchar(200) NOT NULL,
  `bayivergidairesi` varchar(300) NOT NULL,
  `bayisite` varchar(300) DEFAULT NULL,
  `sifirlamakodu` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bayiler`
--

INSERT INTO `bayiler` (`id`, `bayikodu`, `bayiadi`, `bayimail`, `bayisifre`, `bayidurum`, `bayitarih`, `bayilogo`, `bayiindirim`, `bayitelefon`, `bayifax`, `bayivergino`, `bayivergidairesi`, `bayisite`, `sifirlamakodu`) VALUES
(7, '647c88f95781e', 'TeknoMega', 'teknomega@example.com', 'ce31e7b55c23d073878d77b84f1c82bccc6f50e3', 1, '2023-06-04 12:52:07', 'b2b.webp', 0, '555-4445556', NULL, '5678901234', 'Antalya Vergi Dairesi', NULL, NULL),
(5, '647c88791e380', 'TeknoBazaar', 'teknobazaar@example.com', '437a618706b706954a11598d07671314688fba21', 1, '2023-06-04 12:49:59', 'b2b.webp', 0, '555-1234567', NULL, '1234567890', 'İstanbul Vergi Dairesi', NULL, NULL),
(6, '647c88b13c352', 'TeknoShop', 'teknoshop@example.com', 'c06214ea05d974159cb45fcd0844240c4666f8b7', 1, '2023-06-04 12:50:55', 'b2b.webp', 0, '555-9876543', NULL, '0987654321', 'Ankara Vergi Dairesi', NULL, NULL),
(1, '64512cc67753b', 'Arel', 'arel@hotmail.com', 'a3bc2734083931eb533acbf935fa7735bd1762af', 1, '2023-05-02 15:31:18', '64512cc67753b-647b92f4f2fe0.webp', 0, '05378882222', '', '1111111111', 'istanbul', '', NULL),
(8, '647c892824536', 'TeknoPoint', 'teknopoint@example.com', 'c0695e365b6c28b89acfa5d1fa72cc8a56573cc0', 1, '2023-06-04 12:52:54', 'b2b.webp', 0, '555-6667778', NULL, '2468135790', 'İzmir Vergi Dairesi', NULL, NULL),
(9, '647ca1d32b165', 'asd', 'dezmen.gerik@fullangle.org', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', 1, '2023-06-04 14:38:09', 'b2b.webp', 0, '05378882222', '', '5678901234', 'İstanbul Vergi Dairesi', '', ''),
(10, '647e0924a9d00', 'Arel23', 'arel22@hotmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', 2, '2023-06-05 16:11:14', 'b2b.webp', 0, '05378882222', NULL, '1234567890', 'istanbul', NULL, NULL),
(11, '647e0a1047d05', 'Arel23', 'arel23@hotmail.com', '10470c3b4b1fed12c3baac014be15fac67c6e815', 2, '2023-06-05 16:15:10', 'b2b.webp', 0, '05378882222', NULL, '1234567890', 'İstanbul Vergi Dairesi', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bayilog`
--

CREATE TABLE `bayilog` (
  `id` int(11) NOT NULL,
  `logbayi` varchar(200) DEFAULT NULL,
  `logtarih` timestamp NULL DEFAULT current_timestamp(),
  `logip` varchar(300) DEFAULT NULL,
  `logaciklama` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bayilog`
--

INSERT INTO `bayilog` (`id`, `logbayi`, `logtarih`, `logip`, `logaciklama`) VALUES
(87, '64512cc67753b', '2023-05-29 15:42:18', '95.70.207.120', 'Giriş yapıldı'),
(86, '64512cc67753b', '2023-05-29 15:37:28', '95.70.207.120', 'Giriş yapıldı'),
(85, '64512cc67753b', '2023-05-29 15:16:32', '95.70.207.120', 'C-Ex-001 nolu ürünü sepete ekledi'),
(84, '64512cc67753b', '2023-05-29 15:16:16', '95.70.207.120', 'Giriş yapıldı'),
(83, '64512cc67753b', '2023-05-27 15:33:48', '78.173.147.145', '647222dd0d32d nolu siparişi oluşturdu'),
(82, '64512cc67753b', '2023-05-27 15:33:35', '78.173.147.145', 'Yeni adres eklemesi yaptı'),
(81, '64512cc67753b', '2023-05-27 15:32:19', '78.173.147.145', 'MN-Pusat-004 nolu ürünü sepete ekledi'),
(80, '64512cc67753b', '2023-05-27 15:31:07', '78.173.147.145', 'Giriş yapıldı'),
(79, '64512cc67753b', '2023-05-27 15:21:46', '95.70.207.120', '6472200ad6bf3 nolu siparişi oluşturdu'),
(78, '64512cc67753b', '2023-05-27 15:21:29', '95.70.207.120', 'C-Ex-001 nolu ürünü sepete ekledi'),
(77, '64512cc67753b', '2023-05-27 15:21:15', '95.70.207.120', 'Giriş yapıldı'),
(76, '64512cc67753b', '2023-05-27 15:04:17', '78.173.147.145', '64721bf14ce8b nolu siparişi oluşturdu'),
(75, '64512cc67753b', '2023-05-27 15:03:48', '78.173.147.145', 'C-Ex-001 nolu ürünü sepete ekledi'),
(74, '64512cc67753b', '2023-05-27 15:03:40', '78.173.147.145', 'Giriş yapıldı'),
(73, '64512cc67753b', '2023-05-27 14:11:38', '95.70.207.120', 'Giriş yapıldı'),
(72, '64512cc67753b', '2023-05-27 14:05:13', '78.173.147.145', 'C-Ex-001 nolu ürünü sepete ekledi'),
(71, '64512cc67753b', '2023-05-27 14:04:58', '78.173.147.145', 'Giriş yapıldı'),
(70, '64512cc67753b', '2023-05-27 14:01:39', '95.70.207.120', '64720d436e864 nolu siparişi oluşturdu'),
(69, '64512cc67753b', '2023-05-27 14:00:34', '95.70.207.120', 'MN-Pusat-004 nolu ürünü sepete ekledi'),
(68, '64512cc67753b', '2023-05-27 14:00:27', '95.70.207.120', 'Giriş yapıldı'),
(67, '64512cc67753b', '2023-05-27 13:51:47', '78.173.147.145', '64720af32eed6 nolu siparişi oluşturdu'),
(66, '64512cc67753b', '2023-05-27 13:27:30', '78.173.147.145', 'C-Ex-001 nolu ürünü sepete ekledi'),
(65, '64512cc67753b', '2023-05-27 13:20:44', '95.70.207.120', '647203abcd665 nolu siparişi oluşturdu'),
(64, '64512cc67753b', '2023-05-27 13:18:04', '95.70.207.120', 'Giriş yapıldı'),
(63, '64512cc67753b', '2023-05-27 13:16:47', '78.173.147.145', 'C-Ex-001 nolu ürünü sepete ekledi'),
(62, '64512cc67753b', '2023-05-27 13:16:36', '78.173.147.145', 'Giriş yapıldı'),
(61, '64512cc67753b', '2023-05-27 13:15:02', '95.70.207.120', 'Giriş yapıldı'),
(60, '64512cc67753b', '2023-05-27 13:09:42', '95.70.207.120', 'MN-Pusat-004 nolu ürünü sepete ekledi'),
(59, '64512cc67753b', '2023-05-27 13:09:25', '95.70.207.120', 'Giriş yapıldı'),
(58, '64512cc67753b', '2023-05-27 12:47:02', '95.70.207.120', '6471fbc5d8ebc nolu siparişi oluşturdu'),
(57, '64512cc67753b', '2023-05-27 12:43:28', '95.70.207.120', 'C-Ex-001 nolu ürünü sepete ekledi'),
(56, '64512cc67753b', '2023-05-27 12:42:29', '95.70.207.120', 'Giriş yapıldı'),
(55, '64512cc67753b', '2023-05-27 12:42:23', '95.70.207.120', 'Çıkış yapıldı'),
(54, '64512cc67753b', '2023-05-27 12:41:53', '95.70.207.120', 'Giriş yapıldı'),
(88, '64512cc67753b', '2023-05-29 15:44:21', '78.173.147.145', 'Giriş yapıldı'),
(89, '64512cc67753b', '2023-05-29 15:46:21', '95.70.207.120', 'Çıkış yapıldı'),
(90, '64512cc67753b', '2023-05-29 15:46:36', '95.70.207.120', 'Giriş yapıldı'),
(91, '64512cc67753b', '2023-05-29 15:48:26', '78.173.147.145', 'Giriş yapıldı'),
(92, '64512cc67753b', '2023-05-29 15:59:29', '95.70.207.120', 'C-Ex-001 nolu ürünü sepete ekledi'),
(93, '64512cc67753b', '2023-06-02 13:56:23', '78.173.147.145', 'Giriş yapıldı'),
(94, '64512cc67753b', '2023-06-02 13:57:23', '78.173.147.145', 'Yeni mesaj gönderimi yaptı'),
(95, '64512cc67753b', '2023-06-03 11:58:15', '78.173.147.145', 'Giriş yapıldı'),
(96, '64512cc67753b', '2023-06-03 11:58:22', '78.173.147.145', 'lenovo-e14 nolu ürünü sepete ekledi'),
(97, '64512cc67753b', '2023-06-03 11:59:15', '78.173.147.145', '647b2b133bbb5 nolu siparişi oluşturdu'),
(98, '64512cc67753b', '2023-06-03 14:51:23', '95.70.207.43', 'Giriş yapıldı'),
(99, '64512cc67753b', '2023-06-03 14:51:41', '95.70.207.43', 'MSI-0004 nolu ürünü sepete ekledi'),
(100, '64512cc67753b', '2023-06-03 14:54:49', '78.173.147.145', 'Giriş yapıldı'),
(101, '64512cc67753b', '2023-06-03 14:54:59', '78.173.147.145', 'MN-Pusat-003 nolu ürünü sepete ekledi'),
(102, '64512cc67753b', '2023-06-03 15:09:03', '95.70.207.43', 'Giriş yapıldı'),
(103, '64512cc67753b', '2023-06-03 15:19:40', '95.70.207.43', 'Giriş yapıldı'),
(104, '64512cc67753b', '2023-06-03 15:22:17', '78.173.147.145', 'Giriş yapıldı'),
(105, '64512cc67753b', '2023-06-03 15:25:19', '95.70.207.43', '647b5b5fe5917 nolu siparişi oluşturdu'),
(106, '64512cc67753b', '2023-06-03 15:27:27', '95.70.207.43', 'Çıkış yapıldı'),
(107, '64512cc67753b', '2023-06-03 15:27:39', '95.70.207.43', 'Giriş yapıldı'),
(108, '64512cc67753b', '2023-06-03 15:28:12', '95.70.207.43', 'Çıkış yapıldı'),
(109, '64512cc67753b', '2023-06-03 15:28:18', '95.70.207.43', 'Giriş yapıldı'),
(110, '64512cc67753b', '2023-06-03 15:28:26', '95.70.207.43', 'Çıkış yapıldı'),
(111, '64512cc67753b', '2023-06-03 15:29:21', '95.70.207.43', 'Giriş yapıldı'),
(112, '64512cc67753b', '2023-06-03 15:39:29', '95.70.207.43', 'lenovo-e14 nolu ürüne yorum yaptı'),
(113, '64512cc67753b', '2023-06-03 15:43:38', '95.70.207.43', 'Giriş yapıldı'),
(114, '64512cc67753b', '2023-06-03 15:43:48', '95.70.207.43', 'lenovo-e14 nolu ürünü sepete ekledi'),
(115, '64512cc67753b', '2023-06-03 15:44:06', '95.70.207.43', 'lenovo-e14 nolu ürünü sepete ekledi'),
(116, '64512cc67753b', '2023-06-03 15:45:13', '95.70.207.43', 'lenovo-e14 nolu ürünü sepete ekledi'),
(117, '64512cc67753b', '2023-06-03 15:49:52', '95.70.207.43', 'lenovo-e14 nolu ürünü sepete ekledi'),
(118, '64512cc67753b', '2023-06-03 19:15:14', '95.70.207.43', 'Giriş yapıldı'),
(119, '64512cc67753b', '2023-06-03 19:19:56', '95.70.207.43', 'lenovo-e14 nolu ürünü sepete ekledi'),
(120, '64512cc67753b', '2023-06-03 19:20:29', '95.70.207.43', '647b927d40457 nolu siparişi oluşturdu'),
(121, '64512cc67753b', '2023-06-03 19:24:14', '95.70.207.43', 'MSI-0004 nolu ürünü sepete ekledi'),
(122, '64512cc67753b', '2023-06-03 19:25:07', '78.173.147.145', 'Giriş yapıldı'),
(123, '64512cc67753b', '2023-06-04 11:52:25', '95.70.207.43', 'Giriş yapıldı'),
(124, '64512cc67753b', '2023-06-04 11:54:22', '95.70.207.43', '647c7b6eba288 nolu siparişi oluşturdu'),
(125, '64512cc67753b', '2023-06-04 12:04:33', '95.70.207.43', 'Çıkış yapıldı'),
(126, '64512cc67753b', '2023-06-04 12:47:54', '95.70.207.43', 'Giriş yapıldı'),
(127, '64512cc67753b', '2023-06-04 12:48:43', '95.70.207.43', 'Çıkış yapıldı'),
(128, '647c88791e380', '2023-06-04 12:50:00', '95.70.207.43', 'Yeni kayıt oluşturuldu'),
(129, '647c88b13c352', '2023-06-04 12:50:56', '95.70.207.43', 'Yeni kayıt oluşturuldu'),
(130, '647c88f95781e', '2023-06-04 12:52:09', '95.70.207.43', 'Yeni kayıt oluşturuldu'),
(131, '647c892824536', '2023-06-04 12:52:55', '95.70.207.43', 'Yeni kayıt oluşturuldu'),
(132, '647c88791e380', '2023-06-04 13:03:04', '95.70.207.43', 'Giriş yapıldı'),
(133, '647c88791e380', '2023-06-04 13:04:36', '95.70.207.43', 'lenovo-e14 nolu ürüne yorum yaptı'),
(134, '647c88791e380', '2023-06-04 13:05:08', '95.70.207.43', 'C-EX-004 nolu ürüne yorum yaptı'),
(135, '647c88791e380', '2023-06-04 13:05:40', '95.70.207.43', 'HP-03 nolu ürüne yorum yaptı'),
(136, '647c88791e380', '2023-06-04 13:06:31', '95.70.207.43', 'MSI-0002 nolu ürüne yorum yaptı'),
(137, '647c88791e380', '2023-06-04 13:07:12', '95.70.207.43', 'AP-iMac-M1 nolu ürüne yorum yaptı'),
(138, '647c88791e380', '2023-06-04 13:07:38', '95.70.207.43', 'MN-Huma-V5.1.11 nolu ürüne yorum yaptı'),
(139, '647c88791e380', '2023-06-04 13:08:04', '95.70.207.43', 'Çıkış yapıldı'),
(140, '647c88b13c352', '2023-06-04 13:08:27', '95.70.207.43', 'Giriş yapıldı'),
(141, '647c88b13c352', '2023-06-04 13:09:06', '95.70.207.43', 'lenovo-e14 nolu ürüne yorum yaptı'),
(142, '647c88b13c352', '2023-06-04 13:09:38', '95.70.207.43', 'C-EX-004 nolu ürüne yorum yaptı'),
(143, '647c88b13c352', '2023-06-04 13:17:26', '95.70.207.43', 'HP-03 nolu ürüne yorum yaptı'),
(144, '647c88b13c352', '2023-06-04 13:17:54', '95.70.207.43', 'MSI-0002 nolu ürüne yorum yaptı'),
(145, '647c88b13c352', '2023-06-04 13:18:36', '95.70.207.43', 'AP-iMac-M1 nolu ürüne yorum yaptı'),
(146, '647c88b13c352', '2023-06-04 13:19:02', '95.70.207.43', 'MN-Huma-V5.1.11 nolu ürüne yorum yaptı'),
(147, '647c88b13c352', '2023-06-04 13:19:21', '95.70.207.43', 'Çıkış yapıldı'),
(148, '647c88f95781e', '2023-06-04 13:20:05', '95.70.207.43', 'Giriş yapıldı'),
(149, '647c88f95781e', '2023-06-04 13:20:50', '95.70.207.43', 'lenovo-e14 nolu ürüne yorum yaptı'),
(150, '647c88f95781e', '2023-06-04 13:21:04', '95.70.207.43', 'C-EX-004 nolu ürüne yorum yaptı'),
(151, '647c88f95781e', '2023-06-04 13:21:24', '95.70.207.43', 'HP-03 nolu ürüne yorum yaptı'),
(152, '647c88f95781e', '2023-06-04 13:21:51', '95.70.207.43', 'MSI-0002 nolu ürüne yorum yaptı'),
(153, '647c88f95781e', '2023-06-04 13:22:08', '95.70.207.43', 'AP-iMac-M1 nolu ürüne yorum yaptı'),
(154, '647c88f95781e', '2023-06-04 13:22:25', '95.70.207.43', 'MN-Huma-V5.1.11 nolu ürüne yorum yaptı'),
(155, '647c88f95781e', '2023-06-04 13:22:35', '95.70.207.43', 'Çıkış yapıldı'),
(156, '647c892824536', '2023-06-04 13:23:03', '95.70.207.43', 'Giriş yapıldı'),
(157, '647c892824536', '2023-06-04 13:29:20', '95.70.207.43', 'lenovo-e14 nolu ürüne yorum yaptı'),
(158, '647c892824536', '2023-06-04 13:29:36', '95.70.207.43', 'C-EX-004 nolu ürüne yorum yaptı'),
(159, '647c892824536', '2023-06-04 13:29:53', '95.70.207.43', 'AP-iMac-M1 nolu ürüne yorum yaptı'),
(160, '647c892824536', '2023-06-04 13:30:15', '95.70.207.43', 'HP-03 nolu ürüne yorum yaptı'),
(161, '647c892824536', '2023-06-04 13:30:28', '95.70.207.43', 'MSI-0002 nolu ürüne yorum yaptı'),
(162, '647c892824536', '2023-06-04 13:30:40', '95.70.207.43', 'MN-Huma-V5.1.11 nolu ürüne yorum yaptı'),
(163, '647c892824536', '2023-06-04 13:40:02', '95.70.207.43', 'Çıkış yapıldı'),
(164, '647ca1d32b165', '2023-06-04 14:38:11', '95.70.207.43', 'Yeni kayıt oluşturuldu'),
(165, '647ca1d32b165', '2023-06-04 14:39:25', '95.70.207.43', 'Giriş yapıldı'),
(166, '647ca1d32b165', '2023-06-04 14:40:09', '95.70.207.43', 'Çıkış yapıldı'),
(167, '64512cc67753b', '2023-06-04 14:50:47', '78.173.147.145', 'Giriş yapıldı'),
(168, '64512cc67753b', '2023-06-04 15:35:07', '95.70.207.43', 'Giriş yapıldı'),
(169, '64512cc67753b', '2023-06-04 21:45:39', '78.173.147.145', 'Giriş yapıldı'),
(170, '647d1fcfd7b8d', '2023-06-04 23:35:43', '5.46.199.29', 'Yeni kayıt oluşturuldu'),
(171, '647d2181410c8', '2023-06-04 23:42:56', '5.46.199.29', 'Yeni kayıt oluşturuldu'),
(172, '64512cc67753b', '2023-06-04 23:43:10', '78.173.147.145', 'Giriş yapıldı'),
(173, '64512cc67753b', '2023-06-04 23:43:50', '78.173.147.145', 'lenovo-e14 nolu ürünü sepete ekledi'),
(174, '647d2181410c8', '2023-06-04 23:44:58', '5.46.199.29', 'Giriş yapıldı'),
(175, '647d2181410c8', '2023-06-04 23:46:18', '5.46.199.29', 'Çıkış yapıldı'),
(176, '647d26bd4c400', '2023-06-05 00:05:16', '5.46.199.29', 'Yeni kayıt oluşturuldu'),
(177, '64512cc67753b', '2023-06-05 00:20:52', '78.173.147.145', 'Giriş yapıldı'),
(178, '64512cc67753b', '2023-06-05 00:29:51', '78.173.147.145', 'Giriş yapıldı'),
(179, '647db7c2b1f06', '2023-06-05 10:24:02', '95.70.207.43', 'Yeni kayıt oluşturuldu'),
(180, 'Belirtilmemiş', '2023-06-05 10:49:30', '78.173.147.145', 'Yeni mesaj gönderimi yaptı'),
(181, '64512cc67753b', '2023-06-05 12:21:29', '95.70.207.43', 'Giriş yapıldı'),
(182, '64512cc67753b', '2023-06-05 12:26:25', '95.70.207.43', 'Giriş yapıldı'),
(183, '64512cc67753b', '2023-06-05 12:27:51', '78.173.147.145', 'Giriş yapıldı'),
(184, '64512cc67753b', '2023-06-05 12:31:15', '78.173.147.145', 'Çıkış yapıldı'),
(185, '64512cc67753b', '2023-06-05 14:10:20', '78.173.147.145', 'Giriş yapıldı'),
(186, '64512cc67753b', '2023-06-05 15:55:39', '95.70.207.43', 'Giriş yapıldı'),
(187, '64512cc67753b', '2023-06-05 15:55:58', '95.70.207.43', 'lenovo-e14 nolu ürünü sepete ekledi'),
(188, '64512cc67753b', '2023-06-05 15:56:44', '95.70.207.43', 'Çıkış yapıldı'),
(189, '64512cc67753b', '2023-06-05 16:04:52', '95.70.207.43', 'Giriş yapıldı'),
(190, '64512cc67753b', '2023-06-05 16:04:56', '95.70.207.43', 'Çıkış yapıldı'),
(191, '647e0924a9d00', '2023-06-05 16:11:16', '95.70.207.43', 'Yeni kayıt oluşturuldu'),
(192, '647e0a1047d05', '2023-06-05 16:15:11', '95.70.207.43', 'Yeni kayıt oluşturuldu'),
(193, '64512cc67753b', '2023-06-05 16:15:33', '95.70.207.43', 'Giriş yapıldı'),
(194, '64512cc67753b', '2023-06-05 16:16:09', '95.70.207.43', 'lenovo-e14 nolu ürünü sepete ekledi'),
(195, '64512cc67753b', '2023-06-05 16:17:35', '95.70.207.43', '647e0a9fd7a7a nolu siparişi oluşturdu'),
(196, '64512cc67753b', '2023-06-05 16:21:28', '95.70.207.43', 'HP-04 nolu ürünü sepete ekledi'),
(197, '64512cc67753b', '2023-06-05 16:22:00', '95.70.207.43', '647e0ba96a669 nolu siparişi oluşturdu'),
(198, '64512cc67753b', '2023-06-05 16:23:09', '95.70.207.43', 'HP-04 nolu ürünü sepete ekledi'),
(199, '64512cc67753b', '2023-06-05 16:23:25', '95.70.207.43', '647e0bfe8c967 nolu siparişi oluşturdu'),
(200, '64512cc67753b', '2023-06-05 16:23:44', '95.70.207.43', 'Çıkış yapıldı'),
(201, '64512cc67753b', '2023-06-05 16:31:51', '78.173.147.145', 'Giriş yapıldı'),
(202, '64512cc67753b', '2023-06-05 16:32:13', '78.173.147.145', 'MSI-0003 nolu ürüne yorum yaptı'),
(203, '64512cc67753b', '2023-06-05 20:09:12', '95.70.207.43', 'Giriş yapıldı'),
(204, '64512cc67753b', '2023-06-05 20:09:15', '95.70.207.43', 'lenovo-e14 nolu ürünü sepete ekledi'),
(205, '64512cc67753b', '2023-06-10 14:27:05', '88.233.129.239', 'Giriş yapıldı'),
(206, '64512cc67753b', '2023-06-10 14:27:54', '88.233.129.239', 'Şifre değişikiği yapıldı'),
(207, '64512cc67753b', '2023-06-10 14:28:24', '88.233.129.239', 'Çıkış yapıldı');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bayi_adresler`
--

CREATE TABLE `bayi_adresler` (
  `id` int(11) NOT NULL,
  `adresbayi` varchar(200) NOT NULL,
  `adresbaslik` varchar(200) NOT NULL,
  `adrestarif` text NOT NULL,
  `adresdurum` tinyint(1) NOT NULL DEFAULT 1,
  `adrestarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bayi_adresler`
--

INSERT INTO `bayi_adresler` (`id`, `adresbayi`, `adresbaslik`, `adrestarif`, `adresdurum`, `adrestarih`) VALUES
(5, '64512cc67753b', 'Ev', 'Atatürk Caddesi No: 56 Kadıköy, İstanbul', 1, '2023-05-27 15:33:35'),
(1, '64512cc67753b', 'Arel', 'Çobançeşme Mevkii, Sefa Sirmen Bulvarı No:1\r\n34200 Küçükçekmece/İstanbul', 1, '2023-05-02 15:37:07');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `durumkodlari`
--

CREATE TABLE `durumkodlari` (
  `id` int(11) NOT NULL,
  `durumbaslik` varchar(300) NOT NULL,
  `durumkodu` varchar(200) NOT NULL,
  `durumtarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `durumekleyen` int(11) NOT NULL,
  `durumdurum` tinyint(1) NOT NULL DEFAULT 1,
  `silinmeyen_durum` tinyint(1) NOT NULL DEFAULT 2
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `durumkodlari`
--

INSERT INTO `durumkodlari` (`id`, `durumbaslik`, `durumkodu`, `durumtarih`, `durumekleyen`, `durumdurum`, `silinmeyen_durum`) VALUES
(1, 'BEKLEMEDE', '2', '2022-03-01 17:44:06', 1, 1, 1),
(2, 'İPTAL EDİLDİ', '3', '2022-03-01 17:44:06', 1, 1, 2),
(3, 'ONAYLANDI', '1', '2022-03-01 17:44:06', 1, 1, 2),
(4, 'TESLİM EDİLDi', '4', '2022-03-01 17:44:06', 1, 1, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `havalebildirim`
--

CREATE TABLE `havalebildirim` (
  `id` int(11) NOT NULL,
  `havalebayi` varchar(200) NOT NULL,
  `havaletarih` date NOT NULL,
  `havalesaat` varchar(200) NOT NULL,
  `havaletutar` double(15,2) NOT NULL,
  `havalenot` text NOT NULL,
  `banka` int(11) NOT NULL,
  `havaleeklenme` timestamp NOT NULL DEFAULT current_timestamp(),
  `havaleip` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `id` int(11) NOT NULL,
  `mesajisim` varchar(300) NOT NULL,
  `mesajposta` varchar(300) NOT NULL,
  `mesajkonu` varchar(300) NOT NULL DEFAULT 'YOK',
  `mesajicerik` text NOT NULL,
  `mesajdurum` tinyint(1) NOT NULL DEFAULT 2,
  `mesajip` varchar(300) NOT NULL,
  `mesajtarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `mesajlar`
--

INSERT INTO `mesajlar` (`id`, `mesajisim`, `mesajposta`, `mesajkonu`, `mesajicerik`, `mesajdurum`, `mesajip`, `mesajtarih`) VALUES
(7, 'falan filan', 'falanfilan@hotmail.com', 'falan', 'falan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanfalan filanan filanfalan filan', 2, '78.173.147.145', '2023-06-05 10:49:30'),
(6, 'deneme deneme', 'deneme@deneme.com', 'deneme', 'denemedenemedeneme\r\ndenemedenemedeneme\r\ndenemedenemedeneme\r\ndenemedenemedeneme\r\ndenemedenemedeneme\r\ndenemedenemedeneme\r\ndenemedenemedeneme\r\ndenemedenemedeneme\r\ndenemedenemedeneme', 1, '78.173.147.145', '2023-06-02 13:57:23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE `sayfalar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(300) NOT NULL,
  `sef` varchar(300) NOT NULL,
  `icerik` text NOT NULL,
  `kapak` varchar(200) DEFAULT NULL,
  `durum` tinyint(1) NOT NULL DEFAULT 1,
  `tarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `ekleyen` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `baslik`, `sef`, `icerik`, `kapak`, `durum`, `tarih`, `ekleyen`) VALUES
(2, 'Misyon / Vizyon', 'misyon-vizyon', '<p>Misyonumuz: ARTEK Teknoloji Mağazası olarak, m&uuml;şterilerimize en son teknoloji &uuml;r&uuml;nleri sunarken, m&uuml;kemmel hizmet ve kaliteli &uuml;r&uuml;nler sağlamayı taahh&uuml;t ediyoruz. M&uuml;şterilerimizin teknoloji ihtiya&ccedil;larını karşılamak ve yaşamlarını kolaylaştırmak i&ccedil;in geniş bir &uuml;r&uuml;n yelpazesi sunarken, uzman ekibimizle birlikte teknolojik yenilikleri takip ediyor ve en son trendleri m&uuml;şterilerimize sunuyoruz. M&uuml;şteri memnuniyetini her zaman &ouml;nceliğimiz olarak belirlerken, d&uuml;r&uuml;stl&uuml;k, g&uuml;venilirlik ve etik değerlere bağlı kalarak uzun vadeli ilişkiler kurmayı hedefliyoruz.</p>\r\n\r\n<p>Vizyonumuz: ARTEK Teknoloji Mağazası olarak, teknoloji d&uuml;nyasındaki lider konumumuzu s&uuml;rd&uuml;rerek m&uuml;şterilerimize ilham veren bir deneyim sunmayı hedefliyoruz. Vizyonumuz, teknolojiyi erişilebilir kılarak, herkesin hayatını zenginleştiren &uuml;r&uuml;nlerle tanışmasını sağlamaktır. Teknolojinin g&uuml;c&uuml;n&uuml; anlamak ve m&uuml;şterilerimize g&uuml;venilir bilgi ve rehberlik sunmak i&ccedil;in s&uuml;rekli olarak eğitimli ve uzman bir ekibimizi geliştiriyoruz. İnovasyona odaklanarak, sekt&ouml;rdeki yeni gelişmeleri takip ediyor, yaratıcı &ccedil;&ouml;z&uuml;mler sunuyor ve m&uuml;şterilerimizin hayatlarını d&ouml;n&uuml;şt&uuml;ren teknolojilerle &ouml;nc&uuml; olmayı ama&ccedil;lıyoruz. ARTEK Teknoloji Mağazası, teknolojinin getirdiği fırsatları keşfetmek ve geleceğe y&ouml;nelik vizyonuyla m&uuml;şterilerimize &ouml;nc&uuml;l&uuml;k etmek i&ccedil;in burada.</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 428px; top: 100.391px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n', 'general.webp', 1, '2022-03-08 16:07:55', 1),
(3, 'Gizlilik Sözleşmesi', 'gizlilik-sozlesmesi', '<p>GİZLİLİK S&Ouml;ZLEŞMESİ</p>\r\n\r\n<p>Bu Gizlilik S&ouml;zleşmesi (&quot;S&ouml;zleşme&quot;), Artek Teknoloji Mağazası (&quot;Şirket&quot;) ile Şirketin &ccedil;alışanları, m&uuml;şterileri, tedarik&ccedil;ileri ve diğer ilgili taraflar (&quot;Taraflar&quot;) arasında gizlilik ve veri koruması hususunda anlaşmaya varılmıştır.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Gizlilik Taahh&uuml;d&uuml;: Taraflar, birbirlerinin ticari, mali, teknik, pazarlama, m&uuml;şteri ve diğer bilgilerini (&quot;Gizli Bilgiler&quot;) gizli tutmayı ve bu bilgilere sadece bu S&ouml;zleşme kapsamında belirtilen ama&ccedil;lar doğrultusunda erişmeyi kabul eder. Gizli Bilgiler, yazılı, s&ouml;zl&uuml; veya elektronik ortamda ifade edilebilir ve ticari sırlar, işletme stratejileri, m&uuml;şteri listeleri, ticari ilişkiler, finansal bilgiler, tedarik&ccedil;i bilgileri, pazarlama planları ve diğer ilgili bilgileri i&ccedil;erebilir.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gizlilik ve Veri G&uuml;venliği: Taraflar, Gizli Bilgilerin gizliliğini ve g&uuml;venliğini sağlamak i&ccedil;in makul &ouml;nlemleri alacak ve bu bilgilere izinsiz erişimi, ifşasını veya kullanımını &ouml;nlemek i&ccedil;in gerekli tedbirleri alacaklardır. Taraflar, bilgileri sadece bu S&ouml;zleşme kapsamında yetkili personel arasında paylaşacak ve Gizli Bilgileri sadece belirlenen ama&ccedil;lar doğrultusunda kullanacaklardır.</p>\r\n	</li>\r\n	<li>\r\n	<p>İstisnalar: Taraflar, aşağıdaki durumlar dışında, Gizli Bilgileri herhangi bir &uuml;&ccedil;&uuml;nc&uuml; tarafa ifşa etmeyecektir:</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>a. İlgili tarafın a&ccedil;ık yazılı onayı ile, b. İlgili tarafın ifşayı gerektiren yasal bir y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; olduğunda, c. Mahkeme veya yasal d&uuml;zenleyici otoritelerin taleplerine uymak i&ccedil;in, d. Taraflardan birinin diğerine ilişkin gizlilik taahh&uuml;d&uuml;n&uuml;n ihlali durumunda, ihlal eden tarafın yasal haklarını korumak veya uygulamak amacıyla.</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>S&ouml;zleşmenin Devri: Bu S&ouml;zleşme, Taraflardan herhangi birinin &ouml;nceden yazılı onayı olmaksızın devredilemez.</p>\r\n	</li>\r\n	<li>\r\n	<p>S&ouml;zleşmenin Ge&ccedil;erlilik S&uuml;resi: Bu S&ouml;zleşme, Taraflar arasında Gizli Bilgilerin ifşa edildiği tarihten itibaren y&uuml;r&uuml;rl&uuml;ğe girecek ve taraflardan herhangi biri yazılı olarak bildirimde bulunmadık&ccedil;a s&uuml;recektir.</p>\r\n	</li>\r\n	<li>\r\n	<p>Uyuşmazlıklar: Bu S&ouml;zleşme ile ilgili herhangi bir uyuşmazlık durumunda, Taraflar arasında dostane bir &ccedil;&ouml;z&uuml;m yolu bulunması ama&ccedil;lanır. Uyuşmazlık &ccedil;&ouml;z&uuml;mlenemezse, yetkili mahkemelerde &ccedil;&ouml;z&uuml;lmesi gerekecektir.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Bu Gizlilik S&ouml;zleşmesi, Taraflar arasında anlaşmanın bir ifadesi olarak imzalanmıştır.</p>\r\n\r\n<p>ARTEK TEKNOLOJİ MAĞAZASI: Temsilci Adı: Tarih:</p>\r\n\r\n<p>TARAFLAR: [Tarafların adları ve temsilcilerinin imzaları]</p>\r\n', 'general.webp', 1, '2022-03-08 16:07:55', 1),
(4, 'Mesafeli Satış Sözleşmesi', 'mesafeli-satis-sozlesmesi', '<p>Bu Mesafeli Satış S&ouml;zleşmesi (&quot;S&ouml;zleşme&quot;), Artek Teknoloji Mağazası (&quot;Satıcı&quot;) ile aşağıda adı ve iletişim bilgileri belirtilen alıcı (&quot;Alıcı&quot;) arasında, www.artek.epizy.com&nbsp;(&quot;Web Sitesi&quot;) &uuml;zerinden yapılan satış işlemleri i&ccedil;in ge&ccedil;erlidir.</p>\r\n\r\n<ol>\r\n	<li>Taraflar: Satıcı: Firma Adı: Artek Teknoloji Mağazası Adres: [Firma Adresi] Telefon: [Firma Telefonu] E-posta: [Firma E-posta Adresi]</li>\r\n</ol>\r\n\r\n<p>Alıcı: Adı: [Alıcı Adı] Adres: [Alıcı Adresi] Telefon: [Alıcı Telefonu] E-posta: [Alıcı E-posta Adresi]</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>S&ouml;zleşmenin Konusu: Bu s&ouml;zleşme, Alıcı tarafından Web Sitesi &uuml;zerinden yapılan siparişlerin, &ouml;deme işleminin ger&ccedil;ekleştirilmesi ve &uuml;r&uuml;nlerin teslimatı ile ilgili hak ve sorumlulukları d&uuml;zenlemektedir.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sipariş ve &Ouml;deme: Alıcı, Web Sitesi &uuml;zerinden se&ccedil;tiği &uuml;r&uuml;nleri sipariş etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r. &Ouml;deme, kredi kartı, banka havalesi veya diğer &ouml;deme y&ouml;ntemleriyle ger&ccedil;ekleştirilebilir. Satıcı, &ouml;deme işlemini tamamladıktan sonra Alıcıya sipariş onayını ve &ouml;deme makbuzunu g&ouml;nderecektir.</p>\r\n	</li>\r\n	<li>\r\n	<p>&Uuml;r&uuml;n Teslimatı: Satıcı, siparişin &ouml;deme onayının alınmasını takiben m&uuml;mk&uuml;n olan en kısa s&uuml;rede &uuml;r&uuml;nleri teslim etmeyi hedeflemektedir. Teslimat s&uuml;resi &uuml;r&uuml;n&uuml;n stok durumu ve se&ccedil;ilen teslimat y&ouml;ntemine bağlı olarak değişebilir. Teslimat, kargo şirketi aracılığıyla yapılacak olup teslimat s&uuml;resi ve masrafları Alıcı tarafından karşılanacaktır.</p>\r\n	</li>\r\n	<li>\r\n	<p>İptal ve İade: Alıcı, siparişini teslim aldıktan sonra 14 g&uuml;n i&ccedil;inde herhangi bir neden belirtmeksizin s&ouml;zleşmeden cayma hakkına sahiptir. Cayma hakkı kullanıldığında, &uuml;r&uuml;n&uuml;n kullanılmamış, hasar g&ouml;rmemiş ve orijinal ambalajında olduğu durumlarda iade kabul edilecektir. İade s&uuml;reci ve masrafları, Satıcı tarafından belirlenen prosed&uuml;rlere g&ouml;re ger&ccedil;ekleştirilecektir.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gizlilik ve Veri Koruma: Satıcı, Alıcı tarafından sağlanan kişisel ve &ouml;deme bilgilerini gizli tutmayı ve y&uuml;r&uuml;rl&uuml;kteki veri koruma mevzuatına uygun olarak işlemeyi taahh&uuml;t eder. Bu bilgiler, siparişin tamamlanması ve m&uuml;şteri hizmetleri ile iletişim amacıyla kullanılabilir.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sorumluluk Sınırlaması: Satıcı, &uuml;r&uuml;nlerin doğru ve eksiksiz bir şekilde Web Sitesi&#39;nde tanıtıldığından emin olmak i&ccedil;in makul &ccedil;abayı g&ouml;sterir. Bununla birlikte, satın alınan &uuml;r&uuml;nlerin performansı ve uygunluğuyla ilgili sorumluluk Alıcıya aittir. Satıcı, &uuml;r&uuml;nlerin kullanımından doğan herhangi bir zarardan dolayı sorumlu tutulamaz.</p>\r\n	</li>\r\n	<li>\r\n	<p>Uyuşmazlıkların &Ccedil;&ouml;z&uuml;m&uuml;: Bu s&ouml;zleşme T&uuml;rk Hukuku&#39;na tabidir. Taraflar arasında &ccedil;ıkabilecek uyuşmazlıkların &ccedil;&ouml;z&uuml;m&uuml;nde İstanbul Mahkemeleri ve İcra Daireleri yetkilidir.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Bu&nbsp; Mesafeli Satış S&ouml;zleşmesi, Alıcı tarafından Web Sitesi&#39;nde yapılan her siparişin ayrılmaz bir par&ccedil;asıdır.</p>\r\n', 'general.webp', 1, '2022-03-08 16:07:55', 1),
(5, 'Üyelik Sözleşmesi', 'uyelik-sozlesmesi', '<h2><strong>SİTE KULLANIM ŞARTLARI</strong></h2>\r\n\r\n<p>L&uuml;tfen sitemizi kullanmadan evvel bu &lsquo;site kullanım şartları&rsquo;nı dikkatlice okuyunuz.&nbsp;</p>\r\n\r\n<p>Bu alışveriş sitesini kullanan ve alışveriş yapan m&uuml;şterilerimiz aşağıdaki şartları kabul etmiş varsayılmaktadır:</p>\r\n\r\n<p>Sitemizdeki web sayfaları ve ona bağlı t&uuml;m sayfalar (&lsquo;site&rsquo;) &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip; adresindeki &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.firmasının (Firma) malıdır ve onun tarafından işletilir. Sizler (&lsquo;Kullanıcı&rsquo;) sitede sunulan t&uuml;m hizmetleri kullanırken aşağıdaki şartlara tabi olduğunuzu, sitedeki hizmetten yararlanmakla ve kullanmaya devam etmekle; Bağlı olduğunuz yasalara g&ouml;re s&ouml;zleşme imzalama hakkına, yetkisine ve hukuki ehliyetine sahip ve 18 yaşın &uuml;zerinde olduğunuzu, bu s&ouml;zleşmeyi okuduğunuzu, anladığınızı ve s&ouml;zleşmede yazan şartlarla bağlı olduğunuzu kabul etmiş sayılırsınız.&nbsp;</p>\r\n\r\n<p>İşbu s&ouml;zleşme taraflara s&ouml;zleşme konusu site ile ilgili hak ve y&uuml;k&uuml;ml&uuml;l&uuml;kler y&uuml;kler ve taraflar işbu s&ouml;zleşmeyi kabul ettiklerinde bahsi ge&ccedil;en hak ve y&uuml;k&uuml;ml&uuml;l&uuml;kleri eksiksiz, doğru, zamanında, işbu s&ouml;zleşmede talep edilen şartlar d&acirc;hilinde yerine getireceklerini beyan ederler.</p>\r\n\r\n<h2><strong>1. SORUMLULUKLAR</strong></h2>\r\n\r\n<p>a.Firma, fiyatlar ve sunulan &uuml;r&uuml;n ve hizmetler &uuml;zerinde değişiklik yapma hakkını her zaman saklı tutar.&nbsp;</p>\r\n\r\n<p>b.Firma, &uuml;yenin s&ouml;zleşme konusu hizmetlerden, teknik arızalar dışında yararlandırılacağını kabul ve taahh&uuml;t eder.</p>\r\n\r\n<p>c.Kullanıcı, sitenin kullanımında tersine m&uuml;hendislik yapmayacağını ya da bunların kaynak kodunu bulmak veya elde etmek amacına y&ouml;nelik herhangi bir başka işlemde bulunmayacağını aksi halde ve 3. Kişiler nezdinde doğacak zararlardan sorumlu olacağını, hakkında hukuki ve cezai işlem yapılacağını peşinen kabul eder.&nbsp;</p>\r\n\r\n<p>d.Kullanıcı, site i&ccedil;indeki faaliyetlerinde, sitenin herhangi bir b&ouml;l&uuml;m&uuml;nde veya iletişimlerinde genel ahlaka ve adaba aykırı, kanuna aykırı, 3. Kişilerin haklarını zedeleyen, yanıltıcı, saldırgan, m&uuml;stehcen, pornografik, kişilik haklarını zedeleyen, telif haklarına aykırı, yasa dışı faaliyetleri teşvik eden i&ccedil;erikler &uuml;retmeyeceğini, paylaşmayacağını kabul eder. Aksi halde oluşacak zarardan tamamen kendisi sorumludur ve bu durumda &lsquo;Site&rsquo; yetkilileri, bu t&uuml;r hesapları askıya alabilir, sona erdirebilir, yasal s&uuml;re&ccedil; başlatma hakkını saklı tutar. Bu sebeple yargı mercilerinden etkinlik veya kullanıcı hesapları ile ilgili bilgi talepleri gelirse paylaşma hakkını saklı tutar.</p>\r\n\r\n<p>e.Sitenin &uuml;yelerinin birbirleri veya &uuml;&ccedil;&uuml;nc&uuml; şahıslarla olan ilişkileri kendi sorumluluğundadır.&nbsp;</p>\r\n', 'general.webp', 1, '2022-04-19 21:38:00', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `id` int(11) NOT NULL,
  `sepetbayi` varchar(200) NOT NULL,
  `sepeturun` varchar(200) NOT NULL,
  `sepetadet` int(11) NOT NULL,
  `birimfiyat` double(15,2) NOT NULL,
  `toplamfiyat` double(15,2) NOT NULL,
  `kdv` int(11) NOT NULL DEFAULT 18,
  `sepettarih` date NOT NULL,
  `sepetsilinme` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`id`, `sepetbayi`, `sepeturun`, `sepetadet`, `birimfiyat`, `toplamfiyat`, `kdv`, `sepettarih`, `sepetsilinme`) VALUES
(68, '64512cc67753b', 'lenovo-e14', 1, 19999.00, 23598.82, 18, '2023-06-05', '2023-06-12');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

CREATE TABLE `siparisler` (
  `id` int(11) NOT NULL,
  `siparisbayi` varchar(200) NOT NULL,
  `siparisisim` varchar(300) NOT NULL,
  `siparistel` varchar(100) NOT NULL,
  `siparistarih` date NOT NULL,
  `siparissaat` varchar(200) NOT NULL,
  `siparisdurum` int(11) NOT NULL DEFAULT 2,
  `siparisnot` text NOT NULL,
  `siparistutar` double(15,2) NOT NULL,
  `siparisodeme` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = havale 2 = kredi kartı',
  `sipariskodu` varchar(200) NOT NULL,
  `siparisadres` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `siparisler`
--

INSERT INTO `siparisler` (`id`, `siparisbayi`, `siparisisim`, `siparistel`, `siparistarih`, `siparissaat`, `siparisdurum`, `siparisnot`, `siparistutar`, `siparisodeme`, `sipariskodu`, `siparisadres`) VALUES
(30, '64512cc67753b', 'Arel', '05378882222', '2023-06-05', '19:23', 2, '', 1178.82, 1, '647e0bfe8c967', 5),
(29, '64512cc67753b', 'Arel', '05378882222', '2023-06-05', '19:22', 2, '', 1178.82, 1, '647e0ba96a669', 5),
(28, '64512cc67753b', 'Arel', '05378882222', '2023-06-05', '19:17', 2, 'Merhaba, lütfen hızlıca kargolayın', 23598.82, 2, '647e0a9fd7a7a', 5),
(27, '64512cc67753b', 'Arel', '05378882222', '2023-06-04', '14:54', 2, 'sdsadsad', 795.62, 1, '647c7b6eba288', 5),
(26, '64512cc67753b', 'Arel', '05378882222', '2023-06-03', '22:20', 2, 'sadasdfsaf', 23598.82, 2, '647b927d40457', 5),
(25, '64512cc67753b', 'Arel', '05378882222', '2023-06-03', '18:25', 4, 'dsadsasdds', 2239.64, 2, '647b5b5fe5917', 1),
(24, '64512cc67753b', 'Arel', '05378882222', '2023-06-03', '14:59', 1, 'tfrqe', 23598.82, 2, '647b2b133bbb5', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_urunler`
--

CREATE TABLE `siparis_urunler` (
  `id` int(11) NOT NULL,
  `sipkodu` varchar(200) NOT NULL,
  `sipurun` varchar(200) NOT NULL,
  `sipbirim` double(15,2) NOT NULL,
  `sipadet` int(11) NOT NULL,
  `siptoplam` double(15,2) NOT NULL,
  `sipurunadi` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `siparis_urunler`
--

INSERT INTO `siparis_urunler` (`id`, `sipkodu`, `sipurun`, `sipbirim`, `sipadet`, `siptoplam`, `sipurunadi`) VALUES
(29, '647e0bfe8c967', 'HP-04', 999.00, 1, 1178.82, 'HP SMB Topload'),
(28, '647e0ba96a669', 'HP-04', 999.00, 1, 1178.82, 'HP SMB Topload'),
(27, '647e0a9fd7a7a', 'lenovo-e14', 19999.00, 1, 23598.82, 'Lenovo Thinkpad E14'),
(26, '647c7b6eba288', 'MSI-0004', 674.25, 1, 795.62, 'MSI GForce GC20'),
(25, '647b927d40457', 'lenovo-e14', 19999.00, 1, 23598.82, 'Lenovo Thinkpad E14'),
(24, '647b5b5fe5917', 'MSI-0004', 899.00, 1, 1060.82, 'MSI GForce GC20'),
(23, '647b5b5fe5917', 'MN-Pusat-003', 999.00, 1, 1178.82, 'Pusat Business Pro Klavye'),
(22, '647b2b133bbb5', 'lenovo-e14', 19999.00, 1, 23598.82, 'Lenovo Thinkpad E14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(11) NOT NULL,
  `urunkat` int(11) NOT NULL,
  `urunbaslik` varchar(300) NOT NULL,
  `urunsef` varchar(300) NOT NULL,
  `urunicerik` text NOT NULL,
  `urunkapak` varchar(300) NOT NULL,
  `urunbanner` varchar(300) NOT NULL,
  `urunfiyat` double(15,2) NOT NULL,
  `urunkodu` varchar(200) NOT NULL,
  `urunstok` int(11) NOT NULL,
  `urunkeyw` varchar(300) NOT NULL,
  `urundesc` varchar(300) NOT NULL,
  `uruntarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `urunekleyen` int(11) NOT NULL,
  `urunvitrin` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = vitrin 2=vitrin değil',
  `urundurum` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = aktif 2= pasif'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `urunkat`, `urunbaslik`, `urunsef`, `urunicerik`, `urunkapak`, `urunbanner`, `urunfiyat`, `urunkodu`, `urunstok`, `urunkeyw`, `urundesc`, `uruntarih`, `urunekleyen`, `urunvitrin`, `urundurum`) VALUES
(28, 4, 'Pusat 1080p  Full HD Webcam', 'pusat-webcam', '<p>Pusat 1080p Full HD Webcam, y&uuml;ksek kaliteli g&ouml;r&uuml;nt&uuml; deneyimi sunan &ouml;zellikleriyle dikkat &ccedil;eken bir &uuml;r&uuml;nd&uuml;r. Bu webcam&#39;in &ouml;zellikleri, net ve keskin g&ouml;r&uuml;nt&uuml;ler elde etmek i&ccedil;in tasarlanmıştır.</p>\r\n\r\n<p>1920x1080 &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; sayesinde, kristal netliğinde ve ayrıntılı g&ouml;r&uuml;nt&uuml;ler elde edebilirsiniz. Bu y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k, video konferanslar, &ccedil;evrimi&ccedil;i toplantılar veya g&ouml;r&uuml;nt&uuml;l&uuml; sohbetler sırasında daha canlı ve ger&ccedil;ek&ccedil;i bir deneyim sunar.</p>\r\n\r\n<p>Otomatik odak modu, webcam&#39;in g&ouml;r&uuml;nt&uuml;y&uuml; otomatik olarak netlemesini sağlar. Bu sayede hareketli ortamlarda veya farklı odak mesafelerinde bile her zaman net ve net g&ouml;r&uuml;nt&uuml;ler elde edebilirsiniz.</p>\r\n\r\n<p>76&deg; lens genişliği, daha geniş bir g&ouml;r&uuml;ş alanı sunar. Bu sayede daha fazla insanı veya daha geniş bir alanı aynı anda kapsayabilirsiniz. &Ouml;zellikle grup g&ouml;r&uuml;şmeleri veya konferanslar i&ccedil;in idealdir.</p>\r\n\r\n<p>Pusat 1080p Full HD Webcam, y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k, otomatik odak modu ve geniş lens genişliği gibi &ouml;zellikleriyle profesyonel g&ouml;r&uuml;nt&uuml;l&uuml; iletişimler i&ccedil;in m&uuml;kemmel bir se&ccedil;enektir.</p>\r\n', 'pusat-webcam-646a819d15a21.webp', '', 899.00, 'MN-Pusat-004', 15, 'pusat webcam', 'pusat webcam', '2023-05-21 20:39:56', 1, 1, 1),
(24, 4, 'Huma H4 V5.1.11 14,1', 'huma-h4-v5-1-14inc', '<p>HUMA H4 V5.1.11 14,1&quot;, teknolojiye a&ccedil;ık olan ve her t&uuml;rl&uuml; g&ouml;revi yerine getirmek i&ccedil;in tasarlanmış y&uuml;ksek performanslı bir diz&uuml;st&uuml; bilgisayardır. Benzersiz bir deneyim sunmak &uuml;zere tasarlanan HUMA H4 V5.1.11, kullanıcılara g&uuml;&ccedil;l&uuml; işlemci, geniş bellek ve y&uuml;ksek kapasiteli depolama gibi &ouml;zelliklerle donatılmıştır.</p>\r\n\r\n<p>14,1 in&ccedil;lik keskin ve parlak ekranıyla, HUMA H4 V5.1.11 kullanıcılara net ve canlı g&ouml;r&uuml;nt&uuml;ler sunar. Y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k ve geniş renk gamıyla, film izleme, fotoğraf d&uuml;zenleme veya profesyonel g&ouml;revler gibi farklı kullanım senaryolarında en iyi deneyimi sağlar.</p>\r\n\r\n<p>HUMA H4 V5.1.11, g&uuml;ncel işlemci teknolojisiyle g&uuml;&ccedil;lendirilmiştir ve &ccedil;oklu g&ouml;revlerin &uuml;stesinden gelmek i&ccedil;in y&uuml;ksek performans sunar. &Ccedil;oklu &ccedil;ekirdekli işlemcisi sayesinde hızlı ve akıcı bir kullanıcı deneyimi sunarken, enerji verimliliği de sağlar. Bu da daha uzun pil &ouml;mr&uuml; ve daha az şarj s&uuml;resi anlamına gelir.</p>\r\n\r\n<p>Ayrıca, HUMA H4 V5.1.11&#39;de geniş bir bellek kapasitesi ve hızlı veri erişimi sağlayan SSD depolama birimi bulunur. Bu, dosyalarınızı hızlı bir şekilde a&ccedil;manıza ve daha hızlı işlem yapmanıza olanak tanır.</p>\r\n\r\n<p>HUMA H4 V5.1.11, aynı zamanda kullanıcıların verimliliklerini artırmak i&ccedil;in &ccedil;eşitli bağlantı se&ccedil;enekleri sunar. Y&uuml;ksek hızlı USB portları, HDMI &ccedil;ıkışı ve kablosuz bağlantı se&ccedil;enekleri gibi &ouml;zelliklerle, harici cihazlarınızı kolayca bağlayabilir ve verilerinizi hızlı bir şekilde transfer edebilirsiniz.</p>\r\n\r\n<p>Bu hayali &uuml;r&uuml;n olan HUMA H4 V5.1.11, kullanıcılar i&ccedil;in g&uuml;&ccedil;l&uuml; performans, y&uuml;ksek g&ouml;r&uuml;nt&uuml; kalitesi ve geniş bağlantı se&ccedil;enekleri sunarak, her t&uuml;rl&uuml; bilgi işlem ihtiyacını karşılamayı hedefler.</p>\r\n', 'huma-h4-v5-1-14inc-646a720d302e3.webp', '', 17899.00, 'MN-Huma-V5.1.11', 20, 'monster huma', 'monster huma', '2023-05-21 19:22:57', 1, 1, 1),
(22, 8, 'Macbook Pro 16\"', 'macbook-pro-16inc', '<ul>\r\n	<li>12 &ccedil;ekirdekli CPU&rsquo;ya, 19&nbsp;&ccedil;ekirdekli GPU&rsquo;ya&nbsp;ve 16&nbsp;&ccedil;ekirdekli Neural&nbsp;Engine&rsquo;a&nbsp;sahip Apple&nbsp;M2&nbsp;Pro&nbsp;&ccedil;ip</li>\r\n	<li>16&nbsp;GB birleşik&nbsp;bellek</li>\r\n	<li>512 GB SSD depolama</li>\r\n	<li>16 in&ccedil; Liquid&nbsp;Retina XDR&nbsp;ekran&sup2;</li>\r\n	<li>&Uuml;&ccedil; adet Thunderbolt&nbsp;4 bağlantı&nbsp;noktası, birer adet HDMI bağlantı noktası, SDXC&nbsp;kart&nbsp;yuvası, kulaklık&nbsp;jakı, MagSafe&nbsp;3 bağlantı&nbsp;noktası</li>\r\n	<li>140 W USB-C G&uuml;&ccedil;&nbsp;Adapt&ouml;r&uuml;</li>\r\n	<li>Touch&nbsp;ID &ouml;zellikli ve arkadan aydınlatmalı Magic&nbsp;Keyboard - T&uuml;rk&ccedil;e&nbsp;Q</li>\r\n</ul>\r\n', 'macbook-pro-16inc-646a6685e581a.webp', 'macbook-pro-16inc-646a691df1932.webp', 66999.00, 'AP-Mac-Pro-16', 40, 'macbook pro 16', 'macbook pro 16', '2023-05-21 18:44:20', 1, 1, 1),
(23, 8, 'iMac M1 24', 'imac-m1-24inc', '<ul>\r\n	<li>\r\n	<p>iMac M1 24, Apple&#39;ın son teknolojiye sahip masa&uuml;st&uuml; bilgisayar serisinin en yeni &uuml;yesidir. Yenilik&ccedil;i tasarımı, y&uuml;ksek performansı ve gelişmiş &ouml;zellikleriyle dikkat &ccedil;eker.</p>\r\n\r\n	<p>iMac M1 24&#39;&uuml;n en g&ouml;ze &ccedil;arpan &ouml;zelliği, M1 &ccedil;ipidir. Apple&#39;ın kendi tasarladığı M1 &ccedil;ip, y&uuml;ksek performans ve enerji verimliliği sunar. Bu sayede, hızlı ve sorunsuz bir deneyim yaşarken aynı zamanda d&uuml;ş&uuml;k g&uuml;&ccedil; t&uuml;ketimiyle daha uzun pil &ouml;mr&uuml; elde edebilirsiniz. M1 &ccedil;ip ayrıca, grafik işlemleri, yapay zeka tabanlı g&ouml;revler ve &ccedil;oklu g&ouml;revler gibi işlemleri g&uuml;&ccedil;l&uuml; bir şekilde y&ouml;netir.</p>\r\n\r\n	<p>24 in&ccedil; boyutunda olan iMac M1, Retina 4.5K ekranıyla etkileyici bir g&ouml;r&uuml;nt&uuml; deneyimi sunar. Y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;k ve geniş renk gamıyla canlı ve keskin detaylar elde edersiniz. Ayrıca, True Tone teknolojisi sayesinde ekranın &ccedil;evresel ışığa otomatik olarak ayarlanması, g&ouml;z yorgunluğunu azaltır ve daha doğal bir g&ouml;r&uuml;nt&uuml; sağlar.</p>\r\n\r\n	<p>Yenilik&ccedil;i tasarımıyla da &ouml;ne &ccedil;ıkan iMac M1 24, ince ve hafif bir yapıya sahiptir. &Ouml;nceki nesil iMac&#39;lere kıyasla daha kompakt bir tasarıma sahiptir ve masanızda daha az yer kaplar. Ayrıca, renkli se&ccedil;enekleriyle de kişiselleştirme imkanı sunar, b&ouml;ylece tarzınıza uygun bir se&ccedil;im yapabilirsiniz.</p>\r\n\r\n	<p>iMac M1 24, gelişmiş bağlantı &ouml;zellikleriyle donatılmıştır. Thunderbolt ve USB 4 bağlantı noktaları sayesinde y&uuml;ksek hızlı veri aktarımı yapabilir ve harici cihazları kolayca bağlayabilirsiniz. Ayrıca, Wi-Fi 6 teknolojisiyle daha hızlı kablosuz bağlantı sağlanır.</p>\r\n\r\n	<p>iMac M1 24, macOS işletim sistemiyle birlikte gelir ve Apple ekosistemiyle entegre bir deneyim sunar. iCloud, iMessage ve diğer Apple hizmetleriyle senkronize olabilir, iPhone veya iPad&#39;inizle kolayca veri paylaşımı yapabilirsiniz. Ayrıca, &ouml;zel olarak tasarlanan M1 &ccedil;ipiyle uyumlu olan uygulamalar, daha hızlı ve verimli &ccedil;alışır.</p>\r\n\r\n	<p>Sonu&ccedil; olarak, iMac M1 24, Apple&#39;ın yenilik&ccedil;i tasarım anlayışını y&uuml;ksek performans ve gelişmiş &ouml;zelliklerle bir araya getiren bir masa&uuml;st&uuml; bilgisayardır. M1 &ccedil;ipi, etkileyici bir performans sunarken, Retina ek</p>\r\n\r\n	<p>ranı ve bağlantı se&ccedil;enekleriyle g&ouml;rsel deneyimi zenginleştirir. Eşsiz tasarımı ve macOS işletim sistemiyle birleşerek, &uuml;retkenlik ve yaratıcılık i&ccedil;in ideal bir &ccedil;&ouml;z&uuml;m sunar.</p>\r\n	</li>\r\n</ul>\r\n', 'imac-m1-24inc-646a6bdbcd2b5.webp', '', 34999.00, 'AP-iMac-M1', 25, 'imac', 'imac', '2023-05-21 19:07:06', 1, 1, 1),
(21, 8, 'Macbook Pro 14\"', 'macbook-pro-14inc', '<ul>\r\n	<li>10&nbsp;&ccedil;ekirdekli CPU&rsquo;ya, 16&nbsp;&ccedil;ekirdekli GPU&rsquo;ya&nbsp;ve 16&nbsp;&ccedil;ekirdekli Neural&nbsp;Engine&rsquo;a&nbsp;sahip Apple&nbsp;M2&nbsp;Pro&nbsp;&ccedil;ip</li>\r\n	<li>16&nbsp;GB birleşik&nbsp;bellek</li>\r\n	<li>512 GB SSD depolama</li>\r\n	<li>67 W USB-C G&uuml;&ccedil;&nbsp;Adapt&ouml;r&uuml;</li>\r\n	<li>14 in&ccedil; Liquid&nbsp;Retina XDR&nbsp;ekran&sup2;</li>\r\n	<li>&Uuml;&ccedil; adet Thunderbolt&nbsp;4 bağlantı&nbsp;noktası, birer adet HDMI bağlantı noktası, SDXC&nbsp;kart&nbsp;yuvası, kulaklık&nbsp;jakı, MagSafe&nbsp;3 bağlantı&nbsp;noktası</li>\r\n	<li>Touch&nbsp;ID &ouml;zellikli ve arkadan aydınlatmalı Magic&nbsp;Keyboard - T&uuml;rk&ccedil;e&nbsp;Q</li>\r\n</ul>\r\n', 'macbook-pro-14inc-646a65b783eda.webp', '', 53999.00, 'AP-Mac-Pro-14', 25, 'macbook pro 14', 'macbook pro 14', '2023-05-21 18:40:54', 1, 1, 1),
(19, 8, 'Macbook Air M2', 'macbook-air-m2', '<ul>\r\n	<li>8 &ccedil;ekirdekli CPU&rsquo;ya, 8&nbsp;&ccedil;ekirdekli GPU&rsquo;ya&nbsp;ve 16&nbsp;&ccedil;ekirdekli Neural&nbsp;Engine&rsquo;a&nbsp;sahip Apple&nbsp;M2&nbsp;&ccedil;ip</li>\r\n	<li>8&nbsp;GB birleşik&nbsp;bellek</li>\r\n	<li>256 GB SSD depolama</li>\r\n	<li>True Tone &ouml;zelliğine sahip 13.6&nbsp;in&ccedil; Liquid&nbsp;Retina&nbsp;ekran</li>\r\n	<li>1080p FaceTime HD kamera</li>\r\n	<li>MagSafe&nbsp;3 şarj bağlantı&nbsp;noktası</li>\r\n	<li>İki adet Thunderbolt&nbsp;/&nbsp;USB&nbsp;4 bağlantı&nbsp;noktası</li>\r\n	<li>30 W USB-C G&uuml;&ccedil; Adapt&ouml;r&uuml;</li>\r\n	<li>Touch&nbsp;ID &ouml;zellikli ve arkadan aydınlatmalı Magic&nbsp;Keyboard - T&uuml;rk&ccedil;e&nbsp;Q</li>\r\n</ul>\r\n', 'macbook-air-m2-646a637f984b8.webp', '', 32499.00, 'AP-Mac-Air-M2', 20, 'macbook air m2', 'macbook air m2', '2023-05-21 18:31:26', 1, 1, 1),
(20, 8, 'Macbook Pro 13\"', 'macbook-pro-13inc', '<ul>\r\n	<li>8&nbsp;&ccedil;ekirdekli CPU&rsquo;ya, 10&nbsp;&ccedil;ekirdekli GPU&rsquo;ya&nbsp;ve 16&nbsp;&ccedil;ekirdekli Neural&nbsp;Engine&rsquo;a&nbsp;sahip Apple&nbsp;M2&nbsp;&ccedil;ip</li>\r\n	<li>8&nbsp;GB birleşik&nbsp;bellek</li>\r\n	<li>256 GB SSD depolama</li>\r\n	<li>True&nbsp;Tone &ouml;zelliğine sahip 13 in&ccedil; Retina ekran</li>\r\n	<li>İki&nbsp;adet Thunderbolt/USB&nbsp;4 bağlantı&nbsp;noktası</li>\r\n	<li>Touch&nbsp;Bar ve Touch&nbsp;ID</li>\r\n	<li>Arkadan Aydınlatmalı Magic Keyboard - T&uuml;rk&ccedil;e Q Klavye</li>\r\n	<li>Force Touch trackpad</li>\r\n</ul>\r\n', 'macbook-pro-13inc-646a64be4bd3c.webp', '', 34999.00, 'AP-Mac-Pro-13', 50, 'Macbook Pro 13', 'Macbook Pro 13', '2023-05-21 18:36:45', 1, 1, 1),
(16, 6, 'Msi Pulse GL76 12UEK', 'pulse-gt76', '<ul>\r\n	<li>GeForce RTX 30 Serisi Laptoplar - Nihai Oyun Deneyimi GeForce RTX 30 serisi GPU&#39;lar oyuncular ve tasarımcılar i&ccedil;in d&uuml;nyanın en hızlı laptoplarına g&uuml;&ccedil; verir</li>\r\n	<li>NVIDIA&#39;nın RT ve Tensor &ccedil;ekirdeklerine ek olarak en ger&ccedil;ek&ccedil;i ışın izleme ve NVIDIA DLSS gibi yapay zeka &ouml;zellikleri i&ccedil;in &ccedil;oklu akış işlemcilerine sahip 2.nesil RTX mimarisi olan Ampere ile gelir</li>\r\n	<li>17.3&quot; FHD (1920*1080), 144Hz</li>\r\n	<li>RTX3060, GDDR6 6GB DDR IV 16GB (8GB*2, 3200MHz) 2 Slots Max 64GB</li>\r\n	<li>HDD: 1TB NVMe PCIe Gen3x4 SSD (new) &Ouml;n Kamera: HD type (30fps@720p) Klavye: Backlight Keyboard (Single-Color, Red)</li>\r\n	<li>Pil: 3-Cell, Li-Polymer, 53.5Whr G&uuml;&ccedil; Adapt&ouml;r&uuml;: 240W adapt&ouml;r Boyutlar: 398 x 273 x 24.2 mm Ağırlık: 2.6 kg</li>\r\n</ul>\r\n', 'MSI-PULSE-GL76-646a0d1f62984.webp', '', 39983.00, 'MSI-0001', 100, 'msi pulse', 'msi pulse', '2023-05-21 12:22:53', 1, 1, 1),
(27, 4, 'Pusat Business Pro Klavye', 'pusat-business-pro-klavye', '<p>Pusat Business Pro Kablosuz Klavye, ince ve şık metalik tasarımıyla dikkat &ccedil;eken &uuml;st&uuml;n &ouml;zelliklere sahip bir &uuml;r&uuml;nd&uuml;r. Aynı anda &ccedil;oklu cihaz bağlantısı &ouml;zelliği sayesinde farklı cihazlarla kolaylıkla kullanılabilir. MacOs, Windows, Android, iOS gibi farklı platformlara uyumluluğuyla geniş bir kullanım alanı sunar. Bluetooth 5.1 kablosuz bağlantı &ouml;zelliğiyle hızlı ve g&uuml;venilir bir bağlantı sağlar. 100 saatlik kullanım s&uuml;resiyle uzun pil &ouml;mr&uuml; sunarken, dayanıklı al&uuml;minyum kasasıyla sağlamlık ve dayanıklılık sağlar.</p>\r\n', 'pusat-business-pro-klavye-646a7fd608904.webp', '', 999.00, 'MN-Pusat-003', 35, 'Pusat Business Klavye', 'Pusat Business Klavye', '2023-05-21 20:32:20', 1, 1, 1),
(18, 1, 'Lenovo Ideapad Gaming 3', 'lenovo-idepad', '<ul>\r\n	<li>&Ccedil;oklu g&ouml;rev esnekliği sunan 12. Nesil Intel Core işlemciyle &uuml;st d&uuml;zey oyun performansı parmaklarınızın ucunda. Doğru &ccedil;ekirdeği doğru iş y&uuml;k&uuml;yle eşleştiren inovatif yeni mimari sayesinde arka plan g&ouml;revleri oyununuzu kesintiye uğratmaz. Sohbet etme, internette gezinme, yayın yapma, d&uuml;zenleme yapma, kaydetme ve oynama &ouml;zg&uuml;rl&uuml;ğ&uuml;n&uuml; sorunsuz bir şekilde sunar</li>\r\n	<li>GeForce RTX 30 Serisi GPU&#39;ları, oyun tutkunları ve i&ccedil;erik &uuml;reticilerin ihtiyacı olan &uuml;st&uuml;n performansı sunar. En ger&ccedil;ek&ccedil;i ışın izlemeli grafikler ve son teknoloji yapay zeka &ouml;zellikleri sunmak i&ccedil;in yeni Işın İzleme &Ouml;zellikli &Ccedil;ekirdekler, Tensor &Ccedil;ekirdekleri ve &ccedil;oklu işlemcilerle g&uuml;&ccedil;lendirilmiş, NVIDIA&#39;nın 2. Nesil RTX mimarisi olan Ampere&rsquo;le desteklenmektedir</li>\r\n	<li>Yeni IdeaPad Gaming diz&uuml;st&uuml; bilgisayarınız ve EA Play dahil &uuml;&ccedil; aylık Xbox Game Pass ile 100&#39;&uuml;n &uuml;zerinde y&uuml;ksek kaliteli oyun oynayın. S&uuml;rekli eklenen yeni oyunlarla, oynayacak oyun bulmakta asla sorun yaşamayacaksınız. Bulut &uuml;zerinden oyunlarınızı aslından farksız bir şekilde indirip oynayabilir veya bağlı oyun kumandasıyla konsol oyunlarının tadını yine bulut teknolojisiyle &ccedil;ıkarabilirsiniz</li>\r\n	<li>IdeaPad Gaming 3i 7. Nesil diz&uuml;st&uuml; bilgisayar kendini hızlı ve sessiz bir şekilde soğutur. Klavye hava girişi gibi &ouml;zelliklerle kapsamlı soğutma iyileştirmelerinin keyfini &ccedil;ıkarın. Oyunlarınızı sessiz ve ısınma olmadan oynayabilmeniz i&ccedil;in %10 artırılmış fan hava akışı ile &ouml;nceki nesle kıyasla %20 daha etkili havalandırma sağlar</li>\r\n	<li>Benzersiz Lenovo oyun klavyesinde medya kontrolleri ve sayısal tuş takımı bulunur</li>\r\n</ul>\r\n', 'lenovo-idepad-646a15a5a2d18.webp', '', 20000.00, 'LNV-001', 100, 'lenovo-idepad', 'lenovo-idepad', '2023-05-21 12:59:15', 1, 1, 1),
(14, 14, 'HP Victus 15-FB0008NT', 'hp-victus-15', '<ul>\r\n	<li>G&uuml;&ccedil;l&uuml; bir AMD işlemci1, modern bir grafik kartı ve y&uuml;ksek bellek kapasitesi ile en iyi oyun performansını ortaya koy</li>\r\n	<li>Bu cihaz daha az yer kaplar ve &uuml;&ccedil; adede kadar renk se&ccedil;eneği ile her yerde g&uuml;zel g&ouml;r&uuml;n&uuml;r</li>\r\n	<li>G&uuml;ncellenen termal tasarımdan HD kameraya kadar bu diz&uuml;st&uuml; bilgisayar her şeye sahiptir</li>\r\n	<li>Mikro kenarlı ekran; daha b&uuml;y&uuml;k bir ekranı daha k&uuml;&ccedil;&uuml;k bir &ccedil;er&ccedil;eveye sığdıran ve ultra inceliğiyle zar zor g&ouml;r&uuml;lebilen bu &ccedil;er&ccedil;eve verimli tasarımıyla cihazınızın g&ouml;r&uuml;n&uuml;m&uuml;nde &ccedil;ığır a&ccedil;ıyor</li>\r\n	<li>NVIDIA GeForce RTX 3050, GeForce RTX 3050 diz&uuml;st&uuml; bilgisayarlarla 2. nesil RTX g&uuml;c&uuml;ne ulaş; g&uuml;c&uuml;n&uuml;, NVIDIA DLSS gibi modern yapay zeka &ouml;zelliklerini ve ışın izlemeli grafikleri kullanmak i&ccedil;in yeni RT &ccedil;ekirdekler, tensor &ccedil;ekirdekler ve yayın &ccedil;oklu işlemcileri i&ccedil;eren &ouml;d&uuml;ll&uuml; NVIDIA Ampere mimarisinden alır; yeni 3. nesil Max-Q teknolojilerini i&ccedil;eren GeForce diz&uuml;st&uuml; bilgisayarlarda, yeni ve yenilik&ccedil;i form fakt&ouml;rlerinde daha verimli diz&uuml;st&uuml; oyun bilgisayarları elde etmek i&ccedil;in yapay zeka ve yeni sistem optimizasyonları kullanılır</li>\r\n</ul>\r\n', 'hp-victus-15-6468ed5dd0893.webp', '', 25000.00, 'HP-01', 100, 'HP Victus 15-FB0008NT', 'HP Victus 15-FB0008NT', '2023-05-20 15:30:12', 1, 1, 1),
(25, 4, 'Pusat Notebook Soğutucusu', 'pusat-notebook-sogutucusu', '<p>Pusat Notebook Soğutucu, al&uuml;minyum kasa, &ccedil;ift 2 fan ve Hydro Bearing teknolojisi ile donatılmış y&uuml;ksek kaliteli bir &uuml;r&uuml;nd&uuml;r. Al&uuml;minyum kasa, sağlam bir yapı sunarken aynı zamanda ısı dağılımını iyileştirir. &Ccedil;ift fan sistemi, y&uuml;ksek hızda &ccedil;alışarak bilgisayarınızın i&ccedil;erisinde biriken sıcak havayı etkili bir şekilde uzaklaştırır. Hydro Bearing teknolojisi ise sessiz ve uzun &ouml;m&uuml;rl&uuml; bir &ccedil;alışma sunar. Pusat Notebook Soğutucu, bilgisayarınızın performansını optimize etmek ve aşırı ısınmaya karşı koruma sağlamak i&ccedil;in ideal bir se&ccedil;enektir.</p>\r\n', 'pusat-notebook-sogutucusu-646a7b623a4bb.webp', '', 749.00, 'MN-Pusat-001', 10, 'pusat notebook soğutucu', 'pusat notebook soğutucu', '2023-05-21 20:13:21', 1, 1, 1),
(26, 4, 'Pusat Business Pro Mouse', 'pusat-business-pro-mouse', '<p>Pusat Business Pro Kablosuz Mouse, tek şarjla 55 saat kesintisiz kullanım sağlar. Her iki elle kullanıma uygun tasarımı ve &ccedil;ift bağlantı modu (Wireless/Bluetooth) ile esnek bir deneyim sunar. Aynı anda iki cihazla bağlantı kurabilir ve 10 metrelik kablosuz kullanım mesafesiyle hareket &ouml;zg&uuml;rl&uuml;ğ&uuml; sağlar.</p>\r\n', 'pusat-business-pro-mouse-646a7e42ef81d.webp', '', 399.00, 'MN-Pusat-002', 45, 'pusat business mouse', 'pusat business mouse', '2023-05-21 20:25:37', 1, 1, 1),
(15, 8, 'Macbook Air M1', 'macbook-air-m1', '<h3>Apple M1 &ccedil;ip</h3>\r\n\r\n<p>M1 &ccedil;ip, MacBook&nbsp;Air&rsquo;e inanılmaz bir performans, &ouml;zel teknolojiler ve muhteşem g&uuml;&ccedil; verimliliği getiriyor. 16&nbsp;milyar transist&ouml;re sahip bu teknoloji; CPU, GPU, G&zwj;/&zwj;&Ccedil;&nbsp;ve diğer t&uuml;m &ouml;nemli bileşen&nbsp;ve denetleyicileri k&uuml;&ccedil;&uuml;c&uuml;k tek&nbsp;bir &ccedil;ipe entegre&nbsp;ediyor.</p>\r\n\r\n<p>G&uuml;&ccedil;l&uuml; 8&nbsp;&ccedil;ekirdekli CPU&rsquo;da yer&nbsp;alan d&ouml;rt adet performans &ccedil;ekirdeği ve d&ouml;rt&nbsp;adet verimlilik &ccedil;ekirdeği, b&uuml;y&uuml;k g&uuml;&ccedil; gerektiren birden&nbsp;fazla iş&nbsp;par&ccedil;acıklı g&ouml;revleri yerine getirmek&nbsp;i&ccedil;in birlikte &ccedil;alışıyor. 7&nbsp;&ccedil;ekirdekli GPU&nbsp;ise olağan&uuml;st&uuml; hızlı entegre grafik teknolojileri sunuyor.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Birleşik Bellek</h3>\r\n\r\n<p>Ne kadar y&uuml;ksek bir birleşik&nbsp;bellek (RAM) se&ccedil;erseniz, aynı&nbsp;anda o&nbsp;kadar&nbsp;fazla uygulamayı y&uuml;ksek performansla &ccedil;alıştırabiliyorsunuz.</p>\r\n\r\n<p>M1 &ccedil;ipe sahip MacBook&nbsp;Air, daha akıcı&nbsp;bir şekilde multitasking yapabilmeniz&nbsp;ve b&uuml;y&uuml;k dosyalarla kolayca &ccedil;alışabilmeniz&nbsp;i&ccedil;in 16&nbsp;GB&rsquo;a kadar bellekle yapılandırılabiliyor.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Depolama</h3>\r\n\r\n<p>Katı&nbsp;hal s&uuml;r&uuml;c&uuml;s&uuml;ndeki (SSD) depolama alanı belge, fotoğraf, m&uuml;zik, video&nbsp;ve diğer dosyalarınız&nbsp;i&ccedil;in MacBook&nbsp;Air&rsquo;inizde ne&nbsp;kadar alan bulunduğunu g&ouml;steriyor.</p>\r\n\r\n<p>Benzersiz performansını&nbsp;ve hızını, Mac&rsquo;inizi a&ccedil;arken, bir uygulamayı başlatırken&nbsp;veya fotoğraf arşivinizde gezinirken hemen fark&nbsp;edeceksiniz.</p>\r\n', 'macbook-air-m1-6468e9ba93f81.webp', 'macbook-air-m1-6468ebf1ea0f6.webp', 23999.00, 'AP-Mac-Air-M1', 50, 'macbook air m1', 'macbook air m1', '2023-05-20 15:39:36', 1, 1, 1),
(29, 12, 'Excalibur G870', 'Excalibur-G870', '<p>NVIDIA RTX40 serisi yeni ekran kartları&nbsp; ve 12. Nesil Intel Core işlemcilere sahip Excalibur G870 oyuncu bilgisayarları ile sadece performansta değil tasarımda da ayrıcalığı hisset. &Ccedil;eşitli konfig&uuml;rasyon se&ccedil;enekleri ile akıcı ve ger&ccedil;ek&ccedil;i oyun deneyimine sahip ol.</p>\r\n', 'Excalibur-G870-646e20d38f7a5.webp', 'Excalibur-G870-646cec0a4d329.webp', 28999.00, 'C-Ex-001', 10, 'Excalibur G870', 'Excalibur G870', '2023-05-23 14:07:47', 1, 1, 1),
(30, 12, 'Casper Excalibur G900', 'CASPER-G900', '<p>Casper G900, gelişmiş &ouml;zellikleriyle dikkat &ccedil;eken y&uuml;ksek performanslı bir &uuml;r&uuml;nd&uuml;r. Bu &uuml;r&uuml;n, son teknoloji donanımları ve şık tasarımıyla kullanıcılara &uuml;st&uuml;n bir deneyim sunmayı hedeflemektedir.</p>\r\n\r\n<p>Casper G900&#39;&uuml;n g&uuml;&ccedil;l&uuml; işlemci se&ccedil;eneği, &ccedil;oklu g&ouml;revleri hızlı ve verimli bir şekilde yerine getirme yeteneği sunar. Y&uuml;ksek saat hızları ve &ccedil;ok &ccedil;ekirdekli işlem g&uuml;c&uuml; sayesinde, zorlu uygulamaları ve oyunları sorunsuz bir şekilde &ccedil;alıştırabilirsiniz.</p>\r\n\r\n<p>Bu &uuml;r&uuml;n, y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kl&uuml; ve geniş ekranıyla g&ouml;rsel deneyimi maksimize etmektedir. B&uuml;y&uuml;k ekranı, canlı renklerle dolu ve keskin detaylarıyla dikkat &ccedil;ekici bir g&ouml;r&uuml;nt&uuml; sunar. İster oyun oynarken ister film izlerken, ger&ccedil;ek&ccedil;i ve etkileyici bir g&ouml;rsel deneyim yaşamanızı sağlar.</p>\r\n\r\n<p>Casper G900&#39;&uuml;n depolama kapasitesi olduk&ccedil;a geniştir. B&uuml;y&uuml;k miktarda veri, dosya ve medya i&ccedil;eriği depolamak i&ccedil;in idealdir. Ayrıca, hızlı ve kesintisiz veri aktarımı i&ccedil;in en yeni nesil bağlantı noktalarıyla donatılmıştır.</p>\r\n\r\n<p>Bu &uuml;r&uuml;n&uuml;n şık ve dayanıklı tasarımı, hem estetik a&ccedil;ıdan hoş bir g&ouml;r&uuml;n&uuml;m sunar hem de g&uuml;nl&uuml;k kullanımda sağlamlık ve dayanıklılık sağlar. Hafif ve taşınabilir olmasıyla, istediğiniz her yere kolayca g&ouml;t&uuml;rebilirsiniz.</p>\r\n\r\n<p>Casper G900, y&uuml;ksek kaliteli ses deneyimi i&ccedil;in gelişmiş ses teknolojileriyle donatılmıştır. İster m&uuml;zik dinlerken ister film izlerken, net ve etkileyici bir ses kalitesi sunarak size keyifli bir ses deneyimi yaşatır.</p>\r\n\r\n<p>Sonu&ccedil; olarak, Casper G900, g&uuml;&ccedil;l&uuml; performansı, geniş ekranı, b&uuml;y&uuml;k depolama kapasitesi, şık tasarımı ve kaliteli ses deneyimiyle dikkat &ccedil;eken bir &uuml;r&uuml;nd&uuml;r. Hem iş hem de eğlence ama&ccedil;lı kullanıcılar i&ccedil;in ideal bir se&ccedil;enektir.</p>\r\n', 'CASPER-G900-64789931aebae.webp', '', 32599.00, 'C-EX-002', 100, 'casper-g900', 'casper-g900', '2023-06-01 13:07:19', 1, 1, 1),
(31, 12, 'Casper Excalibur G911', 'CASPER-G911', '<p>Casper G911, gelişmiş &ouml;zellikleri ve kullanıcı dostu tasarımıyla &ouml;ne &ccedil;ıkan bir &uuml;r&uuml;nd&uuml;r. Bu &uuml;r&uuml;n, y&uuml;ksek performansı ve geniş işlevsel &ouml;zellikleriyle, kullanıcıların ihtiya&ccedil;larını karşılamayı hedeflemektedir.</p>\r\n\r\n<p>Casper G911&#39;in g&uuml;&ccedil;l&uuml; ve verimli işlemcisi, hızlı ve sorunsuz bir performans sunar. Y&uuml;ksek saat hızları ve &ccedil;oklu &ccedil;ekirdekli işlem g&uuml;c&uuml;, zorlu uygulamaları ve oyunları rahatlıkla &ccedil;alıştırmanıza olanak sağlar.</p>\r\n\r\n<p>Geniş ekranı ve y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml;, g&ouml;rsel deneyimi maksimize eder. Canlı renkler ve keskin detaylarla dolu bir g&ouml;r&uuml;nt&uuml; sunarak, oyunları, filmleri ve diğer multimedya i&ccedil;eriklerini daha etkileyici bir şekilde deneyimlemenizi sağlar.</p>\r\n\r\n<p>Casper G911&#39;in geniş depolama kapasitesi, b&uuml;y&uuml;k miktarda veri, dosya ve medya i&ccedil;eriği depolamanızı sağlar. B&ouml;ylece, kişisel dosyalarınızı, fotoğraflarınızı ve videolarınızı kolaylıkla saklayabilir ve erişebilirsiniz.</p>\r\n\r\n<p>Bu &uuml;r&uuml;n, şık ve zarif tasarımıyla dikkat &ccedil;eker. İnce ve taşınabilir yapısıyla, istediğiniz her yere rahatlıkla g&ouml;t&uuml;rebilirsiniz. Dayanıklı malzemelerden yapılmış olması, g&uuml;nl&uuml;k kullanımda sağlamlık ve dayanıklılık sunar.</p>\r\n\r\n<p>Casper G911, y&uuml;ksek kaliteli ses deneyimi i&ccedil;in gelişmiş ses teknolojileriyle donatılmıştır. Zengin ve etkileyici ses kalitesi, m&uuml;zik dinlerken, film izlerken veya oyun oynarken daha keyifli bir deneyim yaşamanızı sağlar.</p>\r\n\r\n<p>Sonu&ccedil; olarak, Casper G911, g&uuml;&ccedil;l&uuml; performansı, geniş ekranı, b&uuml;y&uuml;k depolama kapasitesi, zarif tasarımı ve kaliteli ses deneyimiyle dikkat &ccedil;eken bir &uuml;r&uuml;nd&uuml;r. Hem iş hem de eğlence ama&ccedil;lı kullanıcılar i&ccedil;in ideal bir se&ccedil;enektir. Gelişmiş &ouml;zellikleriyle kullanıcıların beklentilerini karşılamayı hedefler.</p>\r\n', 'CASPER-G911-6478a1070f5a9.webp', '', 54999.00, 'C-EX-003', 100, 'casper-g911', 'casper-g911', '2023-06-01 13:45:41', 1, 1, 1),
(32, 12, 'Casper Excalibur G770', 'CASPER-G770', '<p>Casper Excalibur G770, g&uuml;&ccedil;l&uuml; performansı ve g&ouml;z alıcı tasarımıyla dikkat &ccedil;eken bir &uuml;r&uuml;nd&uuml;r. Bu &uuml;r&uuml;n, y&uuml;ksek performans gerektiren g&ouml;revleri yerine getirmek i&ccedil;in geliştirilmiş &ouml;zellikler sunar.</p>\r\n\r\n<p>Casper Excalibur G770, g&uuml;&ccedil;l&uuml; ve verimli işlemcisi sayesinde hızlı ve sorunsuz bir performans sunar. Y&uuml;ksek saat hızları ve &ccedil;oklu &ccedil;ekirdekli işlem g&uuml;c&uuml;, karmaşık uygulamaları, oyunları ve &ccedil;oklu g&ouml;revleri kolayca y&ouml;netebilmenizi sağlar.</p>\r\n\r\n<p>Geniş ekranı, canlı renkler ve keskin detaylarla donatılmıştır. Y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml; sayesinde, oyunlarınızı, filmlerinizi ve diğer multimedya i&ccedil;eriklerinizi etkileyici bir şekilde deneyimleyebilirsiniz.</p>\r\n\r\n<p>Casper Excalibur G770, geniş depolama kapasitesi ile b&uuml;y&uuml;k miktarda veri, dosya ve medya i&ccedil;eriğini depolamanızı sağlar. B&ouml;ylece, kişisel dosyalarınıza ve &ouml;nemli belgelerinize kolaylıkla erişebilirsiniz.</p>\r\n\r\n<p>&Uuml;r&uuml;n&uuml;n şık ve &ccedil;arpıcı tasarımı, kullanıcıların beğenisini kazanır. İnce ve hafif yapısı, taşınabilirliği kolaylaştırır ve istediğiniz her yere g&ouml;t&uuml;rebilirsiniz. Dayanıklı malzemelerden yapılmış olması, uzun &ouml;m&uuml;rl&uuml; kullanım sağlar.</p>\r\n\r\n<p>Casper Excalibur G770, y&uuml;ksek kaliteli ses deneyimi sunar. Gelişmiş ses teknolojileri sayesinde, m&uuml;zik, film ve oyunlarınızın seslerini net ve etkileyici bir şekilde duyabilirsiniz.</p>\r\n\r\n<p>Sonu&ccedil; olarak, Casper Excalibur G770, g&uuml;&ccedil;l&uuml; performansı, geniş ekranı, geniş depolama kapasitesi ve etkileyici tasarımıyla dikkat &ccedil;eken bir &uuml;r&uuml;nd&uuml;r. İş veya eğlence i&ccedil;in ihtiya&ccedil;larınızı karşılayacak şekilde tasarlanmıştır ve kullanıcıların beklentilerini karşılamayı hedefler. Gelişmiş &ouml;zellikleri ile verimli bir kullanım deneyimi sunar.</p>\r\n', 'CASPER-G770-6478a3338cecf.webp', '', 27599.00, 'C-EX-004', 100, 'casper-g770', 'casper-g770', '2023-06-01 13:54:57', 1, 1, 1),
(33, 7, 'Razer Mou Viper Mini', 'Razer-viper', '<p>Razer Viper Mini Mouse, kompakt ve hafif tasarımıyla dikkat &ccedil;eken y&uuml;ksek performanslı bir fare olarak &ouml;ne &ccedil;ıkar. Bu fare, oyuncuların rekabet&ccedil;i oyun deneyimlerini en &uuml;st seviyeye &ccedil;ıkarmayı hedefler.</p>\r\n\r\n<p>Razer Viper Mini&#39;nin hızlı ve hassas optik sens&ouml;r&uuml;, y&uuml;ksek DPI (nokta başına d&uuml;şen imle&ccedil; hareketi) ayarları ve 6 programlanabilir tuşuyla oyunlarda keskin ve hassas bir kontrol sağlar. Hızlı hareketlere anında tepki verir ve doğru izleme sağlar, b&ouml;ylece hedeflerinizi kolayca vurabilirsiniz.</p>\r\n\r\n<p>Bu fare, ergonomik tasarımı ve uygun boyutuyla elinize m&uuml;kemmel bir şekilde oturur. Sağ veya sol elini kullananlar i&ccedil;in uygun olan &ccedil;ok y&ouml;nl&uuml; bir tasarıma sahiptir. Kaygan y&uuml;zeyi ve rahat tutuşuyla uzun s&uuml;reli kullanımlarda bile konfor sağlar.</p>\r\n\r\n<p>Razer Viper Mini&#39;nin d&uuml;ş&uuml;k ağırlığı, hızlı ve keskin hareketler yapmanızı kolaylaştırır. Hafif olması, oyunlarda daha fazla kontrol ve tepki s&uuml;resi sunar, b&ouml;ylece rekabet&ccedil;i oyunlarda avantaj elde edebilirsiniz.</p>\r\n\r\n<p>Bu fare, Razer Chroma RGB aydınlatma teknolojisi ile donatılmıştır. Binlerce renk se&ccedil;eneği arasından istediğiniz aydınlatma efektlerini se&ccedil;ebilir ve oyun deneyiminizi kişiselleştirebilirsiniz.</p>\r\n\r\n<p>Razer Viper Mini, dayanıklı ve y&uuml;ksek kaliteli malzemelerden yapılmıştır. Dayanıklılığı ve uzun &ouml;m&uuml;rl&uuml; kullanımıyla oyuncuların beklentilerini karşılar.</p>\r\n\r\n<p>Sonu&ccedil; olarak, Razer Viper Mini Mouse, kompakt tasarımı, y&uuml;ksek hassasiyeti, programlanabilir tuşları ve ergonomik yapısıyla &ouml;ne &ccedil;ıkan bir &uuml;r&uuml;nd&uuml;r. Oyuncuların hızlı ve hassas kontrol ihtiya&ccedil;larını karşılamak i&ccedil;in tasarlanmıştır ve rekabet&ccedil;i oyun deneyimlerinde &uuml;st&uuml;n performans sunar.</p>\r\n', 'Razer-viper-6478a80f58ece.webp', '', 1285.00, 'RZ-0001', 100, 'razer-viper', 'razer-viper', '2023-06-01 14:15:41', 1, 1, 1),
(34, 7, 'Razer Opus X', 'razer-opus', '<p>Razer Opus X kulaklık, y&uuml;ksek ses kalitesi ve konforlu kullanımıyla &ouml;ne &ccedil;ıkan bir &uuml;r&uuml;nd&uuml;r. Bu kulaklık, etkileyici bir ses deneyimi ve gelişmiş &ouml;zellikler sunarak kullanıcıların beklentilerini karşılamayı hedefler.</p>\r\n\r\n<p>Razer Opus X&#39;in &ouml;zel olarak ayarlanmış 40 mm s&uuml;r&uuml;c&uuml;leri, zengin ve dengeli bir ses sunar. Y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kl&uuml; ses desteğiyle, m&uuml;ziklerin ve oyun seslerinin her ayrıntısını net bir şekilde duyabilirsiniz. Dolby Atmos teknolojisi ile surround ses deneyimi yaşayarak, sesin etrafınızı sarmasını sağlar.</p>\r\n\r\n<p>Bu kulaklık, uzun s&uuml;reli kullanımlarda bile konforlu bir deneyim sunar. Yumuşak kulak pedleri ve hafif tasarımıyla uzun s&uuml;reli kullanımlarda bile rahatlık sağlar. Ayarlanabilir baş bandı sayesinde kendi başınıza uyumlu bir şekilde takabilirsiniz.</p>\r\n\r\n<p>Razer Opus X, g&uuml;r&uuml;lt&uuml; engelleme &ouml;zelliğiyle dikkat &ccedil;eker. Aktif g&uuml;r&uuml;lt&uuml; engelleme teknolojisi, dış ortam seslerini azaltır ve daha odaklanmış bir ses deneyimi sunar. İster seyahat ederken ister yoğun bir ortamda oyun oynarken, dış seslerden etkilenmeden i&ccedil;eriklerin keyfini &ccedil;ıkarabilirsiniz.</p>\r\n\r\n<p>Kablosuz bağlantı se&ccedil;eneği sayesinde, kulaklığı kabloya bağlı olmadan kullanabilirsiniz. Bluetooth teknolojisi ile kolayca bağlantı kurabilir ve &ouml;zg&uuml;rce hareket edebilirsiniz. Ayrıca, uzun pil &ouml;mr&uuml; sayesinde uzun s&uuml;reli kullanımlarda bile kesintisiz m&uuml;zik dinleme keyfini yaşayabilirsiniz.</p>\r\n\r\n<p>Razer Opus X, kompakt ve katlanabilir tasarımıyla taşıması kolaydır. Seyahat ederken veya hareket halindeyken rahatlıkla yanınızda taşıyabilirsiniz. Dayanıklı yapısı, kulaklığın uzun &ouml;m&uuml;rl&uuml; olmasını sağlar.</p>\r\n\r\n<p>Sonu&ccedil; olarak, Razer Opus X kulaklık, y&uuml;ksek ses kalitesi, g&uuml;r&uuml;lt&uuml; engelleme &ouml;zelliği ve konforlu kullanımıyla dikkat &ccedil;eken bir &uuml;r&uuml;nd&uuml;r. Hem m&uuml;zik dinlemek hem de oyun oynamak i&ccedil;in idealdir. Kullanıcıların ses deneyimlerini &uuml;st seviyeye &ccedil;ıkarmayı hedefler ve taşınabilirliğiyle kullanıcıların g&uuml;nl&uuml;k yaşamlarına kolaylık sağlar.</p>\r\n', 'razer-opus-6478ac90ae13a.webp', '', 999.00, 'RZ-0002', 100, 'razer-opus', 'razer-opus', '2023-06-01 14:34:54', 1, 1, 1),
(35, 7, 'Razer Huntsman Mini', 'razer-huntsman', '<p>Razer Huntsman Mini, kompakt tasarımı ve y&uuml;ksek performansıyla &ouml;ne &ccedil;ıkan bir klavyedir. Bu klavye, oyun tutkunları ve minimalist kullanıcılar i&ccedil;in m&uuml;kemmel bir se&ccedil;enektir ve rekabet&ccedil;i oyun deneyimini en &uuml;st d&uuml;zeye &ccedil;ıkarmayı hedefler.</p>\r\n\r\n<p>Razer Huntsman Mini&#39;nin ana &ouml;zelliği, Razer&#39;ın optik anahtar teknolojisine sahip olmasıdır. Optik anahtarlar, hızlı ve kesintisiz bir tepki s&uuml;resi sağlar. Her tuşa basışınızda anında bir yanıt alırsınız, b&ouml;ylece oyunlarda hızlı ve keskin hareketler yapabilirsiniz.</p>\r\n\r\n<p>Bu klavye, kompakt tasarımıyla dikkat &ccedil;eker. Tam boyutlu bir klavyenin yerine daha k&uuml;&ccedil;&uuml;k bir form fakt&ouml;r&uuml; sunar, b&ouml;ylece daha fazla masa alanı kazanmanızı ve taşınabilirliği artırmanızı sağlar. Ayrıca, RGB aydınlatma ile donatılmış olan klavye, oyun deneyimini kişiselleştirmenize olanak tanır.</p>\r\n\r\n<p>Razer Huntsman Mini, sağlam ve dayanıklı bir yapıya sahiptir. Al&uuml;minyum &uuml;st kaplama ve sağlam anahtar mekanizmaları, uzun &ouml;m&uuml;rl&uuml; kullanım sağlar. Yoğun kullanımlarda bile dayanıklılığını korur ve s&uuml;rd&uuml;r&uuml;lebilir performans sunar.</p>\r\n\r\n<p>Bu klavye, kullanıcıların ihtiya&ccedil;larını karşılamak i&ccedil;in programlanabilir tuşlara sahiptir. Razer Synapse yazılımı ile her tuşu &ouml;zelleştirebilir ve makrolar atayabilirsiniz. B&ouml;ylece oyun deneyimini kişiselleştirir ve oyun i&ccedil;i avantaj elde edebilirsiniz.</p>\r\n\r\n<p>Razer Huntsman Mini, N-Key Rollover &ouml;zelliğiyle de dikkat &ccedil;eker. Bu &ouml;zellik, aynı anda birden fazla tuşa basarken tuş vuruşlarının kaydedilmesini sağlar. Bu da oyunlarda daha doğru ve hızlı tepkiler elde etmenizi sağlar.</p>\r\n\r\n<p>Sonu&ccedil; olarak, Razer Huntsman Mini klavye, kompakt tasarımı, hızlı tepki s&uuml;resi ve dayanıklı yapısıyla dikkat &ccedil;eken bir &uuml;r&uuml;nd&uuml;r. Oyun tutkunları ve minimalist kullanıcılar i&ccedil;in ideal bir se&ccedil;enektir. Kullanıcıların rekabet&ccedil;i oyun deneyimlerini maksimize etmeyi hedefler ve kişiselleştirme se&ccedil;enekleri ile kullanıcıların tercihlerine uygun bir klavye deneyimi sunar.</p>\r\n', 'razer-huntsman-6478ae98ec49b.webp', '', 2950.00, 'RZ-0003', 100, 'razer-huntsman', 'razer-huntsman', '2023-06-01 14:43:35', 1, 1, 1),
(36, 7, 'Razer Enki X', 'razer-enki', '<p>Razer Enki X Oyuncu Koltuğu, rahatlık, ergonomi ve şık tasarımı bir araya getiren bir &uuml;r&uuml;nd&uuml;r. Oyuncuların uzun s&uuml;reli oyun oturumları boyunca konforlu bir deneyim yaşamasını sağlar.</p>\r\n\r\n<p>Razer Enki X&#39;in ergonomik tasarımı, v&uuml;cudun doğal eğrilerini destekler ve uzun s&uuml;reli oturmalarda rahatlık sağlar. Ayarlanabilir y&uuml;kseklik ve eğim se&ccedil;enekleri sayesinde kişisel tercihlerinize g&ouml;re koltuğu &ouml;zelleştirebilirsiniz.</p>\r\n\r\n<p>Bu oyuncu koltuğu, y&uuml;ksek kaliteli malzemelerden yapılmıştır. Dayanıklı &ccedil;er&ccedil;eve yapısı ve kaliteli dolgu malzemeleri, uzun &ouml;m&uuml;rl&uuml; kullanım sağlar. Aynı zamanda, nefes alabilen d&ouml;şeme kumaşı, uzun s&uuml;reli oturmalarda terlemeyi azaltır ve daha rahat bir deneyim sunar.</p>\r\n\r\n<p>Razer Enki X, &ccedil;ok y&ouml;nl&uuml; destek sağlamak i&ccedil;in tasarlanmıştır. Ayarlanabilir boyun ve bel yastıkları, ekstra konfor sağlar ve uzun s&uuml;reli oturmalarda boynunuzun ve belinizin desteklenmesine yardımcı olur. B&ouml;ylece, doğru duruşu korurken rahatlıkla oyun oynayabilirsiniz.</p>\r\n\r\n<p>Koltuğun şık tasarımı, her oyun odasına ve &ccedil;alışma alanına m&uuml;kemmel bir şekilde uyum sağlar. Razer&#39;ın ikonik yeşil detayları ve marka logosu, g&ouml;ze &ccedil;arpan bir g&ouml;r&uuml;n&uuml;m yaratır.</p>\r\n\r\n<p>Razer Enki X, pratik kullanım &ouml;zelliklerine de sahiptir. Katlanabilir tasarımı, koltuğun kolayca taşınabilmesini ve depolanabilmesini sağlar. Ayrıca, 360 derece d&ouml;nebilen ve kayan tekerlekler, kolay hareket etmenizi sağlar.</p>\r\n\r\n<p>Sonu&ccedil; olarak, Razer Enki X Oyuncu Koltuğu, rahatlık, ergonomi ve şık tasarımı bir araya getiren bir &uuml;r&uuml;nd&uuml;r. Oyuncular i&ccedil;in uzun s&uuml;reli oturumlarda konfor sağlar ve v&uuml;cudunuzun doğru pozisyonunu korumanıza yardımcı olur. Kaliteli malzemeleri ve ayarlanabilir &ouml;zellikleri ile kullanıcıların beklentilerini karşılamayı hedefler.</p>\r\n', 'razer-enki-6478b0fe4d6b0.webp', '', 26559.00, 'RZ-0004', 100, 'razer-enki', 'razer-enki', '2023-06-01 14:53:48', 1, 1, 1),
(37, 14, 'HP 250 G9', 'hp-250', '<p>HP 250 G9, g&uuml;nl&uuml;k işlerinizi hızlı ve verimli bir şekilde yapmanızı sağlayan kullanışlı bir diz&uuml;st&uuml; bilgisayardır. Bu bilgisayar, taşınabilirlik, performans ve kullanıcı dostu &ouml;zellikleri bir araya getirir.</p>\r\n\r\n<p>HP 250 G9, hafif ve kompakt tasarımıyla taşınabilirlik sağlar. İş seyahatleri veya g&uuml;nl&uuml;k taşıma gereksinimleriniz i&ccedil;in ideal bir se&ccedil;enektir. Aynı zamanda, sağlam yapısı sayesinde dayanıklılığı da &ouml;n planda tutar.</p>\r\n\r\n<p>Bu diz&uuml;st&uuml; bilgisayar, y&uuml;ksek performans sunan bileşenlere sahiptir. İşlemci se&ccedil;enekleri ve yeterli RAM kapasitesi, hızlı ve sorunsuz bir &ccedil;alışma deneyimi sağlar. Bu sayede, &ccedil;oklu g&ouml;revleri rahatlıkla yapabilir, iş uygulamalarını hızlı bir şekilde &ccedil;alıştırabilir ve verimliliğinizi artırabilirsiniz.</p>\r\n\r\n<p>HP 250 G9, geniş depolama alanı se&ccedil;enekleri sunar. Hard disk veya SSD se&ccedil;enekleri arasından ihtiya&ccedil;larınıza en uygun olanı se&ccedil;ebilirsiniz. Bu sayede, dosyalarınızı d&uuml;zenli bir şekilde saklayabilir ve hızlı bir erişim sağlayabilirsiniz.</p>\r\n\r\n<p>Bu diz&uuml;st&uuml; bilgisayar, kullanıcı dostu bir deneyim sunar. Full HD ekranı, net ve canlı bir g&ouml;r&uuml;nt&uuml; sunar ve &ccedil;alışma veya eğlence ama&ccedil;lı i&ccedil;erikleri keyifle izlemenizi sağlar. Ayrıca, geniş ve ergonomik klavyesiyle uzun s&uuml;reli yazı yazma deneyiminde konfor sağlar.</p>\r\n\r\n<p>HP 250 G9, geniş bağlantı se&ccedil;eneklerine sahiptir. USB portları, HDMI &ccedil;ıkışı ve kablosuz bağlantı se&ccedil;enekleri sayesinde harici cihazlarla kolayca bağlantı kurabilirsiniz. Ayrıca, entegre web kamerası ve ses sistemleri, video konferans ve multimedya deneyimleriniz i&ccedil;in kullanışlıdır.</p>\r\n\r\n<p>Sonu&ccedil; olarak, HP 250 G9, taşınabilirlik, performans ve kullanıcı dostu &ouml;zellikleri bir araya getiren bir diz&uuml;st&uuml; bilgisayardır. İşlerinizi hızlı ve verimli bir şekilde yapmanızı sağlar. G&uuml;nl&uuml;k kullanım ve iş gereksinimlerinizi karşılamak i&ccedil;in uygun bir se&ccedil;enektir.</p>\r\n', 'hp-250-6479cee38dc14.webp', '', 12559.00, 'HP-02', 100, 'hp-250', 'hp-250', '2023-06-02 11:13:37', 1, 1, 1),
(38, 14, 'HP VİCTUS 16', 'hp-victus-16', '<p>HP Victus 16, y&uuml;ksek performansı, etkileyici &ouml;zellikleri ve şık tasarımı bir araya getiren g&uuml;&ccedil;l&uuml; bir oyun diz&uuml;st&uuml; bilgisayarıdır. Oyun tutkunları i&ccedil;in &uuml;st d&uuml;zey bir deneyim sunmayı hedefler.</p>\r\n\r\n<p>HP Victus 16&#39;nın ana &ouml;zelliği, g&uuml;&ccedil;l&uuml; işlemci ve grafik kartı kombinasyonudur. İşlemci se&ccedil;enekleri ve y&uuml;ksek performanslı grafik kartıyla, en yeni oyunları sorunsuz bir şekilde &ccedil;alıştırabilir ve akıcı bir oyun deneyimi yaşayabilirsiniz. Ayrıca, geniş bellek kapasitesi ve hızlı depolama se&ccedil;enekleri sayesinde oyunlarınızı hızlı bir şekilde y&uuml;kleyebilir ve daha fazla oyun verisini saklayabilirsiniz.</p>\r\n\r\n<p>Bu diz&uuml;st&uuml; bilgisayar, b&uuml;y&uuml;leyici bir g&ouml;rsel deneyim sunan geniş bir ekranla birlikte gelir. Full HD veya QHD+ &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğe sahip ekranı, canlı renkler ve keskin detaylarla oyunların keyfini &ccedil;ıkarmanızı sağlar. Ayrıca, y&uuml;ksek tazeleme hızı ve d&uuml;ş&uuml;k tepki s&uuml;resiyle akıcı hareketler ve tepkiler elde edebilirsiniz.</p>\r\n\r\n<p>HP Victus 16, termal y&ouml;netimi i&ccedil;in gelişmiş soğutma teknolojilerine sahiptir. Isıyı etkin bir şekilde dağıtarak bileşenlerin optimum sıcaklıkta &ccedil;alışmasını sağlar. Bu sayede, uzun s&uuml;reli oyun oturumlarında bile sistem istikrarını korur ve y&uuml;ksek performansı s&uuml;rd&uuml;r&uuml;r.</p>\r\n\r\n<p>Klavyesi, RGB aydınlatma ile donatılmış ve oyunculara y&ouml;nelik tasarlanmıştır. &Ouml;zelleştirilebilir aydınlatma efektleri ve makro tuşları sayesinde oyun deneyimini kişiselleştirebilirsiniz. Ayrıca, konforlu ve hassas tuş tepkileriyle oyun performansınızı artırır.</p>\r\n\r\n<p>HP Victus 16, geniş bağlantı se&ccedil;enekleri sunar. USB portları, HDMI &ccedil;ıkışı ve Ethernet bağlantısı gibi &ccedil;eşitli bağlantı noktalarıyla harici cihazlarla kolayca bağlantı kurabilirsiniz. Kablosuz bağlantı se&ccedil;enekleri sayesinde ise oyunları &ccedil;evrimi&ccedil;i olarak oynayabilir ve ağ bağlantısından en iyi şekilde yararlanabilirsiniz.</p>\r\n\r\n<p>Sonu&ccedil; olarak, HP Victus 16, g&uuml;&ccedil;l&uuml; performansı, etkileyici &ouml;zellikleri ve şık tasarımıyla oyun tutkunlarına hitap eden bir diz&uuml;st&uuml; bilgisayardır. En yeni oyunları sorunsuz bir şekilde &ccedil;alıştırırken, geniş ekranı ve gelişmiş soğutma sistemi ile m&uuml;kem</p>\r\n', 'hp-victus-16-6479d0326c570.webp', '', 40999.00, 'HP-03', 50, 'hp-victus-16', 'hp-victus-16', '2023-06-02 11:19:12', 1, 1, 1),
(39, 14, 'HP SMB Topload', 'hp-smb-topload', '<p>HP SMB Topload 15.6&quot; Notebook &Ccedil;antası, taşınabilirlik ve kullanışlılık sunan bir notebook &ccedil;antasıdır. Hem iş hem de g&uuml;nl&uuml;k kullanım i&ccedil;in tasarlanmıştır ve 15.6 in&ccedil; veya daha k&uuml;&ccedil;&uuml;k diz&uuml;st&uuml; bilgisayarlar i&ccedil;in ideal bir se&ccedil;enektir.</p>\r\n\r\n<p>Bu &ccedil;anta, y&uuml;ksek kaliteli malzemelerden yapılmış dayanıklı bir dış y&uuml;zeye sahiptir. &Ccedil;izilmelere ve darbelere karşı koruma sağlar, b&ouml;ylece diz&uuml;st&uuml; bilgisayarınızı g&uuml;venli bir şekilde taşıyabilirsiniz. Ayrıca, suya dayanıklı kaplaması sayesinde hafif yağmur veya sıvı sı&ccedil;ramalarına karşı koruma sağlar.</p>\r\n\r\n<p>HP SMB Topload, geniş bir ana b&ouml;lme ve birden fazla fermuarlı cep ile kullanım kolaylığı sunar. Ana b&ouml;lme, diz&uuml;st&uuml; bilgisayarınızı g&uuml;venli bir şekilde saklamak i&ccedil;in yeterli alan sağlar. Fermuarlı cepler, aksesuarlarınızı ve diğer k&uuml;&ccedil;&uuml;k &ouml;ğelerinizi d&uuml;zenli bir şekilde saklamanızı sağlar.</p>\r\n\r\n<p>Bu &ccedil;anta, ergonomik bir tasarıma sahiptir. Ayarlanabilir omuz askısı, taşıma konforunu artırırken isteğe bağlı olarak elde taşımak i&ccedil;in taşıma kolları da bulunur. B&ouml;ylece, &ccedil;antanızı ihtiya&ccedil;larınıza ve tercihlerinize g&ouml;re taşıyabilirsiniz.</p>\r\n\r\n<p>HP SMB Topload, iş seyahatleri ve g&uuml;nl&uuml;k taşıma gereksinimleri i&ccedil;in uygun bir boyuta sahiptir. Yeterli i&ccedil; hacmiyle, belgelerinizi, not defterinizi, şarj cihazınızı ve diğer kişisel eşyalarınızı kolayca taşıyabilirsiniz. Ayrıca, &ccedil;antanın dışında bulunan ekstra fermuarlı cepler, daha fazla depolama alanı sağlar.</p>\r\n\r\n<p>Sonu&ccedil; olarak, HP SMB Topload 15.6&quot; Notebook &Ccedil;antası, taşınabilirlik, koruma ve kullanışlılık sunan bir se&ccedil;enektir. Dayanıklı yapısı ve suya dayanıklı kaplaması ile diz&uuml;st&uuml; bilgisayarınızı g&uuml;vende tutar. Geniş i&ccedil; hacmi ve ekstra cepleri sayesinde kişisel eşyalarınızı d&uuml;zenli bir şekilde saklamanızı sağlar. İş veya g&uuml;nl&uuml;k taşıma gereksinimlerinizi karşılamak i&ccedil;in ideal bir &ccedil;anta se&ccedil;eneğidir.</p>\r\n', 'hp-smb-topload-6479d4ba56a45.webp', '', 999.00, 'HP-04', 48, 'hp-smb', 'hp-smb', '2023-06-02 11:38:32', 1, 1, 1),
(41, 6, 'MSI THIN GF63', 'msi-thin', '<p>MSI Thin GF63, ince ve hafif tasarımıyla taşınabilirlik sağlayan bir oyun diz&uuml;st&uuml; bilgisayarıdır. G&uuml;&ccedil;l&uuml; donanımı ve etkileyici &ouml;zellikleriyle oyun severlere y&uuml;ksek performans sunmayı hedefler.</p>\r\n\r\n<p>MSI Thin GF63&#39;&uuml;n g&uuml;&ccedil;l&uuml; işlemci ve grafik kartı kombinasyonu, oyunlarınızı sorunsuz bir şekilde &ccedil;alıştırmanızı sağlar. İşlemci se&ccedil;enekleri ve y&uuml;ksek performanslı grafik kartıyla, en yeni oyunları y&uuml;ksek grafik ayarlarında oynayabilir ve akıcı bir oyun deneyimi yaşayabilirsiniz.</p>\r\n\r\n<p>Bu diz&uuml;st&uuml; bilgisayar, geniş bir ekranla birlikte gelir. Full HD &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğe sahip ekranı, canlı renkler ve keskin detaylarla oyunlarınızı daha da etkileyici hale getirir. Dar &ccedil;er&ccedil;eveli tasarımıyla daha geniş bir g&ouml;r&uuml;ş alanı sunar ve sizi oyunun i&ccedil;ine &ccedil;eker.</p>\r\n\r\n<p>MSI Thin GF63, termal performansı &ouml;n planda tutar. Gelişmiş soğutma sistemi, bileşenlerin optimum sıcaklıkta &ccedil;alışmasını sağlar ve performansı s&uuml;rd&uuml;r&uuml;r. Uzun s&uuml;reli oyun oturumlarında bile aşırı ısınma sorunuyla karşılaşmadan oyunlarınızı keyifle oynayabilirsiniz.</p>\r\n\r\n<p>Diz&uuml;st&uuml; bilgisayarın klavyesi, oyunculara &ouml;zel olarak tasarlanmıştır. Arka aydınlatmalı ve tek tuş renk kontrol&uuml;yle &ouml;zelleştirilebilir klavyesi, karanlık ortamlarda bile kolaylıkla kullanmanızı sağlar. Ayrıca, tepkisel ve konforlu tuş tepkileriyle oyun performansınızı artırır.</p>\r\n\r\n<p>MSI Thin GF63, taşınabilirlik a&ccedil;ısından da avantaj sağlar. İnce ve hafif tasarımı, g&uuml;nl&uuml;k taşıma gereksinimlerinizi kolaylıkla karşılar. İş seyahatleri veya oyun turnuvaları i&ccedil;in ideal bir se&ccedil;enektir.</p>\r\n\r\n<p>Sonu&ccedil; olarak, MSI Thin GF63, ince ve hafif tasarımıyla taşınabilirlik sunan, g&uuml;&ccedil;l&uuml; donanımı ve etkileyici &ouml;zellikleriyle oyun severlere hitap eden bir diz&uuml;st&uuml; bilgisayardır. Y&uuml;ksek performansı, geniş ekranı ve &ouml;zelleştirilebilir klavyesiyle oyun deneyiminizi geliştirir. Oyunları akıcı bir şekilde &ccedil;alıştırırken termal performansı da &ouml;n planda tutar.</p>\r\n', 'msi-thin-6479dab195c38.webp', '', 22559.00, 'MSI-0002', 78, 'msi-thin', 'msi-thin', '2023-06-02 12:03:59', 1, 1, 1),
(42, 6, 'MSI MODERN MD272QP', 'msi-modern', '<p>MSI 27&quot; MODERN MD272QP, şık tasarımı ve y&uuml;ksek performansıyla dikkat &ccedil;eken bir monit&ouml;rd&uuml;r. Geniş ekranı ve kaliteli g&ouml;r&uuml;nt&uuml; &ouml;zellikleriyle oyunlarınızı, iş projelerinizi ve diğer i&ccedil;eriklerinizi en iyi şekilde deneyimlemenizi sağlar.</p>\r\n\r\n<p>Bu monit&ouml;r, 27 in&ccedil; boyutunda IPS panel bir ekrana sahiptir. QHD (2560x1440) &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml;yle, keskin detaylar ve canlı renkler elde etmenizi sağlar. IPS teknolojisi, geniş g&ouml;r&uuml;ş a&ccedil;ılarına sahip olmanızı ve renk doğruluğunu korumanızı sağlar, b&ouml;ylece i&ccedil;erikleri her a&ccedil;ıdan net bir şekilde g&ouml;rebilirsiniz.</p>\r\n\r\n<p>MSI MD272QP, y&uuml;ksek tazeleme hızı ve d&uuml;ş&uuml;k tepki s&uuml;resiyle akıcı bir g&ouml;r&uuml;nt&uuml; deneyimi sunar. 165Hz tazeleme hızı ve 1ms tepki s&uuml;resi, hareketli sahnelerin p&uuml;r&uuml;zs&uuml;z ve kesintisiz bir şekilde g&ouml;r&uuml;nt&uuml;lenmesini sağlar. Oyunlarda daha hızlı tepki s&uuml;resi elde edebilir ve rekabet&ccedil;i avantajınızı artırabilirsiniz.</p>\r\n\r\n<p>Monit&ouml;r&uuml;n şık ve ince &ccedil;er&ccedil;eveli tasarımı, daha geniş bir g&ouml;r&uuml;nt&uuml; alanı sunar ve &ccedil;oklu monit&ouml;r kurulumları i&ccedil;in uygunluğu artırır. Ayrıca, ekranın ayarlanabilir eğimi ve d&ouml;nme &ouml;zelliği sayesinde ergonomik bir pozisyon ayarı yapabilir ve konforlu bir izleme deneyimi yaşayabilirsiniz.</p>\r\n\r\n<p>MSI MD272QP, geniş renk gamı ve doğru renk kalibrasyonu sağlayan benzersiz &ouml;zelliklerle birlikte gelir. HDR desteği sayesinde daha y&uuml;ksek kontrast ve daha canlı renkler elde edebilirsiniz. Bu &ouml;zellik, oyunlarınızı, film ve fotoğraflarınızı daha ger&ccedil;ek&ccedil;i bir şekilde deneyimlemenizi sağlar.</p>\r\n\r\n<p>Monit&ouml;r&uuml;n arka panelinde bulunan &ccedil;eşitli bağlantı noktaları sayesinde kolay bağlantı sağlayabilirsiniz. HDMI, DisplayPort ve USB portları gibi giriş se&ccedil;enekleriyle diğer cihazlarınızı bağlayabilir ve i&ccedil;erikleri kolaylıkla paylaşabilirsiniz.</p>\r\n\r\n<p>Sonu&ccedil; olarak, MSI 27&quot; MODERN MD272QP monit&ouml;r, şık tasarımı, y&uuml;ksek &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğ&uuml;, y&uuml;ksek tazeleme hızı ve renk kalibrasyonuyla &ouml;ne &ccedil;ıkan bir se&ccedil;enektir. Oyunlarınızı daha etkileyici bir şekilde deneyimlemenizi sağlar ve iş projelerinizde hassas renk doğruluğu sunar. &Ccedil;eşitli bağlantı se&ccedil;enekleri ve ayarlanabilir ergonomik &ouml;zellikleri</p>\r\n\r\n<p>yle kullanım kolaylığı sağlar.</p>\r\n', 'msi-modern-6479dd04522f1.webp', '', 7500.00, 'MSI-0003', 34, 'msi-modern', 'msi-modern', '2023-06-02 12:12:23', 1, 1, 1);
INSERT INTO `urunler` (`id`, `urunkat`, `urunbaslik`, `urunsef`, `urunicerik`, `urunkapak`, `urunbanner`, `urunfiyat`, `urunkodu`, `urunstok`, `urunkeyw`, `urundesc`, `uruntarih`, `urunekleyen`, `urunvitrin`, `urundurum`) VALUES
(43, 6, 'MSI GForce GC20', 'msi-gforce', '<p>MSI GForce GC20 V2, oyun deneyiminizi daha eğlenceli hale getirmek i&ccedil;in tasarlanmış bir oyun kumandasıdır. G&uuml;&ccedil;l&uuml; &ouml;zellikleri ve ergonomik tasarımıyla oyunseverler i&ccedil;in ideal bir se&ccedil;enektir.</p>\r\n\r\n<p>GC20 V2&#39;nin tasarımı, rahat bir oyun deneyimi sunmak i&ccedil;in optimize edilmiştir. Ergonomik şekli ve kaymaz y&uuml;zeyi, uzun s&uuml;reli oyun oturumlarında bile elinize rahatlıkla oturur. Bu sayede, daha hassas ve doğru hareketler yapabilir ve oyun performansınızı artırabilirsiniz.</p>\r\n\r\n<p>Bu gamepad, geniş bir d&uuml;ğme ve joystick d&uuml;zenine sahiptir. İki adet analog joystick, hassas kontrol sağlar ve oyun karakterinizi daha akıcı bir şekilde y&ouml;nlendirmenizi sağlar. Ayrıca, tetik d&uuml;ğmeleri ve diğer işlevsel d&uuml;ğmeler, oyunlarda hızlı tepki vermenizi sağlar ve daha fazla kontrol se&ccedil;eneği sunar.</p>\r\n\r\n<p>MSI GForce GC20 V2, evrensel uyumluluk sağlayan bir oyun kumandasıdır. Bilgisayarlar, diz&uuml;st&uuml; bilgisayarlar ve hatta bazı oyun konsollarıyla uyumlu olarak &ccedil;alışır. USB kablosu ile kolayca bağlanabilirsiniz ve hızlı bir şekilde kullanıma başlayabilirsiniz.</p>\r\n\r\n<p>&Ouml;zelleştirilebilir tuş atama &ouml;zelliği sayesinde, GC20 V2&#39;nin d&uuml;ğmelerini kendi tercihlerinize g&ouml;re ayarlayabilirsiniz. Oyunlara ve oyun t&uuml;rlerine &ouml;zel atamalar yapabilir ve oyun deneyiminizi kişiselleştirebilirsiniz. B&ouml;ylece, en sevdiğiniz oyunlarda daha rahat ve daha verimli bir şekilde oynayabilirsiniz.</p>\r\n\r\n<p>Sonu&ccedil; olarak, MSI GForce GC20 V2, ergonomik tasarımı, hassas kontrol&uuml; ve &ouml;zelleştirilebilir tuş atama &ouml;zelliği ile oyun deneyiminizi geliştiren bir oyun kumandasıdır. Geniş uyumluluk &ouml;zelliği sayesinde farklı platformlarda kullanabilirsiniz. Oyun performansınızı artırmak ve daha eğlenceli bir oyun deneyimi yaşamak i&ccedil;in ideal bir se&ccedil;enektir.</p>\r\n', 'msi-gforce-6479deb607ba9.webp', '', 899.00, 'MSI-0004', 17, 'msi-gforce', 'msi-gforce', '2023-06-02 12:21:08', 1, 1, 1),
(44, 1, 'Lenovo V15 G3', 'lenovo-v15', '<p>Lenovo V15 G3, g&uuml;&ccedil;l&uuml; performansı ve kullanışlı &ouml;zellikleriyle dikkat &ccedil;eken bir diz&uuml;st&uuml; bilgisayardır. Hem iş hem de g&uuml;nl&uuml;k kullanım i&ccedil;in tasarlanmış olan bu model, y&uuml;ksek verimlilik ve &ccedil;ok y&ouml;nl&uuml; kullanım sunmayı hedefler.</p>\r\n\r\n<p>Lenovo V15 G3, g&uuml;&ccedil;l&uuml; bir işlemci se&ccedil;eneğiyle birlikte gelir. İşlemci se&ccedil;enekleri arasında Intel Core i5 veya i7 gibi y&uuml;ksek performanslı işlemciler bulunur. Bu sayede, iş projelerinizi hızlı bir şekilde tamamlayabilir ve daha yoğun uygulamaları sorunsuz bir şekilde &ccedil;alıştırabilirsiniz.</p>\r\n\r\n<p>Diz&uuml;st&uuml; bilgisayarın ekranı, 15.6 in&ccedil; boyutunda ve Full HD &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kte gelir. Keskin detaylar ve canlı renklerle dolu bir g&ouml;r&uuml;nt&uuml; deneyimi sunar. Ayrıca, IPS panel teknolojisi sayesinde geniş g&ouml;r&uuml;ş a&ccedil;ıları elde edebilirsiniz, b&ouml;ylece ekranı farklı a&ccedil;ılardan izlerken bile net ve doğru renkler elde edebilirsiniz.</p>\r\n\r\n<p>Lenovo V15 G3, oyun oynamak veya grafik yoğun işlerle uğraşmak isteyen kullanıcılara hitap eder. NVIDIA GeForce GTX grafik kartı se&ccedil;enekleriyle donatılmıştır, bu da daha etkileyici oyun grafikleri ve hızlı grafik işleme yetenekleri sağlar. Ayrıca, y&uuml;ksek performanslı grafik kartı sayesinde fotoğraf ve video d&uuml;zenleme gibi grafik yoğun işleri de sorunsuz bir şekilde yapabilirsiniz.</p>\r\n\r\n<p>Diz&uuml;st&uuml; bilgisayarın depolama se&ccedil;enekleri arasında SSD ve HDD kombinasyonu bulunur. SSD, hızlı veri aktarımı ve y&uuml;kleme s&uuml;releri sağlarken, HDD geniş depolama alanı sunar. Bu sayede, hem hızlı &ccedil;alışan bir sistemden yararlanabilir hem de b&uuml;y&uuml;k veri dosyalarını depolayabilirsiniz.</p>\r\n\r\n<p>Lenovo V15 G3, kullanım kolaylığı i&ccedil;in pratik &ouml;zelliklerle donatılmıştır. Rahat ve tepkisel bir klavyesi vardır, b&ouml;ylece uzun s&uuml;reli yazı yazma veya oyun oynama oturumlarında bile konforlu bir deneyim yaşarsınız. Ayrıca, &ccedil;eşitli bağlantı noktaları sayesinde diğer cihazları kolayca bağlayabilir ve harici ekranlara veya aksesuarlara erişebilirsiniz.</p>\r\n\r\n<p>Sonu&ccedil; olarak, Lenovo V15 G3, g&uuml;&ccedil;l&uuml; performansı, y&uuml;ksek kaliteli ekranı ve kullanışlı &ouml;zellikleriyle dikkat &ccedil;eken bir diz&uuml;st&uuml; bilgisayardır. İş projeleri, oyunlar veya grafik yoğun işler i&ccedil;in ideal bir se&ccedil;enektir. Kullanım kolaylığı ve geniş</p>\r\n\r\n<p>&nbsp;bağlantı se&ccedil;enekleriyle g&uuml;nl&uuml;k kullanıma da uygundur.</p>\r\n', 'lenovo-v15-6479e08829dde.webp', '', 12229.00, 'LNV-002', 45, 'lenovo-v15', 'lenovo-v15', '2023-06-02 12:28:54', 1, 1, 1),
(45, 1, 'Lenovo Thinkbook', 'lenovo-thinkbook', '<p>Lenovo ThinkBook, iş odaklı bir diz&uuml;st&uuml; bilgisayar serisidir ve g&uuml;&ccedil;l&uuml; performansı, dayanıklı yapısı ve işlevsel &ouml;zellikleri ile iş d&uuml;nyasına y&ouml;nelik kullanıcılar i&ccedil;in ideal bir se&ccedil;enektir.</p>\r\n\r\n<p>ThinkBook serisi, şık ve profesyonel bir tasarıma sahiptir. Zarif bir g&ouml;r&uuml;n&uuml;me sahip olan bu diz&uuml;st&uuml; bilgisayarlar, ince &ccedil;er&ccedil;eveli ekranları ve y&uuml;ksek kaliteli malzemeleriyle dikkat &ccedil;eker. Hem i&ccedil;erideki bileşenlerin g&uuml;venliğini sağlayan hem de şık bir g&ouml;r&uuml;n&uuml;m sunan dayanıklı yapıları, yoğun iş ortamlarında uzun &ouml;m&uuml;rl&uuml; kullanım i&ccedil;in idealdir.</p>\r\n\r\n<p>Lenovo ThinkBook, g&uuml;&ccedil;l&uuml; işlemci se&ccedil;enekleriyle donatılmıştır. Intel Core i5 veya i7 gibi işlemciler, hızlı ve verimli performans sunar. Bu sayede, &ccedil;oklu g&ouml;revlerin &uuml;stesinden gelir, verimli &ccedil;alışma deneyimi sağlar ve yoğun iş uygulamalarını sorunsuz bir şekilde &ccedil;alıştırabilirsiniz.</p>\r\n\r\n<p>Diz&uuml;st&uuml; bilgisayarın ekranı, genellikle 14 in&ccedil; veya 15.6 in&ccedil; boyutlarında gelir ve Full HD &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;ğe sahiptir. Keskin detaylar ve canlı renkler sunan ekranlar, iş i&ccedil;eriklerini net bir şekilde g&ouml;rmenizi sağlar. Ayrıca, bazı modellerde dokunmatik ekran se&ccedil;eneği de bulunur, b&ouml;ylece daha interaktif bir deneyim elde edebilirsiniz.</p>\r\n\r\n<p>Lenovo ThinkBook, depolama ve bellek se&ccedil;enekleri konusunda da esneklik sunar. SSD ve HDD kombinasyonları ile hızlı veri aktarımı ve y&uuml;kleme s&uuml;releri elde edebilirken, geniş depolama alanına sahip olabilirsiniz. Ayrıca, yeterli miktarda bellek ile &ccedil;oklu g&ouml;revleri daha verimli bir şekilde y&ouml;netebilirsiniz.</p>\r\n\r\n<p>G&uuml;venlik a&ccedil;ısından, ThinkBook serisi, gelişmiş g&uuml;venlik &ouml;zelliklerine sahiptir. Parmak izi okuyucu veya y&uuml;z tanıma &ouml;zelliği gibi biyometrik sens&ouml;rler sayesinde g&uuml;venli bir şekilde oturum a&ccedil;abilirsiniz. Ayrıca, donanım tabanlı şifreleme ve g&uuml;venli işletim sistemleri gibi &ouml;zelliklerle verilerinizin g&uuml;venliğini sağlayabilirsiniz.</p>\r\n\r\n<p>Lenovo ThinkBook, bağlantı noktaları konusunda da zengin se&ccedil;enekler sunar. USB-C, HDMI, Ethernet ve SD kart okuyucu gibi &ccedil;eşitli bağlantı noktaları, harici cihazları bağlama ve veri aktarma imkanı sağlar. Ayrıca, bazı modellerde dahili olarak SIM kart yuvası da bulunur, b&ouml;ylece mobil veri bağlantısına erişebil</p>\r\n\r\n<p>irsiniz.</p>\r\n\r\n<p>Sonu&ccedil; olarak, Lenovo ThinkBook, iş d&uuml;nyası i&ccedil;in tasarlanmış bir diz&uuml;st&uuml; bilgisayar serisidir. G&uuml;&ccedil;l&uuml; performansı, dayanıklı yapısı ve işlevsel &ouml;zellikleri sayesinde profesyoneller i&ccedil;in ideal bir se&ccedil;enektir. Zarif tasarımı ve g&uuml;venlik &ouml;zellikleriyle iş gereksinimlerinizi karşılayacak bir deneyim sunar.</p>\r\n', 'lenovo-thinkbook-6479e803eee72.webp', '', 12500.00, 'LNV-003', 58, 'lenovo-thinkbook', 'lenovo-thinkbook', '2023-06-02 13:00:50', 1, 1, 1),
(46, 1, 'Lenovo Thinkpad E14', 'lenovo-e14', '<p>Lenovo ThinkPad E14, profesyoneller i&ccedil;in tasarlanmış g&uuml;venilir ve iş odaklı bir diz&uuml;st&uuml; bilgisayardır. Y&uuml;ksek performansı, dayanıklı yapısı ve işlevsel &ouml;zellikleri ile &ouml;ne &ccedil;ıkar.</p>\r\n\r\n<p>ThinkPad serisinin karakteristik tasarımını taşıyan ThinkPad E14, sağlam bir yapıya sahiptir. Dayanıklı malzemeler ve m&uuml;hendislikle tasarlanmış yapısı, uzun s&uuml;reli kullanımlara dayanıklılık sağlar. Ayrıca, MIL-STD-810G sertifikası ile askeri dayanıklılık standartlarına uygunluğunu kanıtlar.</p>\r\n\r\n<p>Diz&uuml;st&uuml; bilgisayar, g&uuml;&ccedil;l&uuml; işlemci se&ccedil;enekleri sunar. Intel Core i5 veya i7 gibi işlemciler ile hızlı ve etkili bir performans elde edebilirsiniz. Bu sayede, &ccedil;oklu g&ouml;revleri sorunsuz bir şekilde y&ouml;netebilir, verimli bir &ccedil;alışma deneyimi yaşayabilir ve iş uygulamalarını hızlıca &ccedil;alıştırabilirsiniz.</p>\r\n\r\n<p>E14&#39;&uuml;n ekranı genellikle 14 in&ccedil; boyutunda ve Full HD &ccedil;&ouml;z&uuml;n&uuml;rl&uuml;kte gelir. Keskin ve canlı renklere sahip olan ekran, iş i&ccedil;eriklerini net bir şekilde g&ouml;r&uuml;nt&uuml;lemenizi sağlar. IPS panel teknolojisi, geniş g&ouml;r&uuml;ş a&ccedil;ıları ve doğru renkleri sunarak ekran deneyimini iyileştirir.</p>\r\n\r\n<p>Depolama ve bellek se&ccedil;enekleri a&ccedil;ısından da esneklik sunan ThinkPad E14, hızlı veri aktarımı ve y&uuml;kleme s&uuml;releri i&ccedil;in SSD se&ccedil;eneklerine sahiptir. Ayrıca, geniş veri depolama alanı i&ccedil;in HDD se&ccedil;enekleri de mevcuttur. Yeterli bellek kapasitesiyle &ccedil;oklu g&ouml;revleri etkin bir şekilde y&ouml;netebilirsiniz.</p>\r\n\r\n<p>ThinkPad E14, g&uuml;venlik a&ccedil;ısından da &ouml;nemli &ouml;zelliklere sahiptir. Parmak izi okuyucu veya y&uuml;z tanıma &ouml;zelliği ile g&uuml;venli bir şekilde oturum a&ccedil;abilirsiniz. Ayrıca, TPM (Trusted Platform Module) ve şifreleme gibi &ouml;zelliklerle verilerinizi koruyabilirsiniz.</p>\r\n\r\n<p>Diz&uuml;st&uuml; bilgisayarın klavyesi, ThinkPad serisinin &uuml;nl&uuml; klavye kalitesine sahiptir. Rahat ve hassas tuşlara sahip olan klavye, uzun s&uuml;reli yazı yazma ve veri girişi işlemlerinde rahatlık sağlar. Ayrıca, aydınlatmalı klavye se&ccedil;eneği de mevcuttur, b&ouml;ylece d&uuml;ş&uuml;k ışıkta bile kolayca yazabilirsiniz.</p>\r\n\r\n<p>ThinkPad E14, &ccedil;eşitli bağlantı noktaları ile donatılmıştır. USB-C, HDMI, USB 3.1 ve SD kart okuyucu gibi bağlantı se&ccedil;enekleri, harici cihazları bağlama ve veri aktar</p>\r\n\r\n<p>ımı i&ccedil;in kolaylık sağlar. Ayrıca, bazı modellerde Ethernet bağlantı noktası da bulunur.</p>\r\n\r\n<p>Sonu&ccedil; olarak, Lenovo ThinkPad E14, iş d&uuml;nyası i&ccedil;in tasarlanmış g&uuml;venilir ve performans odaklı bir diz&uuml;st&uuml; bilgisayardır. Dayanıklı yapısı, g&uuml;&ccedil;l&uuml; işlemci se&ccedil;enekleri ve işlevsel &ouml;zellikleri ile profesyonellerin ihtiya&ccedil;larını karşılamak i&ccedil;in ideal bir se&ccedil;enektir.</p>\r\n', 'lenovo-e14-6479e9fdd8597.webp', '', 19999.00, 'lenovo-e14', 26, 'lenovo-e14', 'lenovo-e14', '2023-06-02 13:09:15', 1, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_kategoriler`
--

CREATE TABLE `urun_kategoriler` (
  `id` int(11) NOT NULL,
  `katbaslik` varchar(300) NOT NULL,
  `katsef` varchar(300) NOT NULL,
  `katkeyw` varchar(300) NOT NULL,
  `katdesc` varchar(300) NOT NULL,
  `katdurum` tinyint(1) NOT NULL DEFAULT 1,
  `kattarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `katekleyen` int(11) NOT NULL,
  `silinmeyen_kat` tinyint(1) NOT NULL DEFAULT 2,
  `katresim` varchar(300) DEFAULT NULL,
  `siralama` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urun_kategoriler`
--

INSERT INTO `urun_kategoriler` (`id`, `katbaslik`, `katsef`, `katkeyw`, `katdesc`, `katdurum`, `kattarih`, `katekleyen`, `silinmeyen_kat`, `katresim`, `siralama`) VALUES
(1, 'Lenovo', 'lenovo', 'lenovo', 'lenovo', 1, '2022-03-05 15:43:27', 1, 1, 'lenovo-64721704c7688.webp', 5),
(4, 'Monster', 'monster', 'monster', 'monster', 1, '2022-03-05 15:43:27', 1, 2, 'monster-647e27ba94a0a.webp', 4),
(6, 'MSI', 'msi', 'msi', 'msi', 1, '2022-03-05 15:43:27', 1, 2, 'msi-64721610eb355.webp', 2),
(7, 'Razer', 'Razer', 'Razer', 'Razer', 1, '2022-03-05 15:43:27', 1, 2, 'Razer-6478a6af6087d.webp', 1),
(8, 'Apple', 'apple', 'apple', 'apple', 1, '2022-03-05 15:43:27', 1, 2, 'apple-647b8b6de4692.webp', 3),
(12, 'Casper', 'casper', 'casper', 'casper', 1, '2022-04-19 21:09:46', 1, 2, 'casper-647216bdef6cc.webp', 0),
(14, 'HP', 'hp', 'HP', 'HP', 1, '2023-05-20 15:15:11', 1, 2, 'HP-LAPTOP-6472169d7f823.webp', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_ozellikler`
--

CREATE TABLE `urun_ozellikler` (
  `id` int(11) NOT NULL,
  `ozellikurun` varchar(200) NOT NULL,
  `ozellikbaslik` varchar(300) NOT NULL,
  `ozellikicerik` text NOT NULL,
  `ozellikekleyen` int(11) NOT NULL,
  `ozelliktarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `ozellikdurum` tinyint(1) NOT NULL DEFAULT 1,
  `siralama` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urun_ozellikler`
--

INSERT INTO `urun_ozellikler` (`id`, `ozellikurun`, `ozellikbaslik`, `ozellikicerik`, `ozellikekleyen`, `ozelliktarih`, `ozellikdurum`, `siralama`) VALUES
(25, 'lenovo-e14', 'EKRAN BOYUTU', '15.6 İNÇ', 1, '2023-06-03 17:59:52', 1, 1),
(24, 'lenovo-e14', 'İŞLETİM SİSTEMİ', 'FREEDOS', 1, '2023-06-03 17:59:21', 1, 1),
(23, 'lenovo-e14', 'DEPOLAMA ALANI', '500 GB SSD', 1, '2023-06-03 17:59:11', 1, 1),
(22, 'lenovo-e14', 'İŞLEMCİ', 'Intel Core i5-12450H', 1, '2023-06-03 17:57:49', 1, 1),
(21, 'lenovo-e14', 'RAM', '16 GB', 1, '2023-06-03 17:57:11', 1, 1),
(20, 'lenovo-e14', 'Ekran Kartı', 'GTX 1650', 1, '2023-06-03 17:56:59', 1, 1),
(11, '0001', 'Gürültü Engelleyici', 'Var', 1, '2022-05-28 15:54:55', 1, 1),
(13, 'MN-02', 'ÖZELLİKLER', 'İnce ve Şık Metalik Tasarım\r\nAynı Anda Çoklu Cihaz Bağlantısı\r\nMacOs, Windows, Android, iOS Uyumluluğu\r\nBluetooth 5.1 Kablosuz Bağlantı\r\n100 Saat Kullanım Süresi\r\nDayanıklı Alüminyum Kasa', 1, '2023-05-20 15:01:35', 1, 1),
(14, 'M-Huma-V5.1.11', 'Teknik Özellikler', 'Intel® Alder Lake Core™ i5-1235U 10C/12T; 12MB L3; E-CORE Max 3.30GHZ P-CORE Max 4.40GHZ; 15W\r\nIntel® Iris® Xe Graphics (80 Yürütme Birimi)\r\n14,1\" FHD 1920x1080 IPS Mat LED Ekran\r\n32GB (2x16GB) DDR4 3200MHz\r\n1TB SAMSUNG PM9B1 M.2 SSD PCIe 4.0 x4\r\nFreeDos (İşletim sistemi bulunmamaktadır)\r\nBeyaz Arka Aydınlatmalı Klavye\r\n19,3mm İncelik\r\n1,6Kg Ağırlık\r\nMonster Çiçek Desenli Askılı Notebook Çantası Hediye', 1, '2023-05-21 19:30:02', 1, 1),
(16, 'MN-Pusat-001', 'Teknik Özellikler', 'Alüminyum Kasa\r\nDual 2 Fan\r\nHydro Bearing', 1, '2023-05-21 20:13:44', 1, 1),
(17, 'MN-Pusat-002', 'Teknik Özellikler', 'Tek Şarj İle 55 Saat Kesintisiz Kullanım\r\nHer İki Elle Kullanıma Uygun Tasarım\r\nÇift Bağlantı Modu (Wireless/Bluetooth)\r\nAynı Anda İki Cihaz İle Bağlantı\r\n10 Metre Kablosuz Kullanım Mesafesi', 1, '2023-05-21 20:26:09', 1, 1),
(18, 'MN-Pusat-003', 'Teknik Özellikler', 'İnce ve Şık Metalik Tasarım\r\nAynı Anda Çoklu Cihaz Bağlantısı\r\nMacOs, Windows, Android, iOS Uyumluluğu\r\nBluetooth 5.1 Kablosuz Bağlantı\r\n100 Saat Kullanım Süresi\r\nDayanıklı Alüminyum Kasa', 1, '2023-05-21 20:32:42', 1, 1),
(19, 'MN-Pusat-004', 'Teknik Özellikler', '1920x1080 Çözünürlük\r\nOtomatik Odak Modu\r\n76° Lens Genişliği', 1, '2023-05-21 20:40:16', 1, 1),
(26, 'C-EX-004', 'EKRAN KARTI', 'GTX 1650 Tİ', 1, '2023-06-03 18:01:16', 1, 1),
(27, 'C-EX-004', 'İŞLEMCİ', 'Intel Core i5-12450H', 1, '2023-06-03 18:01:23', 1, 1),
(28, 'C-EX-004', 'RAM', '16 GB', 1, '2023-06-03 18:01:31', 1, 1),
(29, 'C-EX-004', 'DEPOLAMA ALANI', '1 TB HDD', 1, '2023-06-03 18:01:45', 1, 1),
(30, 'C-EX-004', 'İŞLETİM SİSTEMİ', 'FREE DOS', 1, '2023-06-03 18:01:57', 1, 1),
(31, 'C-EX-004', 'EKRAN BOYUTU', '15.6 İNÇ', 1, '2023-06-03 18:03:01', 1, 1),
(32, 'HP-03', 'EKRAN KARTI', 'RTX 4050', 1, '2023-06-03 18:04:52', 1, 1),
(33, 'HP-03', 'İŞLEMCİ', 'Intel Core i7-13700H', 1, '2023-06-03 18:05:16', 1, 1),
(34, 'HP-03', 'RAM', '16 GB', 1, '2023-06-03 18:05:22', 1, 1),
(35, 'HP-03', 'İŞLEMTİM SİSTEMİ', 'FREE DOS', 1, '2023-06-03 18:05:42', 1, 1),
(36, 'HP-03', 'EKRAN BOYUTU', '17.2 İNÇ', 1, '2023-06-03 18:06:29', 1, 1),
(37, 'HP-03', 'DEPOLAMA ALANI', '1 TB SSD', 1, '2023-06-03 18:06:46', 1, 1),
(38, 'HP-03', 'EKRAN YENİLEME HIZI', '144 HZ', 1, '2023-06-03 18:07:12', 1, 1),
(39, 'HP-03', 'EKRAN ÇÖZÜNÜRLÜĞÜ', '1920X1080', 1, '2023-06-03 18:07:24', 1, 1),
(40, 'MSI-0002', 'EKRAN KARTI', 'RTX 4080', 1, '2023-06-03 18:08:37', 1, 1),
(41, 'MSI-0002', 'RAM', '32 GB', 1, '2023-06-03 18:08:43', 1, 1),
(42, 'MSI-0002', 'DEPOLAMA ALANI', '1 TB SSD', 1, '2023-06-03 18:08:54', 1, 1),
(43, 'MSI-0002', 'İŞLEMCİ', 'Intel Core i9-13980HX', 1, '2023-06-03 18:09:33', 1, 1),
(44, 'MSI-0002', 'EKRAN BOYUTU', '17.6 İNÇ', 1, '2023-06-03 18:10:03', 1, 1),
(45, 'MSI-0002', 'EKRAN ÇÖZÜNÜRLÜĞÜ', '3840x2160', 1, '2023-06-03 18:10:33', 1, 1),
(46, 'MSI-0002', 'EKRAN YENİLEME HIZI', '165 HZ', 1, '2023-06-03 18:10:44', 1, 1),
(47, 'MSI-0002', 'İŞLETİM SİSTEMİ', 'WİNDOWS 11', 1, '2023-06-03 18:11:26', 1, 1),
(48, 'MN-Huma-V5.1.11', 'EKRAN KARTI', 'GTX 1650 Tİ', 1, '2023-06-03 18:13:07', 1, 1),
(49, 'MN-Huma-V5.1.11', 'İŞLEMCİ', 'Intel® Alder Lake Core™ i5-1235U 10C/12T; 12MB L3; E-CORE Max 3.30GHZ P-CORE Max 4.40GHZ; 15W', 1, '2023-06-03 18:13:18', 1, 1),
(50, 'MN-Huma-V5.1.11', 'RAM', '16 GB', 1, '2023-06-03 18:13:30', 1, 1),
(51, 'MN-Huma-V5.1.11', 'DEPOLAMA ALANI', '1TB SAMSUNG PM9B1 M.2 SSD PCIe 4.0 x4', 1, '2023-06-03 18:13:59', 1, 1),
(52, 'MN-Huma-V5.1.11', 'EKRAN YENİLEME HIZI', '120 HZ', 1, '2023-06-03 18:14:10', 1, 1),
(53, 'MN-Huma-V5.1.11', 'EKRAN BOYUTU', '14.1 İNÇ', 1, '2023-06-03 18:14:23', 1, 1),
(54, 'MN-Huma-V5.1.11', 'EKRAN ÇÖZÜNÜRLÜĞÜ', '1920x1080', 1, '2023-06-03 18:14:37', 1, 1),
(55, 'MN-Huma-V5.1.11', 'İŞLETİM SİSTEMİ', 'FREE DOS', 1, '2023-06-03 18:14:58', 1, 1),
(56, 'AP-iMac-M1', 'RAM', '8 GB', 1, '2023-06-03 18:23:10', 1, 1),
(57, 'AP-iMac-M1', 'İŞLEMCİ', 'Neural Engine’a sahip Apple M1 çip', 1, '2023-06-03 18:23:34', 1, 1),
(58, 'AP-iMac-M1', 'DEPOLAMA ALANI', '256 GB SSD', 1, '2023-06-03 18:23:45', 1, 1),
(59, 'AP-iMac-M1', 'EKRAN ÇÖZÜNÜRLÜĞÜ', '6K', 1, '2023-06-03 18:23:56', 1, 1),
(60, 'AP-iMac-M1', 'EKRAN YENİLEME HIZI', '60 HZ', 1, '2023-06-03 18:24:10', 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_resimler`
--

CREATE TABLE `urun_resimler` (
  `id` int(11) NOT NULL,
  `resimurun` varchar(200) NOT NULL,
  `resimdosya` varchar(300) NOT NULL,
  `resimtarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `resimekleyen` int(11) NOT NULL,
  `resimdurum` tinyint(1) NOT NULL DEFAULT 1,
  `kapak` tinyint(1) NOT NULL DEFAULT 2,
  `siralama` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urun_resimler`
--

INSERT INTO `urun_resimler` (`id`, `resimurun`, `resimdosya`, `resimtarih`, `resimekleyen`, `resimdurum`, `kapak`, `siralama`) VALUES
(132, 'C-EX-002', 'CASPER-G900-64789e1d76686.webp', '2023-06-01 13:33:15', 1, 1, 2, 3),
(131, 'C-EX-002', 'CASPER-G900-64789e164c0f1.webp', '2023-06-01 13:33:08', 1, 1, 2, 2),
(5, '0001', 'nker-soundcore-life-q20-kablosuz-kulaklik-625f319636e4d.webp', '2022-03-08 15:21:33', 1, 1, 2, 1),
(8, '0001', 'nker-soundcore-life-q20-kablosuz-kulaklik-625f319636e4d.webp', '2022-03-08 15:21:33', 1, 1, 2, 0),
(13, 'MN-02', 'Pusat-Monster-Klavye-6468df682d1db.webp', '2023-05-20 14:55:34', 1, 1, 2, 0),
(14, 'MN-02', 'Pusat-Monster-Klavye-6468df8006960.webp', '2023-05-20 14:55:58', 1, 1, 2, 2),
(11, 'MN-02', 'Pusat-Monster-Klavye-6468deb178a89.webp', '2023-05-20 14:52:31', 1, 1, 2, 1),
(21, 'AP-01', 'macbook-air-m1-6468ec3855f42.webp', '2023-05-20 15:50:14', 1, 1, 2, 1),
(20, 'AP-01', 'macbook-air-m1-6468ec2846c45.webp', '2023-05-20 15:49:58', 1, 1, 2, 1),
(19, 'AP-01', 'macbook-air-m1-6468ec22cd95b.webp', '2023-05-20 15:49:53', 1, 1, 2, 1),
(22, 'AP-01', 'macbook-air-m1-6468ec52bf735.webp', '2023-05-20 15:50:41', 1, 1, 2, 1),
(23, 'HP-01', 'hp-victus-15-6468edeb7ed6c.webp', '2023-05-20 15:57:29', 1, 1, 2, 0),
(24, 'HP-01', 'hp-victus-15-6468edf50c5c9.webp', '2023-05-20 15:57:39', 1, 1, 2, 1),
(25, 'HP-01', 'hp-victus-15-6468ee001cd09.webp', '2023-05-20 15:57:50', 1, 1, 2, 2),
(28, 'MSI-0001', 'MSI-PULSE-GL76-646a0ea68508f.webp', '2023-05-21 12:29:24', 1, 1, 2, 1),
(29, 'MSI-0001', 'MSI-PULSE-GL76-646a0ee4d4f17.webp', '2023-05-21 12:30:26', 1, 1, 2, 1),
(30, 'MSI-0001', 'MSI-PULSE-GL76-646a0eefc0d13.webp', '2023-05-21 12:30:37', 1, 1, 2, 1),
(31, 'MSI-0001', 'MSI-PULSE-GL76-646a0ef8e7c79.webp', '2023-05-21 12:30:47', 1, 1, 2, 1),
(32, 'MN-001', 'MONSTER-HUMA-646a1248d2c56.webp', '2023-05-21 12:44:54', 1, 1, 2, 1),
(33, 'MN-001', 'MONSTER-HUMA-646a12517ee98.webp', '2023-05-21 12:45:03', 1, 1, 2, 1),
(34, 'MN-001', 'MONSTER-HUMA-646a125963c35.webp', '2023-05-21 12:45:11', 1, 1, 2, 1),
(81, 'MN-Pusat-001', 'pusat-notebook-sogutucusu-646a7bf2c0876.webp', '2023-05-21 20:15:45', 1, 1, 2, 1),
(114, 'MN-Huma-V5.1.11', 'huma-h4-v5-1-14inc-646ce18aae7c8.webp', '2023-05-23 15:53:44', 1, 1, 2, 1),
(113, 'MN-Huma-V5.1.11', 'huma-h4-v5-1-14inc-646ce18148a21.webp', '2023-05-23 15:53:35', 1, 1, 2, 2),
(112, 'MN-Huma-V5.1.11', 'huma-h4-v5-1-14inc-646ce16f69b12.webp', '2023-05-23 15:53:17', 1, 1, 2, 0),
(214, 'AP-iMac-M1', 'imac-m1-24inc-647b8445849c0.webp', '2023-06-03 18:19:47', 1, 1, 2, 0),
(47, 'AP-Mac-Pro-16', 'macbook-pro-16inc-646a72e16222e.webp', '2023-05-21 19:37:04', 1, 1, 2, 0),
(48, 'AP-Mac-Pro-16', 'macbook-pro-16inc-646a72e9e731a.webp', '2023-05-21 19:37:13', 1, 1, 2, 1),
(49, 'AP-Mac-Pro-16', 'macbook-pro-16inc-646a72f2d6c65.webp', '2023-05-21 19:37:21', 1, 1, 2, 2),
(50, 'AP-Mac-Pro-16', 'macbook-pro-16inc-646a72f8d8f60.webp', '2023-05-21 19:37:27', 1, 1, 2, 3),
(51, 'AP-Mac-Pro-16', 'macbook-pro-16inc-646a72fee263e.webp', '2023-05-21 19:37:33', 1, 1, 2, 4),
(52, 'AP-Mac-Pro-16', 'macbook-pro-16inc-646a730235749.webp', '2023-05-21 19:37:37', 1, 1, 2, 5),
(53, 'AP-Mac-Pro-14', 'macbook-pro-14inc-646a73192181d.webp', '2023-05-21 19:38:00', 1, 1, 2, 0),
(54, 'AP-Mac-Pro-14', 'macbook-pro-14inc-646a731f92921.webp', '2023-05-21 19:38:06', 1, 1, 2, 1),
(55, 'AP-Mac-Pro-14', 'macbook-pro-14inc-646a732b67fef.webp', '2023-05-21 19:38:18', 1, 1, 2, 2),
(56, 'AP-Mac-Pro-14', 'macbook-pro-14inc-646a73310e3fb.webp', '2023-05-21 19:38:24', 1, 1, 2, 3),
(57, 'AP-Mac-Pro-14', 'macbook-pro-14inc-646a7335167d5.webp', '2023-05-21 19:38:28', 1, 1, 2, 4),
(58, 'AP-Mac-Pro-14', 'macbook-pro-14inc-646a733d72ac9.webp', '2023-05-21 19:38:36', 1, 1, 2, 5),
(59, 'AP-Mac-Pro-13', 'macbook-pro-13inc-646a73726bca0.webp', '2023-05-21 19:39:29', 1, 1, 2, 0),
(60, 'AP-Mac-Pro-13', 'macbook-pro-13inc-646a737ee9543.webp', '2023-05-21 19:39:41', 1, 1, 2, 1),
(61, 'AP-Mac-Pro-13', 'macbook-pro-13inc-646a738699646.webp', '2023-05-21 19:39:49', 1, 1, 2, 2),
(62, 'AP-Mac-Pro-13', 'macbook-pro-13inc-646a738c40804.webp', '2023-05-21 19:39:55', 1, 1, 2, 3),
(63, 'AP-Mac-Air-M2', 'macbook-air-m2-646a73b111e25.webp', '2023-05-21 19:40:32', 1, 1, 2, 0),
(64, 'AP-Mac-Air-M2', 'macbook-air-m2-646a73b92871c.webp', '2023-05-21 19:40:40', 1, 1, 2, 1),
(65, 'AP-Mac-Air-M2', 'macbook-air-m2-646a73bfb1dec.webp', '2023-05-21 19:40:46', 1, 1, 2, 2),
(66, 'AP-Mac-Air-M2', 'macbook-air-m2-646a73c59b8b3.webp', '2023-05-21 19:40:52', 1, 1, 2, 3),
(67, 'AP-Mac-Air-M2', 'macbook-air-m2-646a73d02f9d6.webp', '2023-05-21 19:41:03', 1, 1, 2, 4),
(68, 'AP-Mac-Air-M1', 'macbook-air-m1-646a743eaf3a5.webp', '2023-05-21 19:42:53', 1, 1, 2, 0),
(69, 'AP-Mac-Air-M1', 'macbook-air-m1-646a744441249.webp', '2023-05-21 19:42:59', 1, 1, 2, 1),
(70, 'AP-Mac-Air-M1', 'macbook-air-m1-646a744c77ab5.webp', '2023-05-21 19:43:07', 1, 1, 2, 2),
(71, 'AP-Mac-Air-M1', 'macbook-air-m1-646a7452cfc57.webp', '2023-05-21 19:43:13', 1, 1, 2, 3),
(82, 'MN-Pusat-001', 'pusat-notebook-sogutucusu-646a7bfe2271a.webp', '2023-05-21 20:15:57', 1, 1, 2, 1),
(83, 'MN-Pusat-001', 'pusat-notebook-sogutucusu-646a7c09bba28.webp', '2023-05-21 20:16:08', 1, 1, 2, 1),
(84, 'MN-Pusat-001', 'pusat-notebook-sogutucusu-646a7c0fda42c.webp', '2023-05-21 20:16:14', 1, 1, 2, 1),
(85, 'MN-Pusat-001', 'pusat-notebook-sogutucusu-646a7c21c4a48.webp', '2023-05-21 20:16:32', 1, 1, 2, 1),
(86, 'MN-Pusat-001', 'pusat-notebook-sogutucusu-646a7c29c3814.webp', '2023-05-21 20:16:40', 1, 1, 2, 1),
(87, 'MN-Pusat-001', 'pusat-notebook-sogutucusu-646a7c3d0ab69.webp', '2023-05-21 20:17:00', 1, 1, 2, 1),
(88, 'MN-Pusat-001', 'pusat-notebook-sogutucusu-646a7c467635c.webp', '2023-05-21 20:17:09', 1, 1, 2, 1),
(89, 'MN-Pusat-001', 'pusat-notebook-sogutucusu-646a7c5b9683b.webp', '2023-05-21 20:17:30', 1, 1, 2, 1),
(90, 'MN-Pusat-001', 'pusat-notebook-sogutucusu-646a7c79ef187.webp', '2023-05-21 20:18:00', 1, 1, 2, 1),
(91, 'MN-Pusat-002', 'pusat-business-pro-mouse-646a7e6e0c681.webp', '2023-05-21 20:26:21', 1, 1, 2, 1),
(92, 'MN-Pusat-002', 'pusat-business-pro-mouse-646a7e746d926.webp', '2023-05-21 20:26:27', 1, 1, 2, 1),
(93, 'MN-Pusat-002', 'pusat-business-pro-mouse-646a7e7ead3c9.webp', '2023-05-21 20:26:37', 1, 1, 2, 1),
(94, 'MN-Pusat-002', 'pusat-business-pro-mouse-646a7e891c728.webp', '2023-05-21 20:26:48', 1, 1, 2, 1),
(95, 'MN-Pusat-002', 'pusat-business-pro-mouse-646a7e8e3028d.webp', '2023-05-21 20:26:53', 1, 1, 2, 1),
(96, 'MN-Pusat-002', 'pusat-business-pro-mouse-646a7e95df471.webp', '2023-05-21 20:27:00', 1, 1, 2, 1),
(97, 'MN-Pusat-002', 'pusat-business-pro-mouse-646a7eaa1eeab.webp', '2023-05-21 20:27:21', 1, 1, 2, 1),
(98, 'MN-Pusat-002', 'pusat-business-pro-mouse-646a7eb5b43e0.webp', '2023-05-21 20:27:32', 1, 1, 2, 1),
(99, 'MN-Pusat-003', 'pusat-business-pro-klavye-646a7ffbe0927.webp', '2023-05-21 20:32:58', 1, 1, 2, 1),
(100, 'MN-Pusat-003', 'pusat-business-pro-klavye-646a8010da49d.webp', '2023-05-21 20:33:19', 1, 1, 2, 1),
(101, 'MN-Pusat-003', 'pusat-business-pro-klavye-646a801cc5a70.webp', '2023-05-21 20:33:31', 1, 1, 2, 1),
(102, 'MN-Pusat-003', 'pusat-business-pro-klavye-646a802583d22.webp', '2023-05-21 20:33:40', 1, 1, 2, 1),
(103, 'MN-Pusat-003', 'pusat-business-pro-klavye-646a802a89293.webp', '2023-05-21 20:33:45', 1, 1, 2, 1),
(104, 'MN-Pusat-003', 'pusat-business-pro-klavye-646a803058d55.webp', '2023-05-21 20:33:51', 1, 1, 2, 1),
(105, 'MN-Pusat-003', 'pusat-business-pro-klavye-646a8038b9028.webp', '2023-05-21 20:33:59', 1, 1, 2, 1),
(106, 'MN-Pusat-004', 'pusat-webcam-646a81c0a9d38.webp', '2023-05-21 20:40:31', 1, 1, 2, 1),
(107, 'MN-Pusat-004', 'pusat-webcam-646a81c60fdef.webp', '2023-05-21 20:40:36', 1, 1, 2, 1),
(108, 'MN-Pusat-004', 'pusat-webcam-646a81ceef4ca.webp', '2023-05-21 20:40:45', 1, 1, 2, 1),
(109, 'MN-Pusat-004', 'pusat-webcam-646a81d3ee594.webp', '2023-05-21 20:40:50', 1, 1, 2, 1),
(110, 'MN-Pusat-004', 'pusat-webcam-646a81d94323c.webp', '2023-05-21 20:40:56', 1, 1, 2, 1),
(111, 'MN-Pusat-004', 'pusat-webcam-646a81deac23d.webp', '2023-05-21 20:41:01', 1, 1, 2, 1),
(146, 'C-Ex-001', 'Excalibur-G870-6478a8978faba.webp', '2023-06-01 14:17:57', 1, 1, 2, 0),
(133, 'C-EX-003', 'CASPER-G911-6478a1544bace.webp', '2023-06-01 13:46:58', 1, 1, 2, 0),
(130, 'C-EX-002', 'CASPER-G900-64789e0cd311a.webp', '2023-06-01 13:32:59', 1, 1, 2, 1),
(129, 'C-EX-002', 'CASPER-G900-64789e016ef48.webp', '2023-06-01 13:32:47', 1, 1, 2, 0),
(134, 'C-EX-003', 'CASPER-G911-6478a15de2640.webp', '2023-06-01 13:47:08', 1, 1, 2, 1),
(135, 'C-EX-003', 'CASPER-G911-6478a164ee6f3.webp', '2023-06-01 13:47:15', 1, 1, 2, 2),
(136, 'C-EX-003', 'CASPER-G911-6478a16b14144.webp', '2023-06-01 13:47:21', 1, 1, 2, 3),
(137, 'C-EX-004', 'CASPER-G770-6478a38fd0e93.webp', '2023-06-01 13:56:30', 1, 1, 2, 0),
(138, 'C-EX-004', 'CASPER-G770-6478a39c4cade.webp', '2023-06-01 13:56:42', 1, 1, 2, 1),
(139, 'C-EX-004', 'CASPER-G770-6478a3a7c4949.webp', '2023-06-01 13:56:54', 1, 1, 2, 2),
(140, 'C-EX-004', 'CASPER-G770-6478a3afac6c7.webp', '2023-06-01 13:57:02', 1, 1, 2, 3),
(141, 'RZ-0001', 'Razer-viper-6478a839e7e87.webp', '2023-06-01 14:16:24', 1, 1, 2, 0),
(142, 'RZ-0001', 'Razer-viper-6478a8443c990.webp', '2023-06-01 14:16:34', 1, 1, 2, 1),
(143, 'RZ-0001', 'Razer-viper-6478a84be3521.webp', '2023-06-01 14:16:42', 1, 1, 2, 2),
(144, 'RZ-0001', 'Razer-viper-6478a85308794.webp', '2023-06-01 14:16:49', 1, 1, 2, 3),
(145, 'RZ-0001', 'Razer-viper-6478a8595984f.webp', '2023-06-01 14:16:55', 1, 1, 2, 4),
(147, 'C-Ex-001', 'Excalibur-G870-6478a8a576b6b.webp', '2023-06-01 14:18:11', 1, 1, 2, 1),
(148, 'C-Ex-001', 'Excalibur-G870-6478a8aa9ed11.webp', '2023-06-01 14:18:16', 1, 1, 2, 2),
(149, 'C-Ex-001', 'Excalibur-G870-6478a8af5c3ab.webp', '2023-06-01 14:18:21', 1, 1, 2, 3),
(150, 'C-Ex-001', 'Excalibur-G870-6478a8b6f304c.webp', '2023-06-01 14:18:29', 1, 1, 2, 4),
(151, 'C-Ex-001', 'Excalibur-G870-6478a8c082342.webp', '2023-06-01 14:18:38', 1, 1, 2, 5),
(152, 'C-Ex-001', 'Excalibur-G870-6478a8c5de753.webp', '2023-06-01 14:18:44', 1, 1, 2, 6),
(153, 'C-Ex-001', 'Excalibur-G870-6478a8cba470c.webp', '2023-06-01 14:18:49', 1, 1, 2, 7),
(154, 'C-Ex-001', 'Excalibur-G870-6478a8d14fc5e.webp', '2023-06-01 14:18:55', 1, 1, 2, 8),
(155, 'C-Ex-001', 'Excalibur-G870-6478a8d96cb2b.webp', '2023-06-01 14:19:03', 1, 1, 2, 9),
(158, 'RZ-0002', 'razer-opus-6478ad0a9481b.webp', '2023-06-01 14:36:56', 1, 1, 2, 0),
(159, 'RZ-0002', 'razer-opus-6478ad1a95346.webp', '2023-06-01 14:37:12', 1, 1, 2, 1),
(160, 'RZ-0002', 'razer-opus-6478ad22a22e9.webp', '2023-06-01 14:37:20', 1, 1, 2, 2),
(161, 'RZ-0002', 'razer-opus-6478ad2beb821.webp', '2023-06-01 14:37:30', 1, 1, 2, 3),
(163, 'RZ-0003', 'razer-huntsman-6478aecc489eb.webp', '2023-06-01 14:44:26', 1, 1, 2, 0),
(164, 'RZ-0003', 'razer-huntsman-6478aed647504.webp', '2023-06-01 14:44:36', 1, 1, 2, 1),
(165, 'RZ-0003', 'razer-huntsman-6478aedbd556a.webp', '2023-06-01 14:44:42', 1, 1, 2, 2),
(166, 'RZ-0003', 'razer-huntsman-6478aee1b7325.webp', '2023-06-01 14:44:47', 1, 1, 2, 3),
(167, 'RZ-0004', 'razer-enki-6478b18df3de2.webp', '2023-06-01 14:56:12', 1, 1, 2, 0),
(168, 'RZ-0004', 'razer-enki-6478b1995be65.webp', '2023-06-01 14:56:23', 1, 1, 2, 1),
(169, 'RZ-0004', 'razer-enki-6478b1b18d8fa.webp', '2023-06-01 14:56:47', 1, 1, 2, 2),
(170, 'RZ-0004', 'razer-enki-6478b1c48a61e.webp', '2023-06-01 14:57:06', 1, 1, 2, 3),
(171, 'RZ-0004', 'razer-enki-6478b1cd1d5d6.webp', '2023-06-01 14:57:15', 1, 1, 2, 4),
(173, 'HP-02', 'hp-250-6479cf10abff5.webp', '2023-06-02 11:14:22', 1, 1, 2, 0),
(174, 'HP-02', 'hp-250-6479cf188dcc6.webp', '2023-06-02 11:14:30', 1, 1, 2, 1),
(175, 'HP-02', 'hp-250-6479cf1e167b7.webp', '2023-06-02 11:14:36', 1, 1, 2, 2),
(176, 'HP-02', 'hp-250-6479cf2641f1a.webp', '2023-06-02 11:14:44', 1, 1, 2, 3),
(177, 'HP-03', 'hp-victus-16-6479d05a748c4.webp', '2023-06-02 11:19:52', 1, 1, 2, 0),
(178, 'HP-03', 'hp-victus-16-6479d063ec5d8.webp', '2023-06-02 11:20:02', 1, 1, 2, 1),
(179, 'HP-03', 'hp-victus-16-6479d06a3cc30.webp', '2023-06-02 11:20:08', 1, 1, 2, 2),
(180, 'HP-03', 'hp-victus-16-6479d07739c37.webp', '2023-06-02 11:20:21', 1, 1, 2, 3),
(181, 'HP-03', 'hp-victus-16-6479d07d48e80.webp', '2023-06-02 11:20:27', 1, 1, 2, 4),
(182, 'HP-04', 'hp-smb-topload-6479d4ce0c638.webp', '2023-06-02 11:38:52', 1, 1, 2, 0),
(183, 'HP-04', 'hp-smb-topload-6479d4d6bb7e4.webp', '2023-06-02 11:39:00', 1, 1, 2, 1),
(184, 'HP-04', 'hp-smb-topload-6479d4e6eceea.webp', '2023-06-02 11:39:17', 1, 1, 2, 2),
(185, 'HP-04', 'hp-smb-topload-6479d4f6f4209.webp', '2023-06-02 11:39:33', 1, 1, 2, 3),
(186, 'MSI-0002', 'msi-thin-6479db127e1a5.webp', '2023-06-02 12:05:36', 1, 1, 2, 0),
(187, 'MSI-0002', 'msi-thin-6479db1bbe8a4.webp', '2023-06-02 12:05:45', 1, 1, 2, 1),
(188, 'MSI-0002', 'msi-thin-6479db2156d51.webp', '2023-06-02 12:05:51', 1, 1, 2, 2),
(189, 'MSI-0002', 'msi-thin-6479db28aa30d.webp', '2023-06-02 12:05:58', 1, 1, 2, 3),
(190, 'MSI-0002', 'msi-thin-6479db3065ffc.webp', '2023-06-02 12:06:06', 1, 1, 2, 4),
(191, 'MSI-0003', 'msi-modern-6479dd797d651.webp', '2023-06-02 12:15:51', 1, 1, 2, 0),
(192, 'MSI-0003', 'msi-modern-6479dd84a6858.webp', '2023-06-02 12:16:02', 1, 1, 2, 1),
(193, 'MSI-0003', 'msi-modern-6479dd960c06a.webp', '2023-06-02 12:16:20', 1, 1, 2, 2),
(194, 'MSI-0003', 'msi-modern-6479dd9c92b03.webp', '2023-06-02 12:16:26', 1, 1, 2, 3),
(195, 'MSI-0003', 'msi-modern-6479dda2d4147.webp', '2023-06-02 12:16:32', 1, 1, 2, 4),
(196, 'MSI-0004', 'msi-gforce-6479dee28a79f.webp', '2023-06-02 12:21:52', 1, 1, 2, 0),
(197, 'MSI-0004', 'msi-gforce-6479deec3a4ef.webp', '2023-06-02 12:22:02', 1, 1, 2, 1),
(198, 'MSI-0004', 'msi-gforce-6479def36a972.webp', '2023-06-02 12:22:09', 1, 1, 2, 2),
(199, 'MSI-0004', 'msi-gforce-6479def922c44.webp', '2023-06-02 12:22:15', 1, 1, 2, 3),
(200, 'LNV-002', 'lenovo-v15-6479e09516c84.webp', '2023-06-02 12:29:07', 1, 1, 2, 0),
(201, 'LNV-002', 'lenovo-v15-6479e09f2c6a0.webp', '2023-06-02 12:29:17', 1, 1, 2, 1),
(202, 'LNV-002', 'lenovo-v15-6479e0a9a1680.webp', '2023-06-02 12:29:27', 1, 1, 2, 2),
(203, 'LNV-002', 'lenovo-v15-6479e0b0dcde3.webp', '2023-06-02 12:29:35', 1, 1, 2, 3),
(204, 'LNV-003', 'lenovo-thinkbook-6479e8f53c44e.webp', '2023-06-02 13:04:51', 1, 1, 2, 0),
(205, 'LNV-003', 'lenovo-thinkbook-6479e8fbc0dab.webp', '2023-06-02 13:04:57', 1, 1, 2, 1),
(206, 'LNV-003', 'lenovo-thinkbook-6479e902f3722.webp', '2023-06-02 13:05:04', 1, 1, 2, 2),
(207, 'LNV-003', 'lenovo-thinkbook-6479e90b9de9e.webp', '2023-06-02 13:05:13', 1, 1, 2, 3),
(208, 'LNV-003', 'lenovo-thinkbook-6479e911e760b.webp', '2023-06-02 13:05:19', 1, 1, 2, 4),
(209, 'lenovo-e14', 'lenovo-e14-6479ea2f35b1a.webp', '2023-06-02 13:10:05', 1, 1, 2, 0),
(210, 'lenovo-e14', 'lenovo-e14-6479ea37385b8.webp', '2023-06-02 13:10:13', 1, 1, 2, 1),
(211, 'lenovo-e14', 'lenovo-e14-6479ea411dd7a.webp', '2023-06-02 13:10:23', 1, 1, 2, 2),
(212, 'lenovo-e14', 'lenovo-e14-6479ea47a2b2c.webp', '2023-06-02 13:10:30', 1, 1, 2, 3),
(213, 'lenovo-e14', 'lenovo-e14-6479ea5140344.webp', '2023-06-02 13:10:39', 1, 1, 2, 4),
(215, 'AP-iMac-M1', 'imac-m1-24inc-647b8457d60bc.webp', '2023-06-03 18:20:06', 1, 1, 2, 1),
(216, 'AP-iMac-M1', 'imac-m1-24inc-647b8460d0015.webp', '2023-06-03 18:20:15', 1, 1, 2, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_yorumlar`
--

CREATE TABLE `urun_yorumlar` (
  `id` int(11) NOT NULL,
  `yorumbayi` varchar(200) NOT NULL,
  `yorumurun` varchar(200) NOT NULL,
  `yorumisim` varchar(300) NOT NULL,
  `yorumicerik` text NOT NULL,
  `yorumdurum` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1 = aktif 2 = pasif',
  `yorumip` varchar(300) NOT NULL,
  `yorumtarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urun_yorumlar`
--

INSERT INTO `urun_yorumlar` (`id`, `yorumbayi`, `yorumurun`, `yorumisim`, `yorumicerik`, `yorumdurum`, `yorumip`, `yorumtarih`) VALUES
(13, '647c88791e380', 'MN-Huma-V5.1.11', 'TeknoBazaar', 'HUMA , günlük işlerimi hızlandırmak için harika bir seçim oldu. Yüksek performansı ve hızlı işlemcisi sayesinde tüm uygulamaları sorunsuz bir şekilde çalıştırıyor. Ayrıca çoklu görevlerde bile takılmadan çalışıyor. Kesinlikle iş verimini artıran bir cihaz!', 1, '95.70.207.43', '2023-06-04 13:07:38'),
(11, '647c88791e380', 'MSI-0002', 'TeknoBazaar', 'MSI, taşınabilirlik ve güç arasında mükemmel bir denge sağlıyor. Şık ve hafif tasarımıyla her yere rahatlıkla taşınabiliyor. Ayrıca yüksek performansı ve uzun pil ömrüyle enerji gerektiren işleri bile başarıyla yerine getiriyor. Benim için ideal bir seçenek!', 1, '95.70.207.43', '2023-06-04 13:06:31'),
(12, '647c88791e380', 'AP-iMac-M1', 'TeknoBazaar', 'Bu laptop, dosyalarımı ve medya koleksiyonumu depolamak için ideal bir seçenek. Geniş depolama kapasitesi sayesinde tüm verilerimi güvenli bir şekilde saklayabiliyorum. Ayrıca yüksek çözünürlüklü ekranı, fotoğraf ve video düzenleme işlerimde büyük bir avantaj sağlıyor. Memnuniyetle kullanıyorum!', 1, '95.70.207.43', '2023-06-04 13:07:12'),
(7, '64512cc67753b', 'lenovo-e14', 'Arel', 'güzel ürün', 1, '95.70.207.43', '2023-06-03 15:39:29'),
(8, '647c88791e380', 'lenovo-e14', 'TeknoBazaar', 'Bu laptop, iş ve eğlence için mükemmel bir seçenek. Hızlı performansıyla işlerimi kolaylaştırıyor ve oyunları sorunsuz bir şekilde çalıştırıyor. Ekran kalitesi de oldukça etkileyici. Kesinlikle tavsiye ederim!', 1, '95.70.207.43', '2023-06-04 13:04:36'),
(9, '647c88791e380', 'C-EX-004', 'TeknoBazaar', 'casper beni gerçekten şaşırttı. Şık tasarımı ve yüksek çözünürlüklü ekranıyla göz kamaştırıyor. İşlemci gücü sayesinde karmaşık görevleri rahatlıkla hallediyor. Ayrıca uzun pil ömrü, taşınabilirlik açısından büyük bir artı. Benim için mükemmel bir seçim oldu!', 1, '95.70.207.43', '2023-06-04 13:05:08'),
(10, '647c88791e380', 'HP-03', 'TeknoBazaar', 'Bu laptop, gerçek bir iş atleti! Hızlı ve güçlü performansı sayesinde her türlü görevi kolaylıkla tamamlıyor. SSD depolama birimi, dosya erişimini hızlandırıyor ve daha hızlı açılış süreleri sunuyor. İş dünyasında tercih edilecek bir cihaz.', 1, '95.70.207.43', '2023-06-04 13:05:40'),
(14, '647c88b13c352', 'lenovo-e14', 'TeknoShop', 'Lenovo gerçekten harika bir performans sunuyor. Hızlı işlemci ve büyük RAM kapasitesi sayesinde tüm görevleri kolaylıkla yerine getirebiliyorum. Ayrıca taşınabilirliği de mükemmel. Şimdiye kadar kullandığım en iyi laptoplardan biri!', 1, '95.70.207.43', '2023-06-04 13:09:06'),
(15, '647c88b13c352', 'C-EX-004', 'TeknoShop', 'CASPER\'ın ekran kalitesi gerçekten göz alıcı. Oyunları ve filmleri kesintisiz ve canlı bir şekilde izlemek mümkün. Ayrıca yüksek performansıyla oyunlarda da beklentilerimi karşılıyor. Kesinlikle tavsiye ederim!', 1, '95.70.207.43', '2023-06-04 13:09:38'),
(16, '647c88b13c352', 'HP-03', 'TeknoShop', 'HP VİCTUS, uzun pil ömrüyle beni gerçekten şaşırttı. Bir şarjla tüm gün boyunca çalışabilme imkanı sunuyor. Bu da işlerimi kolaylaştırıyor ve seyahatlerimde güvende olmamı sağlıyor. Aynı zamanda hafif ve şık tasarımıyla da hoş bir kullanıcı deneyimi sunuyor.', 1, '95.70.207.43', '2023-06-04 13:17:26'),
(17, '647c88b13c352', 'MSI-0002', 'TeknoShop', 'MSI THİN\'in hafif ve şık tasarımı gerçekten beğenimi kazandırdı. İnce çerçeveli ekranıyla geniş bir görüntü alanı sunuyor. Hem iş hem de eğlence için mükemmel bir seçim. Performansı da oldukça iyi. Kesinlikle tercih edilesi bir laptop!', 1, '95.70.207.43', '2023-06-04 13:17:54'),
(18, '647c88b13c352', 'AP-iMac-M1', 'TeknoShop', 'İMAC\'in büyük depolama alanı sayesinde tüm dosyalarımı rahatlıkla saklayabiliyorum. Fotoğraflarım, videolarım ve belgelerim için bolca yer var. Performansı da oldukça iyi, hızlı açılıyor ve görevleri hızlıca yerine getiriyor. Hem iş hem de kişisel kullanım için ideal.', 1, '95.70.207.43', '2023-06-04 13:18:36'),
(19, '647c88b13c352', 'MN-Huma-V5.1.11', 'TeknoShop', 'HUMA gerçekten yüksek performansıyla beni etkiledi. İşlemci gücü ve bellek kapasitesi sayesinde yoğun görevleri bile rahatlıkla halledebiliyorum. Ayrıca oyunlarda da mükemmel bir deneyim sunuyor. Şık tasarımıyla da göz alıcı bir görünüme sahip. Tam anlamıyla bir güçlü oyuncu laptopu!', 1, '95.70.207.43', '2023-06-04 13:19:02'),
(20, '647c88f95781e', 'lenovo-e14', 'TeknoMega', 'Bu laptop gerçekten harika! Hızı ve performansı beni şaşırttı. Ayrıca taşınabilirliği de çok iyi. Tüm ihtiyaçlarımı karşılıyor ve işimi kolaylaştırıyor. Kesinlikle tavsiye ederim!', 1, '95.70.207.43', '2023-06-04 13:20:50'),
(21, '647c88f95781e', 'C-EX-004', 'TeknoMega', 'Ekran kalitesi bu laptopda şaşırtıcı. Renkler canlı ve net, videoları ve fotoğrafları gerçekten mükemmel şekilde görüntülüyor. Oyun performansı da etkileyici. Çok memnunum!', 1, '95.70.207.43', '2023-06-04 13:21:04'),
(22, '647c88f95781e', 'HP-03', 'TeknoMega', 'Pil ömrü gerçekten uzun. Bir gün boyunca kullanabiliyorum ve hala şarjım kalmış oluyor. Bu benim için büyük bir avantaj. Ayrıca hafif ve şık tasarımı da çok beğendim.', 1, '95.70.207.43', '2023-06-04 13:21:24'),
(23, '647c88f95781e', 'MSI-0002', 'TeknoMega', 'Bu laptop gerçekten kullanışlı. İnce ve hafif tasarımıyla her yere rahatlıkla taşıyabiliyorum. Performansı da beklediğimden daha iyi. Hem iş hem de eğlence için ideal', 1, '95.70.207.43', '2023-06-04 13:21:51'),
(24, '647c88f95781e', 'AP-iMac-M1', 'TeknoMega', 'Depolama alanı bu laptopda çok büyük. Tüm dosyalarımı, fotoğraflarımı ve videolarımı rahatlıkla saklayabiliyorum. Artık endişelenmeden tüm verilerimi güvenle depolayabiliyorum.', 1, '95.70.207.43', '2023-06-04 13:22:08'),
(25, '647c88f95781e', 'MN-Huma-V5.1.11', 'TeknoMega', 'Bu laptop gerçekten güçlü. İşlemcisi hızlı ve görevleri anında yerine getiriyor. Hem çalışırken hem de oyun oynarken hiçbir sorun yaşamıyorum. Performansı beni şaşırttı ve memnun etti.', 1, '95.70.207.43', '2023-06-04 13:22:25'),
(26, '647c892824536', 'lenovo-e14', 'TeknoPoint', 'Bu laptop gerçekten harika! İnanılmaz hızlı ve kullanımı çok kolay. Kesinlikle tavsiye ederim!', 1, '95.70.207.43', '2023-06-04 13:29:20'),
(27, '647c892824536', 'C-EX-004', 'TeknoPoint', 'Ekran kalitesi mükemmel, oyunlar hiç bu kadar gerçekçi olmamıştı. Performansıyla beni etkiledi!', 1, '95.70.207.43', '2023-06-04 13:29:36'),
(28, '647c892824536', 'AP-iMac-M1', 'TeknoPoint', 'Bu laptop iş hayatımı tamamen değiştirdi. Pil ömrü uzun, taşınabilirlik harika, verimlilik arttı!', 1, '95.70.207.43', '2023-06-04 13:29:53'),
(29, '647c892824536', 'HP-03', 'TeknoPoint', 'Tasarımıyla dikkat çekiyor, hafif olması seyahatlerde büyük avantaj sağlıyor. Tam bir şıklık abidesi!', 1, '95.70.207.43', '2023-06-04 13:30:15'),
(30, '647c892824536', 'MSI-0002', 'TeknoPoint', 'Bu laptopun depolama alanı gerçekten büyüleyici! Tüm dosyalarımı rahatlıkla saklayabiliyorum, çok memnunum.', 1, '95.70.207.43', '2023-06-04 13:30:28'),
(31, '647c892824536', 'MN-Huma-V5.1.11', 'TeknoPoint', 'Bu laptop gerçek bir canavar! Hızıyla göz kamaştırıyor, her türlü işi mükemmel bir şekilde hallediyor.', 1, '95.70.207.43', '2023-06-04 13:30:40'),
(32, '64512cc67753b', 'MSI-0003', 'Arel', 'ürün gayet iyi tavsiye ederim herkese', 1, '78.173.147.145', '2023-06-05 16:32:13');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Tablo için indeksler `adminlog`
--
ALTER TABLE `adminlog`
  ADD PRIMARY KEY (`alogid`);

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bankalar`
--
ALTER TABLE `bankalar`
  ADD PRIMARY KEY (`bankaid`);

--
-- Tablo için indeksler `bayiler`
--
ALTER TABLE `bayiler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bayilog`
--
ALTER TABLE `bayilog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bayi_adresler`
--
ALTER TABLE `bayi_adresler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `durumkodlari`
--
ALTER TABLE `durumkodlari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `havalebildirim`
--
ALTER TABLE `havalebildirim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sayfalar`
--
ALTER TABLE `sayfalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparis_urunler`
--
ALTER TABLE `siparis_urunler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_kategoriler`
--
ALTER TABLE `urun_kategoriler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_ozellikler`
--
ALTER TABLE `urun_ozellikler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_resimler`
--
ALTER TABLE `urun_resimler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_yorumlar`
--
ALTER TABLE `urun_yorumlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `adminlog`
--
ALTER TABLE `adminlog`
  MODIFY `alogid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `bankalar`
--
ALTER TABLE `bankalar`
  MODIFY `bankaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `bayiler`
--
ALTER TABLE `bayiler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `bayilog`
--
ALTER TABLE `bayilog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- Tablo için AUTO_INCREMENT değeri `bayi_adresler`
--
ALTER TABLE `bayi_adresler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `durumkodlari`
--
ALTER TABLE `durumkodlari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `havalebildirim`
--
ALTER TABLE `havalebildirim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `sayfalar`
--
ALTER TABLE `sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Tablo için AUTO_INCREMENT değeri `siparisler`
--
ALTER TABLE `siparisler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_urunler`
--
ALTER TABLE `siparis_urunler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Tablo için AUTO_INCREMENT değeri `urun_kategoriler`
--
ALTER TABLE `urun_kategoriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `urun_ozellikler`
--
ALTER TABLE `urun_ozellikler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Tablo için AUTO_INCREMENT değeri `urun_resimler`
--
ALTER TABLE `urun_resimler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- Tablo için AUTO_INCREMENT değeri `urun_yorumlar`
--
ALTER TABLE `urun_yorumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
