/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : sistemaifnmg

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2018-11-21 15:39:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aluno
-- ----------------------------
DROP TABLE IF EXISTS `aluno`;
CREATE TABLE `aluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `matricula` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `turma` int(11) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `telefoneResponsaveis` varchar(255) NOT NULL,
  `telefonePessoal` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Aluno_has_Turma_Turma1_idx` (`turma`) USING BTREE,
  CONSTRAINT `fk_Aluno_has_Turma_Turma1` FOREIGN KEY (`turma`) REFERENCES `turma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ocorrencia
-- ----------------------------
DROP TABLE IF EXISTS `ocorrencia`;
CREATE TABLE `ocorrencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ocorrenciaAluno
-- ----------------------------
DROP TABLE IF EXISTS `ocorrenciaAluno`;
CREATE TABLE `ocorrenciaAluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ocorrenciafk` int(11) NOT NULL,
  `alunofk` int(11) NOT NULL,
  `confirmacao` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Ocorrencia_has_Aluno_Ocorrencia1_idx` (`ocorrenciafk`) USING BTREE,
  KEY `fk_Ocorrencia_has_Aluno_Aluno1_idx` (`alunofk`) USING BTREE,
  CONSTRAINT `fk_Ocorrencia_has_Aluno_Aluno1` FOREIGN KEY (`alunofk`) REFERENCES `aluno` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ocorrencia_has_Aluno_Ocorrencia1` FOREIGN KEY (`ocorrenciafk`) REFERENCES `ocorrencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for prova
-- ----------------------------
DROP TABLE IF EXISTS `prova`;
CREATE TABLE `prova` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disciplina` varchar(255) NOT NULL,
  `tema` varchar(255) DEFAULT NULL,
  `turmafk` int(11) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Prova_has_Turma_Turma1_idx` (`turmafk`) USING BTREE,
  CONSTRAINT `fk_Prova_has_Turma_Turma1` FOREIGN KEY (`turmafk`) REFERENCES `turma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for reuniao
-- ----------------------------
DROP TABLE IF EXISTS `reuniao`;
CREATE TABLE `reuniao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for reuniaoservidor
-- ----------------------------
DROP TABLE IF EXISTS `reuniaoservidor`;
CREATE TABLE `reuniaoservidor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reuniaofk` int(11) DEFAULT NULL,
  `servidorfk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Reuniao_has_Servidor_Reuniao1_idx` (`reuniaofk`) USING BTREE,
  KEY `fk_Reuniao_has_Servidor_Servidor1_idx` (`servidorfk`) USING BTREE,
  CONSTRAINT `fk_Reuniao_has_Servidor_Reuniao1` FOREIGN KEY (`reuniaofk`) REFERENCES `reuniao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reuniao_has_Servidor_Servidor1` FOREIGN KEY (`servidorfk`) REFERENCES `servidor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for servidor
-- ----------------------------
DROP TABLE IF EXISTS `servidor`;
CREATE TABLE `servidor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sobrenome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` tinyint(1) DEFAULT NULL,
  `matricula` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for turma
-- ----------------------------
DROP TABLE IF EXISTS `turma`;
CREATE TABLE `turma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `ano` varchar(255) NOT NULL,
  `modalidade` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
