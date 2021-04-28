CREATE DATABASE webshop;
USE webshop;

CREATE TABLE product (
  productID int PRIMARY KEY auto_increment,
  name varchar(50) NOT NULL,
  description varchar(100) NOT NULL,
  price float,
  img varchar(255) NOT NULL
);

INSERT INTO product (name, description, price, img) VALUES ("Fotballsko", "Fotballsko, str: 43", 500.0, "https://www.xxl.no/filespin/d7c77d6edd624184a6cda87ac4e009c2?resize=317,317&quality=90&bgcolor=efefef");
INSERT INTO product (name, description, price, img) VALUES ("Langrennski", "Klassisk ski, lenge: 180 cm.", 1499.0, "https://www.xxl.no/filespin/b818f099ee1846e98390c0a0b79c0d7c?resize=317,317&quality=90&bgcolor=efefef");
INSERT INTO product (name, description, price, img) VALUES ("Sykkel", "Allsidig terreng sykkel! Vekt: 12 kg.", 4999.0, "https://www.xxl.no/filespin/9a48a941918d4aad82e1b1c2f2aff982?resize=544,544&quality=90");
INSERT INTO product (name, description, price, img) VALUES ("Snowboard", "Passer til barn/junior.", 3999.0, "https://kitedanmark.b-cdn.net/media/catalog/product/cache/3/image/1000x1000/e4d92e6aceaad517e7b5c12e0dc06587/j/o/jones-aviator-snowboard-blue.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Fotball", "Meget solid ball som passer med fotballsko.", 200.0, "https://honeyoak.no/butikk/wp-content/uploads/2020/01/Fotball-Servietter.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Basketball", "God sprett.", 399.0, "https://www.xxl.no/filespin/79c7ad4ad4e744fe90ab76321f6cc3db?resize=544,544&quality=90");