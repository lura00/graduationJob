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

INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Football boots", "adidas Performance, color: black/action white, size: 42", "X GHOSTED 4.0 FOOTBALL BOOTS FIRM GROUND (2016)"  , 500.0, "football-boots.jpg");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Bicycle", " weight 12 kg, color: black/blue, slim edition ", "Fast racing bike from Jamis. Includes 16 gears for optimal speed ",  4999.0, "bicycle.png");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Snowboard", " Length: 170 cm - unisex editon.", "JONES TEAM 170 2021 SNOWBOARD", 3999.0, "snowboard.webp");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Football", "Medium size - fotball", " Offical Adidas fotball - fifa World cup brazil editon  ", 200.0, "football.jpg");

INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Basketball", "NBA OFFICIAL GAME BALL", "Official NBA size: 7 and weight: 29.5. Designed for indoor play only", 399.0, "basketball.png");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Tennis racket", "Weight: 300g, Length: 685 mm, Balance: 315", "WILSON PRO STAFF RF 97 AUTOGRAPH V13.0 ", 500.0, "tennis-racket.jpg");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Running shoes", "Size: 43, weight: 228g, color: black/white/grey", "Nike Performance ZOOM FLY 3 - Neutral running shoes", 200.0, "running-shoes.jpg");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Sneakers","size: 43, color black/red ", "adidas Yeezy Boost 350 V2 Pirate Black (2018)", 3500, "sneakers.jpg");

INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Luminous Basketball"," Reflective basektball - size: 7 and weight: 29.5  ", "CROSSWAY Star Night Holographic Glowing - Basketball Ball. Designed for both Indoor and Outdoor play", 699, "glowing-basketball.webp");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Skateboard", "color: black, size: 8 ", "Enuff Classic Skateboard Deck", 587, "skateboard.jpg");
INSERT INTO product (name, short_desc, long_desc, price, img) VALUES ("Electric skateboard ", "Weigh only 8.8lbs, 27.75Inch Deck Length, ", "Electric Longboard with Remote Control. Certified 29.4v 2000mAh lithium battery", 2807, "el-skateboard.jpg");
Insert INTO product (name, short_desc, long_desc, price, img) VALUES ("Infinity gaunlet", "Thanos' exclusive infinity gauntlet", " Only available for purchase if we get an A on this assignment", 999999, "inf-gauntlet.jpg");

Insert INTO product (name, short_desc, long_desc, price, img) VALUES ("Floorball club", " Stick Length: 100 cm", "Intermediate Sticks - 2020 Salming Aero Z Floorball Stick", 996, "floorball-club.jpg");
Insert INTO product (name, short_desc, long_desc, price, img) VALUES ("Golf clubs", "Color: Black, weight: 3.8kg, Flex: regular ", "Cobra Golf 2019 Men''s XL Speed Complete Golf Set", 3799, "golf-clubs.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VALUES ("Badminton racket", " Tour Badminton Kit ", "Senston Badminton Rackets 4 Pack Badminton Set Including 2 Badminton Bags and 4 shuttlecocks.", 651, "badminton-racks.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VALUES ("Ice skating shoes", "Color: White", "American Athletic Shoe Girl''s Tricot Lined Ice Skates", 569, "ice-skate-shoes.jpg");

Insert Into product (name, short_desc, long_desc, price, img) VALUES ("Champoin backpack", "Champoin LEGACY BACKPACK", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 299, "champ-backpack.jpeg");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Tracksuit", "Addidas PROMO SUIT - Tracksuit", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 350, "tracksuit.png");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Print T-shirt", "adidas Performance - blue ", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 167, "tshirt.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Long sleeved top - white", "Hummel LEGACY - Long sleeved top - White", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 200, "sleeve-white.png");

Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Long sleeved top - black", "Hummel LEGACY - Long sleeved top - Black", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 195, "sleeve-black.png");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Training shorts", "Men's training shorts - black", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 220, "training-shorts.webp");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Hoodie - black", "addidas Performance", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 379, "hoodie.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Sports shorts", " Nike sport shorts - black", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 255, "sport-shorts.jpg");

Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Yoga mat", "MAT EVERYDAY UNISEX - Fitness / Yoga", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 630, "yoga-mat.jpg" );
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Goalkeeping gloves", "Nike Performance - red/white/black", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 640, "gloves.webp");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Headband unisex" , "Under armor headband", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 140, "headband.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Drink bottle" , "Ardee sports drink   bottle - 2,2L", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 60, "bottle.jpeg");

Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Tracksuit bottoms", "Champion CUFF PANTS - black", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 263, "tracksuit-bottom.jpg");
Insert Into product (name, short_desc, long_desc, price, img) VAlUES ("Sports socks pack", "FILA - Sports socks . white", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", 130, "socks.jpg");