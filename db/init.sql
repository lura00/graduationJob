CREATE DATABASE webshop;
CREATE USER 'sondre'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL ON webshop.* TO 'sondre'@'localhost';
USE webshop;

CREATE TABLE product (
  productID int PRIMARY KEY auto_increment,
  name varchar(50) NOT NULL,
  description varchar(100) NOT NULL,
  price float,
  img varchar(50) NOT NULL
);

INSERT INTO product (name, description, price, img) VALUES ("Test 1", "description", 100.0, "");
INSERT INTO product (name, description, price, img) VALUES ("Test 2", "description", 200.0, "");
INSERT INTO product (name, description, price, img) VALUES ("Test 2", "description", 300.0, "");
