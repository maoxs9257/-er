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
  gid INT PRIMARY KEY AUTO_INCREMENT,     #id
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
/*创建首页横向商品列表*/
CREATE TABLE dd_merrec (
  mid INT PRIMARY KEY AUTO_INCREMENT,     #首页商品id
  did INT,                                #商品类型编号
  mimg_url VARCHAR(255),                  #商品标题图
  carousel VARCHAR(255),                  #商品轮播图
  title VARCHAR(50),                      #商品标题
  mtitle VARCHAR(50),                     #商品副标题
  price DECIMAL(10,2),                    #商品价格
  price_m DECIMAL(10,2),                  #商品折价
  preference VARCHAR(50),                 #商品特惠
  madein  VARCHAR(50),                    #商品产地
  details   VARCHAR(255)                  #商品详情
);
/*插入数据*/
INSERT INTO dd_merrec VALUES (null,1,'merrec/1/1-1.jpg','merrec/1/1-1.jpg,merrec/1/1-2.jpg,merrec/1/1-3.jpg','泰国金枕榴莲礼盒装1个（1.5-2.5kg/个）','入口软糯绵甜 对“TA"爱不释手',99,128,'直降29元','泰国','merrec/1/1-1-1.jpg,merrec/1/1-1-2.jpg,merrec/1/1-1-3.jpg,merrec/1/1-1-3.jpg,merrec/1/1-1-4.jpg,merrec/1/1-1-5.jpg,merrec/1/1-1-6.jpg,merrec/1/1-1-7.jpg,merrec/1/1-1-8.jpg');
INSERT INTO dd_merrec VALUES  (null,1,'merrec/2/2-2.jpg','merrec/2/2-1.jpg,merrec/2/2-2.jpg,merrec/2/2-3.jpg','山东锦绣黄桃4个礼盒装200g以上/个','清甜黄润 软糯香甜',19.9,50,'限时抢购','山东','merrec/2/2-2-1.jpg,merrec/2/2-2-2.jpg,merrec/2/2-2-3.jpg,merrec/2/2-2-4.jpg,merrec/2/2-2-5.jpg,merrec/2/2-2-6.jpg,merrec/2/2-2-7.jpg,merrec/2/2-2-8.jpg,merrec/2/2-2-9.jpg');
INSERT INTO dd_merrec VALUES (null,1,'merrec/3/3-1.jpg','merrec/3/3-1.jpg,merrec/3/3-2.jpg,merrec/3/3-3.jpg','河北皇冠梨6个(250g以上/个)','清脆多汁 肉质酥脆',19.9,29.9,'限时抢购','河北','merrec/3/3-3-1.jpg,merrec/3/3-3-2.jpg,merrec/3/3-3-3.jpg,merrec/3/3-3-4.jpg,merrec/3/3-3-5.jpg,merrec/3/3-3-6.jpg,merrec/3/3-3-7.jpg');
INSERT INTO dd_merrec VALUES (null,1,'merrec/4/4-1.jpg','merrec/4/4-1.jpg,merrec/4/4-2.jpg,merrec/4/4-3.jpg','新疆西梅400g','一“梅”两吃 软硬皆宜',29.9,38,'惊喜价29.9元','限时抢购','新疆','merrec/4/4-4-1.jpg,merrec/4/4-4-2.jpg,merrec/4/4-4-3.jpg,merrec/4/4-4-4.jpg,merrec/4/4-4-5.jpg,merrec/4/4-4-6.jpg,merrec/4/4-4-7.jpg,merrec/4/4-4-8.jpg,merrec/4/4-4-9.jpg,merrec/4/4-4-10.jpg');
INSERT INTO dd_merrec VALUES (null,1,'merrec/5/5-1.jpg','merrec/5/5-1.jpg,merrec/5/5-2.jpg,merrec/5/5-3.jpg','优诺优丝原味风味发酵乳135g*3','采用法式慢发酵工艺制作',22.9,24,'限时抢购','江苏','merrec/5/5-5-1.jpg,merrec/5/5-5-2.jpg,merrec/5/5-5-3.jpg,merrec/5/5-5-4.jpg,merrec/5/5-5-5.jpg,merrec/5/5-5-6.jpg,merrec/5/5-5-7.jpg');
INSERT INTO dd_merrec VALUES (null,1,'merrec/6/6-1.jpg','merrec/6/6-1.jpg,merrec/6/6-2.jpg,merrec/6/6-3.jpg','伊利褐色炭烧风味发酵乳1.05kg','甄选生牛乳发酵调制',17.9,29,'限时抢购','黑龙江绥化','merrec/6/6-6-1.jpg,merrec/6/6-6-2.jpg,merrec/6/6-6-3.jpg,merrec/6/6-6-4.jpg,merrec/6/6-6-5.jpg,merrec/6/6-6-6.jpg,merrec/6/6-6-7.jpg,merrec/6/6-6-8.jpg,merrec/6/6-6-9.jpg');
INSERT INTO dd_merrec VALUES (null,1,'merrec/7/7-1.jpg','merrec/7/7-1.jpg,merrec/7/7-2.jpg,merrec/7/7-3.jpg','云南蒙自石榴6个225g以上/个','颗粒饱满 清甜不酸涩',35,45,'惊喜价35元','云南','merrec/7/7-7-1.jpg,merrec/7/7-7-2.jpg,merrec/7/7-7-3.jpg,merrec/7/7-7-4.jpg,merrec/7/7-7-5.jpg,merrec/7/7-7-6.jpg,merrec/7/7-7-8.jpg');
INSERT INTO dd_merrec VALUES (null,1,'merrec/8/8-1.jpg','merrec/8/8-1.jpg,merrec/8/8-2.jpg,merrec/8/8-3.jpg','泰国山竹1kg/盒','果肉雪白，清香甜蜜',29.9,69,'限时抢购','泰国','merrec/8/8-8-1.jpg,merrec/8/8-8-2.jpg,merrec/8/8-8-3.jpg,merrec/8/8-8-4.jpg,merrec/8/8-8-5.jpg,merrec/8/8-8-6.jpg,merrec/8/8-8-7.jpg');
INSERT INTO dd_merrec VALUES (null,1,'merrec/9/9-1.jpg','merrec/9/9-1.jpg,merrec/9/9-2.jpg,merrec/9/9-3.jpg','泰国龙眼1kg/盒','果肉晶莹剔透，甜蜜涌上心头',19.9,39.4,'惊喜价19.9元','泰国','merrec/9/9-9-1.jpg,merrec/9/9-9-2.jpg,merrec/9/9-9-3.jpg,merrec/9/9-9-4.jpg,merrec/9/9-9-5.jpg,merrec/9/9-9-6.jpg');
INSERT INTO dd_merrec VALUES (null,1,'merrec/10/10-1.jpg','merrec/10/10-1.jpg,merrec/10/10-2.jpg,merrec/10/10-3.jpg','天润浓缩酸奶全脂风味发酵乳(原味)180g*12','经典原味   口感香醇   含丰富蛋白质',49.9,59.9,'限时抢购','新疆乌鲁木齐','merrec/10/10-10-1.jpg,merrec/10/10-10-2.jpg,merrec/10/10-10-3.jpg,merrec/10/10-10-4.jpg,merrec/10/10-10-5.jpg,merrec/10/10-10-6.jpg,merrec/10/10-10-7.jpg,merrec/10/10-10-8.jpg,merrec/10/10-10-9.jpg,merrec/10/10-10-11.jpg,merrec/10/10-10-12.jpg,merrec/10/10-10-13.jpg,merrec/10/10-10-14.jpg');