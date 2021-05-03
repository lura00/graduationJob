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

INSERT INTO product (name, description, price, img) VALUES ("Football boots", "Adidas boots that fits all genders. Size: 43.", 500.0, "https://images.sportsdirect.com/images/products/20301240_l.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Rollerskis", "Compact rollerskis from OneWay. Length: 70 cm.", 1499.0, "https://media.ekosport.fr/INTERSHOP/static/WFS/EKO-EU-Site/-/EKO/en_EU/Product/600/M00047735.png");
INSERT INTO product (name, description, price, img) VALUES ("Bicycle", "Fast racing bike from Jamis. Weight: 12 kg.", 4999.0, "https://www.jamisbikes.com/wp-content/uploads/2021/03/21_angle_f_renegadec1_navy_pearl2.png");
INSERT INTO product (name, description, price, img) VALUES ("Snowboard", "Great beginner board from Jones. Length: 170 cm.", 3999.0, "https://kitedanmark.b-cdn.net/media/catalog/product/cache/3/image/1000x1000/e4d92e6aceaad517e7b5c12e0dc06587/j/o/jones-aviator-snowboard-blue.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Football", "Offical FIFA football! Medium size.", 200.0, "https://i.stack.imgur.com/YFEar.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Basketball", "Great value basketball! Large size.", 399.0, "https://www.xxl.no/filespin/79c7ad4ad4e744fe90ab76321f6cc3db?resize=544,544&quality=90");
INSERT INTO product (name, description, price, img) VALUES ("Tennis racket", "Wilson racket for the pros! Weight: 300g.", 500.0, "https://media.newitts.com/cdn/images/products/new-design/800x800/it096094.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Running shoes", "All-terrain running shoes from Nike. Size: 45. ", 200.0, "https://images.sportsdirect.com/images/products/21306141_l.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Sneakers"," Addidas yeezyz 350 v2. size: 43.", 3500, "https://cdn.shopify.com/s/files/1/0255/9429/8467/products/adidas-originals-yeezy-boost-350-v2-core-blackred_3_1000x.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Glowing Basketball", "Holographic Glowing Reflective Basketball", 699 , "https://ae01.alicdn.com/kf/H9ea8cf8975964ae99f7b5ccf7d1d01c7I/Glowing-Reflective-Basketball-Soft-Professional-Luminous-Reflective-Night-Colorful-Basketball-School-Training-Ball-For-Boys.jpg_Q90.jpg_.webp");
INSERT INTO product (name, description, price, img) VALUES ("Skateboard", "skateboard for grown ups", 587 , "https://cdn.skatepro.com/product/440/chocolate-og-chunk-complete-skateboard-wf.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Electric skateboard ", "electric skateboard with remote", 2807, "https://images-na.ssl-images-amazon.com/images/I/71LDGC2vlAL._AC_SL1500_.jpg");
Insert INTO product (name, description, price, img) VALUES ("Exclusive Infinity Gaunlet", "only available for purchase if we get a A on this assagiment", 999999, "https://cdn.shopify.com/s/files/1/0068/2970/3227/products/brolinreplicagauntletinfinity_5_X_1024x1024@2x.jpg?v=1604080980");
Insert INTO product (name, description, price, img) VALUES ("Floorball club", "Floorball club sniper 30 120cm", 996, "https://cdn.skatepro.com/product/440/tempish-frontman-floorball-stick-k0.jpg" );
Insert INTO product (name, description, price, img) VALUES ("Golf Clubs", "20 Profile Pack SGI Men, Golf clubs Men" , 3799, "https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/64/2020/11/81KsGQi5EPL._AC_SL1500_-630x473.jpg");
Insert Into product (name, description, price, img) VALUES ("Badminton racket", "Senston Badminton Rackets 4 Pack Badminton Set Including 2 Badminton Bags", 651, "https://images-na.ssl-images-amazon.com/images/I/71Lubg--OqL._AC_SX425_.jpg");
Insert Into product (name, description, price, img) VALUES ("Ice skating shoes", "NS 20, skates senior, Regular", 569, "https://cdn.skatepro.com/product/440/roces-paradise-white-figure-skates.jpg");

