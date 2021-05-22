SET NAMES UTF8;
-- 先丢弃数据库 xs 如果存在的话
DROP DATABASE IF EXISTS xs;
-- 再创建数据库 xs 并设置默认的Unicode码为utf8
CREATE DATABASE xs CHARSET=UTF8;
-- 进入xs数据库
USE xs;
-- 先丢弃保存用户数据的表xs_user,如果存在的话
DROP TABLE IF EXISTS xs_user;
-- 再创建用户数据的表
CREATE TABLE xs_user(
  uid INT  PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(30) NOT NULL UNIQUE KEY,
  password VARCHAR(32) NOT NULL,
  avatar VARCHAR(50) NOT NULL,
  user_name VARCHAR(32) NOT NULL ,
  gender INT
);

-- 插入用户数据到用户数据表
INSERT INTO xs_user VALUES
(1,'ezreal','12345678','http://127.0.0.1:3000/img/avatar/ezreal.jpg','伊泽瑞尔','1'),
(2,'lakesi','12345678','http://127.0.0.1:3000/img/avatar/lax.jpg','拉克丝','0'),
(3,'jinkesi','12345678','http://127.0.0.1:3000/img/avatar/jnx.jpg','金克丝','0'),
(4,'jiakesi','12345678','http://127.0.0.1:3000/img/avatar/jax.jpg','贾克丝','1');


-- 轮播图
CREATE TABLE xs_carousel(
        uid INT PRIMARY KEY AUTO_INCREMENT,
        src VARCHAR(128)
);
INSERT INTO xs_carousel VALUES
(NULL,"https://cms-resource.azoyacdn.com/images/banner/27/de618cf208f91495794604d6781bfa8d.jpg"),
(NULL,"https://cms-resource.azoyacdn.com/images/banner/27/908706e523d80c89ecda6f1a26c4121d.jpg"),
(NULL,"https://cms-resource.azoyacdn.com/images/banner/27/5eb020825ec340aa5658e99d2e833d58.jpg"),
(NULL,"https://cms-resource.azoyacdn.com/images/banner/27/106c8b6ac5d158de230dd4f14a5b280f.jpg"),
(NULL,"https://cms-resource.azoyacdn.com/images/banner/27/004f555db8e13642e107f2f16feb75bd.jpg"),
(NULL,"https://cms-resource.azoyacdn.com/images/banner/27/31c9a565b739aa80a11e4b6e16a69e04.jpg"),
(NULL,"https://cms-resource.azoyacdn.com/images/banner/27/e176e660ba158ba11df759b8cc8ee961.jpg");


