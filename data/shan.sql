set names utf8;
drop database  if exists DR;
create database DR charset=utf8;
use DR;
create table dr_products(
    pid  INT PRIMARY KEY  AUTO_INCREMENT,
    title    varchar(64),
    spec    varchar(128),
    price  	 decimal(10,2),
    pic    	 varchar(128),
    details  varchar(128),
    sold_count	int(11),
    seq_top_sale_f1  tinyint(4),
    seq_top_sale_f2  tinyint(4)
);
INSERT INTO dr_products VALUES(null,"桃美人","桃之卵裸根不带土","188.00","img/md/1604rtqynz5pwda.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2190","1","2");
INSERT INTO dr_products VALUES(null,"猫咪爪","景天科厚叶草属","122.00","img/md/TB22kvveHg.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","678","1","2");
INSERT INTO dr_products VALUES(null,"花豹水泡","丸叶达摩紫斑海豹水泡","388.00","img/md/timg.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1190","1","2");
INSERT INTO dr_products VALUES(null,"玉蝶仙子","灵石水泡玉宇殿","258.00","img/md/103-160R11J33V10.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","280","1","2");
INSERT INTO dr_products VALUES(null,"蜡牡丹","进口景天多肉","100.00","img/md/W2.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2190","1","2");
INSERT INTO dr_products VALUES(null,"玉露","肉肉纯红玛丽安水泡","89.00","img/md/1422602397_CFgysYSN.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","674","1","2");
INSERT INTO dr_products VALUES(null,"小辣椒","肉肉雪树水泡","98.00","img/md/wKhQiFWKrayERJsRAAAAAC_Zpus596.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","975","1","2");
INSERT INTO dr_products VALUES(null,"叶晚霞","肉肉红手指","128.00","img/md/TB2Yl3RXPZnyKJjSZPcXXXqH.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1683","1","2");
INSERT INTO dr_products VALUES(null,"碧玉莲","大疣朱子玉水泡","110.00","img/md/TB2CD65p3FkpuFjSspn.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2190","1","2");
INSERT INTO dr_products VALUES(null,"红宝石","裸根不带土","120.00","img/md/timg (11).jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2356","1","2");
INSERT INTO dr_products VALUES(null,"姬胧月","翡翠蛋糕水泡","121.00","img/md/timg (6).jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","765","1","2");
INSERT INTO dr_products VALUES(null,"珍珠吊蓝","翠绿石水泡","144.00","img/md/e824b899a9014c083f0fd611087b02087bf4f44a.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","5674","1","2");
INSERT INTO dr_products VALUES(null,"玉蝶仙子","梅花鹿水泡","123.00","img/md/1422602397_xuHPHXOG.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1363","1","2");
INSERT INTO dr_products VALUES(null,"小辣椒","小辣椒水泡","256.00","img/md/u=3216657664,1941392244&fm=214&gp=0.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1262","1","2");
INSERT INTO dr_products VALUES(null,"冬美人","小黄鱼水泡","288.00","img/md/1422602397_TwDMVCeT.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1353","1","2");
INSERT INTO dr_products VALUES(null,"黑马丁","绿板叶水泡","388.00","img/md/4787024686_606259495.400x400.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1346","1","2");








SET NAMES UTF8;
USE DR;
CREATE TABLE dr_banner(
   bid INT PRIMARY KEY AUTO_INCREMENT,
   img varchar(128),
   href varchar(128)   
);
INSERT INTO dr_banner VALUES(null,"img/lg/306063.jpg","product.html");
INSERT INTO dr_banner VALUES(null,"img/lg/303339.jpg","product.html");
INSERT INTO dr_banner VALUES(null,"img/lg/285089.jpg","product.html");
INSERT INTO dr_banner VALUES(null,"img/lg/286703.jpg","product.html");
INSERT INTO dr_banner VALUES(null,"img/lg/286487.jpg","product.html");
INSERT INTO dr_banner VALUES(null,"img/lg/285832.jpg","product.html");
INSERT INTO dr_banner VALUES(null,"img/lg/286224.jpg","product.html");




SET NAMES UTF8;
USE DR;
CREATE TABLE dr_user(
     uid INT PRIMARY KEY AUTO_INCREMENT,
     phone VARCHAR (32) ,
     upwd  VARCHAR (32) NOT NULL
);
INSERT INTO  dr_user VALUES(NULL,18362390861, 123456);
INSERT INTO  dr_user VALUES(NULL,18362390862, 111111);
INSERT INTO  dr_user VALUES(NULL,18362390863, 112233);
INSERT INTO  dr_user VALUES(NULL,18362390864, 334455);

