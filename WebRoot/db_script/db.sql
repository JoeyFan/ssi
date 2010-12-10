-- phpMyAdmin SQL Dump
-- version 2.8.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jan 22, 2007 at 11:04 AM
-- Server version: 5.0.21
-- PHP Version: 5.1.4
-- 
-- Database: `ibatis`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `t_user`
-- 

CREATE TABLE `t_user` (
  `ID` int(11) NOT NULL auto_increment,
  `USERNAME` varchar(40) collate utf8_bin NOT NULL,
  `ADDRESS` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `t_user`
-- 

INSERT INTO `t_user` VALUES (1, 0x70616e676c6569, 0x6265696a696e67);

CREATE TABLE `dept` (
  `deptId` int(11) NOT NULL,
  `deptName` varchar(50) NOT NULL,
  PRIMARY KEY  (`deptId`)
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

CREATE TABLE `staff` (
  `staffId` int(11) NOT NULL,
  `deptId` int(11) default NULL,
  `staffName` varchar(10) NOT NULL,
  `cardID` varchar(18) default NULL,
  PRIMARY KEY  (`staffId`),
  KEY `FK_Reference_1` (`deptId`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`deptId`) REFERENCES `dept` (`deptId`)
) ENGINE=InnoDB DEFAULT CHARSET=GBK;
