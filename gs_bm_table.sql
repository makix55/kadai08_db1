-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql3104.db.sakura.ne.jp
-- 生成日時: 2025 年 1 月 14 日 15:56
-- サーバのバージョン： 8.0.40
-- PHP のバージョン: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs-us803mk_php02`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `station` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `tel` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `fax` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `teacher` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `schedule` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `soroteacher` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(535) COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `code`, `address`, `station`, `email`, `tel`, `fax`, `teacher`, `schedule`, `soroteacher`, `content`, `date`) VALUES
(2, '北区立船堀小学校', '114', '東京都北区堀船2-11-9', 'JR京浜東北線王子駅', 'test01@gmail.com', '03-3902-1234', '03-3902-9876', 'テスト➀', '0', '0', '0', '2024-12-20 11:24:56.000000'),
(3, '北区立堀船小学校', '114', '東京都北区堀船2-11-9', 'JR京浜東北線王子駅', 'test01@gmail.com', '03-3902-1234', '03-3902-9876', 'テスト➀', '0', '0', '0', '2024-12-20 11:26:16.000000'),
(4, '北区立堀船小学校', '114-0004', '東京都北区堀船2-11-9', 'JR京浜東北線王子駅', 'test01@gmail.com', '03-3902-1234', '03-3902-9876', 'テスト➀', '0', '0', '0', '2024-12-20 11:43:55.000000'),
(5, '北区立堀船小学校', '114-0004', '東京都北区堀船2-11-9', 'JR京浜東北線王子駅', 'test01@gmail.com', '03-3902-1234', '03-3902-9876', 'テスト②', '12月中,オンライン授業可', '谷先生希望', '特になし', '2024-12-20 11:47:41.000000'),
(6, '世田谷区立大原小学校', '111-1111', '世田谷区大原1-2-3', '代田橋駅', 'test100@gmail.com', '03-1111-1111', '03-1111-1112', 'チャッピー', '12月中,３月中', '特になし', '特になし', '2025-01-07 23:38:09.000000'),
(7, '板橋区立若木小学校', '177-0041', '板橋区若木2-11-10', '東武東上線 上板橋駅', 'testtest11@yahoo.co.jp', '03-2525-2525', '03-8290-8290', '樋口', '１月中,２月中,オンライン授業可', '村田先生', '打合せ早めを希望', '2025-01-07 23:41:47.000000'),
(8, 'test10', 'test10', 'test10', 'test10', 'test10@gmail.com', '0120-444-444', '0120-444-444', '鈴木', '12月中,オンライン授業可', '特になし', '特になし', '2025-01-08 10:24:09.000000'),
(9, 'テスト0113', '111-1111', '板橋区若木', '東武東上線 東武練馬駅', 'test0113@gmail.com', '0120-123-456', '03-1234-5678', 'テスト', '１月中,３月中', '菅野先生', '早めに日程調整がしたいです。', '2025-01-13 20:35:34.000000'),
(10, 'test114', 'test114', 'test114', 'test114', 'test114@gmail.com', 'test114', 'test114', 'test114', '12月中,１月中', 'test114', 'test114', '2025-01-14 15:20:46.000000');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
