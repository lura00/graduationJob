CREATE DATABASE test;
CREATE USER 'sondre'@'localhost' IDENTIFIED BY '';
GRANT ALL ON test.* TO 'sondre'@'localhost';
USE test;

CREATE TABLE vare (
  id int PRIMARY KEY,
  navn varchar(50) NOT NULL
)
