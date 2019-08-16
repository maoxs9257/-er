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
INSERT INTO dd_product VALUES(null,'百威啤酒 500ml*3罐','清爽 清醇 清澈 致敬真我 （新老包装随机发货）',25.90,'public/baiwei/baiwei.jpg','public/baiwei/product.jpg,public/baiwei/product2.png,public/baiwei/product3.png,public/baiwei/product4.png');
INSERT INTO dd_product VALUES(null,'派力特 休闲零食 掌心干脆面','办公室休闲零食方便面 干吃面 混合口味 50包1050g',24.80,'public/gcm/gancuim.png','public/gcm/gcm1.png,public/gcm/gcm2.png,public/gcm/gcm3.png,public/gcm/gcm4.png,public/gcm/gcm5.png,public/gcm/gcm4.png');
INSERT INTO dd_product VALUES(null,'百威啤酒 500ml*3罐','清爽 清醇 清澈 致敬真我 （新老包装随机发货）',20.90,'public/baiwei/baiwei.jpg','public/baiwei/product.jpg,public/baiwei/product2.png,public/baiwei/product3.png,public/baiwei/product4.png');
INSERT INTO dd_product VALUES(null,'派力特 休闲零食 掌心干脆面','办公室休闲零食方便面 干吃面 混合口味 50包1050g',24.80,'public/gcm/gancuim.png','public/gcm/gcm1.png,public/gcm/gcm2.png,public/gcm/gcm3.png,public/gcm/gcm4.png,public/gcm/gcm5.png,public/gcm/gcm4.png');
INSERT INTO dd_product VALUES(null,'百威啤酒 500ml*3罐','清爽 清醇 清澈 致敬真我 （新老包装随机发货）',20.90,'public/baiwei/baiwei.jpg','public/baiwei/product.jpg,public/baiwei/product2.png,public/baiwei/product3.png,public/baiwei/product4.png');
INSERT INTO dd_product VALUES(null,'派力特 休闲零食 掌心干脆面','办公室休闲零食方便面 干吃面 混合口味 50包1050g',24.80,'public/gcm/gancuim.png','public/gcm/gcm1.png,public/gcm/gcm2.png,public/gcm/gcm3.png,public/gcm/gcm4.png,public/gcm/gcm5.png,public/gcm/gcm4.png');
INSERT INTO dd_product VALUES(null,'百威啤酒 500ml*3罐','清爽 清醇 清澈 致敬真我 （新老包装随机发货）',20.90,'public/baiwei/baiwei.jpg','public/baiwei/product.jpg,public/baiwei/product2.png,public/baiwei/product3.png,public/baiwei/product4.png');
INSERT INTO dd_product VALUES(null,'派力特 休闲零食 掌心干脆面','办公室休闲零食方便面 干吃面 混合口味 50包1050g',24.80,'public/gcm/gancuim.png','public/gcm/gcm1.png,public/gcm/gcm2.png,public/gcm/gcm3.png,public/gcm/gcm4.png,public/gcm/gcm5.png,public/gcm/gcm4.png');

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
  null,'youhui/youhui.png'
);