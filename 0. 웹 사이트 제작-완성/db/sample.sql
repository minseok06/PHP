-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 23-11-20 03:22
-- 서버 버전: 10.4.27-MariaDB
-- PHP 버전: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `sample`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `_mem`
--

CREATE TABLE `_mem` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `pass` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `email` char(80) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `_mem`
--

INSERT INTO `_mem` (`num`, `id`, `pass`, `name`, `email`, `regist_day`, `level`, `point`) VALUES
(1, 'a', 'a', 'a', 'a', '2023-11-17 (01:29)', 9, 100);

-- --------------------------------------------------------

--
-- 테이블 구조 `_notice`
--

CREATE TABLE `_notice` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text DEFAULT NULL,
  `is_html` char(1) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `_notice`
--

INSERT INTO `_notice` (`num`, `id`, `name`, `subject`, `content`, `is_html`, `regist_day`, `file_name`, `file_type`, `file_copied`) VALUES
(1, 'a', 'a', 'ê°€ì—°ì•„ ìƒì¼ ì¶•í•˜í•´ 1120', 'ë§›ìžˆëŠ”ê±° ë§Žì´ ë¨¹ê³  í–‰ë³µí•œ í•˜ë£¨ ë³´ëƒˆìœ¼ë©´ ì¢‹ê² ë‹¤', '', '2023-11-17 (01:50)', '', '', ''),
(2, 'a', 'a', 'ë¯¼ì„ì•„ ë„ˆëŠ” í•  ìˆ˜ ìžˆì–´', 'í¬ê¸°í•˜ì§€ë§ˆ ëª¨í‰ì´ë§Œ ëŒë©´ í¬ë§ì´ ê¸°ë‹¤ë ¤', '', '2023-11-17 (01:41)', 'í¬ë§ì´ë‹¤.txt', 'text/plain', '2023_11_17_01_41_08.txt'),
(3, 'a', 'a', 'ë‚˜ë„ ì–¸ì  ê°„ ì´ë£° ê±°ì•¼', 'ê·¸ë•Œê¹Œì§€ í¬ê¸°í•˜ì§€ë§ê³  ì—´ì‹¬ížˆ ì‚´ìž', '', '2023-11-17 (01:47)', '', '', ''),
(4, 'a', 'a', 'ì˜¤ëŠ˜ì€ ê°€ì—°ì´ ìƒì¼', 'ê°€ì—°ì•„ ìƒì¼ ì¶•í•˜í•´', '', '2023-11-20 (03:16)', 'ìƒì¼ ì¶•í•˜í•´.png', 'image/png', '2023_11_20_03_16_08.png');

-- --------------------------------------------------------

--
-- 테이블 구조 `_qna`
--

CREATE TABLE `_qna` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text DEFAULT NULL,
  `is_html` char(1) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `_qna`
--

INSERT INTO `_qna` (`num`, `id`, `name`, `subject`, `content`, `is_html`, `regist_day`, `file_name`, `file_type`, `file_copied`) VALUES
(1, 'a', 'a', 'ë„ë¼ì—ëª½ì´ ë‚  ì§€ì¼œì¤¬ìœ¼ë‹ˆê¹Œ ì´ì œëŠ” ë‚´ê°€ ì§€ì¼œì¤˜ì•¼í•´', 'ë„ë¼ì—ëª½ ê³ ë§ˆì›Œ', '', '2023-11-17 (02:13)', '', '', ''),
(2, 'a', 'a', 'ë„ˆì˜ ë³´ì„ì„ ì°¾ì•„ì„œ ë°˜ì§í•˜ê²Œ ë¹›ë‚´ì¤˜', 'ë„ˆëŠ” í•  ìˆ˜ ìžˆì–´', '', '2023-11-17 (02:14)', '', '', ''),
(3, 'a', 'a', 'ìž‘ì€ ì¼ìƒì˜ ê²½í—˜ì—ì„œ ì–»ëŠ” í–‰ë³µì˜ ê°€ì¹˜', 'ìŠ¤íƒ€í•„ë“œ ì‹œí‹°', '', '2023-11-17 (02:16)', '', '', ''),
(4, 'a', 'a', 'í‰ìƒ ê¸°ì–µì— ë‚¨ì„ ì œì£¼ë„ ìˆ˜í•™ì—¬í–‰', 'ë„ˆë¬´ ìž¬ë¯¸ìžˆì—ˆë‹¤', '', '2023-11-20 (03:17)', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `_qna_ripple`
--

CREATE TABLE `_qna_ripple` (
  `num` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `_qna_ripple`
--

INSERT INTO `_qna_ripple` (`num`, `parent`, `id`, `name`, `content`, `regist_day`) VALUES
(3, 3, 'a', 'a', 'ì´ì•¼ ë©‹ì§€ë‹¤\r\n', '2023-11-17 (02:18)'),
(4, 2, 'a', 'a', 'ê·¸ëž˜ ë‚˜ëŠ” í•  ìˆ˜ ìžˆì–´', '2023-11-17 (02:18)'),
(5, 1, 'a', 'a', 'ì§„êµ¬ëŠ” ì°¸ ëŒ€ë‹¨í•´', '2023-11-17 (02:19)'),
(6, 4, 'a', 'a', 'ìž¬ë¯¸ìžˆëŠ” ë§Œí¼ ê°€ì¡±ì´ëž‘ë„ ê°€ê³  ì—¬ìžì¹œêµ¬ëž‘ë„ ê°€ê³  ì¹œêµ¬ë“¤ê³¼ë„ ë˜ ê°€ê³  íšŒì‚¬ì—ì„œë„ ê°€ê³  ê·¸ëž˜ì•¼ê² ë‹¤\r\n', '2023-11-20 (03:18)');

-- --------------------------------------------------------

--
-- 테이블 구조 `_youtube`
--

CREATE TABLE `_youtube` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text DEFAULT NULL,
  `is_html` char(1) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `_youtube`
--

INSERT INTO `_youtube` (`num`, `id`, `name`, `subject`, `content`, `is_html`, `regist_day`, `file_name`, `file_type`, `file_copied`) VALUES
(1, 'a', 'a', 'ì œì£¼ë„ ìˆ˜í•™ì—¬í–‰', '&lt;iframe width=&quot;424&quot; height=&quot;238&quot; src=&quot;https://www.youtube.com/embed/a6gNsFYDhZQ&quot; title=&quot;ì§§ì§€ë§Œ ê¸¸ì—ˆë˜ ì œì£¼ë„ 1ì¼ì°¨&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share&quot; allowfullscreen&gt;&lt;/iframe&gt;', '', '2023-11-20 (03:09)', 'ì¸ë„¤ì¼.png', 'image/png', '2023_11_20_03_09_43.png');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `_mem`
--
ALTER TABLE `_mem`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `_notice`
--
ALTER TABLE `_notice`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `_qna`
--
ALTER TABLE `_qna`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `_qna_ripple`
--
ALTER TABLE `_qna_ripple`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `_youtube`
--
ALTER TABLE `_youtube`
  ADD PRIMARY KEY (`num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `_mem`
--
ALTER TABLE `_mem`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `_notice`
--
ALTER TABLE `_notice`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 테이블의 AUTO_INCREMENT `_qna`
--
ALTER TABLE `_qna`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 테이블의 AUTO_INCREMENT `_qna_ripple`
--
ALTER TABLE `_qna_ripple`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 테이블의 AUTO_INCREMENT `_youtube`
--
ALTER TABLE `_youtube`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