Insert Into Product (name, description, price, img) VALUES ("Champoin Backpack", "Champoin LEGACY BACKPACK", 299, "https://i5.walmartimages.com/asr/30ac033a-a9cb-4cbf-959d-520184335ca2_1.8ef29c9293f2b41c5f68a59f9f97d757.jpeg?odnWidth=612&odnHeight=612&odnBg=ffffff");
Insert Into Product (name, description, price, img) VAlUES ("Tracksuit", "Addidas PROMO SUIT - Tracksuit", 350, "https://www.xxl.no/filespin/d79953ba53834d1ca16a62ee83a7b297");
Insert Into Product (name, description, price, img) VAlUES ("Print T-shirt", "adidas Performance - blue ", 167, "https://www.kids-world.com/images/SE599.jpg");
Insert Into Product (name, description, price, img) VAlUES ("Long sleeved top - white", "Hummel LEGACY - Long sleeved top - White", 200, "https://www.hummel.net/dw/image/v2/BDWL_PRD/on/demandware.static/-/Sites-hummel-master-catalog/default/dw8403bbed/images/packshot/212573-9001_2.png?sw=514&sh=685&sm=fit&q=80");
Insert Into Product (name, description, price, img) VAlUES ("Long sleeved top - black", "Hummel LEGACY - Long sleeved top - Black", 195, "https://www.hummel.net/dw/image/v2/BDWL_PRD/on/demandware.static/-/Sites-hummel-master-catalog/default/dw1c2f84b4/images/packshot/212571-2001_2.png?sw=514&sh=685&sm=fit&q=80");
Insert Into Product (name, description, price, img) VAlUES ("Training shorts", "Men's training shorts - black", 220, "https://images.sportsdirect.com/images/products/43700840_l.jpg" );
Insert Into Product (name, description, price, img) VAlUES ("Sweatshirt - black", "addidas Performance", 379, "https://cdn.shopify.com/s/files/1/0019/4877/8607/products/GC6915_FRONT_384x384.jpg?v=1616085780");
Insert Into Product (name, description, price, img) VAlUES ("Sports shorts", " Nike sport shorts - black", 255, "https://doyoueven.co.uk/wp-content/uploads/2017/05/sportswear-Boys-Nike-Shorts-Nike-SB-Black1-1-500x500.jpg" );
Insert Into Product (name, description, price, img) VAlUES ("YOGA MAT", "MAT EVERYDAY UNISEX - Fitness / Yoga", 630, "https://cdn.myshoptet.com/usr/www.loap.eu/user/shop/big/21518_loap-sanga-yoga-mat-purple-ks2050k15.jpg?5e4ffe2e" );
Insert Into Product (name, description, price, img) VAlUES ("Goalkeeping gloves", "Nike Performance - red/white/black", 640, "https://images.sportsdirect.com/images/products/83700444_3pl.jpg" );
Insert Into Product (name, description, price, img) VAlUES ("HEADBAND UNISEX" , "Under armor headband", 140, "https://www.big5sportinggoods.com/catalogimage/img/product/rwd/large/4930_10465_6990_015_large_02.jpg" );
Insert Into Product (name, description, price, img) VAlUES ("Drink bottle" , "Drink bottle - 2,2L", 60, "https://www.tri-sport.no/images/thumbs/0028449_stangi-bottle-transparant-one-size_625.jpeg");
Insert Into Product (name, description, price, img) VAlUES ("Tracksuit bottoms", "Champion CUFF PANTS - black", 263, "https://i.ebayimg.com/images/g/JzkAAOSwtYddIL7e/s-l300.jpg");
Insert Into Product (name, description, price, img) VAlUES ("Sports socks pack", "FILA - Sports socks . white", 130, "https://kickz.akamaized.net/no/media/images/p/1200/fila-Sport_Socks_3Pack-Classic-1.jpg");