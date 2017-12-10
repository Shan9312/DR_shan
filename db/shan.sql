set names utf8;
drop database  if exists DR;
create database DR charset=utf8;
use DR;
create table dr_products(
    pid  INT PRIMARY KEY  AUTO_INCREMENT,
    href     varchar(128),
    title    varchar(64),
    spec    varchar(128),
    price  	 decimal(10,2),
    pic    	 varchar(128),
    details  varchar(128),
    sold_count	int(11),
    seq_top_sale_f1  tinyint(4),
    seq_top_sale_f2  tinyint(4)
);
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=1","桃美人","桃之卵裸根不带土","188.00","img/md/1604rtqynz5pwda.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2190","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=2","猫咪爪","景天科厚叶草属","122.00","img/md/TB22kvveHg.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","678","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=3","花豹水泡","丸叶达摩紫斑海豹水泡","388.00","img/md/timg.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1190","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=4","玉蝶仙子","灵石水泡玉宇殿","258.00","img/md/103-160R11J33V10.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","280","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=5","蜡牡丹","进口景天多肉","100.00","img/md/W2.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2190","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=6","玉露","肉肉纯红玛丽安水泡","89.00","img/md/1422602397_CFgysYSN.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","674","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=7","小辣椒","肉肉雪树水泡","98.00","img/md/wKhQiFWKrayERJsRAAAAAC_Zpus596.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","975","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=8","叶晚霞","肉肉红手指","128.00","img/md/TB2Yl3RXPZnyKJjSZPcXXXqH.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1683","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=9","碧玉莲","大疣朱子玉水泡","110.00","img/md/TB2CD65p3FkpuFjSspn.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2190","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=10","红宝石","裸根不带土","120.00","img/md/timg (11).jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2356","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=11","姬胧月","翡翠蛋糕水泡","121.00","img/md/timg (6).jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","765","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=12","珍珠吊蓝","翠绿石水泡","144.00","img/md/e824b899a9014c083f0fd611087b02087bf4f44a.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","5674","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=13","玉蝶仙子","梅花鹿水泡","123.00","img/md/1422602397_xuHPHXOG.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1363","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=14","小辣椒","小辣椒水泡","256.00","img/md/u=3216657664,1941392244&fm=214&gp=0.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1262","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=15","冬美人","小黄鱼水泡","288.00","img/md/1422602397_TwDMVCeT.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1353","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=16","黑马丁","绿板叶水泡","388.00","img/md/4787024686_606259495.400x400.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1346","1","2");
//多加的几条产品
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=14","辣椒","小辣椒水泡","256.00","img/md/u=3216657664,1941392244&fm=214&gp=0.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1262","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=15","美人","小黄鱼水泡","288.00","img/md/1422602397_TwDMVCeT.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1353","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=16","黑丁","绿板叶水泡","388.00","img/md/4787024686_606259495.400x400.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1346","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=1","桃美","桃之卵裸根不带土","188.00","img/md/1604rtqynz5pwda.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2190","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=2","猫咪","景天科厚叶草属","122.00","img/md/TB22kvveHg.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","678","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=3","水泡","丸叶达摩紫斑海豹水泡","388.00","img/md/timg.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1190","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=4","玉蝶","灵石水泡玉宇殿","258.00","img/md/103-160R11J33V10.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","280","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=5","蜡牡","进口景天多肉","100.00","img/md/W2.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2190","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=9","碧莲","大疣朱子玉水泡","110.00","img/md/TB2CD65p3FkpuFjSspn.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2190","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=10","宝石","裸根不带土","120.00","img/md/timg (11).jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2356","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=11","胧月","翡翠蛋糕水泡","121.00","img/md/timg (6).jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","765","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=12","珍珠","翠绿石水泡","144.00","img/md/e824b899a9014c083f0fd611087b02087bf4f44a.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","5674","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=13","玉蝶","梅花鹿水泡","123.00","img/md/1422602397_xuHPHXOG.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1363","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=14","辣椒美人","小辣椒水泡","256.00","img/md/u=3216657664,1941392244&fm=214&gp=0.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1262","1","2");
INSERT INTO dr_products VALUES(null,"product_detaile.html?pid=15","冬海豹","小黄鱼水泡","288.00","img/md/1422602397_TwDMVCeT.jpg","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","1353","1","2");



