SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE IF NOT EXISTS `KOTH`;
USE `KOTH`;


CREATE TABLE IF NOT EXISTS `users` (
  `uid` varchar(50) DEFAULT NULL,
  `data` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`user`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;