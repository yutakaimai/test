set names utf8;
set foreign_key_checks = 0;
drop database if exists ecsite;

create database if not exists ecsite;
use ecsite;

drop table if exists user_info;

create table user_info(
id int not null primary key auto_increment,
user_id varchar(16),
password varchar(16),
user_name varchar(16),
tel varchar(13),
gender TINYINT DEFAULT 0,
email varchar(32),
address varchar(255),
logined TINYINT DEFAULT 0,
insert_date datetime,
update_time datetime
);


drop table if exists item_info;

create table item_info(

id int not null primary key auto_increment,
item_id int,
item_name varchar(100),
item_description varchar(255),
category_id int,
item_word varchar(255),
price int,
count int,
image_file_path varchar(100),
image_file_name varchar(50),
release_data datetime,
release_company varchar(50),


inser_date datetime,
update_time datetime
);


drop table if exists buy_info;

create table buy_info(
id int not null primary key auto_increment,
item_id int,
item_name varchar(32),
price int,
count int,
amount int,
user_id varchar(16),
user_name varchar(16),
tel varchar(13),
address varchar(255),
payment varchar(32),
transport varchar(32),

insert_date datetime,
update_time datetime
);




INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(1,'candle','巧みに作られた無垢の手作りのキャンドル',1,'1個,',150,'./img/candle.jpg','candle.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(2,'mediate','このクールな異世界の香りは、毎日の心の状態を超越して浮かせるのに役立ちます。その中心には、神聖な植物のアルテミシアの3つの品種があります。',1,'1個',3000,'./img/mediate.jpg','mediate.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(3,'resin','純粋で高級なコパル樹脂で、香りとして燃やします。',1,'1個',1000,'./img/resin.jpg','resin.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(4,'Pewter Hare Brooch','私たちの最も人気のあるジュエリーアイテムのひとつ',1,'1個,',4000,'./img/peter.jpg','peter.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(5,'chamomile Floral Water','カモミールは天国のにおいをしており、落ち着いた特性で有名です。',1,'1個',1500,'./img/ChamomileFloralWater.jpg','ChamomileFloralWater.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(6,'London Lore Tarot','ロンドンの伝説そして隠された側面を描写した想像力豊かな白黒イラストを用いた独創的なタロットデッキ。.',1,'1個',5000,'./img/tarot.jpg','tarot.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(7,'selenite wan','セレナイトは月に神聖であり、長い白い輝きのストランドが一緒に溶け合っているように見える石です。',1,'1個,',3000,'./img/SeleniteB.jpg','SeleniteB.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(8,'Freyja Relief Sculpture','北方の女神フライヤのフェラコッタでの救済彫刻',1,'1個',15000,'./img/FreyaPlaque.jpg','FreyaPlaque.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(9,'English Woodland Wand','献身と使用の準備ができています。',1,'１個',4500,'./img/rowan.jpg','rowan.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(10,'The Occult, Witchcraft & Magic','ストーン・エイジ・シャーマンからフリーメーソン、現代世界の魔法まで',2,'1個',4000,'./img/occult-magic-and-witchcraft.jpg','occult-magic-and-witchcraft.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(11,'The Book of Black Magic','',1,'1個',4000,'./img/occult-magic-and-witchcraft.jpg','occult-magic-and-witchcraft.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(12,'The magic Broom','穢れを払うという魔法の箒',1,'1個',2000,'./img/箒.jpg','箒.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(13,'Lunarium','紀元前からの歴史を持つ天球を象った天球儀と、太陽・地球・月で構成されたルナリウム',1,'1個',2000,'./img/runa.jpg.jpg','runa.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(14,'The magic rump','シンボルは5種類。',1,'1個',1500,'./img/ramp.jpg','ramp.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(15,'Ouija Board','素敵な伝統的なスタイルのクラシックボードゲーム',1,'1個,',5000,'./img/Ouija.jpg','Ouija.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(16,'Treadwells Bag','それはエレガントで、それは魔法のように',1,'1個',1000,'./img/treadbag.jpg','treadbag.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(17,'Rosslyn Chapel','秋の色とトーンで自然の精神',1,'1個',3500,'./img/cake166.jpg','cake166.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(18,'Beverley','有名なビバリー・ミンスター教会で彫っている',1,'1個,',3500,'./img/Beverly.jpg','Beverly.jpg','internous');
INSERT INTO item_info(item_id,item_name,item_description,category_id,item_word,price,image_file_path,image_file_name,release_company)VALUES(19,'Spill Tarot Deck','贅沢な限定版デッキ',1,'1個',7500,'./img/Spill.jpg','Spill.jpg','internous');



INSERT INTO user_info(user_id,password,user_name) values("a", "1", "test");