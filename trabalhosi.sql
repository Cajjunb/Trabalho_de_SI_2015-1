-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2015 at 01:43 AM
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
-- Table structure for table `ta_questao`
--

CREATE TABLE IF NOT EXISTS `ta_questao` (
  `idQuestao` int(11) NOT NULL,
  `enunciadoQuestao` varchar(500) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `linkQuestao` varchar(500) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_questionario`
--

CREATE TABLE IF NOT EXISTS `tb_questionario` (
  `idQuestionario` int(11) NOT NULL AUTO_INCREMENT,
  `nomeQuestionario` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `DescricaoQuestionario` text CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `fotoQuestionario` varchar(500) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`idQuestionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_respostas`
--

CREATE TABLE IF NOT EXISTS `tb_respostas` (
  `idResposta` int(11) NOT NULL AUTO_INCREMENT,
  `conteudoResposta` varchar(500) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '0',
  `fkQuestao` int(11) NOT NULL,
  PRIMARY KEY (`idResposta`),
  KEY `fkQuestao` (`fkQuestao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_usuario`
--

CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `perfilUsuario` varchar(20) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `loginUsuario` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `senhaUsuario` varchar(200) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
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
