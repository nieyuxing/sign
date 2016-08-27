
drop table Type;
drop table users;
drop table goods;
drop table cartgoods;
drop table orders;
drop table evaluate;
drop table store;

--用户表
create table users(       
  usid int primary key,   
  usname varchar2(20) not null, 
  uspwd varchar2(20) not null,  
  telnum varchar2(20) ,  --电话
  email varchar2(30),    --邮箱
  purse int,             --钱包余额
  idcard int,
  text1 varchar2(200),   --预留字段
  text2 varchar2(200)
);
--商店表
create table store(
	sid int primary key,
  usid int references users(usid),
	sname varchar2(50),
	sdetail varchar2(200)
);

--商品类型表
create table type(
       tid int primary key,   --类型id
       tname varchar2(20),    --类型名
       tfid varchar2(20)      --父类型名
);
--商品表
create table goods(
       gid int primary key,
       gname varchar2(50),    --商品名
       gprice int,            --商品价格
       sid int references store(sid),    --商品地址，相当于店铺名
       gpic varchar2(50),             --商品图片
       gdetails varchar2(20),         --商品详细
       tid int references type(tid),  --类型id
       gcount int,            --商品已卖数量
       text3 varchar2(50)     --预留字段
);

--用户商品表
create table cartgoods(
      usid int references users(usid),  --购物车id
       gid int references goods(gid), --商品id
       gnum int,         --商品数量
       cgprice int        --购物车总价
);
--订单表
create table orders(
       oid int primary key,
       otime date,        --订单时间
       oroom varchar2(100),   --订单送货地址
       usid int references users(usid)
);
--评价表
create table evaluate(
       eid int primary key,
       usid int references users(usid),
       gid int references goods(gid),
       econtent varchar2(200),  --评价内容
       edate date,              --评价时间
       state int  ,              --评价分数1-5
     epics varchar2(100)
);

create sequence seq_users_usid start with 1001 ;
create sequence seq_store_sid start with 10001 ;
create sequence seq_type_tid start with 101 ;
create sequence seq_goods_gid start with 100001 ;
create sequence seq_orders_oid start with 20001 ;
create sequence seq_evaluate_eid start with 30001 ;

select * from Type;
select * from users;
select * from goods;
select * from cartgoods;
select * from orders;
select * from evaluate;
select * from store;

alter table users add unique(telnum);
alter table users add unique(email);