-- 所有商品 包括首页、详情页、列表页
CREATE TABLE xs_hot_perfume(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    etitle VARCHAR(32),
    esrc VARCHAR(128),
    euname VARCHAR(40),
    eprice DECIMAL(10,2),
    eguige VARCHAR(8),#商品的规格
    details_pic1 VARCHAR(128), #详情页商品图片1
    details_pic2 VARCHAR(128), #详情页商品图片2
    details_pic3 VARCHAR(128), #详情页商品图片3
    details_pic4 VARCHAR(128), #详情页商品图片4
    details_pic5 VARCHAR(128), #详情页商品图片5
    details_pic6 VARCHAR(128), #详情页商品图片6
    id INT,
    ecount VARCHAR(128)
);
INSERT INTO xs_hot_perfume VALUES
(NULL,"ISSEY MIYAKE 三宅一生 一生之水女士淡香水 EDT 100ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/121717_1.jpg","ISSEY MIYAKE 三宅一生",41.29,"100ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/121717/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/121717/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/121717/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/121717/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/121717/__09.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/121717/__10.jpg",1,"1"),
(NULL,"LALIQUE 莱俪 墨恋男士淡香水 EDT 100ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/6/167190_1.jpg","莱俪",27.29,"100ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/167190/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/167190/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/167190/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/167190/__05.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/167190/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/167190/__08.jpg",1,"1"),
(NULL,"SERGE LUTENS 芦丹氏 柏林少女中性香水 EDP 100ml（新旧版本随机发货）","https://fn-assets.azoyacdn.com/media/catalog/product/3/1/311188.jpg","芦丹氏",119.69,"100ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/236558/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/236558/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/236558/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/236558/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/236558/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/236558/__09.jpg",1,"1"),
(NULL,"【许凯/郑容和同款】HERMES 爱马仕 大地男士淡香水 EDT 100ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/4/146102_1.jpg","爱马仕",76.99,"100ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/146102/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/146102/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/146102/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/146102/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/146102/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/146102/__09.jpg",1,"1"),
(NULL,"MIU MIU/缪缪 玫瑰之水女士淡香水 EDT 100ML","https://fn-assets.azoyacdn.com/media/catalog/product/3/0/307379.jpg","缪缪",66.49,"100ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/307379/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/307379/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/307379/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/307379/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/307379/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/307379/__09.jpg",1,"1"),
(NULL,"DAVIDOFF 大卫杜夫 冷水女士淡香水 EDT 100ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/1/118706_1.jpg","大卫杜夫",19.59,"100ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/118706/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/118706/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/118706/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/118706/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/118706/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/118706/__09.jpg",2,"1"),
(NULL,"Salvatore Ferragamo 菲拉格慕 芭蕾女伶（伊人女士）女士香水 EDP 100ml","https://fn-assets.azoyacdn.com/media/catalog/product/2/3/230729_1.jpg","菲拉格慕",40.59,"100ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/230729/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/230729/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/230729/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/230729/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/230729/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/230729/__09.jpg",2,"1"),
(NULL,"Elizabeth Taylor 伊丽莎白泰勒 栀子花女士香水 EDP 100ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/3/138863_1.jpg","伊丽莎白",16.09,"100ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/138863/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/138863/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/138863/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/138863/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/138863/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/138863/__09.jpg",2,"1"),
(NULL,"Marc Jacobs 马克雅可布 梦幻小雏菊（雏菊之梦）女士淡香水 EDT 100ml","https://fn-assets.azoyacdn.com/media/catalog/product/2/5/256055_1.jpg","马克雅克布",46.89,"100ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/256055/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/256055/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/256055/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/256055/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/256055/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/256055/__09.jpg",2,"1"),
(NULL,"Narciso Rodriguez 纳茜素/纳西素 她的同名女士淡香水 EDT 100ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/4/140434_1.jpg","纳西素/纳茜素",65.09,"100ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/140434/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/140434/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/140434/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/140434/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/140434/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/140434/__09.jpg",3,"1"),
(NULL,"COACH 蔻驰 同名款男士淡香水 EDT 100ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/8/183601_1.jpg","蔻驰",45.49,"100ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/310742/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/310742/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/310742/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/310742/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/310742/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/310742/__09.jpg",3,"1"),
(NULL,"【卜凡同款】Versace 范思哲 经典男性淡香水 EDT 30ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/5/159888_2.jpg","范思哲",27.29,"30ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/159890/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/159890/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/159890/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/159890/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/159890/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/159890/__09.jpg",3,"1"),
(NULL,"BVLGARI 宝格丽 碧蓝水能量男士淡香水 EDT 100ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/3/139561_1.jpg","宝格丽",52.49,"100ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/139561/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/139561/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/139561/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/139561/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/139561/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/139561/__09.jpg",1,"1"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg","宝格丽",45.49,"75ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__09.jpg",2,"1"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg","宝格丽",45.49,"75ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__09.jpg",3,"1"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg","宝格丽",45.49,"75ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__09.jpg",4,"1"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg","宝格丽",45.49,"75ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__09.jpg",1,"1"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg","宝格丽",45.49,"75ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__09.jpg",2,"1"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg","宝格丽",45.49,"75ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__09.jpg",3,"1"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg","宝格丽",45.49,"75ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__09.jpg",4,"1"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg","宝格丽",45.49,"75ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__09.jpg",1,"1"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg","宝格丽",45.49,"75ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__09.jpg",2,"1"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg","宝格丽",45.49,"75ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__09.jpg",3,"1"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg","宝格丽",45.49,"75ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__09.jpg",4,"1"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg","宝格丽",45.49,"75ml","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__01.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__02.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__03.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__04.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__06.jpg","https://fn-assets.azoyacdn.com/media/shangxiang/0506/120200/__09.jpg",1,"1");


-- 购物车
CREATE TABLE xs_shoppingcart(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  stitle VARCHAR(32),
  suname VARCHAR(40),
  sprice DECIMAL(10,2),
  sguige VARCHAR(8),
  scount VARCHAR(128),
  ssrc VARCHAR(128)
);
INSERT INTO xs_shoppingcart VALUES
(NULL,"ISSEY MIYAKE 三宅一生 一生之水女士淡香水 EDT 100ml","ISSEY MIYAKE 三宅一生",41.29,"100ml","1","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/121717_1.jpg"),
(NULL,"BVLGARI 宝格丽 黑茶中性淡香水 EDT 75ml","宝格丽",45.49,"75ml","1","https://fn-assets.azoyacdn.com/media/catalog/product/1/2/120200_1.jpg");
