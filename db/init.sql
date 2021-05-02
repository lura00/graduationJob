CREATE DATABASE IF NOT EXISTS webshop;
CREATE USER IF NOT EXISTS 'admin'@'localhost' IDENTIFIED BY '';
GRANT ALL ON webshop.* TO 'admin'@'localhost';
USE webshop;

CREATE TABLE IF NOT EXISTS product (
  productID int PRIMARY KEY auto_increment,
  name varchar(50) NOT NULL,
  description varchar(100) NOT NULL,
  price float,
  img varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS adminLogin (
  userID int PRIMARY KEY auto_increment,
  username varchar(50) NOT NULL,
  pwd varchar(50) NOT NULL
);

DELETE FROM product;
DELETE FROM adminLogin;

INSERT INTO adminLogin (username, pwd) VALUES ("admin", "password");

INSERT INTO product (name, description, price, img) VALUES ("Football boots", "Adidas boots that fits all genders. Size: 43.", 500.0, "https://www.xxl.no/filespin/d7c77d6edd624184a6cda87ac4e009c2?resize=317,317&quality=90&bgcolor=efefef");
INSERT INTO product (name, description, price, img) VALUES ("Rollerskis", "Compact rollerskis from OneWay. Length: 70 cm.", 1499.0, "https://media.ekosport.fr/INTERSHOP/static/WFS/EKO-EU-Site/-/EKO/en_EU/Product/600/M00047735.png");
INSERT INTO product (name, description, price, img) VALUES ("Bicycle", "Fast racing bike from Jamis. Weight: 12 kg.", 4999.0, "https://www.jamisbikes.com/wp-content/uploads/2021/03/21_angle_f_renegadec1_navy_pearl2.png");
INSERT INTO product (name, description, price, img) VALUES ("Snowboard", "Great beginner board from Jones. Length: 170 cm.", 3999.0, "https://kitedanmark.b-cdn.net/media/catalog/product/cache/3/image/1000x1000/e4d92e6aceaad517e7b5c12e0dc06587/j/o/jones-aviator-snowboard-blue.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Football", "Offical FIFA football! Medium size.", 200.0, "https://i.stack.imgur.com/YFEar.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Basketball", "Great value basketball! Large size.", 399.0, "https://www.xxl.no/filespin/79c7ad4ad4e744fe90ab76321f6cc3db?resize=544,544&quality=90");
INSERT INTO product (name, description, price, img) VALUES ("Tennis racket", "Wilson racket for the pros! Weight: 300g.", 500.0, "https://media.newitts.com/cdn/images/products/new-design/800x800/it096094.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Running shoes", "All-terrain running shoes from Nike. Size: 45. ", 200.0, "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/daa4dd90-8d97-42e2-bdce-547d5e856891/air-zoom-tempo-next-flyease-running-shoe-z8JMBS.png");
INSERT INTO product (name, description, price, img) VALUES ("Sneakers"," Addidas yeezyz 350 v2. size: 43.", 3500, "https://cdn.shopify.com/s/files/1/0255/9429/8467/products/adidas-originals-yeezy-boost-350-v2-core-blackred_3_1000x.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Glowing Basketball", "Holographic Glowing Reflective Basketball", 699 , "https://ae01.alicdn.com/kf/H9ea8cf8975964ae99f7b5ccf7d1d01c7I/Glowing-Reflective-Basketball-Soft-Professional-Luminous-Reflective-Night-Colorful-Basketball-School-Training-Ball-For-Boys.jpg_Q90.jpg_.webp");
INSERT INTO product (name, description, price, img) VALUES ("Skateboard", "skateboard for grown ups", 587 , "https://cdn.skatepro.com/product/440/chocolate-og-chunk-complete-skateboard-wf.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Electric skateboard ", "electric skateboard with remote", 2807, "https://images-na.ssl-images-amazon.com/images/I/71LDGC2vlAL._AC_SL1500_.jpg");
Insert INTO product (name, description, price, img) VALUES ("Exclusive Infinity Gaunlet", "only available for purchase if we get a A on this assagiment", 999999, "https://cdn.shopify.com/s/files/1/0068/2970/3227/products/brolinreplicagauntletinfinity_5_X_1024x1024@2x.jpg?v=1604080980");
Insert INTO product (name, description, price, img) VALUES ("Floorball club", "Floorball club sniper 30 120cm", 996, "https://cdn.skatepro.com/product/440/tempish-frontman-floorball-stick-k0.jpg" );
Insert INTO product (name, description, price, img) VALUES ("Golf Clubs", "20 Profile Pack SGI Men, Golf clubs Men" , 3799, "https://www.xxl.no/filespin/89f3ba17d747413bad4061ce4a462608?resize=544,544&quality=90&bgcolor=efefef");
Insert Into product (name, description, price, img) VALUES ("Badminton racket", "Senston Badminton Rackets 4 Pack Badminton Set Including 2 Badminton Bags", 651, "https://images-na.ssl-images-amazon.com/images/I/71Lubg--OqL._AC_SX425_.jpg");
Insert Into product (name, description, price, img) VALUES ("Ice skating shoes", "NS 20, skates senior, Regular", 569, "https://cdn.skatepro.com/product/440/roces-paradise-white-figure-skates.jpg");
