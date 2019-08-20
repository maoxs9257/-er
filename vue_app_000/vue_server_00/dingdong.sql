/*创建叮咚的数据库*/
SET NAMES UTF8;
DROP DATABASE IF EXISTS ddo;
CREATE DATABASE ddo CHARSET=UTF8;
USE ddo;
/*创建叮咚登录数据库*/
CREATE TABLE dd_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32)
);
/*插入两条测试数据*/
INSERT INTO dd_login VALUES(null,'tom1',md5('123456'));
INSERT INTO dd_login VALUES(null,'jerry',md5('123456'));
/*创建商品详情列表*/
CREATE TABLE dd_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,     #商品编号
  title VARCHAR(60),                      #商品标题
  p_title VARCHAR(60),                    #商品副标题
  price DECIMAL(10,2),                    #商品价格
  img_url VARCHAR(255),                   #商品图片
  p_product VARCHAR(255)                  #商品详情图片
);
/*插入商品详情信息*/
INSERT INTO dd_product VALUES(null,'百威啤酒 500ml*3罐','清爽 清醇 清澈 致敬真我 （新老包装随机发货）',25.90,'baiwei/baiwei.jpg','baiwei/product.jpg,baiwei/product2.png,baiwei/product3.png,baiwei/product4.png');
INSERT INTO dd_product VALUES(null,'派力特 休闲零食 掌心干脆面','办公室休闲零食方便面 干吃面 混合口味 50包1050g',24.80,'cm/gancuim.png','gcm/gcm1.png,gcm/gcm2.png,gcm/gcm3.png,gcm/gcm4.png,gcm/gcm5.png,gcm/gcm4.png');
INSERT INTO dd_product VALUES(null,'百威啤酒 500ml*3罐','清爽 清醇 清澈 致敬真我 （新老包装随机发货）',25.90,'baiwei/baiwei.jpg','baiwei/product.jpg,baiwei/product2.png,baiwei/product3.png,baiwei/product4.png');
INSERT INTO dd_product VALUES(null,'派力特 休闲零食 掌心干脆面','办公室休闲零食方便面 干吃面 混合口味 50包1050g',24.80,'cm/gancuim.png','gcm/gcm1.png,gcm/gcm2.png,gcm/gcm3.png,gcm/gcm4.png,gcm/gcm5.png,gcm/gcm4.png');
INSERT INTO dd_product VALUES(null,'百威啤酒 500ml*3罐','清爽 清醇 清澈 致敬真我 （新老包装随机发货）',25.90,'baiwei/baiwei.jpg','baiwei/product.jpg,baiwei/product2.png,baiwei/product3.png,baiwei/product4.png');
INSERT INTO dd_product VALUES(null,'派力特 休闲零食 掌心干脆面','办公室休闲零食方便面 干吃面 混合口味 50包1050g',24.80,'cm/gancuim.png','gcm/gcm1.png,gcm/gcm2.png,gcm/gcm3.png,gcm/gcm4.png,gcm/gcm5.png,gcm/gcm4.png');
INSERT INTO dd_product VALUES(null,'百威啤酒 500ml*3罐','清爽 清醇 清澈 致敬真我 （新老包装随机发货）',25.90,'baiwei/baiwei.jpg','baiwei/product.jpg,baiwei/product2.png,baiwei/product3.png,baiwei/product4.png');
INSERT INTO dd_product VALUES(null,'派力特 休闲零食 掌心干脆面','办公室休闲零食方便面 干吃面 混合口味 50包1050g',24.80,'cm/gancuim.png','gcm/gcm1.png,gcm/gcm2.png,gcm/gcm3.png,gcm/gcm4.png,gcm/gcm5.png,gcm/gcm4.png');
/*创建购物车列表*/
CREATE TABLE dd_shoppingCart (
  sid INT PRIMARY KEY AUTO_INCREMENT,       #购物车商品编号
  id  INT,                                  #用户编号
  pid INT,                                  #商品编号
  count INT,                                #商品数量
  price DECIMAL(10,2),                      #商品价格
  pname VARCHAR(255)                        #商品名称
);
/*创建优惠券列表*/
CREATE TABLE dd_coupon (
  cid INT PRIMARY KEY AUTO_INCREMENT,       #优惠券id
  cimg_url VARCHAR(255)                     #优惠券路径
);
INSERT INTO dd_coupon VALUES(
  null,'http://127.0.0.1:3001/youhui/youhui.png'
);
/*创建轮播图数据列表*/
CREATE TABLE dd_carousel (
  aid INT PRIMARY KEY AUTO_INCREMENT,      #轮播图id
  aimg_url VARCHAR(255)                    #轮播图路径
);
/*插入轮播图数据*/
INSERT INTO dd_carousel VALUES(null,'http://127.0.0.1:3001/carousel/bine1.jpg');
INSERT INTO dd_carousel VALUES(null,'http://127.0.0.1:3001/carousel/bine2.jpg');
INSERT INTO dd_carousel VALUES(null,'http://127.0.0.1:3001/carousel/bine3.jpg');
INSERT INTO dd_carousel VALUES(null,'http://127.0.0.1:3001/carousel/bine4.jpg');
INSERT INTO dd_carousel VALUES(null,'http://127.0.0.1:3001/carousel/bine5.jpg');
/*创建导航数据列表*/
CREATE TABLE dd_gp (
  gid INT PRIMARY KEY AUTO_INCREMENT,         #id
  gimg_url VARCHAR(255),                  #图片路径
  title  VARCHAR(50)                      #标题
);
/*插入数据*/
INSERT INTO dd_gp VALUES (null,'http://127.0.0.1:3001/gp/c-1.png','买二付一');
INSERT INTO dd_gp VALUES (null,'http://127.0.0.1:3001/gp/c-2.png','原箱佳沛');
INSERT INTO dd_gp VALUES (null,'http://127.0.0.1:3001/gp/c-3.png','会员福利');
INSERT INTO dd_gp VALUES (null,'http://127.0.0.1:3001/gp/c-4.png','银行活动');
INSERT INTO dd_gp VALUES (null,'http://127.0.0.1:3001/gp/c-5.png','新品惠萃');
INSERT INTO dd_gp VALUES (null,'http://127.0.0.1:3001/gp/c-6.png','精选肉类');
INSERT INTO dd_gp VALUES (null,'http://127.0.0.1:3001/gp/c-7.png','海鲜水产');
INSERT INTO dd_gp VALUES (null,'http://127.0.0.1:3001/gp/c-8.png','食品饮料');