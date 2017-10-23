--数据库初始化脚本
--创建数据库
CREATE DataBase seckill;
--使用数据库
use seckill;
--创建秒杀库存表
CREATE TABLE seckill(
  'sec_id' BIGINT NOT NULL AUTO_INCREMENT  comment '商品库存id',
  'sec_name' varchar(120) not null COMMENT '商品名称',
  'number' int NOT NULL comment '库存数量',89999990.+63
  'start_time' TIMESTAMP NOT NULL comment '秒杀开启时间',
  'end_time' TIMESTAMP NOT NULL comment '秒杀结束时间',
  'create_time' TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP comment'创建时间',
  PRIMARY KEY (seckill_id),
  key idx_start_time(start_time),
  key idx_end_time(end_time),
  key idx_creat_time(creat_time)
)engine=innodb auto_increment=1000 default charset=utf8 comment='秒杀库存表';

--初始化数据
INSERT into secKill(name,number,start_time,end_time)
    VALUES
      ('1000元秒杀imphone6',1000,'2015-11-01 00:00:00','2015-11-02 00:00:00'),
      ('1000元秒杀ipad2',200,'2015-11-01 00:00:00','2015-11-02 00:00:00'),
      ('1000元秒杀小米4',300,'2015-11-01 00:00:00','2015-11-02 00:00:00'),
      ('1000元秒杀红米note',400,'2015-11-01 00:00:00','2015-11-02 00:00:00');

--秒杀成功明细表
--  用户登录认证相关的信息

CREATE TABLE success_killed(
  'seckill_id'BIGINT NOT NULL comment '秒杀商品id',
  'user_phone' BIGINT NOT NULL comment '用户手机号',
  'state' TINYINT NOT NULL DEFAULT -1 comment '状态标示:-1:无效 0:成功 1:已付款 2:已发货',
  'creat_time' TIMESTAMP NOT NULL comment '创建时间',
  PRIMARY KEY (seckill_id,user_phone),
  key idx_create_time(creat_time)
)engine=innodb default charset=utf8 comment='秒杀成功表'

--连接数据库控制台
mysql-uroot-p
