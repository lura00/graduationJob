CREATE DATABASE IF NOT EXISTS webshop;
CREATE USER IF NOT EXISTS 'admin'@'localhost' IDENTIFIED BY '';
GRANT ALL ON webshop.* TO 'admin'@'localhost';
USE webshop;

CREATE TABLE IF NOT EXISTS product (
  productID int PRIMARY KEY auto_increment,
  name varchar(50) NOT NULL,
  short_desc varchar(100) NOT NULL,
  long_desc varchar(255) NOT NULL,
  price float,
  img varchar(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS adminLogin (
  userID int PRIMARY KEY auto_increment,
  username varchar(50) NOT NULL,
  pwd varchar(50) NOT NULL
);

DELETE FROM product;
DELETE FROM adminLogin;

INSERT INTO adminLogin (username, pwd) VALUES ("admin", "password");

INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Football boots", "Adidas boots that fits all genders. Size: 43.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 500.0, "football-boots.jpg");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Bicycle", "Fast racing bike from Jamis. Weight: 12 kg.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",  4999.0, "bicycle.png");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Snowboard", "Great beginner board from Jones. Length: 170 cm.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 3999.0, "snowboard.webp");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Football", "Offical FIFA football! Medium size.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 200.0, "football.jpg");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Basketball", "Great value basketball! Large size.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 399.0, "basketball.png");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Tennis racket", "Wilson racket for the pros! Weight: 300g.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 500.0, "tennis-racket.jpg");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Running shoes", "All-terrain running shoes from Nike. Size: 45. ", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 200.0, "running-shoes.jpg");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Sneakers"," Addidas yeezyz 350 v2. size: 43.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 3500, "sneakers.jpg");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Glowing Basketball", "Holographic Glowing Reflective Basketball", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 699, "glowing-basketball.webp");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Skateboard", "skateboard for grown ups", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 587, "skateboard.jpg");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Electric skateboard ", "electric skateboard with remote", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 2807, "el-skateboard.jpg");
Insert INTO product (name, short_desc, long_desc, price, img) VALUES ("Infinity Gaunlet", "Thanos' exclusive infinity gauntlet. Only available for purchase if we get a A on this assagiment", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 999999, "inf-gauntlet.jpg");
Insert INTO product (name, short_desc, long_desc, price, img) VALUES ("Floorball club", "Floorball club sniper 30 120cm", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 996, "floorball-club.jpg");
Insert INTO product (name, short_desc, long_desc, price, img) VALUES ("Golf Clubs", "20 Profile Pack SGI Men, Golf clubs Men", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 3799, "golf-clubs.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VALUES ("Badminton racket", "Senston Badminton Rackets 4 Pack Badminton Set Including 2 Badminton Bags", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 651, "badminton-racks.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VALUES ("Ice skating shoes", "NS 20, skates senior, Regular", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 569, "ice-skate-shoes.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VALUES ("Champoin Backpack", "Champoin LEGACY BACKPACK", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 299, "champ-backpack.jpeg");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Tracksuit", "Addidas PROMO SUIT - Tracksuit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 350, "tracksuit.png");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Print T-shirt", "adidas Performance - blue ", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 167, "tshirt.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Long sleeved top - white", "Hummel LEGACY - Long sleeved top - White", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 200, "sleeve-white.png");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Long sleeved top - black", "Hummel LEGACY - Long sleeved top - Black", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 195, "sleeve-black.png");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Training shorts", "Men's training shorts - black", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 220, "training-shorts.webp");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Hoodie - black", "addidas Performance", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 379, "hoodie.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Sports shorts", " Nike sport shorts - black", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 255, "sport-shorts.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("YOGA MAT", "MAT EVERYDAY UNISEX - Fitness / Yoga", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 630, "yoga-mat.jpg" );
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Goalkeeping gloves", "Nike Performance - red/white/black", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 640, "gloves.webp");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("HEADBAND UNISEX" , "Under armor headband", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 140, "headband.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Drink bottle" , "Drink bottle - 2,2L", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 60, "bottle.jpeg");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Tracksuit bottoms", "Champion CUFF PANTS - black", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 263, "tracksuit-bottom.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Sports socks pack", "FILA - Sports socks . white", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 130, "socks.jpg");