/*
Navicat MySQL Data Transfer

Source Server         : 111
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : zhibo

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-02-17 18:09:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `addesses`
-- ----------------------------
DROP TABLE IF EXISTS `addesses`;
CREATE TABLE `addesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机',
  `address` varchar(255) DEFAULT NULL COMMENT '地址信息',
  `is_default` int(11) DEFAULT '0' COMMENT '是否默认地址,1默认,0正常,默认值为0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户收货地址';

-- ----------------------------
-- Records of addesses
-- ----------------------------

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `art_type` varchar(255) DEFAULT NULL COMMENT '文章分类',
  `content` text COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for `avatar_authentication`
-- ----------------------------
DROP TABLE IF EXISTS `avatar_authentication`;
CREATE TABLE `avatar_authentication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `video_path` varchar(255) DEFAULT NULL COMMENT '认证视频',
  `is_status` tinyint(11) DEFAULT NULL COMMENT '认证状态,0未认证,1认证通过,2审核中,3认证失败',
  `result` text COMMENT '认证状态文本',
  `pass_time` int(11) DEFAULT NULL COMMENT '处理时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='头像认证表';

-- ----------------------------
-- Records of avatar_authentication
-- ----------------------------

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `ordid` int(11) DEFAULT NULL COMMENT '排序id',
  `img` varchar(255) DEFAULT NULL COMMENT '广告图片地址',
  `link` varchar(255) DEFAULT NULL COMMENT '连接地址',
  `isshow` int(11) DEFAULT '0' COMMENT '是否显示，0显示,1不显示 ,默认0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='首页广告';

-- ----------------------------
-- Records of banner
-- ----------------------------

-- ----------------------------
-- Table structure for `bill`
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` decimal(11,0) DEFAULT NULL COMMENT '原账户资金',
  `m_direct` int(11) DEFAULT NULL COMMENT '-1,支出,1增加',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `last_money` decimal(10,0) DEFAULT NULL COMMENT '变化后的账号资金',
  `arises_time` int(11) DEFAULT NULL COMMENT '发生时间,unix timestamp',
  `use_type` int(11) DEFAULT NULL COMMENT '用途类型',
  `opt_money` decimal(10,0) DEFAULT NULL COMMENT '实际增减资金',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='账单表';

-- ----------------------------
-- Records of bill
-- ----------------------------

-- ----------------------------
-- Table structure for `blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `blacklist`;
CREATE TABLE `blacklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bk_id` int(11) DEFAULT NULL COMMENT '黑名单id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='黑名单';

-- ----------------------------
-- Records of blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for `cash_record`
-- ----------------------------
DROP TABLE IF EXISTS `cash_record`;
CREATE TABLE `cash_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `raise_time` int(11) DEFAULT NULL COMMENT '发生时间,unix timestamp 时间截',
  `money` decimal(10,0) DEFAULT NULL COMMENT '提现金额',
  `status` int(11) DEFAULT '0' COMMENT '提现状态,0处理中,1提现成功,2提现失败',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户提现表';

-- ----------------------------
-- Records of cash_record
-- ----------------------------

-- ----------------------------
-- Table structure for `dynamic`
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `resource` text COMMENT '资源,json数据',
  `publish_time` int(11) DEFAULT NULL COMMENT '发布时间,unix timestamp',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `love_num` int(11) DEFAULT NULL COMMENT '喜欢数目',
  `share_num` int(11) DEFAULT NULL COMMENT '分享数目',
  `comments_num` int(11) DEFAULT NULL COMMENT '评论数目',
  `location_text` varchar(255) DEFAULT NULL COMMENT '定位标题',
  `location` varchar(255) DEFAULT NULL COMMENT 'gps定位',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户动态表';

-- ----------------------------
-- Records of dynamic
-- ----------------------------

-- ----------------------------
-- Table structure for `dynamic_comments`
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_comments`;
CREATE TABLE `dynamic_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) DEFAULT NULL COMMENT '用户动态id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `content` text COMMENT '评论内容',
  `to_user_id` int(11) DEFAULT '0' COMMENT '被评论用户id',
  `public_time` int(11) DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户动态评论';

-- ----------------------------
-- Records of dynamic_comments
-- ----------------------------

-- ----------------------------
-- Table structure for `dynamic_comments_love`
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_comments_love`;
CREATE TABLE `dynamic_comments_love` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) DEFAULT NULL COMMENT '用户动态id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `public_time` int(11) DEFAULT NULL COMMENT '喜欢时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户动态喜欢记录表';

-- ----------------------------
-- Records of dynamic_comments_love
-- ----------------------------

-- ----------------------------
-- Table structure for `dynamic_comments_share`
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_comments_share`;
CREATE TABLE `dynamic_comments_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) DEFAULT NULL COMMENT '用户动态id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `public_time` int(11) DEFAULT NULL COMMENT '分享时间,unix timestamp',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户动态分享记录表';

-- ----------------------------
-- Records of dynamic_comments_share
-- ----------------------------

-- ----------------------------
-- Table structure for `dynamic_privileges`
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_privileges`;
CREATE TABLE `dynamic_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `type` int(11) DEFAULT '0' COMMENT '0公开,1屏蔽所有人,2屏蔽部分人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户动态权限';

-- ----------------------------
-- Records of dynamic_privileges
-- ----------------------------

-- ----------------------------
-- Table structure for `dynamic_privileges_users`
-- ----------------------------
DROP TABLE IF EXISTS `dynamic_privileges_users`;
CREATE TABLE `dynamic_privileges_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `not_view_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dynamic_privileges_users
-- ----------------------------

-- ----------------------------
-- Table structure for `exchange_record`
-- ----------------------------
DROP TABLE IF EXISTS `exchange_record`;
CREATE TABLE `exchange_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `coin` int(11) DEFAULT NULL COMMENT '兑换金币',
  `money` decimal(10,0) DEFAULT NULL COMMENT '兑换金额',
  `raise_time` int(11) DEFAULT NULL COMMENT '发生时间,unix timestamp',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='金币兑换记录';

-- ----------------------------
-- Records of exchange_record
-- ----------------------------

-- ----------------------------
-- Table structure for `follow`
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `follow_id` int(11) DEFAULT NULL COMMENT '关注id',
  `follow_time` int(11) DEFAULT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关注表';

-- ----------------------------
-- Records of follow
-- ----------------------------

-- ----------------------------
-- Table structure for `foreshow`
-- ----------------------------
DROP TABLE IF EXISTS `foreshow`;
CREATE TABLE `foreshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cover_img` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `begin_time` int(11) DEFAULT NULL COMMENT '开始时间,unix timestamp',
  `price` int(11) DEFAULT NULL COMMENT '门票价格,钻石个数',
  `description` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='预告表';

-- ----------------------------
-- Records of foreshow
-- ----------------------------

-- ----------------------------
-- Table structure for `gifts`
-- ----------------------------
DROP TABLE IF EXISTS `gifts`;
CREATE TABLE `gifts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gift_title` varchar(255) DEFAULT NULL COMMENT '礼品名称',
  `gift_masonry` int(10) DEFAULT NULL COMMENT '礼品价位',
  `gift_pic` varchar(255) DEFAULT NULL COMMENT '礼品图片',
  `gif_ordid` int(11) DEFAULT '255' COMMENT '礼品排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='礼品表';

-- ----------------------------
-- Records of gifts
-- ----------------------------

-- ----------------------------
-- Table structure for `gold_coin_record`
-- ----------------------------
DROP TABLE IF EXISTS `gold_coin_record`;
CREATE TABLE `gold_coin_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin` int(11) DEFAULT NULL COMMENT '账户原金币数量',
  `opt_coin` int(11) DEFAULT NULL COMMENT '变化金币',
  `last_coin` int(11) DEFAULT NULL COMMENT '变化后金币数量',
  `raise_time` int(11) DEFAULT NULL COMMENT '发生时间',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `m_direct` int(11) DEFAULT NULL COMMENT '转入转出,1表示转入,-1表示转出',
  `m_type` int(11) DEFAULT NULL COMMENT '转入转出类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='金币变化表';

-- ----------------------------
-- Records of gold_coin_record
-- ----------------------------

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` int(11) DEFAULT NULL COMMENT '商品名称',
  `content` int(11) DEFAULT NULL COMMENT '内容简介',
  `total_num` int(11) DEFAULT '0' COMMENT '库存数量',
  `grounding` int(11) DEFAULT '0' COMMENT '上架 1上架,0下架',
  `categroy_id` int(11) DEFAULT NULL COMMENT '产品分类id',
  `market_price` decimal(10,0) DEFAULT NULL COMMENT '市场价',
  `sale_price` decimal(10,0) DEFAULT NULL COMMENT '销售价格',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_banner`
-- ----------------------------
DROP TABLE IF EXISTS `goods_banner`;
CREATE TABLE `goods_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `ordid` int(11) DEFAULT NULL COMMENT '排序id',
  `img` varchar(255) DEFAULT NULL COMMENT '广告图片地址',
  `link` varchar(255) DEFAULT NULL COMMENT '连接地址',
  `isshow` tinyint(4) DEFAULT '0' COMMENT '是否显示，0显示,1不显示 ,默认0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='首页广告';

-- ----------------------------
-- Records of goods_banner
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_categroy`
-- ----------------------------
DROP TABLE IF EXISTS `goods_categroy`;
CREATE TABLE `goods_categroy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '商品分类',
  `parent_id` int(11) DEFAULT '0' COMMENT '父分类id',
  `ordid` int(11) DEFAULT '255' COMMENT '排序id',
  `isshow` int(11) DEFAULT '1' COMMENT '是否显示,0不显示,1显示',
  `cover_pic` varchar(255) DEFAULT NULL COMMENT '分类封面',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of goods_categroy
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_orders`
-- ----------------------------
DROP TABLE IF EXISTS `goods_orders`;
CREATE TABLE `goods_orders` (
  `id` int(11) DEFAULT NULL,
  `ordersn` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `order_time` int(11) DEFAULT NULL COMMENT '下单时间,unix timestamp 时间截',
  `status` int(11) DEFAULT NULL COMMENT '订单状态',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `pay_status` int(11) DEFAULT NULL COMMENT '支付状态,0未支付,1支付成功',
  `pay_type` varchar(255) DEFAULT NULL COMMENT '支付方式',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `address` varchar(255) DEFAULT NULL COMMENT '收获地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品订单表';

-- ----------------------------
-- Records of goods_orders
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_orders_detail`
-- ----------------------------
DROP TABLE IF EXISTS `goods_orders_detail`;
CREATE TABLE `goods_orders_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `goods_num` int(11) DEFAULT NULL COMMENT '购买产品数量',
  `goods_price` int(11) DEFAULT NULL COMMENT '产品价格',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单详细表';

-- ----------------------------
-- Records of goods_orders_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_pic`
-- ----------------------------
DROP TABLE IF EXISTS `goods_pic`;
CREATE TABLE `goods_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL COMMENT '产品图片',
  `is_default` int(11) DEFAULT '0' COMMENT '是否默认图片,1默认,0正常,默认正常',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品图片库';

-- ----------------------------
-- Records of goods_pic
-- ----------------------------

-- ----------------------------
-- Table structure for `group_chat`
-- ----------------------------
DROP TABLE IF EXISTS `group_chat`;
CREATE TABLE `group_chat` (
  `id` int(11) NOT NULL DEFAULT '0',
  `chat_title` int(11) DEFAULT NULL COMMENT '聊天室名称',
  `publish_time` int(11) DEFAULT NULL COMMENT '创建时间,unix timestamp',
  `admin_id` int(11) DEFAULT NULL COMMENT '群聊发起者',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='群聊';

-- ----------------------------
-- Records of group_chat
-- ----------------------------

-- ----------------------------
-- Table structure for `group_chat_messages`
-- ----------------------------
DROP TABLE IF EXISTS `group_chat_messages`;
CREATE TABLE `group_chat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) DEFAULT NULL COMMENT '聊天室id',
  `user_id` int(11) DEFAULT NULL COMMENT '群聊发起者',
  `send_time` int(11) DEFAULT NULL COMMENT '发送时间,unix timestamp',
  `to_user_id` int(11) DEFAULT '0' COMMENT '@用户,0默认全体',
  `body` text COMMENT '发送内容,json数据',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='群聊消息';

-- ----------------------------
-- Records of group_chat_messages
-- ----------------------------

-- ----------------------------
-- Table structure for `group_chat_users`
-- ----------------------------
DROP TABLE IF EXISTS `group_chat_users`;
CREATE TABLE `group_chat_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) DEFAULT NULL COMMENT '群聊id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `privilege` int(11) DEFAULT '0' COMMENT '0普通用户,1为群聊所有者',
  `join_time` int(11) DEFAULT NULL COMMENT '加入时间,unix timestamp',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='群聊用户';

-- ----------------------------
-- Records of group_chat_users
-- ----------------------------

-- ----------------------------
-- Table structure for `guest`
-- ----------------------------
DROP TABLE IF EXISTS `guest`;
CREATE TABLE `guest` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `sexual_orientation` tinyint(4) DEFAULT NULL COMMENT '性取向',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='游客表';

-- ----------------------------
-- Records of guest
-- ----------------------------

-- ----------------------------
-- Table structure for `live_buy_list`
-- ----------------------------
DROP TABLE IF EXISTS `live_buy_list`;
CREATE TABLE `live_buy_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL COMMENT '直播室id',
  `user_id` int(11) DEFAULT NULL COMMENT '购买用户id',
  `buy_time` int(11) DEFAULT NULL COMMENT '购买门票时间,unix timestamp',
  `masonry` int(11) DEFAULT NULL COMMENT '花费钻石',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='直播室门票购买表';

-- ----------------------------
-- Records of live_buy_list
-- ----------------------------

-- ----------------------------
-- Table structure for `live_categroy`
-- ----------------------------
DROP TABLE IF EXISTS `live_categroy`;
CREATE TABLE `live_categroy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `parent_id` int(11) DEFAULT '0' COMMENT '分类父id',
  `ordid` int(11) DEFAULT '255' COMMENT '排序id',
  `isshow` int(11) DEFAULT '0' COMMENT '是否显示,0 为显示,1为不显示,默认显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='直播分类';

-- ----------------------------
-- Records of live_categroy
-- ----------------------------

-- ----------------------------
-- Table structure for `live_chat_message`
-- ----------------------------
DROP TABLE IF EXISTS `live_chat_message`;
CREATE TABLE `live_chat_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL COMMENT '直播id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `send_time` int(11) DEFAULT NULL COMMENT '发送时间,unix timestamp 时间截',
  `message_type` int(11) DEFAULT '0' COMMENT '消息类型,0普通消息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='直播间聊天';

-- ----------------------------
-- Records of live_chat_message
-- ----------------------------

-- ----------------------------
-- Table structure for `live_gift`
-- ----------------------------
DROP TABLE IF EXISTS `live_gift`;
CREATE TABLE `live_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL COMMENT '直播id',
  `gift_id` int(11) DEFAULT NULL COMMENT '礼品id',
  `send_time` int(11) DEFAULT NULL COMMENT '赠送时间,unix timestamp',
  `to_user_id` int(11) DEFAULT NULL COMMENT '主播id',
  `gift_num` int(11) DEFAULT NULL COMMENT '礼品数量',
  `masonry` int(11) DEFAULT NULL COMMENT '礼品价格,钻石',
  `user_id` int(11) DEFAULT NULL COMMENT '赠送者id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='主播收到的礼品';

-- ----------------------------
-- Records of live_gift
-- ----------------------------

-- ----------------------------
-- Table structure for `live_invite`
-- ----------------------------
DROP TABLE IF EXISTS `live_invite`;
CREATE TABLE `live_invite` (
  `id` int(11) NOT NULL DEFAULT '0',
  `live_id` int(11) DEFAULT NULL,
  `user_list_id` text COMMENT '邀请直播用户id,json数据',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邀请直播用户表';

-- ----------------------------
-- Records of live_invite
-- ----------------------------

-- ----------------------------
-- Table structure for `live_telecast`
-- ----------------------------
DROP TABLE IF EXISTS `live_telecast`;
CREATE TABLE `live_telecast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `begin_time` int(11) DEFAULT NULL COMMENT '开始时间,unix timestamp',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间,unix timestamp',
  `income` int(11) DEFAULT NULL COMMENT '收入',
  `title` varchar(11) DEFAULT NULL COMMENT '标题',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `live_type` varchar(255) DEFAULT NULL COMMENT '直播类型',
  `masonry` decimal(10,2) DEFAULT NULL COMMENT '门票价格,钻石个数',
  `cover_img` varchar(255) DEFAULT NULL COMMENT '封面',
  `user_level_limit` int(11) DEFAULT NULL COMMENT '用户等级限制',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间,unix timestamp',
  `is_end` tinyint(4) DEFAULT '0' COMMENT '是否结束,0未结束,1结束,默认未结束',
  `time_long` int(11) DEFAULT NULL COMMENT '直播时长,unix timestamp',
  `review_num` int(11) DEFAULT '0' COMMENT '回放次数',
  `video_path` varchar(255) DEFAULT NULL COMMENT '直播视频地址',
  `record_video_path` varchar(255) DEFAULT NULL COMMENT '视频录制地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='直播表';

-- ----------------------------
-- Records of live_telecast
-- ----------------------------

-- ----------------------------
-- Table structure for `live_telecast_user`
-- ----------------------------
DROP TABLE IF EXISTS `live_telecast_user`;
CREATE TABLE `live_telecast_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL COMMENT '直播id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `join_time` int(11) DEFAULT NULL COMMENT '加入时间,unix timestamp',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='直播室用户表';

-- ----------------------------
-- Records of live_telecast_user
-- ----------------------------

-- ----------------------------
-- Table structure for `masonry_live_buy`
-- ----------------------------
DROP TABLE IF EXISTS `masonry_live_buy`;
CREATE TABLE `masonry_live_buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `masonry` int(11) DEFAULT NULL COMMENT '原账户钻石',
  `gift_id` int(11) DEFAULT NULL COMMENT '变化钻石',
  `gift_num` int(11) DEFAULT NULL COMMENT '变化后账户钻石',
  `mr_id` int(11) NOT NULL DEFAULT '0' COMMENT '砖石消费id',
  `to_user` int(11) DEFAULT NULL COMMENT '主播id',
  PRIMARY KEY (`id`,`mr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='直播消费详细';

-- ----------------------------
-- Records of masonry_live_buy
-- ----------------------------

-- ----------------------------
-- Table structure for `masonry_record`
-- ----------------------------
DROP TABLE IF EXISTS `masonry_record`;
CREATE TABLE `masonry_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `masonry` int(11) DEFAULT NULL COMMENT '原账户钻石',
  `opt_masonry` int(11) DEFAULT NULL COMMENT '变化钻石',
  `last_masonry` int(11) DEFAULT NULL COMMENT '变化后账户钻石',
  `raise_time` int(11) DEFAULT NULL COMMENT '发生时间,unix timestamp',
  `m_direct` int(11) DEFAULT NULL COMMENT '增减,-1表示减少,1表示增加',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `m_type` int(11) DEFAULT NULL COMMENT '增减类型,100购买l礼品,102表示发红包',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='钻石收支记录';

-- ----------------------------
-- Records of masonry_record
-- ----------------------------

-- ----------------------------
-- Table structure for `messages`
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) DEFAULT NULL COMMENT '发送用户id',
  `to_id` int(11) DEFAULT NULL COMMENT '接受用户id',
  `send_time` int(11) DEFAULT NULL COMMENT '发送时间,unix timestamp 时间截',
  `is_sys` int(11) DEFAULT NULL COMMENT '是否是系统消息',
  `body` text COMMENT '私信内容,json格式数据',
  `live_id` int(11) DEFAULT NULL COMMENT '直播id',
  `is_read` int(11) DEFAULT '0' COMMENT '是否阅读,0未读,1已读取,默认 0未读',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='私信';

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for `money_record`
-- ----------------------------
DROP TABLE IF EXISTS `money_record`;
CREATE TABLE `money_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `money` decimal(10,0) DEFAULT NULL COMMENT '账户原金额',
  `opt_money` decimal(10,0) DEFAULT NULL COMMENT '变化金额',
  `last_money` decimal(10,0) DEFAULT NULL COMMENT '变化后金额',
  `raise_time` int(11) DEFAULT NULL COMMENT '发生时间,unix timestamp 时间截',
  `m_direct` int(11) DEFAULT NULL COMMENT '增减,1表示曾,-1表示减少',
  `m_type` int(11) DEFAULT NULL COMMENT '变化类型,100 提现,101 购买钻石',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='资金变化记录';

-- ----------------------------
-- Records of money_record
-- ----------------------------

-- ----------------------------
-- Table structure for `my_friends`
-- ----------------------------
DROP TABLE IF EXISTS `my_friends`;
CREATE TABLE `my_friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '好友列表',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `friend_id` int(11) DEFAULT NULL COMMENT '好友id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='好友表';

-- ----------------------------
-- Records of my_friends
-- ----------------------------

-- ----------------------------
-- Table structure for `pay_orders`
-- ----------------------------
DROP TABLE IF EXISTS `pay_orders`;
CREATE TABLE `pay_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordersn` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `masonry` int(11) DEFAULT NULL COMMENT '充值钻石个数',
  `money` decimal(10,0) DEFAULT NULL COMMENT '支付money',
  `pay_status` int(11) DEFAULT NULL COMMENT '支付状态,0等待支付,1支付成功',
  `pay_type` varchar(11) NOT NULL DEFAULT '' COMMENT '支付方式',
  `order_time` int(11) DEFAULT NULL COMMENT '下单时间,unix timestamp 时间截',
  `pay_time` int(11) DEFAULT NULL COMMENT '支付成功时间,unix timestamp 时间截',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='充值表';

-- ----------------------------
-- Records of pay_orders
-- ----------------------------

-- ----------------------------
-- Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '问题标题',
  `content` text COMMENT '问题内容',
  `view_num` int(255) DEFAULT NULL COMMENT '浏览用户',
  `categroy_id` int(11) DEFAULT '255' COMMENT '排序id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='问题分类';

-- ----------------------------
-- Records of questions
-- ----------------------------

-- ----------------------------
-- Table structure for `question_categroy`
-- ----------------------------
DROP TABLE IF EXISTS `question_categroy`;
CREATE TABLE `question_categroy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `parent_id` int(11) DEFAULT '0' COMMENT '分类父id',
  `ordid` int(11) DEFAULT '255' COMMENT '排序id',
  `isshow` int(11) DEFAULT '0' COMMENT '是否显示，0显示,1不显示 ,默认0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='问题分类';

-- ----------------------------
-- Records of question_categroy
-- ----------------------------

-- ----------------------------
-- Table structure for `recommends`
-- ----------------------------
DROP TABLE IF EXISTS `recommends`;
CREATE TABLE `recommends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '推荐用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐表';

-- ----------------------------
-- Records of recommends
-- ----------------------------

-- ----------------------------
-- Table structure for `red_packets`
-- ----------------------------
DROP TABLE IF EXISTS `red_packets`;
CREATE TABLE `red_packets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `masonry` int(11) DEFAULT NULL COMMENT '钻石总数',
  `total_num` int(11) DEFAULT NULL COMMENT '总计份数',
  `left_masonry` int(11) DEFAULT NULL COMMENT '剩余红包',
  `receive_num` int(11) DEFAULT '0' COMMENT '已领取份数',
  `publish_time` int(11) DEFAULT NULL COMMENT '发放时间,unix timestamp',
  `title` varchar(255) DEFAULT NULL COMMENT '红包标题',
  `packets_type` int(11) DEFAULT '0' COMMENT '红包类型，0为固定，1为随机红包',
  `live_id` int(11) DEFAULT NULL COMMENT '直播id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='红包';

-- ----------------------------
-- Records of red_packets
-- ----------------------------

-- ----------------------------
-- Table structure for `red_packets_record`
-- ----------------------------
DROP TABLE IF EXISTS `red_packets_record`;
CREATE TABLE `red_packets_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rp_id` int(11) DEFAULT NULL COMMENT '红包id',
  `get_time` int(11) DEFAULT NULL COMMENT '获得时间,unix timestamp',
  `masonry` int(11) DEFAULT NULL COMMENT '红包金额,钻石个数',
  `user_id` int(11) DEFAULT NULL COMMENT '获得者用户ID',
  `mr_id` int(11) NOT NULL DEFAULT '0' COMMENT '砖石消费id',
  PRIMARY KEY (`id`,`mr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='红包获得记录';

-- ----------------------------
-- Records of red_packets_record
-- ----------------------------

-- ----------------------------
-- Table structure for `reports`
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_type` int(11) DEFAULT NULL COMMENT '模块类型',
  `report_type` int(11) DEFAULT NULL COMMENT '举报类型',
  `report_time` int(11) DEFAULT NULL COMMENT '举报时间,unix timestamp ',
  `user_id` int(11) DEFAULT NULL COMMENT 'j举报用户id',
  `report_user_id` int(11) DEFAULT NULL COMMENT '被举报用户',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='举报表';

-- ----------------------------
-- Records of reports
-- ----------------------------

-- ----------------------------
-- Table structure for `report_type`
-- ----------------------------
DROP TABLE IF EXISTS `report_type`;
CREATE TABLE `report_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(11) DEFAULT NULL COMMENT '举报类型名称',
  `ordid` int(11) DEFAULT '255' COMMENT '排序id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='举报类型表';

-- ----------------------------
-- Records of report_type
-- ----------------------------

-- ----------------------------
-- Table structure for `tags`
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL COMMENT '标签名称',
  `parent_id` int(11) DEFAULT NULL COMMENT '父标签id',
  `ordid` int(11) DEFAULT NULL COMMENT '排序',
  `hot` int(11) DEFAULT '0' COMMENT '标签使用热度',
  `isshow` int(11) DEFAULT NULL COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签系统';

-- ----------------------------
-- Records of tags
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `bind_email` tinyint(4) DEFAULT '0' COMMENT '是否绑定了email,0未绑定,1绑定.默认0',
  `bind_phone` tinyint(4) DEFAULT '0' COMMENT '是否绑定了手机,0未绑定,1绑定.默认0',
  `email` varchar(255) DEFAULT NULL COMMENT '电子邮件',
  `area` varchar(255) DEFAULT '' COMMENT '地区',
  `headimg` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `nickname` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `thirdpart` varchar(255) DEFAULT NULL COMMENT '第三方',
  `extra` varchar(255) DEFAULT NULL COMMENT '额外数据',
  `passwrd` varchar(255) DEFAULT NULL COMMENT '密码',
  `register_ip` varchar(255) DEFAULT NULL COMMENT '注册ip',
  `register_time` int(11) DEFAULT NULL COMMENT '注册时间,Unix timestamp',
  `level` int(11) DEFAULT NULL COMMENT '用户等级',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `birthday` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `domicile` varchar(255) DEFAULT NULL COMMENT '居住地',
  `height` int(11) DEFAULT NULL COMMENT '身高',
  `weight` int(11) DEFAULT NULL COMMENT '体重',
  `gesture_password` varchar(255) DEFAULT NULL COMMENT '手势密码',
  `pay_password` varchar(255) DEFAULT NULL COMMENT '支付密码',
  `lock_money` decimal(10,0) DEFAULT NULL COMMENT '冻结用户资金',
  `money` decimal(10,2) DEFAULT NULL COMMENT '账户资金',
  `masonry` int(11) DEFAULT NULL COMMENT '账户钻石',
  `mood` text COMMENT '心情',
  `avatar_authentication` int(11) DEFAULT '0' COMMENT '头像是否认证,0未认证,1认证',
  `langs` varchar(255) DEFAULT NULL COMMENT '语言',
  `characters` varchar(255) DEFAULT NULL COMMENT '个性',
  `love_state` tinyint(4) DEFAULT NULL COMMENT '恋爱状态',
  `dwelling_state` tinyint(4) DEFAULT NULL COMMENT '居中状态',
  `sex_orientation` tinyint(4) DEFAULT NULL COMMENT '性取向',
  `physique` tinyint(4) DEFAULT NULL COMMENT '体型',
  `hair_color` tinyint(4) DEFAULT NULL COMMENT '发色',
  `eyes` tinyint(4) DEFAULT NULL COMMENT '眼睛',
  `smoking` tinyint(4) DEFAULT NULL COMMENT '吸烟',
  `drink` tinyint(4) DEFAULT NULL COMMENT '喝酒',
  `dress` tinyint(4) NOT NULL DEFAULT '0' COMMENT '穿着',
  `religion` tinyint(4) DEFAULT NULL COMMENT '宗教',
  `experience` int(11) DEFAULT '0' COMMENT '用户经验',
  `is_lock` tinyint(4) DEFAULT '0' COMMENT '是否封号,0正常,1封号',
  `gold_coin` int(11) DEFAULT '0' COMMENT '金币',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `users_session`
-- ----------------------------
DROP TABLE IF EXISTS `users_session`;
CREATE TABLE `users_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL COMMENT '用户访问access_key',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `long_time` int(11) DEFAULT NULL COMMENT '时间长度，默认为秒',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `expired_at` int(11) DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='登录session表';

-- ----------------------------
-- Records of users_session
-- ----------------------------

-- ----------------------------
-- Table structure for `visitor`
-- ----------------------------
DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `visit_user_id` int(11) DEFAULT NULL COMMENT '被浏览用户id',
  `visit_time` int(11) DEFAULT NULL COMMENT '访问时间,unix timestamp',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='个人首页访问记录';

-- ----------------------------
-- Records of visitor
-- ----------------------------
