-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-12-20 04:00:17
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db_class`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `address` varchar(128) NOT NULL,
  `station` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `tel` varchar(64) NOT NULL,
  `fax` varchar(64) NOT NULL,
  `teacher` varchar(128) NOT NULL,
  `schedule` varchar(128) NOT NULL,
  `soroteacher` varchar(128) NOT NULL,
  `content` varchar(535) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `code`, `address`, `station`, `email`, `tel`, `fax`, `teacher`, `schedule`, `soroteacher`, `content`, `date`) VALUES
(2, '北区立船堀小学校', '114', '東京都北区堀船2-11-9', 'JR京浜東北線王子駅', 'test01@gmail.com', '03-3902-1234', '03-3902-9876', 'テスト➀', '0', '0', '0', '2024-12-20 11:24:56.000000'),
(3, '北区立堀船小学校', '114', '東京都北区堀船2-11-9', 'JR京浜東北線王子駅', 'test01@gmail.com', '03-3902-1234', '03-3902-9876', 'テスト➀', '0', '0', '0', '2024-12-20 11:26:16.000000'),
(4, '北区立堀船小学校', '114-0004', '東京都北区堀船2-11-9', 'JR京浜東北線王子駅', 'test01@gmail.com', '03-3902-1234', '03-3902-9876', 'テスト➀', '0', '0', '0', '2024-12-20 11:43:55.000000'),
(5, '北区立堀船小学校', '114-0004', '東京都北区堀船2-11-9', 'JR京浜東北線王子駅', 'test01@gmail.com', '03-3902-1234', '03-3902-9876', 'テスト②', '12月中,オンライン授業可', '谷先生希望', '特になし', '2024-12-20 11:47:41.000000');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