SET NAMES UTF8;
USE DR;
CREATE TABLE dr_pic(
   lid INT PRIMARY KEY AUTO_INCREMENT,
   pid INT,                     #笔记本电脑编号
   sm VARCHAR(128),             #小图片路径
   md VARCHAR(128),             #中图片路径
   lg VARCHAR(128),             #大图片路径
   promise VARCHAR(128),        #服务承诺
  details VARCHAR(1024)      #产品详细说明
);
INSERT INTO dr_pic VALUES(null,1,"img/sm/sm/1.jpg","img/sm/md/151204089637784.jpg","img/sm/lg/151204089637784.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,1,"img/sm/sm/1_2.jpg","img/sm/md/151204088720471.jpg","img/sm/lg/151204088720471.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,1,"img/sm/sm/1_3.jpg","img/sm/md/151204089637784.jpg","img/sm/lg/151204089637784.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,1,"img/sm/sm/1_4.jpg","img/sm/md/151204091318802.jpg","img/sm/lg/151204091318802.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,1,"img/sm/sm/1.jpg","img/sm/md/151204088720471.jpg","img/sm/lg/151204088720471.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");

INSERT INTO dr_pic VALUES(null,2,"img/sm/sm/151204092143842.jpg","img/sm/md/151204092143842.jpg","img/sm/lg/151204092143842.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,2,"img/sm/sm/151204092143842.jpg","img/sm/md/151204092143842.jpg","img/sm/lg/151204088720471.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,2,"img/sm/sm/151204093130310.jpg","img/sm/md/151204092143842.jpg","img/sm/lg/151204089637784.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,2,"img/sm/sm/151204092143842.jpg","img/sm/md/151204092143842.jpg","img/sm/lg/151204092143842.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,2,"img/sm/sm/151204092143842.jpg","img/sm/md/151204092143842.jpg","img/sm/lg/151204092143842.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");


INSERT INTO dr_pic VALUES(null,4,"img/sm/sm/151202193968741.jpg","img/sm/md/151202193968741.jpg","img/sm/lg/151202193968741.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
-- 1楼
INSERT INTO dr_pic VALUES(null,5,"img/sm/sm/151202197980563.jpg","img/sm/md/151202197980563.jpg","img/sm/lg/151202197980563.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,6,"img/sm/sm/151202191069388.jpg","img/sm/md/151202191069388.jpg","img/sm/lg/151202191069388.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,7,"img/sm/sm/151202199280948.jpg","img/sm/md/151202199280948.jpg","img/sm/lg/151202199280948.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,9,"img/sm/sm/151202194736884.jpg","img/sm/md/151202194736884.jpg","img/sm/lg/151202194736884.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,10,"img/sm/sm/1.jpg","img/sm/md/151204088720471.jpg","img/sm/bs/151202196664099.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
-- 2楼

INSERT INTO dr_pic VALUES(null,11,"img/sm/sm/151202196664099.jpg","img/sm/md/151202196664099.jpg","img/sm/lg/151202196664099.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,12,"img/sm/sm/151202195790554.jpg","img/sm/md/151202195790554.jpg","img/sm/lg/151202195790554.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,14,"img/sm/sm/151204227980307.jpg","img/sm/md/151204227980307.jpg","img/sm/lg/151204227980307.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");
INSERT INTO dr_pic VALUES(null,13,"img/sm/sm/151204094272720.jpg","img/sm/md/151204094272720.jpg","img/sm/lg/151204094272720.jpg","亲，满38元，包邮哦","万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物");




-- SET NAMES UTF8;
-- USE DR;
-- CREATE TABLE dr_laptop(
--     lid INT PRIMARY KEY AUTO_INCREMENT,
--     product_pid INT,              #所属型号家族编号
--     title VARCHAR(128),         #主标题
--     price DECIMAL(10,2),        #价格
--     promise VARCHAR(64),        #服务承诺
--     spec VARCHAR(64),           #规格/颜色
--     lname VARCHAR(32),          #商品名称
--     details VARCHAR(1024),      #产品详细说明
--     shelf_time BIGINT,          #上架时间
--     sold_count INT,             #已售出的数量
--     sm VARCHAR(128),            #小图片路径
--     md VARCHAR(128),            #中图片路径
--     lg VARCHAR(128)             #大图片路径
    
-- );
-- INSERT INTO dr_laptop VALUES(null,1,"万象更新多肉植物组合盆栽肉肉植物，新手室内绿色植物",
-- 288,"亲，满38元，包邮哦","紫萝仙",188.00","桃美人","多肉喜阳光充足，凉爽干燥，忌暴晒，已生长植物","2017","3542",
-- "img/sm/1.jpg","img/sm/0_1.jpg","");
  





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
     uname VARCHAR (32),
     phone VARCHAR (32) ,
     upwd  VARCHAR (32) NOT NULL
);
INSERT INTO  dr_user VALUES(NULL,'闪',18362390861, 123456);
INSERT INTO  dr_user VALUES(NULL,'亮',18362390862, 111111);


SET NAMES UTF8;
USE DR;
CREATE TABLE dr_cart(
   cid INT PRIMARY KEY AUTO_INCREMENT,
   uid INT,                    
   pid_c INT,            
   count INT,             
   is_checked	tinyint(1)	     
);
INSERT INTO  dr_cart VALUES(NULL,1,1,2,0);
INSERT INTO  dr_cart VALUES(NULL,2,2,5,0);

