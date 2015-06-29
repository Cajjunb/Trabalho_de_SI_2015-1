-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2015 at 01:26 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trabalhosi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_usuario`
--

CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `perfilUsuario` varchar(20) NOT NULL,
  `loginUsuario` varchar(200) NOT NULL,
  `senhaUsuario` varchar(200) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_usuario`
--

INSERT INTO `tb_usuario` (`idUsuario`, `perfilUsuario`, `loginUsuario`, `senhaUsuario`) VALUES
(1, 'oi', 'bezerra', 'e10adc3949ba59abbe56e057f20f883e');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
