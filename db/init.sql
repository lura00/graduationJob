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

INSERT INTO product (name, description, price, img) VALUES ("Football boots", "Adidas boots that fits all genders. Size: 43.", 500.0, "football-boots.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Bicycle", "Fast racing bike from Jamis. Weight: 12 kg.", 4999.0, "bicycle.png");
INSERT INTO product (name, description, price, img) VALUES ("Snowboard", "Great beginner board from Jones. Length: 170 cm.", 3999.0, "snowboard.webp");
INSERT INTO product (name, description, price, img) VALUES ("Football", "Offical FIFA football! Medium size.", 200.0, "football.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Basketball", "Great value basketball! Large size.", 399.0, "basketball.png");
INSERT INTO product (name, description, price, img) VALUES ("Tennis racket", "Wilson racket for the pros! Weight: 300g.", 500.0, "tennis-racket.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Running shoes", "All-terrain running shoes from Nike. Size: 45. ", 200.0, "running-shoes.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Sneakers"," Addidas yeezyz 350 v2. size: 43.", 3500, "sneakers.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Glowing Basketball", "Holographic Glowing Reflective Basketball", 699 , "glowing-basketball.webp");
INSERT INTO product (name, description, price, img) VALUES ("Skateboard", "skateboard for grown ups", 587 , "skateboard.jpg");
INSERT INTO product (name, description, price, img) VALUES ("Electric skateboard ", "electric skateboard with remote", 2807, "el-skateboard.jpg");
Insert INTO product (name, description, price, img) VALUES ("Infinity Gaunlet", "Thanos' exclusive infinity gauntlet. Only available for purchase if we get a A on this assagiment", 999999, "inf-gauntlet.jpg");
Insert INTO product (name, description, price, img) VALUES ("Floorball club", "Floorball club sniper 30 120cm", 996, "floorball-club.jpg");
Insert INTO product (name, description, price, img) VALUES ("Golf Clubs", "20 Profile Pack SGI Men, Golf clubs Men" , 3799, "golf-clubs.jpg");
Insert Into product (name, description, price, img) VALUES ("Badminton racket", "Senston Badminton Rackets 4 Pack Badminton Set Including 2 Badminton Bags", 651, "badminton-racks.jpg");
Insert Into product (name, description, price, img) VALUES ("Ice skating shoes", "NS 20, skates senior, Regular", 569, "ice-skate-shoes.jpg");
Insert Into product (name, description, price, img) VALUES ("Champoin Backpack", "Champoin LEGACY BACKPACK", 299, "champ-backpack.jpeg");
Insert Into product (name, description, price, img) VAlUES ("Tracksuit", "Addidas PROMO SUIT - Tracksuit", 350, "tracksuit.png");
Insert Into product (name, description, price, img) VAlUES ("Print T-shirt", "adidas Performance - blue ", 167, "tshirt.jpg");
Insert Into product (name, description, price, img) VAlUES ("Long sleeved top - white", "Hummel LEGACY - Long sleeved top - White", 200, "sleeve-white.png");
Insert Into product (name, description, price, img) VAlUES ("Long sleeved top - black", "Hummel LEGACY - Long sleeved top - Black", 195, "sleeve-black.png");
Insert Into product (name, description, price, img) VAlUES ("Training shorts", "Men's training shorts - black", 220, "training-shorts.webp");
Insert Into product (name, description, price, img) VAlUES ("Hoodie - black", "addidas Performance", 379, "hoodie.jpg");
Insert Into product (name, description, price, img) VAlUES ("Sports shorts", " Nike sport shorts - black", 255, "sport-shorts.jpg");
Insert Into product (name, description, price, img) VAlUES ("YOGA MAT", "MAT EVERYDAY UNISEX - Fitness / Yoga", 630, "yoga-mat.jpg" );
Insert Into product (name, description, price, img) VAlUES ("Goalkeeping gloves", "Nike Performance - red/white/black", 640, "gloves.webp");
Insert Into product (name, description, price, img) VAlUES ("HEADBAND UNISEX" , "Under armor headband", 140, "headband.jpg");
Insert Into product (name, description, price, img) VAlUES ("Drink bottle" , "Drink bottle - 2,2L", 60, "bottle.jpeg");
Insert Into product (name, description, price, img) VAlUES ("Tracksuit bottoms", "Champion CUFF PANTS - black", 263, "tracksuit-bottom.jpg");
Insert Into product (name, description, price, img) VAlUES ("Sports socks pack", "FILA - Sports socks . white", 130, "socks.jpg");