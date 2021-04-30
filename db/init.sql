CREATE DATABASE webshop;
USE webshop;

CREATE TABLE product (
  productID int PRIMARY KEY auto_increment,
  name varchar(50) NOT NULL,
  description varchar(100) NOT NULL,
  price float,
  img varchar(255) NOT NULL
);

INSERT INTO product (name, description, price, img) VALUES ("Football boots", "Adidas boots that fits all genders. Size: 43.", 500.0, "https://www.xxl.no/filespin/d7c77d6edd624184a6cda87ac4e009c2?resize=317,317&quality=90&bgcolor=efefef");
INSERT INTO product (name, description, price, img) VALUES ("Rollerskis", "Compact rollerskis from OneWay. Length: 70 cm.", 1499.0, "https://media.ekosport.fr/INTERSHOP/static/WFS/EKO-EU-Site/-/EKO/en_EU/Product/600/M00047735.png");
INSERT INTO product (name, description, price, img) VALUES ("Bicycle", "Fast racing bike from Jamis. Weight: 12 kg.", 4999.0, "https://www.jamisbikes.com/wp-content/uploads/2021/03/21_angle_f_renegadec1_navy_pearl2.png");
INSERT INTO product (name, description, price, img) VALUES ("Snowboard", "Great beginner board from Jones. Length: 170 cm.", 3999.0, "https://kitedanmark.b-cdn.net/media/catalog/product/cache/3/image/1000x1000/e4d92e6aceaad517e7b5c12e0dc06587/j/o/jones-aviator-snowboard-blue.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Football", "Offical FIFA football! Medium size.", 200.0, "https://i.stack.imgur.com/YFEar.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Basketball", "Great value basketball! Large size.", 399.0, "https://www.xxl.no/filespin/79c7ad4ad4e744fe90ab76321f6cc3db?resize=544,544&quality=90");
INSERT INTO product (name, description, price, img) VALUES ("Tennis racket", "Wilson racket for the pros! Weight: 300g.", 500.0, "https://media.newitts.com/cdn/images/products/new-design/800x800/it096094.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Running shoes", "All-terrain running shoes from Nike. Size: 45. ", 200.0, "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/daa4dd90-8d97-42e2-bdce-547d5e856891/air-zoom-tempo-next-flyease-running-shoe-z8JMBS.png");
