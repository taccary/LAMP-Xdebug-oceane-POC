
DROP DATABASE IF EXISTS `oceane`;
CREATE DATABASE IF NOT EXISTS `oceane`
CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE USER 'oceane-web'@'%' IDENTIFIED BY 'oceane-intra';

GRANT ALL ON oceane.* TO 'oceane-web'@'%' ;

USE `oceane`;