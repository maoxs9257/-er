/*创建叮咚的数据库*/
SET NAMES UTF8;
DROP DATABASE IF EXISTS ddo;
CREATE DATABASE ddo CHARSET=UTF8;
USE ddo;
/*创建叮咚登录数据库*/
CREATE TABLE dd_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32)
);
/*插入两条测试数据*/
INSERT INTO dd_login VALUES(null,'tom1',md5('123456'));
INSERT INTO dd_login VALUES(null,'jerry',md5('123456'));