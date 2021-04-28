CREATE DATABASE webshop;
USE webshop;

CREATE TABLE product (
  productID int PRIMARY KEY auto_increment,
  name varchar(50) NOT NULL,
  description varchar(100) NOT NULL,
  price float,
  img varchar(255) NOT NULL
);

INSERT INTO product (name, description, price, img) VALUES ("Test 1", "description", 100.0, "https://www.xxl.no/filespin/d7c77d6edd624184a6cda87ac4e009c2?resize=317,317&quality=90&bgcolor=efefef");
INSERT INTO product (name, description, price, img) VALUES ("Test 2", "description", 200.0, "https://www.xxl.no/filespin/d7c77d6edd624184a6cda87ac4e009c2?resize=317,317&quality=90&bgcolor=efefef");
INSERT INTO product (name, description, price, img) VALUES ("Test 2", "description", 300.0, "https://www.xxl.no/filespin/d7c77d6edd624184a6cda87ac4e009c2?resize=317,317&quality=90&bgcolor=efefef");