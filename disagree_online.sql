/*
Navicat MySQL Data Transfer

Source Server         : 120.27.143.54
Source Server Version : 50531
Source Host           : 120.27.143.54:3306
Source Database       : disagree_online

Target Server Type    : MYSQL
Target Server Version : 50531
File Encoding         : 65001

Date: 2017-02-20 22:47:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for asd
-- ----------------------------
DROP TABLE IF EXISTS `asd`;
CREATE TABLE `asd` (
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for asd1
-- ----------------------------
DROP TABLE IF EXISTS `asd1`;
CREATE TABLE `asd1` (
  `id` int(11) DEFAULT NULL,
  `cnt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for base64_data
-- ----------------------------
DROP TABLE IF EXISTS `base64_data`;
CREATE TABLE `base64_data` (
  `c` char(1) CHARACTER SET utf8mb4 DEFAULT NULL,
  `val` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for cms_anchor_task
-- ----------------------------
DROP TABLE IF EXISTS `cms_anchor_task`;
CREATE TABLE `cms_anchor_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anchor_id` int(11) DEFAULT NULL COMMENT '对应签约主播表的id',
  `uid` int(11) DEFAULT NULL COMMENT 'app中的用户id',
  `start_time` datetime DEFAULT NULL COMMENT '统计周期开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '统计周期结束时间',
  `task_coefficient` decimal(3,2) DEFAULT '0.00' COMMENT '系数',
  `task_basic_salary` decimal(8,0) DEFAULT '0' COMMENT '底薪',
  `plan_live_times` int(3) DEFAULT '0' COMMENT '计划直播次数',
  `plan_live_duration` int(8) DEFAULT '0' COMMENT '计划直播时长',
  `real_plan_live_duration` int(3) DEFAULT '0' COMMENT '真实直播时长',
  `real_plan_live_times` int(8) DEFAULT '0' COMMENT '真实直播次数',
  `forbidden_crash` int(2) DEFAULT '1' COMMENT '0：可以提现，1：禁止提现,2:审核中 ，3：已提现',
  `task_status` tinyint(255) DEFAULT '0' COMMENT '状态：0为未完成，1为完成',
  `cms_coin_id` int(11) DEFAULT NULL COMMENT '提现表的id',
  `coin` int(11) DEFAULT '0',
  `association_id` int(11) DEFAULT NULL,
  `coin_status` tinyint(11) DEFAULT '0' COMMENT '任务提现状态   0:审核中  1：待提现   2：提现申请中   3：已批准  4：提现成功  5:提现失败',
  `reword` decimal(10,0) DEFAULT '0' COMMENT '任务奖励',
  `create_time` timestamp NULL DEFAULT NULL,
  `association_task_id` int(10) DEFAULT NULL COMMENT '公会任务ID',
  `cstatus` tinyint(4) DEFAULT '0' COMMENT '主播授权状态  默认0:未申请  1：已通过  2:已拒绝  3：申请中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6270 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for cms_anchor_task_copy
-- ----------------------------
DROP TABLE IF EXISTS `cms_anchor_task_copy`;
CREATE TABLE `cms_anchor_task_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anchor_id` int(11) DEFAULT NULL COMMENT '对应签约主播表的id',
  `uid` int(11) DEFAULT NULL COMMENT 'app中的用户id',
  `start_time` datetime DEFAULT NULL COMMENT '统计周期开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '统计周期结束时间',
  `task_coefficient` decimal(3,2) DEFAULT '0.00' COMMENT '系数',
  `task_basic_salary` decimal(8,0) DEFAULT '0' COMMENT '底薪',
  `plan_live_times` int(3) DEFAULT '0' COMMENT '计划直播次数',
  `plan_live_duration` int(8) DEFAULT '0' COMMENT '计划直播时长',
  `real_plan_live_duration` int(3) DEFAULT '0' COMMENT '真实直播时长',
  `real_plan_live_times` int(8) DEFAULT '0' COMMENT '真实直播次数',
  `forbidden_crash` int(2) DEFAULT '1' COMMENT '0：可以提现，1：禁止提现,2:审核中 ，3：已提现',
  `task_status` tinyint(255) DEFAULT '0' COMMENT '状态：0为未完成，1为完成',
  `cms_coin_id` int(11) DEFAULT NULL COMMENT '提现表的id',
  `coin` int(11) DEFAULT '0',
  `association_id` int(11) DEFAULT NULL,
  `coin_status` tinyint(11) DEFAULT '0' COMMENT '任务提现状态   0:审核中  1：待提现   2：提现申请中   3：已批准  4：提现成功  5:提现失败',
  `reword` decimal(10,0) DEFAULT '0' COMMENT '任务奖励',
  `create_time` timestamp NULL DEFAULT NULL,
  `association_task_id` int(10) DEFAULT NULL COMMENT '公会任务ID',
  `cstatus` tinyint(4) DEFAULT '0' COMMENT '主播授权状态  默认0:未申请  1：已通过  2:已拒绝  3：申请中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6270 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for cms_association
-- ----------------------------
DROP TABLE IF EXISTS `cms_association`;
CREATE TABLE `cms_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '公会名称',
  `cms_uid` int(11) DEFAULT NULL COMMENT '运营系统的用户id',
  `start_time` datetime DEFAULT NULL COMMENT '合同开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '合同结束时间',
  `status` int(2) DEFAULT '0' COMMENT '0:正常，1锁定',
  `ali_account` varchar(255) DEFAULT NULL COMMENT '支付宝账户',
  `ali_name` varchar(255) DEFAULT NULL COMMENT '支付宝真实用户名',
  `open_id` varchar(255) DEFAULT NULL,
  `bs_id` int(11) DEFAULT NULL COMMENT '工会id',
  `manager` varchar(30) DEFAULT NULL COMMENT '管理员',
  `mobile` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `qq` varchar(15) DEFAULT NULL COMMENT 'QQ',
  `address` varchar(60) DEFAULT NULL COMMENT '联系地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='工会表';

-- ----------------------------
-- Table structure for cms_association_task
-- ----------------------------
DROP TABLE IF EXISTS `cms_association_task`;
CREATE TABLE `cms_association_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_id` smallint(11) DEFAULT NULL COMMENT '工会id',
  `coin_status` tinyint(11) DEFAULT '0' COMMENT '提现状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `reword` int(11) DEFAULT '0' COMMENT '佣金',
  `coin` int(11) DEFAULT '0' COMMENT '工会下签约主播的总不服票数',
  `task_total_salary` decimal(10,2) DEFAULT '0.00' COMMENT '已授权主播薪水总和',
  `cms_coin_id` int(11) DEFAULT NULL COMMENT '提现表的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=596 DEFAULT CHARSET=utf8mb4 COMMENT='工会任务表';

-- ----------------------------
-- Table structure for cms_association_task_copy
-- ----------------------------
DROP TABLE IF EXISTS `cms_association_task_copy`;
CREATE TABLE `cms_association_task_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_id` smallint(11) DEFAULT NULL COMMENT '工会id',
  `coin_status` tinyint(11) DEFAULT '0' COMMENT '提现状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `reword` int(11) DEFAULT '0' COMMENT '佣金',
  `coin` int(11) DEFAULT '0' COMMENT '工会下签约主播的总不服票数',
  `task_total_salary` decimal(10,2) DEFAULT '0.00' COMMENT '已授权主播薪水总和',
  `cms_coin_id` int(11) DEFAULT NULL COMMENT '提现表的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=596 DEFAULT CHARSET=utf8mb4 COMMENT='工会任务表';

-- ----------------------------
-- Table structure for cms_association_xuni
-- ----------------------------
DROP TABLE IF EXISTS `cms_association_xuni`;
CREATE TABLE `cms_association_xuni` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '公会名称',
  `cms_uid` int(11) DEFAULT NULL COMMENT '运营系统的用户id',
  `start_time` datetime DEFAULT NULL COMMENT '合同开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '合同结束时间',
  `status` int(2) DEFAULT '0' COMMENT '0:正常，1锁定',
  `ali_account` varchar(255) DEFAULT NULL COMMENT '支付宝账户',
  `ali_name` varchar(255) DEFAULT NULL COMMENT '支付宝真实用户名',
  `open_id` varchar(255) DEFAULT NULL,
  `bs_id` int(11) DEFAULT NULL COMMENT '工会id',
  `manager` varchar(30) DEFAULT NULL COMMENT '管理员',
  `mobile` varchar(15) DEFAULT NULL COMMENT '联系电话',
  `qq` varchar(15) DEFAULT NULL COMMENT 'QQ',
  `address` varchar(60) DEFAULT NULL COMMENT '联系地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='虚拟工会表';

-- ----------------------------
-- Table structure for cms_coin
-- ----------------------------
DROP TABLE IF EXISTS `cms_coin`;
CREATE TABLE `cms_coin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin` decimal(8,2) NOT NULL DEFAULT '0.00',
  `change_text` varchar(255) NOT NULL,
  `change_time` datetime NOT NULL,
  `status` int(2) NOT NULL COMMENT '提现状态：0:审核中 1:成功 2:失败 4:拒绝',
  `cms_id` int(11) DEFAULT NULL,
  `anchor_id` int(11) DEFAULT NULL,
  `association_id` int(11) DEFAULT NULL COMMENT '工会ID',
  `coin_type` int(11) DEFAULT '0' COMMENT '提现类型 0:支付宝 1:微信',
  `ali_batch_no` varchar(100) DEFAULT NULL,
  `mch_billno` varchar(255) DEFAULT NULL,
  `err_code` varchar(255) DEFAULT NULL,
  `err_code_des` varchar(255) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='工会提现表';

-- ----------------------------
-- Table structure for cms_coin_temp2
-- ----------------------------
DROP TABLE IF EXISTS `cms_coin_temp2`;
CREATE TABLE `cms_coin_temp2` (
  `id` int(11) NOT NULL DEFAULT '0',
  `coin` decimal(8,0) NOT NULL,
  `change_text` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `change_time` datetime NOT NULL,
  `status` int(2) NOT NULL COMMENT '提现状态：0:审核中 1:成功 2:失败 4:拒绝',
  `cms_id` int(11) DEFAULT NULL,
  `anchor_id` int(11) DEFAULT NULL,
  `association_id` int(11) DEFAULT NULL COMMENT '工会ID',
  `coin_type` int(11) DEFAULT '0' COMMENT '提现类型 0:支付宝 1:微信',
  `ali_batch_no` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `mch_billno` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `err_code` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `err_code_des` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for cms_coin_xuni
-- ----------------------------
DROP TABLE IF EXISTS `cms_coin_xuni`;
CREATE TABLE `cms_coin_xuni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin` decimal(12,2) NOT NULL DEFAULT '0.00',
  `change_text` varchar(255) NOT NULL,
  `change_time` datetime NOT NULL,
  `status` int(2) NOT NULL COMMENT '提现状态：0:审核中 1:成功 2:失败 4:拒绝',
  `cms_id` int(11) DEFAULT NULL,
  `anchor_id` int(11) DEFAULT NULL,
  `association_id` int(11) DEFAULT NULL COMMENT '工会ID',
  `coin_type` int(11) DEFAULT '0' COMMENT '提现类型 0:支付宝 1:微信',
  `ali_batch_no` varchar(100) DEFAULT NULL,
  `mch_billno` varchar(255) DEFAULT NULL,
  `err_code` varchar(255) DEFAULT NULL,
  `err_code_des` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=637 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='工会提现表';

-- ----------------------------
-- Table structure for cms_handler_cname
-- ----------------------------
DROP TABLE IF EXISTS `cms_handler_cname`;
CREATE TABLE `cms_handler_cname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handler_name` varchar(255) DEFAULT NULL COMMENT 'handler',
  `handler_cname` varchar(255) DEFAULT NULL COMMENT 'handler对应的中文名',
  PRIMARY KEY (`id`),
  KEY `ind_` (`handler_name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8mb4 COMMENT='运营系统各个handler对应的中文名字';

-- ----------------------------
-- Table structure for cms_handler_cname_1
-- ----------------------------
DROP TABLE IF EXISTS `cms_handler_cname_1`;
CREATE TABLE `cms_handler_cname_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handler_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'handler',
  `handler_cname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'handler对应的中文名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='运营系统各个handler对应的中文名字';

-- ----------------------------
-- Table structure for cms_log
-- ----------------------------
DROP TABLE IF EXISTS `cms_log`;
CREATE TABLE `cms_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_time` datetime DEFAULT NULL,
  `handler_name` varchar(30) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_` (`handler_name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=6041569 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for cms_menu
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) NOT NULL COMMENT '菜单名',
  `menu_code` varchar(255) NOT NULL COMMENT '菜单码',
  `url` varchar(255) DEFAULT NULL,
  `no` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for cms_power
-- ----------------------------
DROP TABLE IF EXISTS `cms_power`;
CREATE TABLE `cms_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `power_name` varchar(255) NOT NULL COMMENT '权限名',
  `power_url` varchar(255) DEFAULT NULL COMMENT '权限url',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单id',
  `power_code` varchar(255) DEFAULT NULL COMMENT '权限码，当是使用权限时才会用',
  `no` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COMMENT='权限表';

-- ----------------------------
-- Table structure for cms_role
-- ----------------------------
DROP TABLE IF EXISTS `cms_role`;
CREATE TABLE `cms_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL COMMENT '角色名',
  `role_app_version` varchar(255) DEFAULT NULL,
  `role_app_channel` varchar(1024) DEFAULT NULL,
  `role_urls` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Table structure for cms_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `cms_role_menu`;
CREATE TABLE `cms_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL COMMENT '角色菜单管理表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for cms_role_power
-- ----------------------------
DROP TABLE IF EXISTS `cms_role_power`;
CREATE TABLE `cms_role_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `power_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1467 DEFAULT CHARSET=utf8mb4 COMMENT='角色权限关联表';

-- ----------------------------
-- Table structure for cms_sign_anchor
-- ----------------------------
DROP TABLE IF EXISTS `cms_sign_anchor`;
CREATE TABLE `cms_sign_anchor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) DEFAULT NULL COMMENT '签约主播对应于用户表的id',
  `association_id` int(11) DEFAULT NULL COMMENT '所属公会的id,对应tab_association表的id',
  `basic_salary` decimal(8,0) DEFAULT '0' COMMENT '底薪',
  `coefficient` decimal(3,2) DEFAULT NULL COMMENT '提现系数',
  `plan_live_times` int(3) DEFAULT '1' COMMENT '目标直播次数',
  `plan_live_duration` int(8) DEFAULT '0' COMMENT '目标直播时长（单位：秒）',
  `count_cycle` enum('month','week','day') DEFAULT NULL COMMENT '统计周期：month，week',
  `hot_sign_count` int(8) DEFAULT NULL COMMENT '签约上热门次数',
  `hot_real_count` int(8) DEFAULT NULL COMMENT '实际上热门的次数',
  `sign_start_time` datetime DEFAULT NULL COMMENT '签约开始时间',
  `sign_end_time` datetime DEFAULT NULL COMMENT '签约结束时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `bs_id` int(8) DEFAULT NULL COMMENT '运营人员ID',
  `cms_id` int(8) DEFAULT NULL COMMENT '系统帐号ID',
  `status` int(8) DEFAULT '0' COMMENT '0:正常 1:未激活 2：删除3：已激活',
  `ali_account` varchar(255) DEFAULT NULL,
  `ali_name` varchar(255) DEFAULT NULL,
  `bstatus` tinyint(4) DEFAULT '0' COMMENT '注释：主播加入工会状态   默认0:未加入工会  1：已入会  2:已拒绝  3：不服审核中  4：工会审核中',
  `cstatus` tinyint(4) DEFAULT '0' COMMENT '主播授权状态  默认0:未申请  1：已通过  2:已拒绝  3：申请中',
  `apply_time` datetime DEFAULT NULL COMMENT '入会日期',
  `create_time` datetime DEFAULT NULL COMMENT '主播入驻时间',
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`),
  KEY `ind_assid` (`association_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3469 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for cms_user
-- ----------------------------
DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) NOT NULL COMMENT '登录名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `real_name` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `roleid` int(11) NOT NULL DEFAULT '-1' COMMENT '角色id',
  `crt_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `upd_time` timestamp NULL DEFAULT NULL,
  `state` int(11) DEFAULT '0' COMMENT '0正常1停用2删除',
  `user_type` int(11) NOT NULL DEFAULT '-1' COMMENT '用户类型：0超级管理员1运营管理2系统管理3运营用户4统计用户5渠道商6商家',
  `chanel_no` varchar(255) DEFAULT NULL COMMENT '渠道号',
  `chanel_name` varchar(255) DEFAULT NULL COMMENT '渠道名称',
  `chanel_sub_num` int(11) DEFAULT NULL COMMENT '渠道扣量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4171 DEFAULT CHARSET=utf8mb4 COMMENT='系统用户表';

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) DEFAULT NULL COMMENT '评论内容',
  `adduser` varchar(50) DEFAULT NULL COMMENT '评论人',
  `addtime` datetime DEFAULT NULL COMMENT '评论时间',
  `tagid` int(11) DEFAULT NULL COMMENT '标签ID',
  `subtag` varchar(200) DEFAULT NULL COMMENT '例如: 胸,腿,脸',
  PRIMARY KEY (`id`),
  KEY `comment_content` (`content`(255))
) ENGINE=InnoDB AUTO_INCREMENT=160865 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='评论表，评论库';

-- ----------------------------
-- Table structure for ht_beat_list
-- ----------------------------
DROP TABLE IF EXISTS `ht_beat_list`;
CREATE TABLE `ht_beat_list` (
  `cid` int(11) NOT NULL COMMENT '管理人员id',
  `beat_time` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for ht_clock
-- ----------------------------
DROP TABLE IF EXISTS `ht_clock`;
CREATE TABLE `ht_clock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '打卡时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1185 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ht_core_user
-- ----------------------------
DROP TABLE IF EXISTS `ht_core_user`;
CREATE TABLE `ht_core_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT 'user表的id',
  `group` varchar(255) DEFAULT NULL COMMENT '团队形式',
  `comment_level` varchar(255) DEFAULT NULL COMMENT '内容评级',
  `comment_type` varchar(255) DEFAULT NULL COMMENT '内容类型',
  `is_original` int(11) DEFAULT NULL COMMENT '是否原创：0是1否',
  `is_check` int(11) DEFAULT NULL COMMENT '是否认证:0是1否',
  `is_core` int(11) DEFAULT NULL COMMENT '是否在核心用户群：0是1否',
  `status` int(11) DEFAULT '0' COMMENT '状态：0正常2删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1093 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for ht_download
-- ----------------------------
DROP TABLE IF EXISTS `ht_download`;
CREATE TABLE `ht_download` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `m_id` varchar(255) DEFAULT NULL COMMENT '视频id',
  `m_code` varchar(255) DEFAULT NULL COMMENT '视频code',
  `title` varchar(255) DEFAULT NULL COMMENT '视频标题',
  `m_url` varchar(255) DEFAULT NULL COMMENT '视频url',
  `addtime` datetime DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT '0' COMMENT '0美拍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13735 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ht_financial
-- ----------------------------
DROP TABLE IF EXISTS `ht_financial`;
CREATE TABLE `ht_financial` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `charge` bigint(11) DEFAULT '0' COMMENT '总充值',
  `huodong` bigint(11) DEFAULT '0' COMMENT '活动发放不服币',
  `tixian` bigint(11) DEFAULT '0' COMMENT '已提现不服票',
  `bufubi` bigint(11) DEFAULT '0' COMMENT '平台剩余不服币',
  `bufupiao` bigint(11) DEFAULT '0' COMMENT '平台剩余不服票',
  `duihuan` bigint(11) DEFAULT '0' COMMENT '已兑换不服票',
  `xiaoshou` bigint(11) DEFAULT '0' COMMENT '虚拟商品销售所得不服币',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ht_media_comment
-- ----------------------------
DROP TABLE IF EXISTS `ht_media_comment`;
CREATE TABLE `ht_media_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) DEFAULT NULL COMMENT '对应的视频id',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `state` int(11) DEFAULT '0' COMMENT '评论状态0未使用1已使用',
  `adduser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62760 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ht_media_deal
-- ----------------------------
DROP TABLE IF EXISTS `ht_media_deal`;
CREATE TABLE `ht_media_deal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL COMMENT '视频详情地址',
  `type` int(11) DEFAULT NULL COMMENT '视频来源0秒拍1快手',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `state` int(11) DEFAULT '0' COMMENT '0未处理1已处理',
  `adduser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1465 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ht_media_download
-- ----------------------------
DROP TABLE IF EXISTS `ht_media_download`;
CREATE TABLE `ht_media_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `media_url` varchar(255) DEFAULT NULL COMMENT '视频播放地址',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `state` int(11) DEFAULT '0' COMMENT '0未上传1已上传',
  `type` int(11) DEFAULT NULL COMMENT '0秒拍',
  `m_code` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `adduser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1376 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ht_meipai_comment
-- ----------------------------
DROP TABLE IF EXISTS `ht_meipai_comment`;
CREATE TABLE `ht_meipai_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `c_id` varchar(255) DEFAULT NULL COMMENT '美拍评论id',
  `m_id` varchar(255) DEFAULT NULL COMMENT '美拍视频id',
  `comment` varchar(255) DEFAULT NULL COMMENT '评论',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `adduser` varchar(255) DEFAULT NULL COMMENT '添加人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=353237 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ht_menu
-- ----------------------------
DROP TABLE IF EXISTS `ht_menu`;
CREATE TABLE `ht_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) NOT NULL COMMENT '菜单名',
  `menu_code` varchar(255) NOT NULL COMMENT '菜单码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='菜单表';

-- ----------------------------
-- Table structure for ht_power
-- ----------------------------
DROP TABLE IF EXISTS `ht_power`;
CREATE TABLE `ht_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `power_name` varchar(255) NOT NULL COMMENT '权限名',
  `power_url` varchar(255) DEFAULT NULL COMMENT '权限url',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单id',
  `type` int(11) DEFAULT '0' COMMENT '0模块权限1使用权限2管理角色',
  `power_code` varchar(255) DEFAULT NULL COMMENT '权限码，当是使用权限时才会用',
  `charge_role` int(11) DEFAULT NULL COMMENT '被管理的角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COMMENT='权限表';

-- ----------------------------
-- Table structure for ht_role
-- ----------------------------
DROP TABLE IF EXISTS `ht_role`;
CREATE TABLE `ht_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL COMMENT '角色名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Table structure for ht_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `ht_role_menu`;
CREATE TABLE `ht_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL COMMENT '角色菜单管理表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ht_role_power
-- ----------------------------
DROP TABLE IF EXISTS `ht_role_power`;
CREATE TABLE `ht_role_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `power_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=519 DEFAULT CHARSET=utf8mb4 COMMENT='角色权限关联表';

-- ----------------------------
-- Table structure for ht_sign_list
-- ----------------------------
DROP TABLE IF EXISTS `ht_sign_list`;
CREATE TABLE `ht_sign_list` (
  `cid` int(11) NOT NULL COMMENT '管理人员id',
  `uid` int(11) NOT NULL COMMENT '签约主播id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for ht_upload_info
-- ----------------------------
DROP TABLE IF EXISTS `ht_upload_info`;
CREATE TABLE `ht_upload_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `totalNum` int(11) DEFAULT NULL,
  `uploadTime` int(11) DEFAULT NULL COMMENT '上传时间',
  `uploadMin` int(11) DEFAULT NULL,
  `uploadMax` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ht_user
-- ----------------------------
DROP TABLE IF EXISTS `ht_user`;
CREATE TABLE `ht_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) NOT NULL COMMENT '登录名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `real_name` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `roleid` int(11) NOT NULL DEFAULT '-1' COMMENT '角色id',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `state` int(11) DEFAULT '0' COMMENT '0正常1停用2删除',
  `user_type` int(11) NOT NULL DEFAULT '-1' COMMENT '用户类型：0超级管理员1运营管理2系统管理3运营用户4统计用户5渠道商6商家',
  `chanel_no` varchar(255) DEFAULT NULL COMMENT '渠道号',
  `chanel_name` varchar(255) DEFAULT NULL COMMENT '渠道名称',
  `chanel_sub_num` double(11,0) DEFAULT '0' COMMENT '渠道扣量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COMMENT='系统用户表';

-- ----------------------------
-- Table structure for log_idfa
-- ----------------------------
DROP TABLE IF EXISTS `log_idfa`;
CREATE TABLE `log_idfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfa` varchar(50) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `channel` varchar(20) DEFAULT NULL COMMENT '积分墙渠道',
  `is_success` tinyint(2) DEFAULT NULL COMMENT '1为成功，0为失败',
  `is_callback_success` tinyint(2) DEFAULT NULL COMMENT '1为成功，0为失败',
  `url` varchar(200) DEFAULT NULL COMMENT '回调url',
  `imei` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1131247 DEFAULT CHARSET=utf8mb4 COMMENT='idfa日志表';

-- ----------------------------
-- Table structure for log_matchindex
-- ----------------------------
DROP TABLE IF EXISTS `log_matchindex`;
CREATE TABLE `log_matchindex` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL,
  `match_id` int(18) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=392969 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for log_user_action
-- ----------------------------
DROP TABLE IF EXISTS `log_user_action`;
CREATE TABLE `log_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(30) DEFAULT NULL COMMENT '行为名称',
  `handler_name` varchar(30) DEFAULT NULL COMMENT '接口对应的类名',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `app_version` varchar(10) DEFAULT NULL COMMENT '不服版本',
  `login_type` varchar(255) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `channel` varchar(20) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `pjson` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`),
  KEY `ind_t` (`log_time`),
  KEY `ind_c` (`uid`,`log_time`),
  KEY `ind_imei` (`imei`(14))
) ENGINE=InnoDB AUTO_INCREMENT=37171773 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for log_user_device
-- ----------------------------
DROP TABLE IF EXISTS `log_user_device`;
CREATE TABLE `log_user_device` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` bigint(18) DEFAULT NULL COMMENT '用户id',
  `ip_address` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '终端IP地址',
  `imei` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '终端机器码',
  `channel_name` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '渠道商名',
  `device_type` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '终端品牌',
  `device_mtype` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '设备系统名(ios\\android)',
  `app_version` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '不服版本',
  `device_version` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '终端版本',
  `carrier_operator` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '运营商',
  `record_type` smallint(2) DEFAULT NULL COMMENT '记录类型方式 1:注册2:登录3:三方登录4:打开APP应用5:IOS地推统计; 6:游客；7:激活设备',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `version_id` smallint(6) DEFAULT '0',
  `before_version_id` int(11) DEFAULT '0' COMMENT '之前版本ID',
  PRIMARY KEY (`id`,`create_time`),
  KEY `ind_user_id` (`user_id`),
  KEY `ind_c` (`create_time`),
  KEY `ind_imei` (`imei`(14))
) ENGINE=InnoDB AUTO_INCREMENT=21498417 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户设备信息'
/*!50100 PARTITION BY RANGE (TO_DAYS (create_time))
(PARTITION p20150714 VALUES LESS THAN (736158) ENGINE = InnoDB,
 PARTITION p20150715 VALUES LESS THAN (736159) ENGINE = InnoDB,
 PARTITION p20150716 VALUES LESS THAN (736160) ENGINE = InnoDB,
 PARTITION p20150717 VALUES LESS THAN (736161) ENGINE = InnoDB,
 PARTITION p20150718 VALUES LESS THAN (736162) ENGINE = InnoDB,
 PARTITION p20150719 VALUES LESS THAN (736163) ENGINE = InnoDB,
 PARTITION p20150720 VALUES LESS THAN (736164) ENGINE = InnoDB,
 PARTITION p20150721 VALUES LESS THAN (736165) ENGINE = InnoDB,
 PARTITION p20150722 VALUES LESS THAN (736166) ENGINE = InnoDB,
 PARTITION p20150723 VALUES LESS THAN (736167) ENGINE = InnoDB,
 PARTITION p20150724 VALUES LESS THAN (736168) ENGINE = InnoDB,
 PARTITION p20150725 VALUES LESS THAN (736169) ENGINE = InnoDB,
 PARTITION p20150726 VALUES LESS THAN (736170) ENGINE = InnoDB,
 PARTITION p20150727 VALUES LESS THAN (736171) ENGINE = InnoDB,
 PARTITION p20150728 VALUES LESS THAN (736172) ENGINE = InnoDB,
 PARTITION p20150729 VALUES LESS THAN (736173) ENGINE = InnoDB,
 PARTITION p20150730 VALUES LESS THAN (736174) ENGINE = InnoDB,
 PARTITION p20150731 VALUES LESS THAN (736175) ENGINE = InnoDB,
 PARTITION p20150801 VALUES LESS THAN (736176) ENGINE = InnoDB,
 PARTITION p20150802 VALUES LESS THAN (736177) ENGINE = InnoDB,
 PARTITION p20150803 VALUES LESS THAN (736178) ENGINE = InnoDB,
 PARTITION p20150804 VALUES LESS THAN (736179) ENGINE = InnoDB,
 PARTITION p20150805 VALUES LESS THAN (736180) ENGINE = InnoDB,
 PARTITION p20150806 VALUES LESS THAN (736181) ENGINE = InnoDB,
 PARTITION p20150807 VALUES LESS THAN (736182) ENGINE = InnoDB,
 PARTITION p20150808 VALUES LESS THAN (736183) ENGINE = InnoDB,
 PARTITION p20150809 VALUES LESS THAN (736184) ENGINE = InnoDB,
 PARTITION p20150810 VALUES LESS THAN (736185) ENGINE = InnoDB,
 PARTITION p20150811 VALUES LESS THAN (736186) ENGINE = InnoDB,
 PARTITION p20150812 VALUES LESS THAN (736187) ENGINE = InnoDB,
 PARTITION p20150813 VALUES LESS THAN (736188) ENGINE = InnoDB,
 PARTITION p20150814 VALUES LESS THAN (736189) ENGINE = InnoDB,
 PARTITION p20150815 VALUES LESS THAN (736190) ENGINE = InnoDB,
 PARTITION p20150816 VALUES LESS THAN (736191) ENGINE = InnoDB,
 PARTITION p20150817 VALUES LESS THAN (736192) ENGINE = InnoDB,
 PARTITION p20150818 VALUES LESS THAN (736193) ENGINE = InnoDB,
 PARTITION p20150819 VALUES LESS THAN (736194) ENGINE = InnoDB,
 PARTITION p20150820 VALUES LESS THAN (736195) ENGINE = InnoDB,
 PARTITION p20150821 VALUES LESS THAN (736196) ENGINE = InnoDB,
 PARTITION p20150822 VALUES LESS THAN (736197) ENGINE = InnoDB,
 PARTITION p20150823 VALUES LESS THAN (736198) ENGINE = InnoDB,
 PARTITION p20150824 VALUES LESS THAN (736199) ENGINE = InnoDB,
 PARTITION p20150825 VALUES LESS THAN (736200) ENGINE = InnoDB,
 PARTITION p20150826 VALUES LESS THAN (736201) ENGINE = InnoDB,
 PARTITION p20150827 VALUES LESS THAN (736202) ENGINE = InnoDB,
 PARTITION p20150828 VALUES LESS THAN (736203) ENGINE = InnoDB,
 PARTITION p20150829 VALUES LESS THAN (736204) ENGINE = InnoDB,
 PARTITION p20150830 VALUES LESS THAN (736205) ENGINE = InnoDB,
 PARTITION p20150831 VALUES LESS THAN (736206) ENGINE = InnoDB,
 PARTITION p20150901 VALUES LESS THAN (736207) ENGINE = InnoDB,
 PARTITION p20150902 VALUES LESS THAN (736208) ENGINE = InnoDB,
 PARTITION p20150903 VALUES LESS THAN (736209) ENGINE = InnoDB,
 PARTITION p20150904 VALUES LESS THAN (736210) ENGINE = InnoDB,
 PARTITION p20150905 VALUES LESS THAN (736211) ENGINE = InnoDB,
 PARTITION p20150906 VALUES LESS THAN (736212) ENGINE = InnoDB,
 PARTITION p20150907 VALUES LESS THAN (736213) ENGINE = InnoDB,
 PARTITION p20150908 VALUES LESS THAN (736214) ENGINE = InnoDB,
 PARTITION p20150909 VALUES LESS THAN (736215) ENGINE = InnoDB,
 PARTITION p20150910 VALUES LESS THAN (736216) ENGINE = InnoDB,
 PARTITION p20150911 VALUES LESS THAN (736217) ENGINE = InnoDB,
 PARTITION p20150912 VALUES LESS THAN (736218) ENGINE = InnoDB,
 PARTITION p20150913 VALUES LESS THAN (736219) ENGINE = InnoDB,
 PARTITION p20150914 VALUES LESS THAN (736220) ENGINE = InnoDB,
 PARTITION p20150915 VALUES LESS THAN (736221) ENGINE = InnoDB,
 PARTITION p20150916 VALUES LESS THAN (736222) ENGINE = InnoDB,
 PARTITION p20150917 VALUES LESS THAN (736223) ENGINE = InnoDB,
 PARTITION p20150918 VALUES LESS THAN (736224) ENGINE = InnoDB,
 PARTITION p20150919 VALUES LESS THAN (736225) ENGINE = InnoDB,
 PARTITION p20150920 VALUES LESS THAN (736226) ENGINE = InnoDB,
 PARTITION p20150921 VALUES LESS THAN (736227) ENGINE = InnoDB,
 PARTITION p20150922 VALUES LESS THAN (736228) ENGINE = InnoDB,
 PARTITION p20150923 VALUES LESS THAN (736229) ENGINE = InnoDB,
 PARTITION p20150924 VALUES LESS THAN (736230) ENGINE = InnoDB,
 PARTITION p20150925 VALUES LESS THAN (736231) ENGINE = InnoDB,
 PARTITION p20150926 VALUES LESS THAN (736232) ENGINE = InnoDB,
 PARTITION p20150927 VALUES LESS THAN (736233) ENGINE = InnoDB,
 PARTITION p20150928 VALUES LESS THAN (736234) ENGINE = InnoDB,
 PARTITION p20150929 VALUES LESS THAN (736235) ENGINE = InnoDB,
 PARTITION p20150930 VALUES LESS THAN (736236) ENGINE = InnoDB,
 PARTITION p20151001 VALUES LESS THAN (736237) ENGINE = InnoDB,
 PARTITION p20151002 VALUES LESS THAN (736238) ENGINE = InnoDB,
 PARTITION p20151003 VALUES LESS THAN (736239) ENGINE = InnoDB,
 PARTITION p20151004 VALUES LESS THAN (736240) ENGINE = InnoDB,
 PARTITION p20151005 VALUES LESS THAN (736241) ENGINE = InnoDB,
 PARTITION p20151006 VALUES LESS THAN (736242) ENGINE = InnoDB,
 PARTITION p20151007 VALUES LESS THAN (736243) ENGINE = InnoDB,
 PARTITION p20151008 VALUES LESS THAN (736244) ENGINE = InnoDB,
 PARTITION p20151009 VALUES LESS THAN (736245) ENGINE = InnoDB,
 PARTITION p20151010 VALUES LESS THAN (736246) ENGINE = InnoDB,
 PARTITION p20151011 VALUES LESS THAN (736247) ENGINE = InnoDB,
 PARTITION p20151012 VALUES LESS THAN (736248) ENGINE = InnoDB,
 PARTITION p20151013 VALUES LESS THAN (736249) ENGINE = InnoDB,
 PARTITION p20151014 VALUES LESS THAN (736250) ENGINE = InnoDB,
 PARTITION p20151015 VALUES LESS THAN (736251) ENGINE = InnoDB,
 PARTITION p20151016 VALUES LESS THAN (736252) ENGINE = InnoDB,
 PARTITION p20151017 VALUES LESS THAN (736253) ENGINE = InnoDB,
 PARTITION p20151018 VALUES LESS THAN (736254) ENGINE = InnoDB,
 PARTITION p20151019 VALUES LESS THAN (736255) ENGINE = InnoDB,
 PARTITION p20151020 VALUES LESS THAN (736256) ENGINE = InnoDB,
 PARTITION p20151021 VALUES LESS THAN (736257) ENGINE = InnoDB,
 PARTITION p20151022 VALUES LESS THAN (736258) ENGINE = InnoDB,
 PARTITION p20151023 VALUES LESS THAN (736259) ENGINE = InnoDB,
 PARTITION p20151024 VALUES LESS THAN (736260) ENGINE = InnoDB,
 PARTITION p20151025 VALUES LESS THAN (736261) ENGINE = InnoDB,
 PARTITION p20151026 VALUES LESS THAN (736262) ENGINE = InnoDB,
 PARTITION p20151027 VALUES LESS THAN (736263) ENGINE = InnoDB,
 PARTITION p20151028 VALUES LESS THAN (736264) ENGINE = InnoDB,
 PARTITION p20151029 VALUES LESS THAN (736265) ENGINE = InnoDB,
 PARTITION p20151030 VALUES LESS THAN (736266) ENGINE = InnoDB,
 PARTITION p20151031 VALUES LESS THAN (736267) ENGINE = InnoDB,
 PARTITION p20151101 VALUES LESS THAN (736268) ENGINE = InnoDB,
 PARTITION p20151102 VALUES LESS THAN (736269) ENGINE = InnoDB,
 PARTITION p20151103 VALUES LESS THAN (736270) ENGINE = InnoDB,
 PARTITION p20151104 VALUES LESS THAN (736271) ENGINE = InnoDB,
 PARTITION p20151105 VALUES LESS THAN (736272) ENGINE = InnoDB,
 PARTITION p20151106 VALUES LESS THAN (736273) ENGINE = InnoDB,
 PARTITION p20151107 VALUES LESS THAN (736274) ENGINE = InnoDB,
 PARTITION p20151108 VALUES LESS THAN (736275) ENGINE = InnoDB,
 PARTITION p20151109 VALUES LESS THAN (736276) ENGINE = InnoDB,
 PARTITION p20151110 VALUES LESS THAN (736277) ENGINE = InnoDB,
 PARTITION p20151111 VALUES LESS THAN (736278) ENGINE = InnoDB,
 PARTITION p20151112 VALUES LESS THAN (736279) ENGINE = InnoDB,
 PARTITION p20151113 VALUES LESS THAN (736280) ENGINE = InnoDB,
 PARTITION p20151114 VALUES LESS THAN (736281) ENGINE = InnoDB,
 PARTITION p20151115 VALUES LESS THAN (736282) ENGINE = InnoDB,
 PARTITION p20151116 VALUES LESS THAN (736283) ENGINE = InnoDB,
 PARTITION p20151117 VALUES LESS THAN (736284) ENGINE = InnoDB,
 PARTITION p20151118 VALUES LESS THAN (736285) ENGINE = InnoDB,
 PARTITION p20151119 VALUES LESS THAN (736286) ENGINE = InnoDB,
 PARTITION p20151120 VALUES LESS THAN (736287) ENGINE = InnoDB,
 PARTITION p20151121 VALUES LESS THAN (736288) ENGINE = InnoDB,
 PARTITION p20151122 VALUES LESS THAN (736289) ENGINE = InnoDB,
 PARTITION p20151123 VALUES LESS THAN (736290) ENGINE = InnoDB,
 PARTITION p20151124 VALUES LESS THAN (736291) ENGINE = InnoDB,
 PARTITION p20151125 VALUES LESS THAN (736292) ENGINE = InnoDB,
 PARTITION p20151126 VALUES LESS THAN (736293) ENGINE = InnoDB,
 PARTITION p20151127 VALUES LESS THAN (736294) ENGINE = InnoDB,
 PARTITION p20151128 VALUES LESS THAN (736295) ENGINE = InnoDB,
 PARTITION p20151129 VALUES LESS THAN (736296) ENGINE = InnoDB,
 PARTITION p20151130 VALUES LESS THAN (736297) ENGINE = InnoDB,
 PARTITION p20151201 VALUES LESS THAN (736298) ENGINE = InnoDB,
 PARTITION p20151202 VALUES LESS THAN (736299) ENGINE = InnoDB,
 PARTITION p20151203 VALUES LESS THAN (736300) ENGINE = InnoDB,
 PARTITION p20151204 VALUES LESS THAN (736301) ENGINE = InnoDB,
 PARTITION p20151205 VALUES LESS THAN (736302) ENGINE = InnoDB,
 PARTITION p20151206 VALUES LESS THAN (736303) ENGINE = InnoDB,
 PARTITION p20151207 VALUES LESS THAN (736304) ENGINE = InnoDB,
 PARTITION p20151208 VALUES LESS THAN (736305) ENGINE = InnoDB,
 PARTITION p20151209 VALUES LESS THAN (736306) ENGINE = InnoDB,
 PARTITION p20151210 VALUES LESS THAN (736307) ENGINE = InnoDB,
 PARTITION p20151211 VALUES LESS THAN (736308) ENGINE = InnoDB,
 PARTITION p20151212 VALUES LESS THAN (736309) ENGINE = InnoDB,
 PARTITION p20151213 VALUES LESS THAN (736310) ENGINE = InnoDB,
 PARTITION p20151214 VALUES LESS THAN (736311) ENGINE = InnoDB,
 PARTITION p20151215 VALUES LESS THAN (736312) ENGINE = InnoDB,
 PARTITION p20151216 VALUES LESS THAN (736313) ENGINE = InnoDB,
 PARTITION p20151217 VALUES LESS THAN (736314) ENGINE = InnoDB,
 PARTITION p20151218 VALUES LESS THAN (736315) ENGINE = InnoDB,
 PARTITION p20151219 VALUES LESS THAN (736316) ENGINE = InnoDB,
 PARTITION p20151220 VALUES LESS THAN (736317) ENGINE = InnoDB,
 PARTITION p20151221 VALUES LESS THAN (736318) ENGINE = InnoDB,
 PARTITION p20151222 VALUES LESS THAN (736319) ENGINE = InnoDB,
 PARTITION p20151223 VALUES LESS THAN (736320) ENGINE = InnoDB,
 PARTITION p20151224 VALUES LESS THAN (736321) ENGINE = InnoDB,
 PARTITION p20151225 VALUES LESS THAN (736322) ENGINE = InnoDB,
 PARTITION p20151226 VALUES LESS THAN (736323) ENGINE = InnoDB,
 PARTITION p20151227 VALUES LESS THAN (736324) ENGINE = InnoDB,
 PARTITION p20151228 VALUES LESS THAN (736325) ENGINE = InnoDB,
 PARTITION p20151229 VALUES LESS THAN (736326) ENGINE = InnoDB,
 PARTITION p20151230 VALUES LESS THAN (736327) ENGINE = InnoDB,
 PARTITION p20151231 VALUES LESS THAN (736328) ENGINE = InnoDB,
 PARTITION p20160101 VALUES LESS THAN (736329) ENGINE = InnoDB,
 PARTITION p20160102 VALUES LESS THAN (736330) ENGINE = InnoDB,
 PARTITION p20160103 VALUES LESS THAN (736331) ENGINE = InnoDB,
 PARTITION p20160104 VALUES LESS THAN (736332) ENGINE = InnoDB,
 PARTITION p20160105 VALUES LESS THAN (736333) ENGINE = InnoDB,
 PARTITION p20160106 VALUES LESS THAN (736334) ENGINE = InnoDB,
 PARTITION p20160107 VALUES LESS THAN (736335) ENGINE = InnoDB,
 PARTITION p20160108 VALUES LESS THAN (736336) ENGINE = InnoDB,
 PARTITION p20160109 VALUES LESS THAN (736337) ENGINE = InnoDB,
 PARTITION p20160110 VALUES LESS THAN (736338) ENGINE = InnoDB,
 PARTITION p20160111 VALUES LESS THAN (736339) ENGINE = InnoDB,
 PARTITION p20160112 VALUES LESS THAN (736340) ENGINE = InnoDB,
 PARTITION p20160113 VALUES LESS THAN (736341) ENGINE = InnoDB,
 PARTITION p20160114 VALUES LESS THAN (736342) ENGINE = InnoDB,
 PARTITION p20160115 VALUES LESS THAN (736343) ENGINE = InnoDB,
 PARTITION p20160116 VALUES LESS THAN (736344) ENGINE = InnoDB,
 PARTITION p20160117 VALUES LESS THAN (736345) ENGINE = InnoDB,
 PARTITION p20160118 VALUES LESS THAN (736346) ENGINE = InnoDB,
 PARTITION p20160119 VALUES LESS THAN (736347) ENGINE = InnoDB,
 PARTITION p20160120 VALUES LESS THAN (736348) ENGINE = InnoDB,
 PARTITION p20160121 VALUES LESS THAN (736349) ENGINE = InnoDB,
 PARTITION p20160122 VALUES LESS THAN (736350) ENGINE = InnoDB,
 PARTITION p20160123 VALUES LESS THAN (736351) ENGINE = InnoDB,
 PARTITION p20160124 VALUES LESS THAN (736352) ENGINE = InnoDB,
 PARTITION p20160125 VALUES LESS THAN (736353) ENGINE = InnoDB,
 PARTITION p20160126 VALUES LESS THAN (736354) ENGINE = InnoDB,
 PARTITION p20160127 VALUES LESS THAN (736355) ENGINE = InnoDB,
 PARTITION p20160128 VALUES LESS THAN (736356) ENGINE = InnoDB,
 PARTITION p20160129 VALUES LESS THAN (736357) ENGINE = InnoDB,
 PARTITION p20160130 VALUES LESS THAN (736358) ENGINE = InnoDB,
 PARTITION p20160131 VALUES LESS THAN (736359) ENGINE = InnoDB,
 PARTITION p20160201 VALUES LESS THAN (736360) ENGINE = InnoDB,
 PARTITION p20160202 VALUES LESS THAN (736361) ENGINE = InnoDB,
 PARTITION p20160203 VALUES LESS THAN (736362) ENGINE = InnoDB,
 PARTITION p20160204 VALUES LESS THAN (736363) ENGINE = InnoDB,
 PARTITION p20160205 VALUES LESS THAN (736364) ENGINE = InnoDB,
 PARTITION p20160206 VALUES LESS THAN (736365) ENGINE = InnoDB,
 PARTITION p20160207 VALUES LESS THAN (736366) ENGINE = InnoDB,
 PARTITION p20160208 VALUES LESS THAN (736367) ENGINE = InnoDB,
 PARTITION p20160209 VALUES LESS THAN (736368) ENGINE = InnoDB,
 PARTITION p20160210 VALUES LESS THAN (736369) ENGINE = InnoDB,
 PARTITION p20160211 VALUES LESS THAN (736370) ENGINE = InnoDB,
 PARTITION p20160212 VALUES LESS THAN (736371) ENGINE = InnoDB,
 PARTITION p20160213 VALUES LESS THAN (736372) ENGINE = InnoDB,
 PARTITION p20160214 VALUES LESS THAN (736373) ENGINE = InnoDB,
 PARTITION p20160215 VALUES LESS THAN (736374) ENGINE = InnoDB,
 PARTITION p20160216 VALUES LESS THAN (736375) ENGINE = InnoDB,
 PARTITION p20160217 VALUES LESS THAN (736376) ENGINE = InnoDB,
 PARTITION p20160218 VALUES LESS THAN (736377) ENGINE = InnoDB,
 PARTITION p20160219 VALUES LESS THAN (736378) ENGINE = InnoDB,
 PARTITION p20160220 VALUES LESS THAN (736379) ENGINE = InnoDB,
 PARTITION p20160221 VALUES LESS THAN (736380) ENGINE = InnoDB,
 PARTITION p20160222 VALUES LESS THAN (736381) ENGINE = InnoDB,
 PARTITION p20160223 VALUES LESS THAN (736382) ENGINE = InnoDB,
 PARTITION p20160224 VALUES LESS THAN (736383) ENGINE = InnoDB,
 PARTITION p20160225 VALUES LESS THAN (736384) ENGINE = InnoDB,
 PARTITION p20160226 VALUES LESS THAN (736385) ENGINE = InnoDB,
 PARTITION p20160227 VALUES LESS THAN (736386) ENGINE = InnoDB,
 PARTITION p20160228 VALUES LESS THAN (736387) ENGINE = InnoDB,
 PARTITION p20160229 VALUES LESS THAN (736388) ENGINE = InnoDB,
 PARTITION p20160301 VALUES LESS THAN (736389) ENGINE = InnoDB,
 PARTITION p20160302 VALUES LESS THAN (736390) ENGINE = InnoDB,
 PARTITION p20160303 VALUES LESS THAN (736391) ENGINE = InnoDB,
 PARTITION p20160304 VALUES LESS THAN (736392) ENGINE = InnoDB,
 PARTITION p20160305 VALUES LESS THAN (736393) ENGINE = InnoDB,
 PARTITION p20160306 VALUES LESS THAN (736394) ENGINE = InnoDB,
 PARTITION p20160307 VALUES LESS THAN (736395) ENGINE = InnoDB,
 PARTITION p20160308 VALUES LESS THAN (736396) ENGINE = InnoDB,
 PARTITION p20160309 VALUES LESS THAN (736397) ENGINE = InnoDB,
 PARTITION p20160310 VALUES LESS THAN (736398) ENGINE = InnoDB,
 PARTITION p20160311 VALUES LESS THAN (736399) ENGINE = InnoDB,
 PARTITION p20160312 VALUES LESS THAN (736400) ENGINE = InnoDB,
 PARTITION p20160313 VALUES LESS THAN (736401) ENGINE = InnoDB,
 PARTITION p20160314 VALUES LESS THAN (736402) ENGINE = InnoDB,
 PARTITION p20160315 VALUES LESS THAN (736403) ENGINE = InnoDB,
 PARTITION p20160316 VALUES LESS THAN (736404) ENGINE = InnoDB,
 PARTITION p20160317 VALUES LESS THAN (736405) ENGINE = InnoDB,
 PARTITION p20160318 VALUES LESS THAN (736406) ENGINE = InnoDB,
 PARTITION p20160319 VALUES LESS THAN (736407) ENGINE = InnoDB,
 PARTITION p20160320 VALUES LESS THAN (736408) ENGINE = InnoDB,
 PARTITION p20160321 VALUES LESS THAN (736409) ENGINE = InnoDB,
 PARTITION p20160322 VALUES LESS THAN (736410) ENGINE = InnoDB,
 PARTITION p20160323 VALUES LESS THAN (736411) ENGINE = InnoDB,
 PARTITION p20160324 VALUES LESS THAN (736412) ENGINE = InnoDB,
 PARTITION p20160325 VALUES LESS THAN (736413) ENGINE = InnoDB,
 PARTITION p20160326 VALUES LESS THAN (736414) ENGINE = InnoDB,
 PARTITION p20160327 VALUES LESS THAN (736415) ENGINE = InnoDB,
 PARTITION p20160328 VALUES LESS THAN (736416) ENGINE = InnoDB,
 PARTITION p20160329 VALUES LESS THAN (736417) ENGINE = InnoDB,
 PARTITION p20160330 VALUES LESS THAN (736418) ENGINE = InnoDB,
 PARTITION p20160331 VALUES LESS THAN (736419) ENGINE = InnoDB,
 PARTITION p20160401 VALUES LESS THAN (736420) ENGINE = InnoDB,
 PARTITION p20160402 VALUES LESS THAN (736421) ENGINE = InnoDB,
 PARTITION p20160403 VALUES LESS THAN (736422) ENGINE = InnoDB,
 PARTITION p20160404 VALUES LESS THAN (736423) ENGINE = InnoDB,
 PARTITION p20160405 VALUES LESS THAN (736424) ENGINE = InnoDB,
 PARTITION p20160406 VALUES LESS THAN (736425) ENGINE = InnoDB,
 PARTITION p20160407 VALUES LESS THAN (736426) ENGINE = InnoDB,
 PARTITION p20160408 VALUES LESS THAN (736427) ENGINE = InnoDB,
 PARTITION p20160409 VALUES LESS THAN (736428) ENGINE = InnoDB,
 PARTITION p20160410 VALUES LESS THAN (736429) ENGINE = InnoDB,
 PARTITION p20160411 VALUES LESS THAN (736430) ENGINE = InnoDB,
 PARTITION p20160412 VALUES LESS THAN (736431) ENGINE = InnoDB,
 PARTITION p20160413 VALUES LESS THAN (736432) ENGINE = InnoDB,
 PARTITION p20160414 VALUES LESS THAN (736433) ENGINE = InnoDB,
 PARTITION p20160415 VALUES LESS THAN (736434) ENGINE = InnoDB,
 PARTITION p20160416 VALUES LESS THAN (736435) ENGINE = InnoDB,
 PARTITION p20160417 VALUES LESS THAN (736436) ENGINE = InnoDB,
 PARTITION p20160418 VALUES LESS THAN (736437) ENGINE = InnoDB,
 PARTITION p20160419 VALUES LESS THAN (736438) ENGINE = InnoDB,
 PARTITION p20160420 VALUES LESS THAN (736439) ENGINE = InnoDB,
 PARTITION p20160421 VALUES LESS THAN (736440) ENGINE = InnoDB,
 PARTITION p20160422 VALUES LESS THAN (736441) ENGINE = InnoDB,
 PARTITION p20160423 VALUES LESS THAN (736442) ENGINE = InnoDB,
 PARTITION p20160424 VALUES LESS THAN (736443) ENGINE = InnoDB,
 PARTITION p20160425 VALUES LESS THAN (736444) ENGINE = InnoDB,
 PARTITION p20160426 VALUES LESS THAN (736445) ENGINE = InnoDB,
 PARTITION p20160427 VALUES LESS THAN (736446) ENGINE = InnoDB,
 PARTITION p20160428 VALUES LESS THAN (736447) ENGINE = InnoDB,
 PARTITION p20160429 VALUES LESS THAN (736448) ENGINE = InnoDB,
 PARTITION p20160430 VALUES LESS THAN (736449) ENGINE = InnoDB,
 PARTITION p20160501 VALUES LESS THAN (736450) ENGINE = InnoDB,
 PARTITION p20160502 VALUES LESS THAN (736451) ENGINE = InnoDB,
 PARTITION p20160503 VALUES LESS THAN (736452) ENGINE = InnoDB,
 PARTITION p20160504 VALUES LESS THAN (736453) ENGINE = InnoDB,
 PARTITION p20160505 VALUES LESS THAN (736454) ENGINE = InnoDB,
 PARTITION p20160506 VALUES LESS THAN (736455) ENGINE = InnoDB,
 PARTITION p20160507 VALUES LESS THAN (736456) ENGINE = InnoDB,
 PARTITION p20160508 VALUES LESS THAN (736457) ENGINE = InnoDB,
 PARTITION p20160509 VALUES LESS THAN (736458) ENGINE = InnoDB,
 PARTITION p20160510 VALUES LESS THAN (736459) ENGINE = InnoDB,
 PARTITION p20160511 VALUES LESS THAN (736460) ENGINE = InnoDB,
 PARTITION p20160512 VALUES LESS THAN (736461) ENGINE = InnoDB,
 PARTITION p20160513 VALUES LESS THAN (736462) ENGINE = InnoDB,
 PARTITION p20160514 VALUES LESS THAN (736463) ENGINE = InnoDB,
 PARTITION p20160515 VALUES LESS THAN (736464) ENGINE = InnoDB,
 PARTITION p20160516 VALUES LESS THAN (736465) ENGINE = InnoDB,
 PARTITION p20160517 VALUES LESS THAN (736466) ENGINE = InnoDB,
 PARTITION p20160518 VALUES LESS THAN (736467) ENGINE = InnoDB,
 PARTITION p20160519 VALUES LESS THAN (736468) ENGINE = InnoDB,
 PARTITION p20160520 VALUES LESS THAN (736469) ENGINE = InnoDB,
 PARTITION p20160521 VALUES LESS THAN (736470) ENGINE = InnoDB,
 PARTITION p20160522 VALUES LESS THAN (736471) ENGINE = InnoDB,
 PARTITION p20160523 VALUES LESS THAN (736472) ENGINE = InnoDB,
 PARTITION p20160524 VALUES LESS THAN (736473) ENGINE = InnoDB,
 PARTITION p20160525 VALUES LESS THAN (736474) ENGINE = InnoDB,
 PARTITION p20160526 VALUES LESS THAN (736475) ENGINE = InnoDB,
 PARTITION p20160527 VALUES LESS THAN (736476) ENGINE = InnoDB,
 PARTITION p20160528 VALUES LESS THAN (736477) ENGINE = InnoDB,
 PARTITION p20160529 VALUES LESS THAN (736478) ENGINE = InnoDB,
 PARTITION p20160530 VALUES LESS THAN (736479) ENGINE = InnoDB,
 PARTITION p20160531 VALUES LESS THAN (736480) ENGINE = InnoDB,
 PARTITION p20160601 VALUES LESS THAN (736481) ENGINE = InnoDB,
 PARTITION p20160602 VALUES LESS THAN (736482) ENGINE = InnoDB,
 PARTITION p20160603 VALUES LESS THAN (736483) ENGINE = InnoDB,
 PARTITION p20160604 VALUES LESS THAN (736484) ENGINE = InnoDB,
 PARTITION p20160605 VALUES LESS THAN (736485) ENGINE = InnoDB,
 PARTITION p20160606 VALUES LESS THAN (736486) ENGINE = InnoDB,
 PARTITION p20160607 VALUES LESS THAN (736487) ENGINE = InnoDB,
 PARTITION p20160608 VALUES LESS THAN (736488) ENGINE = InnoDB,
 PARTITION p20160609 VALUES LESS THAN (736489) ENGINE = InnoDB,
 PARTITION p20160610 VALUES LESS THAN (736490) ENGINE = InnoDB,
 PARTITION p20160611 VALUES LESS THAN (736491) ENGINE = InnoDB,
 PARTITION p20160612 VALUES LESS THAN (736492) ENGINE = InnoDB,
 PARTITION p20160613 VALUES LESS THAN (736493) ENGINE = InnoDB,
 PARTITION p20160614 VALUES LESS THAN (736494) ENGINE = InnoDB,
 PARTITION p20160615 VALUES LESS THAN (736495) ENGINE = InnoDB,
 PARTITION p20160616 VALUES LESS THAN (736496) ENGINE = InnoDB,
 PARTITION p20160617 VALUES LESS THAN (736497) ENGINE = InnoDB,
 PARTITION p20160618 VALUES LESS THAN (736498) ENGINE = InnoDB,
 PARTITION p20160619 VALUES LESS THAN (736499) ENGINE = InnoDB,
 PARTITION p20160620 VALUES LESS THAN (736500) ENGINE = InnoDB,
 PARTITION p20160621 VALUES LESS THAN (736501) ENGINE = InnoDB,
 PARTITION p20160622 VALUES LESS THAN (736502) ENGINE = InnoDB,
 PARTITION p20160623 VALUES LESS THAN (736503) ENGINE = InnoDB,
 PARTITION p20160624 VALUES LESS THAN (736504) ENGINE = InnoDB,
 PARTITION p20160625 VALUES LESS THAN (736505) ENGINE = InnoDB,
 PARTITION p20160626 VALUES LESS THAN (736506) ENGINE = InnoDB,
 PARTITION p20160627 VALUES LESS THAN (736507) ENGINE = InnoDB,
 PARTITION p20160628 VALUES LESS THAN (736508) ENGINE = InnoDB,
 PARTITION p20160629 VALUES LESS THAN (736509) ENGINE = InnoDB,
 PARTITION p20160630 VALUES LESS THAN (736510) ENGINE = InnoDB,
 PARTITION p20160701 VALUES LESS THAN (736511) ENGINE = InnoDB,
 PARTITION p20160702 VALUES LESS THAN (736512) ENGINE = InnoDB,
 PARTITION p20160703 VALUES LESS THAN (736513) ENGINE = InnoDB,
 PARTITION p20160704 VALUES LESS THAN (736514) ENGINE = InnoDB,
 PARTITION p20160705 VALUES LESS THAN (736515) ENGINE = InnoDB,
 PARTITION p20160706 VALUES LESS THAN (736516) ENGINE = InnoDB,
 PARTITION p20160707 VALUES LESS THAN (736517) ENGINE = InnoDB,
 PARTITION p20160708 VALUES LESS THAN (736518) ENGINE = InnoDB,
 PARTITION p20160709 VALUES LESS THAN (736519) ENGINE = InnoDB,
 PARTITION p20160710 VALUES LESS THAN (736520) ENGINE = InnoDB,
 PARTITION p20160711 VALUES LESS THAN (736521) ENGINE = InnoDB,
 PARTITION p20160712 VALUES LESS THAN (736522) ENGINE = InnoDB,
 PARTITION p20160713 VALUES LESS THAN (736523) ENGINE = InnoDB,
 PARTITION p20160714 VALUES LESS THAN (736524) ENGINE = InnoDB,
 PARTITION p20160715 VALUES LESS THAN (736525) ENGINE = InnoDB,
 PARTITION p20160716 VALUES LESS THAN (736526) ENGINE = InnoDB,
 PARTITION p20160717 VALUES LESS THAN (736527) ENGINE = InnoDB,
 PARTITION p20160718 VALUES LESS THAN (736528) ENGINE = InnoDB,
 PARTITION p20160719 VALUES LESS THAN (736529) ENGINE = InnoDB,
 PARTITION p20160720 VALUES LESS THAN (736530) ENGINE = InnoDB,
 PARTITION p20160721 VALUES LESS THAN (736531) ENGINE = InnoDB,
 PARTITION p20160722 VALUES LESS THAN (736532) ENGINE = InnoDB,
 PARTITION p20160723 VALUES LESS THAN (736533) ENGINE = InnoDB,
 PARTITION p20160724 VALUES LESS THAN (736534) ENGINE = InnoDB,
 PARTITION p20160725 VALUES LESS THAN (736535) ENGINE = InnoDB,
 PARTITION p20160726 VALUES LESS THAN (736536) ENGINE = InnoDB,
 PARTITION p20160727 VALUES LESS THAN (736537) ENGINE = InnoDB,
 PARTITION p20160728 VALUES LESS THAN (736538) ENGINE = InnoDB,
 PARTITION p20160729 VALUES LESS THAN (736539) ENGINE = InnoDB,
 PARTITION p20160730 VALUES LESS THAN (736540) ENGINE = InnoDB,
 PARTITION p20160731 VALUES LESS THAN (736541) ENGINE = InnoDB,
 PARTITION p20160801 VALUES LESS THAN (736542) ENGINE = InnoDB,
 PARTITION p20160802 VALUES LESS THAN (736543) ENGINE = InnoDB,
 PARTITION p20160803 VALUES LESS THAN (736544) ENGINE = InnoDB,
 PARTITION p20160804 VALUES LESS THAN (736545) ENGINE = InnoDB,
 PARTITION p20160805 VALUES LESS THAN (736546) ENGINE = InnoDB,
 PARTITION p20160806 VALUES LESS THAN (736547) ENGINE = InnoDB,
 PARTITION p20160807 VALUES LESS THAN (736548) ENGINE = InnoDB,
 PARTITION p20160808 VALUES LESS THAN (736549) ENGINE = InnoDB,
 PARTITION p20160809 VALUES LESS THAN (736550) ENGINE = InnoDB,
 PARTITION p20160810 VALUES LESS THAN (736551) ENGINE = InnoDB,
 PARTITION p20160811 VALUES LESS THAN (736552) ENGINE = InnoDB,
 PARTITION p20160812 VALUES LESS THAN (736553) ENGINE = InnoDB,
 PARTITION p20160813 VALUES LESS THAN (736554) ENGINE = InnoDB,
 PARTITION p20160814 VALUES LESS THAN (736555) ENGINE = InnoDB,
 PARTITION p20160815 VALUES LESS THAN (736556) ENGINE = InnoDB,
 PARTITION p20160816 VALUES LESS THAN (736557) ENGINE = InnoDB,
 PARTITION p20160817 VALUES LESS THAN (736558) ENGINE = InnoDB,
 PARTITION p20160818 VALUES LESS THAN (736559) ENGINE = InnoDB,
 PARTITION p20160819 VALUES LESS THAN (736560) ENGINE = InnoDB,
 PARTITION p20160820 VALUES LESS THAN (736561) ENGINE = InnoDB,
 PARTITION p20160821 VALUES LESS THAN (736562) ENGINE = InnoDB,
 PARTITION p20160822 VALUES LESS THAN (736563) ENGINE = InnoDB,
 PARTITION p20160823 VALUES LESS THAN (736564) ENGINE = InnoDB,
 PARTITION p20160824 VALUES LESS THAN (736565) ENGINE = InnoDB,
 PARTITION p20160825 VALUES LESS THAN (736566) ENGINE = InnoDB,
 PARTITION p20160826 VALUES LESS THAN (736567) ENGINE = InnoDB,
 PARTITION p20160827 VALUES LESS THAN (736568) ENGINE = InnoDB,
 PARTITION p20160828 VALUES LESS THAN (736569) ENGINE = InnoDB,
 PARTITION p20160829 VALUES LESS THAN (736570) ENGINE = InnoDB,
 PARTITION p20160830 VALUES LESS THAN (736571) ENGINE = InnoDB,
 PARTITION p20160831 VALUES LESS THAN (736572) ENGINE = InnoDB,
 PARTITION p20160901 VALUES LESS THAN (736573) ENGINE = InnoDB,
 PARTITION p20160902 VALUES LESS THAN (736574) ENGINE = InnoDB,
 PARTITION p20160903 VALUES LESS THAN (736575) ENGINE = InnoDB,
 PARTITION p20160904 VALUES LESS THAN (736576) ENGINE = InnoDB,
 PARTITION p20160905 VALUES LESS THAN (736577) ENGINE = InnoDB,
 PARTITION p20160906 VALUES LESS THAN (736578) ENGINE = InnoDB,
 PARTITION p20160907 VALUES LESS THAN (736579) ENGINE = InnoDB,
 PARTITION p20160908 VALUES LESS THAN (736580) ENGINE = InnoDB,
 PARTITION p20160909 VALUES LESS THAN (736581) ENGINE = InnoDB,
 PARTITION p20160910 VALUES LESS THAN (736582) ENGINE = InnoDB,
 PARTITION p20160911 VALUES LESS THAN (736583) ENGINE = InnoDB,
 PARTITION p20160912 VALUES LESS THAN (736584) ENGINE = InnoDB,
 PARTITION p20160913 VALUES LESS THAN (736585) ENGINE = InnoDB,
 PARTITION p20160914 VALUES LESS THAN (736586) ENGINE = InnoDB,
 PARTITION p20160915 VALUES LESS THAN (736587) ENGINE = InnoDB,
 PARTITION p20160916 VALUES LESS THAN (736588) ENGINE = InnoDB,
 PARTITION p20160917 VALUES LESS THAN (736589) ENGINE = InnoDB,
 PARTITION p20160918 VALUES LESS THAN (736590) ENGINE = InnoDB,
 PARTITION p20160919 VALUES LESS THAN (736591) ENGINE = InnoDB,
 PARTITION p20160920 VALUES LESS THAN (736592) ENGINE = InnoDB,
 PARTITION p20160921 VALUES LESS THAN (736593) ENGINE = InnoDB,
 PARTITION p20160922 VALUES LESS THAN (736594) ENGINE = InnoDB,
 PARTITION p20160923 VALUES LESS THAN (736595) ENGINE = InnoDB,
 PARTITION p20160924 VALUES LESS THAN (736596) ENGINE = InnoDB,
 PARTITION p20160925 VALUES LESS THAN (736597) ENGINE = InnoDB,
 PARTITION p20160926 VALUES LESS THAN (736598) ENGINE = InnoDB,
 PARTITION p20160927 VALUES LESS THAN (736599) ENGINE = InnoDB,
 PARTITION p20160928 VALUES LESS THAN (736600) ENGINE = InnoDB,
 PARTITION p20160929 VALUES LESS THAN (736601) ENGINE = InnoDB,
 PARTITION p20160930 VALUES LESS THAN (736602) ENGINE = InnoDB,
 PARTITION p20161001 VALUES LESS THAN (736603) ENGINE = InnoDB,
 PARTITION p20161002 VALUES LESS THAN (736604) ENGINE = InnoDB,
 PARTITION p20161003 VALUES LESS THAN (736605) ENGINE = InnoDB,
 PARTITION p20161004 VALUES LESS THAN (736606) ENGINE = InnoDB,
 PARTITION p20161005 VALUES LESS THAN (736607) ENGINE = InnoDB,
 PARTITION p20161006 VALUES LESS THAN (736608) ENGINE = InnoDB,
 PARTITION p20161007 VALUES LESS THAN (736609) ENGINE = InnoDB,
 PARTITION p20161008 VALUES LESS THAN (736610) ENGINE = InnoDB,
 PARTITION p20161009 VALUES LESS THAN (736611) ENGINE = InnoDB,
 PARTITION p20161010 VALUES LESS THAN (736612) ENGINE = InnoDB,
 PARTITION p20161011 VALUES LESS THAN (736613) ENGINE = InnoDB,
 PARTITION p20161012 VALUES LESS THAN (736614) ENGINE = InnoDB,
 PARTITION p20161013 VALUES LESS THAN (736615) ENGINE = InnoDB,
 PARTITION p20161014 VALUES LESS THAN (736616) ENGINE = InnoDB,
 PARTITION p20161015 VALUES LESS THAN (736617) ENGINE = InnoDB,
 PARTITION p20161016 VALUES LESS THAN (736618) ENGINE = InnoDB,
 PARTITION p20161017 VALUES LESS THAN (736619) ENGINE = InnoDB,
 PARTITION p20161018 VALUES LESS THAN (736620) ENGINE = InnoDB,
 PARTITION p20161019 VALUES LESS THAN (736621) ENGINE = InnoDB,
 PARTITION p20161020 VALUES LESS THAN (736622) ENGINE = InnoDB,
 PARTITION p20161021 VALUES LESS THAN (736623) ENGINE = InnoDB,
 PARTITION p20161022 VALUES LESS THAN (736624) ENGINE = InnoDB,
 PARTITION p20161023 VALUES LESS THAN (736625) ENGINE = InnoDB,
 PARTITION p20161024 VALUES LESS THAN (736626) ENGINE = InnoDB,
 PARTITION p20161025 VALUES LESS THAN (736627) ENGINE = InnoDB,
 PARTITION p20161026 VALUES LESS THAN (736628) ENGINE = InnoDB,
 PARTITION p20161027 VALUES LESS THAN (736629) ENGINE = InnoDB,
 PARTITION p20161028 VALUES LESS THAN (736630) ENGINE = InnoDB,
 PARTITION p20161029 VALUES LESS THAN (736631) ENGINE = InnoDB,
 PARTITION p20161030 VALUES LESS THAN (736632) ENGINE = InnoDB,
 PARTITION p20161031 VALUES LESS THAN (736633) ENGINE = InnoDB,
 PARTITION p20161101 VALUES LESS THAN (736634) ENGINE = InnoDB,
 PARTITION p20161102 VALUES LESS THAN (736635) ENGINE = InnoDB,
 PARTITION p20161103 VALUES LESS THAN (736636) ENGINE = InnoDB,
 PARTITION p20161104 VALUES LESS THAN (736637) ENGINE = InnoDB,
 PARTITION p20161105 VALUES LESS THAN (736638) ENGINE = InnoDB,
 PARTITION p20161106 VALUES LESS THAN (736639) ENGINE = InnoDB,
 PARTITION p20161107 VALUES LESS THAN (736640) ENGINE = InnoDB,
 PARTITION p20161108 VALUES LESS THAN (736641) ENGINE = InnoDB,
 PARTITION p20161109 VALUES LESS THAN (736642) ENGINE = InnoDB,
 PARTITION p20161110 VALUES LESS THAN (736643) ENGINE = InnoDB,
 PARTITION p20161111 VALUES LESS THAN (736644) ENGINE = InnoDB,
 PARTITION p20161112 VALUES LESS THAN (736645) ENGINE = InnoDB,
 PARTITION p20161113 VALUES LESS THAN (736646) ENGINE = InnoDB,
 PARTITION p20161114 VALUES LESS THAN (736647) ENGINE = InnoDB,
 PARTITION p20161115 VALUES LESS THAN (736648) ENGINE = InnoDB,
 PARTITION p20161116 VALUES LESS THAN (736649) ENGINE = InnoDB,
 PARTITION p20161117 VALUES LESS THAN (736650) ENGINE = InnoDB,
 PARTITION p20161118 VALUES LESS THAN (736651) ENGINE = InnoDB,
 PARTITION p20161119 VALUES LESS THAN (736652) ENGINE = InnoDB,
 PARTITION p20161120 VALUES LESS THAN (736653) ENGINE = InnoDB,
 PARTITION p20161121 VALUES LESS THAN (736654) ENGINE = InnoDB,
 PARTITION p20161122 VALUES LESS THAN (736655) ENGINE = InnoDB,
 PARTITION p20161123 VALUES LESS THAN (736656) ENGINE = InnoDB,
 PARTITION p20161124 VALUES LESS THAN (736657) ENGINE = InnoDB,
 PARTITION p20161125 VALUES LESS THAN (736658) ENGINE = InnoDB,
 PARTITION p20161126 VALUES LESS THAN (736659) ENGINE = InnoDB,
 PARTITION p20161127 VALUES LESS THAN (736660) ENGINE = InnoDB,
 PARTITION p20161128 VALUES LESS THAN (736661) ENGINE = InnoDB,
 PARTITION p20161129 VALUES LESS THAN (736662) ENGINE = InnoDB,
 PARTITION p20161130 VALUES LESS THAN (736663) ENGINE = InnoDB,
 PARTITION p20161201 VALUES LESS THAN (736664) ENGINE = InnoDB,
 PARTITION p20161202 VALUES LESS THAN (736665) ENGINE = InnoDB,
 PARTITION p20161203 VALUES LESS THAN (736666) ENGINE = InnoDB,
 PARTITION p20161204 VALUES LESS THAN (736667) ENGINE = InnoDB,
 PARTITION p20161205 VALUES LESS THAN (736668) ENGINE = InnoDB,
 PARTITION p20161206 VALUES LESS THAN (736669) ENGINE = InnoDB,
 PARTITION p20161207 VALUES LESS THAN (736670) ENGINE = InnoDB,
 PARTITION p20161208 VALUES LESS THAN (736671) ENGINE = InnoDB,
 PARTITION p20161209 VALUES LESS THAN (736672) ENGINE = InnoDB,
 PARTITION p20161210 VALUES LESS THAN (736673) ENGINE = InnoDB,
 PARTITION p20161211 VALUES LESS THAN (736674) ENGINE = InnoDB,
 PARTITION p20161212 VALUES LESS THAN (736675) ENGINE = InnoDB,
 PARTITION p20161213 VALUES LESS THAN (736676) ENGINE = InnoDB,
 PARTITION p20161214 VALUES LESS THAN (736677) ENGINE = InnoDB,
 PARTITION p20161215 VALUES LESS THAN (736678) ENGINE = InnoDB,
 PARTITION p20161216 VALUES LESS THAN (736679) ENGINE = InnoDB,
 PARTITION p20161217 VALUES LESS THAN (736680) ENGINE = InnoDB,
 PARTITION p20161218 VALUES LESS THAN (736681) ENGINE = InnoDB,
 PARTITION p20161219 VALUES LESS THAN (736682) ENGINE = InnoDB,
 PARTITION p20161220 VALUES LESS THAN (736683) ENGINE = InnoDB,
 PARTITION p20161221 VALUES LESS THAN (736684) ENGINE = InnoDB,
 PARTITION p20161222 VALUES LESS THAN (736685) ENGINE = InnoDB,
 PARTITION p20161223 VALUES LESS THAN (736686) ENGINE = InnoDB,
 PARTITION p20161224 VALUES LESS THAN (736687) ENGINE = InnoDB,
 PARTITION p20161225 VALUES LESS THAN (736688) ENGINE = InnoDB,
 PARTITION p20161226 VALUES LESS THAN (736689) ENGINE = InnoDB,
 PARTITION p20161227 VALUES LESS THAN (736690) ENGINE = InnoDB,
 PARTITION p20161228 VALUES LESS THAN (736691) ENGINE = InnoDB,
 PARTITION p20161229 VALUES LESS THAN (736692) ENGINE = InnoDB,
 PARTITION p20161230 VALUES LESS THAN (736693) ENGINE = InnoDB,
 PARTITION p20161231 VALUES LESS THAN (736694) ENGINE = InnoDB,
 PARTITION p20170101 VALUES LESS THAN (736695) ENGINE = InnoDB,
 PARTITION p20170102 VALUES LESS THAN (736696) ENGINE = InnoDB,
 PARTITION p20170103 VALUES LESS THAN (736697) ENGINE = InnoDB,
 PARTITION p20170104 VALUES LESS THAN (736698) ENGINE = InnoDB,
 PARTITION p20170105 VALUES LESS THAN (736699) ENGINE = InnoDB,
 PARTITION p20170106 VALUES LESS THAN (736700) ENGINE = InnoDB,
 PARTITION p20170107 VALUES LESS THAN (736701) ENGINE = InnoDB,
 PARTITION p20170108 VALUES LESS THAN (736702) ENGINE = InnoDB,
 PARTITION p20170109 VALUES LESS THAN (736703) ENGINE = InnoDB,
 PARTITION p20170110 VALUES LESS THAN (736704) ENGINE = InnoDB,
 PARTITION p20170111 VALUES LESS THAN (736705) ENGINE = InnoDB,
 PARTITION p20170112 VALUES LESS THAN (736706) ENGINE = InnoDB,
 PARTITION p20170113 VALUES LESS THAN (736707) ENGINE = InnoDB,
 PARTITION p20170114 VALUES LESS THAN (736708) ENGINE = InnoDB,
 PARTITION p20170115 VALUES LESS THAN (736709) ENGINE = InnoDB,
 PARTITION p20170116 VALUES LESS THAN (736710) ENGINE = InnoDB,
 PARTITION p20170117 VALUES LESS THAN (736711) ENGINE = InnoDB,
 PARTITION p20170118 VALUES LESS THAN (736712) ENGINE = InnoDB,
 PARTITION p20170119 VALUES LESS THAN (736713) ENGINE = InnoDB,
 PARTITION p20170120 VALUES LESS THAN (736714) ENGINE = InnoDB,
 PARTITION p20170121 VALUES LESS THAN (736715) ENGINE = InnoDB,
 PARTITION p20170122 VALUES LESS THAN (736716) ENGINE = InnoDB,
 PARTITION p20170123 VALUES LESS THAN (736717) ENGINE = InnoDB,
 PARTITION p20170124 VALUES LESS THAN (736718) ENGINE = InnoDB,
 PARTITION p20170125 VALUES LESS THAN (736719) ENGINE = InnoDB,
 PARTITION p20170126 VALUES LESS THAN (736720) ENGINE = InnoDB,
 PARTITION p20170127 VALUES LESS THAN (736721) ENGINE = InnoDB,
 PARTITION p20170128 VALUES LESS THAN (736722) ENGINE = InnoDB,
 PARTITION p20170129 VALUES LESS THAN (736723) ENGINE = InnoDB,
 PARTITION p20170130 VALUES LESS THAN (736724) ENGINE = InnoDB,
 PARTITION p20170131 VALUES LESS THAN (736725) ENGINE = InnoDB,
 PARTITION p20170201 VALUES LESS THAN (736726) ENGINE = InnoDB,
 PARTITION p20170202 VALUES LESS THAN (736727) ENGINE = InnoDB,
 PARTITION p20170203 VALUES LESS THAN (736728) ENGINE = InnoDB,
 PARTITION p20170204 VALUES LESS THAN (736729) ENGINE = InnoDB,
 PARTITION p20170205 VALUES LESS THAN (736730) ENGINE = InnoDB,
 PARTITION p20170206 VALUES LESS THAN (736731) ENGINE = InnoDB,
 PARTITION p20170207 VALUES LESS THAN (736732) ENGINE = InnoDB,
 PARTITION p20170208 VALUES LESS THAN (736733) ENGINE = InnoDB,
 PARTITION p20170209 VALUES LESS THAN (736734) ENGINE = InnoDB,
 PARTITION p20170210 VALUES LESS THAN (736735) ENGINE = InnoDB,
 PARTITION p20170211 VALUES LESS THAN (736736) ENGINE = InnoDB,
 PARTITION p20170212 VALUES LESS THAN (736737) ENGINE = InnoDB,
 PARTITION p20170213 VALUES LESS THAN (736738) ENGINE = InnoDB,
 PARTITION p20170214 VALUES LESS THAN (736739) ENGINE = InnoDB,
 PARTITION p20170215 VALUES LESS THAN (736740) ENGINE = InnoDB,
 PARTITION p20170216 VALUES LESS THAN (736741) ENGINE = InnoDB,
 PARTITION p20170217 VALUES LESS THAN (736742) ENGINE = InnoDB,
 PARTITION p20170218 VALUES LESS THAN (736743) ENGINE = InnoDB,
 PARTITION p20170219 VALUES LESS THAN (736744) ENGINE = InnoDB,
 PARTITION p20170220 VALUES LESS THAN (736745) ENGINE = InnoDB,
 PARTITION p20170221 VALUES LESS THAN (736746) ENGINE = InnoDB,
 PARTITION p20170222 VALUES LESS THAN (736747) ENGINE = InnoDB,
 PARTITION p20170223 VALUES LESS THAN (736748) ENGINE = InnoDB,
 PARTITION p20170224 VALUES LESS THAN (736749) ENGINE = InnoDB,
 PARTITION p20170225 VALUES LESS THAN (736750) ENGINE = InnoDB,
 PARTITION p20170226 VALUES LESS THAN (736751) ENGINE = InnoDB,
 PARTITION p20170227 VALUES LESS THAN (736752) ENGINE = InnoDB,
 PARTITION p20170228 VALUES LESS THAN (736753) ENGINE = InnoDB,
 PARTITION p20170301 VALUES LESS THAN (736754) ENGINE = InnoDB,
 PARTITION p20170302 VALUES LESS THAN (736755) ENGINE = InnoDB,
 PARTITION p20170303 VALUES LESS THAN (736756) ENGINE = InnoDB,
 PARTITION p20170304 VALUES LESS THAN (736757) ENGINE = InnoDB,
 PARTITION p20170305 VALUES LESS THAN (736758) ENGINE = InnoDB,
 PARTITION p20170306 VALUES LESS THAN (736759) ENGINE = InnoDB,
 PARTITION p20170307 VALUES LESS THAN (736760) ENGINE = InnoDB,
 PARTITION p20170308 VALUES LESS THAN (736761) ENGINE = InnoDB,
 PARTITION p20170309 VALUES LESS THAN (736762) ENGINE = InnoDB,
 PARTITION p20170310 VALUES LESS THAN (736763) ENGINE = InnoDB,
 PARTITION p20170311 VALUES LESS THAN (736764) ENGINE = InnoDB,
 PARTITION p20170312 VALUES LESS THAN (736765) ENGINE = InnoDB,
 PARTITION p20170313 VALUES LESS THAN (736766) ENGINE = InnoDB,
 PARTITION p20170314 VALUES LESS THAN (736767) ENGINE = InnoDB,
 PARTITION p20170315 VALUES LESS THAN (736768) ENGINE = InnoDB,
 PARTITION p20170316 VALUES LESS THAN (736769) ENGINE = InnoDB,
 PARTITION p20170317 VALUES LESS THAN (736770) ENGINE = InnoDB,
 PARTITION p20170318 VALUES LESS THAN (736771) ENGINE = InnoDB,
 PARTITION p20170319 VALUES LESS THAN (736772) ENGINE = InnoDB,
 PARTITION p20170320 VALUES LESS THAN (736773) ENGINE = InnoDB,
 PARTITION p20170321 VALUES LESS THAN (736774) ENGINE = InnoDB,
 PARTITION p20170322 VALUES LESS THAN (736775) ENGINE = InnoDB,
 PARTITION p20170323 VALUES LESS THAN (736776) ENGINE = InnoDB,
 PARTITION p20170324 VALUES LESS THAN (736777) ENGINE = InnoDB,
 PARTITION p20170325 VALUES LESS THAN (736778) ENGINE = InnoDB,
 PARTITION p20170326 VALUES LESS THAN (736779) ENGINE = InnoDB,
 PARTITION p20170327 VALUES LESS THAN (736780) ENGINE = InnoDB,
 PARTITION p20170328 VALUES LESS THAN (736781) ENGINE = InnoDB,
 PARTITION p20170329 VALUES LESS THAN (736782) ENGINE = InnoDB,
 PARTITION p20170330 VALUES LESS THAN (736783) ENGINE = InnoDB,
 PARTITION p20170331 VALUES LESS THAN (736784) ENGINE = InnoDB,
 PARTITION p20170401 VALUES LESS THAN (736785) ENGINE = InnoDB,
 PARTITION p20170402 VALUES LESS THAN (736786) ENGINE = InnoDB,
 PARTITION p20170403 VALUES LESS THAN (736787) ENGINE = InnoDB,
 PARTITION p20170404 VALUES LESS THAN (736788) ENGINE = InnoDB,
 PARTITION p20170405 VALUES LESS THAN (736789) ENGINE = InnoDB,
 PARTITION p20170406 VALUES LESS THAN (736790) ENGINE = InnoDB,
 PARTITION p20170407 VALUES LESS THAN (736791) ENGINE = InnoDB,
 PARTITION p20170408 VALUES LESS THAN (736792) ENGINE = InnoDB,
 PARTITION p20170409 VALUES LESS THAN (736793) ENGINE = InnoDB,
 PARTITION p20170410 VALUES LESS THAN (736794) ENGINE = InnoDB,
 PARTITION p20170411 VALUES LESS THAN (736795) ENGINE = InnoDB,
 PARTITION p20170412 VALUES LESS THAN (736796) ENGINE = InnoDB,
 PARTITION p20170413 VALUES LESS THAN (736797) ENGINE = InnoDB,
 PARTITION p20170414 VALUES LESS THAN (736798) ENGINE = InnoDB,
 PARTITION p20170415 VALUES LESS THAN (736799) ENGINE = InnoDB,
 PARTITION p20170416 VALUES LESS THAN (736800) ENGINE = InnoDB,
 PARTITION p20170417 VALUES LESS THAN (736801) ENGINE = InnoDB,
 PARTITION p20170418 VALUES LESS THAN (736802) ENGINE = InnoDB,
 PARTITION p20170419 VALUES LESS THAN (736803) ENGINE = InnoDB,
 PARTITION p20170420 VALUES LESS THAN (736804) ENGINE = InnoDB,
 PARTITION p20170421 VALUES LESS THAN (736805) ENGINE = InnoDB,
 PARTITION p20170422 VALUES LESS THAN (736806) ENGINE = InnoDB,
 PARTITION p20170423 VALUES LESS THAN (736807) ENGINE = InnoDB,
 PARTITION p20170424 VALUES LESS THAN (736808) ENGINE = InnoDB) */;

-- ----------------------------
-- Table structure for log_user_device_breakdown
-- ----------------------------
DROP TABLE IF EXISTS `log_user_device_breakdown`;
CREATE TABLE `log_user_device_breakdown` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header` varchar(1000) DEFAULT NULL,
  `info` longtext,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='记录用户奔溃日志信息';

-- ----------------------------
-- Table structure for log_user_device_every
-- ----------------------------
DROP TABLE IF EXISTS `log_user_device_every`;
CREATE TABLE `log_user_device_every` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` bigint(18) DEFAULT NULL COMMENT '用户id',
  `ip_address` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '终端IP地址',
  `imei` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '终端机器码',
  `channel_name` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '渠道商名',
  `device_type` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '终端品牌',
  `device_mtype` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '设备系统名(ios\\android)',
  `app_version` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '不服版本',
  `device_version` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '终端版本',
  `carrier_operator` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '运营商',
  `record_type` smallint(2) DEFAULT NULL COMMENT '记录类型方式 1:注册2:登录3:三方登录4:打开APP应用5:IOS地推统计; 6:游客',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `version_id` smallint(6) DEFAULT '0',
  `before_version_id` int(11) DEFAULT '0' COMMENT '之前版本ID',
  PRIMARY KEY (`id`,`create_time`),
  KEY `ind_user_id` (`user_id`),
  KEY `ind_c` (`create_time`),
  KEY `ind_imei` (`imei`(14))
) ENGINE=InnoDB AUTO_INCREMENT=105731893 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户设备信息--唯一值'
/*!50100 PARTITION BY RANGE (TO_DAYS (create_time))
(PARTITION p20150714 VALUES LESS THAN (736158) ENGINE = InnoDB,
 PARTITION p20150715 VALUES LESS THAN (736159) ENGINE = InnoDB,
 PARTITION p20150716 VALUES LESS THAN (736160) ENGINE = InnoDB,
 PARTITION p20150717 VALUES LESS THAN (736161) ENGINE = InnoDB,
 PARTITION p20150718 VALUES LESS THAN (736162) ENGINE = InnoDB,
 PARTITION p20150719 VALUES LESS THAN (736163) ENGINE = InnoDB,
 PARTITION p20150720 VALUES LESS THAN (736164) ENGINE = InnoDB,
 PARTITION p20150721 VALUES LESS THAN (736165) ENGINE = InnoDB,
 PARTITION p20150722 VALUES LESS THAN (736166) ENGINE = InnoDB,
 PARTITION p20150723 VALUES LESS THAN (736167) ENGINE = InnoDB,
 PARTITION p20150724 VALUES LESS THAN (736168) ENGINE = InnoDB,
 PARTITION p20150725 VALUES LESS THAN (736169) ENGINE = InnoDB,
 PARTITION p20150726 VALUES LESS THAN (736170) ENGINE = InnoDB,
 PARTITION p20150727 VALUES LESS THAN (736171) ENGINE = InnoDB,
 PARTITION p20150728 VALUES LESS THAN (736172) ENGINE = InnoDB,
 PARTITION p20150729 VALUES LESS THAN (736173) ENGINE = InnoDB,
 PARTITION p20150730 VALUES LESS THAN (736174) ENGINE = InnoDB,
 PARTITION p20150731 VALUES LESS THAN (736175) ENGINE = InnoDB,
 PARTITION p20150801 VALUES LESS THAN (736176) ENGINE = InnoDB,
 PARTITION p20150802 VALUES LESS THAN (736177) ENGINE = InnoDB,
 PARTITION p20150803 VALUES LESS THAN (736178) ENGINE = InnoDB,
 PARTITION p20150804 VALUES LESS THAN (736179) ENGINE = InnoDB,
 PARTITION p20150805 VALUES LESS THAN (736180) ENGINE = InnoDB,
 PARTITION p20150806 VALUES LESS THAN (736181) ENGINE = InnoDB,
 PARTITION p20150807 VALUES LESS THAN (736182) ENGINE = InnoDB,
 PARTITION p20150808 VALUES LESS THAN (736183) ENGINE = InnoDB,
 PARTITION p20150809 VALUES LESS THAN (736184) ENGINE = InnoDB,
 PARTITION p20150810 VALUES LESS THAN (736185) ENGINE = InnoDB,
 PARTITION p20150811 VALUES LESS THAN (736186) ENGINE = InnoDB,
 PARTITION p20150812 VALUES LESS THAN (736187) ENGINE = InnoDB,
 PARTITION p20150813 VALUES LESS THAN (736188) ENGINE = InnoDB,
 PARTITION p20150814 VALUES LESS THAN (736189) ENGINE = InnoDB,
 PARTITION p20150815 VALUES LESS THAN (736190) ENGINE = InnoDB,
 PARTITION p20150816 VALUES LESS THAN (736191) ENGINE = InnoDB,
 PARTITION p20150817 VALUES LESS THAN (736192) ENGINE = InnoDB,
 PARTITION p20150818 VALUES LESS THAN (736193) ENGINE = InnoDB,
 PARTITION p20150819 VALUES LESS THAN (736194) ENGINE = InnoDB,
 PARTITION p20150820 VALUES LESS THAN (736195) ENGINE = InnoDB,
 PARTITION p20150821 VALUES LESS THAN (736196) ENGINE = InnoDB,
 PARTITION p20150822 VALUES LESS THAN (736197) ENGINE = InnoDB,
 PARTITION p20150823 VALUES LESS THAN (736198) ENGINE = InnoDB,
 PARTITION p20150824 VALUES LESS THAN (736199) ENGINE = InnoDB,
 PARTITION p20150825 VALUES LESS THAN (736200) ENGINE = InnoDB,
 PARTITION p20150826 VALUES LESS THAN (736201) ENGINE = InnoDB,
 PARTITION p20150827 VALUES LESS THAN (736202) ENGINE = InnoDB,
 PARTITION p20150828 VALUES LESS THAN (736203) ENGINE = InnoDB,
 PARTITION p20150829 VALUES LESS THAN (736204) ENGINE = InnoDB,
 PARTITION p20150830 VALUES LESS THAN (736205) ENGINE = InnoDB,
 PARTITION p20150831 VALUES LESS THAN (736206) ENGINE = InnoDB,
 PARTITION p20150901 VALUES LESS THAN (736207) ENGINE = InnoDB,
 PARTITION p20150902 VALUES LESS THAN (736208) ENGINE = InnoDB,
 PARTITION p20150903 VALUES LESS THAN (736209) ENGINE = InnoDB,
 PARTITION p20150904 VALUES LESS THAN (736210) ENGINE = InnoDB,
 PARTITION p20150905 VALUES LESS THAN (736211) ENGINE = InnoDB,
 PARTITION p20150906 VALUES LESS THAN (736212) ENGINE = InnoDB,
 PARTITION p20150907 VALUES LESS THAN (736213) ENGINE = InnoDB,
 PARTITION p20150908 VALUES LESS THAN (736214) ENGINE = InnoDB,
 PARTITION p20150909 VALUES LESS THAN (736215) ENGINE = InnoDB,
 PARTITION p20150910 VALUES LESS THAN (736216) ENGINE = InnoDB,
 PARTITION p20150911 VALUES LESS THAN (736217) ENGINE = InnoDB,
 PARTITION p20150912 VALUES LESS THAN (736218) ENGINE = InnoDB,
 PARTITION p20150913 VALUES LESS THAN (736219) ENGINE = InnoDB,
 PARTITION p20150914 VALUES LESS THAN (736220) ENGINE = InnoDB,
 PARTITION p20150915 VALUES LESS THAN (736221) ENGINE = InnoDB,
 PARTITION p20150916 VALUES LESS THAN (736222) ENGINE = InnoDB,
 PARTITION p20150917 VALUES LESS THAN (736223) ENGINE = InnoDB,
 PARTITION p20150918 VALUES LESS THAN (736224) ENGINE = InnoDB,
 PARTITION p20150919 VALUES LESS THAN (736225) ENGINE = InnoDB,
 PARTITION p20150920 VALUES LESS THAN (736226) ENGINE = InnoDB,
 PARTITION p20150921 VALUES LESS THAN (736227) ENGINE = InnoDB,
 PARTITION p20150922 VALUES LESS THAN (736228) ENGINE = InnoDB,
 PARTITION p20150923 VALUES LESS THAN (736229) ENGINE = InnoDB,
 PARTITION p20150924 VALUES LESS THAN (736230) ENGINE = InnoDB,
 PARTITION p20150925 VALUES LESS THAN (736231) ENGINE = InnoDB,
 PARTITION p20150926 VALUES LESS THAN (736232) ENGINE = InnoDB,
 PARTITION p20150927 VALUES LESS THAN (736233) ENGINE = InnoDB,
 PARTITION p20150928 VALUES LESS THAN (736234) ENGINE = InnoDB,
 PARTITION p20150929 VALUES LESS THAN (736235) ENGINE = InnoDB,
 PARTITION p20150930 VALUES LESS THAN (736236) ENGINE = InnoDB,
 PARTITION p20151001 VALUES LESS THAN (736237) ENGINE = InnoDB,
 PARTITION p20151002 VALUES LESS THAN (736238) ENGINE = InnoDB,
 PARTITION p20151003 VALUES LESS THAN (736239) ENGINE = InnoDB,
 PARTITION p20151004 VALUES LESS THAN (736240) ENGINE = InnoDB,
 PARTITION p20151005 VALUES LESS THAN (736241) ENGINE = InnoDB,
 PARTITION p20151006 VALUES LESS THAN (736242) ENGINE = InnoDB,
 PARTITION p20151007 VALUES LESS THAN (736243) ENGINE = InnoDB,
 PARTITION p20151008 VALUES LESS THAN (736244) ENGINE = InnoDB,
 PARTITION p20151009 VALUES LESS THAN (736245) ENGINE = InnoDB,
 PARTITION p20151010 VALUES LESS THAN (736246) ENGINE = InnoDB,
 PARTITION p20151011 VALUES LESS THAN (736247) ENGINE = InnoDB,
 PARTITION p20151012 VALUES LESS THAN (736248) ENGINE = InnoDB,
 PARTITION p20151013 VALUES LESS THAN (736249) ENGINE = InnoDB,
 PARTITION p20151014 VALUES LESS THAN (736250) ENGINE = InnoDB,
 PARTITION p20151015 VALUES LESS THAN (736251) ENGINE = InnoDB,
 PARTITION p20151016 VALUES LESS THAN (736252) ENGINE = InnoDB,
 PARTITION p20151017 VALUES LESS THAN (736253) ENGINE = InnoDB,
 PARTITION p20151018 VALUES LESS THAN (736254) ENGINE = InnoDB,
 PARTITION p20151019 VALUES LESS THAN (736255) ENGINE = InnoDB,
 PARTITION p20151020 VALUES LESS THAN (736256) ENGINE = InnoDB,
 PARTITION p20151021 VALUES LESS THAN (736257) ENGINE = InnoDB,
 PARTITION p20151022 VALUES LESS THAN (736258) ENGINE = InnoDB,
 PARTITION p20151023 VALUES LESS THAN (736259) ENGINE = InnoDB,
 PARTITION p20151024 VALUES LESS THAN (736260) ENGINE = InnoDB,
 PARTITION p20151025 VALUES LESS THAN (736261) ENGINE = InnoDB,
 PARTITION p20151026 VALUES LESS THAN (736262) ENGINE = InnoDB,
 PARTITION p20151027 VALUES LESS THAN (736263) ENGINE = InnoDB,
 PARTITION p20151028 VALUES LESS THAN (736264) ENGINE = InnoDB,
 PARTITION p20151029 VALUES LESS THAN (736265) ENGINE = InnoDB,
 PARTITION p20151030 VALUES LESS THAN (736266) ENGINE = InnoDB,
 PARTITION p20151031 VALUES LESS THAN (736267) ENGINE = InnoDB,
 PARTITION p20151101 VALUES LESS THAN (736268) ENGINE = InnoDB,
 PARTITION p20151102 VALUES LESS THAN (736269) ENGINE = InnoDB,
 PARTITION p20151103 VALUES LESS THAN (736270) ENGINE = InnoDB,
 PARTITION p20151104 VALUES LESS THAN (736271) ENGINE = InnoDB,
 PARTITION p20151105 VALUES LESS THAN (736272) ENGINE = InnoDB,
 PARTITION p20151106 VALUES LESS THAN (736273) ENGINE = InnoDB,
 PARTITION p20151107 VALUES LESS THAN (736274) ENGINE = InnoDB,
 PARTITION p20151108 VALUES LESS THAN (736275) ENGINE = InnoDB,
 PARTITION p20151109 VALUES LESS THAN (736276) ENGINE = InnoDB,
 PARTITION p20151110 VALUES LESS THAN (736277) ENGINE = InnoDB,
 PARTITION p20151111 VALUES LESS THAN (736278) ENGINE = InnoDB,
 PARTITION p20151112 VALUES LESS THAN (736279) ENGINE = InnoDB,
 PARTITION p20151113 VALUES LESS THAN (736280) ENGINE = InnoDB,
 PARTITION p20151114 VALUES LESS THAN (736281) ENGINE = InnoDB,
 PARTITION p20151115 VALUES LESS THAN (736282) ENGINE = InnoDB,
 PARTITION p20151116 VALUES LESS THAN (736283) ENGINE = InnoDB,
 PARTITION p20151117 VALUES LESS THAN (736284) ENGINE = InnoDB,
 PARTITION p20151118 VALUES LESS THAN (736285) ENGINE = InnoDB,
 PARTITION p20151119 VALUES LESS THAN (736286) ENGINE = InnoDB,
 PARTITION p20151120 VALUES LESS THAN (736287) ENGINE = InnoDB,
 PARTITION p20151121 VALUES LESS THAN (736288) ENGINE = InnoDB,
 PARTITION p20151122 VALUES LESS THAN (736289) ENGINE = InnoDB,
 PARTITION p20151123 VALUES LESS THAN (736290) ENGINE = InnoDB,
 PARTITION p20151124 VALUES LESS THAN (736291) ENGINE = InnoDB,
 PARTITION p20151125 VALUES LESS THAN (736292) ENGINE = InnoDB,
 PARTITION p20151126 VALUES LESS THAN (736293) ENGINE = InnoDB,
 PARTITION p20151127 VALUES LESS THAN (736294) ENGINE = InnoDB,
 PARTITION p20151128 VALUES LESS THAN (736295) ENGINE = InnoDB,
 PARTITION p20151129 VALUES LESS THAN (736296) ENGINE = InnoDB,
 PARTITION p20151130 VALUES LESS THAN (736297) ENGINE = InnoDB,
 PARTITION p20151201 VALUES LESS THAN (736298) ENGINE = InnoDB,
 PARTITION p20151202 VALUES LESS THAN (736299) ENGINE = InnoDB,
 PARTITION p20151203 VALUES LESS THAN (736300) ENGINE = InnoDB,
 PARTITION p20151204 VALUES LESS THAN (736301) ENGINE = InnoDB,
 PARTITION p20151205 VALUES LESS THAN (736302) ENGINE = InnoDB,
 PARTITION p20151206 VALUES LESS THAN (736303) ENGINE = InnoDB,
 PARTITION p20151207 VALUES LESS THAN (736304) ENGINE = InnoDB,
 PARTITION p20151208 VALUES LESS THAN (736305) ENGINE = InnoDB,
 PARTITION p20151209 VALUES LESS THAN (736306) ENGINE = InnoDB,
 PARTITION p20151210 VALUES LESS THAN (736307) ENGINE = InnoDB,
 PARTITION p20151211 VALUES LESS THAN (736308) ENGINE = InnoDB,
 PARTITION p20151212 VALUES LESS THAN (736309) ENGINE = InnoDB,
 PARTITION p20151213 VALUES LESS THAN (736310) ENGINE = InnoDB,
 PARTITION p20151214 VALUES LESS THAN (736311) ENGINE = InnoDB,
 PARTITION p20151215 VALUES LESS THAN (736312) ENGINE = InnoDB,
 PARTITION p20151216 VALUES LESS THAN (736313) ENGINE = InnoDB,
 PARTITION p20151217 VALUES LESS THAN (736314) ENGINE = InnoDB,
 PARTITION p20151218 VALUES LESS THAN (736315) ENGINE = InnoDB,
 PARTITION p20151219 VALUES LESS THAN (736316) ENGINE = InnoDB,
 PARTITION p20151220 VALUES LESS THAN (736317) ENGINE = InnoDB,
 PARTITION p20151221 VALUES LESS THAN (736318) ENGINE = InnoDB,
 PARTITION p20151222 VALUES LESS THAN (736319) ENGINE = InnoDB,
 PARTITION p20151223 VALUES LESS THAN (736320) ENGINE = InnoDB,
 PARTITION p20151224 VALUES LESS THAN (736321) ENGINE = InnoDB,
 PARTITION p20151225 VALUES LESS THAN (736322) ENGINE = InnoDB,
 PARTITION p20151226 VALUES LESS THAN (736323) ENGINE = InnoDB,
 PARTITION p20151227 VALUES LESS THAN (736324) ENGINE = InnoDB,
 PARTITION p20151228 VALUES LESS THAN (736325) ENGINE = InnoDB,
 PARTITION p20151229 VALUES LESS THAN (736326) ENGINE = InnoDB,
 PARTITION p20151230 VALUES LESS THAN (736327) ENGINE = InnoDB,
 PARTITION p20151231 VALUES LESS THAN (736328) ENGINE = InnoDB,
 PARTITION p20160101 VALUES LESS THAN (736329) ENGINE = InnoDB,
 PARTITION p20160102 VALUES LESS THAN (736330) ENGINE = InnoDB,
 PARTITION p20160103 VALUES LESS THAN (736331) ENGINE = InnoDB,
 PARTITION p20160104 VALUES LESS THAN (736332) ENGINE = InnoDB,
 PARTITION p20160105 VALUES LESS THAN (736333) ENGINE = InnoDB,
 PARTITION p20160106 VALUES LESS THAN (736334) ENGINE = InnoDB,
 PARTITION p20160107 VALUES LESS THAN (736335) ENGINE = InnoDB,
 PARTITION p20160108 VALUES LESS THAN (736336) ENGINE = InnoDB,
 PARTITION p20160109 VALUES LESS THAN (736337) ENGINE = InnoDB,
 PARTITION p20160110 VALUES LESS THAN (736338) ENGINE = InnoDB,
 PARTITION p20160111 VALUES LESS THAN (736339) ENGINE = InnoDB,
 PARTITION p20160112 VALUES LESS THAN (736340) ENGINE = InnoDB,
 PARTITION p20160113 VALUES LESS THAN (736341) ENGINE = InnoDB,
 PARTITION p20160114 VALUES LESS THAN (736342) ENGINE = InnoDB,
 PARTITION p20160115 VALUES LESS THAN (736343) ENGINE = InnoDB,
 PARTITION p20160116 VALUES LESS THAN (736344) ENGINE = InnoDB,
 PARTITION p20160117 VALUES LESS THAN (736345) ENGINE = InnoDB,
 PARTITION p20160118 VALUES LESS THAN (736346) ENGINE = InnoDB,
 PARTITION p20160119 VALUES LESS THAN (736347) ENGINE = InnoDB,
 PARTITION p20160120 VALUES LESS THAN (736348) ENGINE = InnoDB,
 PARTITION p20160121 VALUES LESS THAN (736349) ENGINE = InnoDB,
 PARTITION p20160122 VALUES LESS THAN (736350) ENGINE = InnoDB,
 PARTITION p20160123 VALUES LESS THAN (736351) ENGINE = InnoDB,
 PARTITION p20160124 VALUES LESS THAN (736352) ENGINE = InnoDB,
 PARTITION p20160125 VALUES LESS THAN (736353) ENGINE = InnoDB,
 PARTITION p20160126 VALUES LESS THAN (736354) ENGINE = InnoDB,
 PARTITION p20160127 VALUES LESS THAN (736355) ENGINE = InnoDB,
 PARTITION p20160128 VALUES LESS THAN (736356) ENGINE = InnoDB,
 PARTITION p20160129 VALUES LESS THAN (736357) ENGINE = InnoDB,
 PARTITION p20160130 VALUES LESS THAN (736358) ENGINE = InnoDB,
 PARTITION p20160131 VALUES LESS THAN (736359) ENGINE = InnoDB,
 PARTITION p20160201 VALUES LESS THAN (736360) ENGINE = InnoDB,
 PARTITION p20160202 VALUES LESS THAN (736361) ENGINE = InnoDB,
 PARTITION p20160203 VALUES LESS THAN (736362) ENGINE = InnoDB,
 PARTITION p20160204 VALUES LESS THAN (736363) ENGINE = InnoDB,
 PARTITION p20160205 VALUES LESS THAN (736364) ENGINE = InnoDB,
 PARTITION p20160206 VALUES LESS THAN (736365) ENGINE = InnoDB,
 PARTITION p20160207 VALUES LESS THAN (736366) ENGINE = InnoDB,
 PARTITION p20160208 VALUES LESS THAN (736367) ENGINE = InnoDB,
 PARTITION p20160209 VALUES LESS THAN (736368) ENGINE = InnoDB,
 PARTITION p20160210 VALUES LESS THAN (736369) ENGINE = InnoDB,
 PARTITION p20160211 VALUES LESS THAN (736370) ENGINE = InnoDB,
 PARTITION p20160212 VALUES LESS THAN (736371) ENGINE = InnoDB,
 PARTITION p20160213 VALUES LESS THAN (736372) ENGINE = InnoDB,
 PARTITION p20160214 VALUES LESS THAN (736373) ENGINE = InnoDB,
 PARTITION p20160215 VALUES LESS THAN (736374) ENGINE = InnoDB,
 PARTITION p20160216 VALUES LESS THAN (736375) ENGINE = InnoDB,
 PARTITION p20160217 VALUES LESS THAN (736376) ENGINE = InnoDB,
 PARTITION p20160218 VALUES LESS THAN (736377) ENGINE = InnoDB,
 PARTITION p20160219 VALUES LESS THAN (736378) ENGINE = InnoDB,
 PARTITION p20160220 VALUES LESS THAN (736379) ENGINE = InnoDB,
 PARTITION p20160221 VALUES LESS THAN (736380) ENGINE = InnoDB,
 PARTITION p20160222 VALUES LESS THAN (736381) ENGINE = InnoDB,
 PARTITION p20160223 VALUES LESS THAN (736382) ENGINE = InnoDB,
 PARTITION p20160224 VALUES LESS THAN (736383) ENGINE = InnoDB,
 PARTITION p20160225 VALUES LESS THAN (736384) ENGINE = InnoDB,
 PARTITION p20160226 VALUES LESS THAN (736385) ENGINE = InnoDB,
 PARTITION p20160227 VALUES LESS THAN (736386) ENGINE = InnoDB,
 PARTITION p20160228 VALUES LESS THAN (736387) ENGINE = InnoDB,
 PARTITION p20160229 VALUES LESS THAN (736388) ENGINE = InnoDB,
 PARTITION p20160301 VALUES LESS THAN (736389) ENGINE = InnoDB,
 PARTITION p20160302 VALUES LESS THAN (736390) ENGINE = InnoDB,
 PARTITION p20160303 VALUES LESS THAN (736391) ENGINE = InnoDB,
 PARTITION p20160304 VALUES LESS THAN (736392) ENGINE = InnoDB,
 PARTITION p20160305 VALUES LESS THAN (736393) ENGINE = InnoDB,
 PARTITION p20160306 VALUES LESS THAN (736394) ENGINE = InnoDB,
 PARTITION p20160307 VALUES LESS THAN (736395) ENGINE = InnoDB,
 PARTITION p20160308 VALUES LESS THAN (736396) ENGINE = InnoDB,
 PARTITION p20160309 VALUES LESS THAN (736397) ENGINE = InnoDB,
 PARTITION p20160310 VALUES LESS THAN (736398) ENGINE = InnoDB,
 PARTITION p20160311 VALUES LESS THAN (736399) ENGINE = InnoDB,
 PARTITION p20160312 VALUES LESS THAN (736400) ENGINE = InnoDB,
 PARTITION p20160313 VALUES LESS THAN (736401) ENGINE = InnoDB,
 PARTITION p20160314 VALUES LESS THAN (736402) ENGINE = InnoDB,
 PARTITION p20160315 VALUES LESS THAN (736403) ENGINE = InnoDB,
 PARTITION p20160316 VALUES LESS THAN (736404) ENGINE = InnoDB,
 PARTITION p20160317 VALUES LESS THAN (736405) ENGINE = InnoDB,
 PARTITION p20160318 VALUES LESS THAN (736406) ENGINE = InnoDB,
 PARTITION p20160319 VALUES LESS THAN (736407) ENGINE = InnoDB,
 PARTITION p20160320 VALUES LESS THAN (736408) ENGINE = InnoDB,
 PARTITION p20160321 VALUES LESS THAN (736409) ENGINE = InnoDB,
 PARTITION p20160322 VALUES LESS THAN (736410) ENGINE = InnoDB,
 PARTITION p20160323 VALUES LESS THAN (736411) ENGINE = InnoDB,
 PARTITION p20160324 VALUES LESS THAN (736412) ENGINE = InnoDB,
 PARTITION p20160325 VALUES LESS THAN (736413) ENGINE = InnoDB,
 PARTITION p20160326 VALUES LESS THAN (736414) ENGINE = InnoDB,
 PARTITION p20160327 VALUES LESS THAN (736415) ENGINE = InnoDB,
 PARTITION p20160328 VALUES LESS THAN (736416) ENGINE = InnoDB,
 PARTITION p20160329 VALUES LESS THAN (736417) ENGINE = InnoDB,
 PARTITION p20160330 VALUES LESS THAN (736418) ENGINE = InnoDB,
 PARTITION p20160331 VALUES LESS THAN (736419) ENGINE = InnoDB,
 PARTITION p20160401 VALUES LESS THAN (736420) ENGINE = InnoDB,
 PARTITION p20160402 VALUES LESS THAN (736421) ENGINE = InnoDB,
 PARTITION p20160403 VALUES LESS THAN (736422) ENGINE = InnoDB,
 PARTITION p20160404 VALUES LESS THAN (736423) ENGINE = InnoDB,
 PARTITION p20160405 VALUES LESS THAN (736424) ENGINE = InnoDB,
 PARTITION p20160406 VALUES LESS THAN (736425) ENGINE = InnoDB,
 PARTITION p20160407 VALUES LESS THAN (736426) ENGINE = InnoDB,
 PARTITION p20160408 VALUES LESS THAN (736427) ENGINE = InnoDB,
 PARTITION p20160409 VALUES LESS THAN (736428) ENGINE = InnoDB,
 PARTITION p20160410 VALUES LESS THAN (736429) ENGINE = InnoDB,
 PARTITION p20160411 VALUES LESS THAN (736430) ENGINE = InnoDB,
 PARTITION p20160412 VALUES LESS THAN (736431) ENGINE = InnoDB,
 PARTITION p20160413 VALUES LESS THAN (736432) ENGINE = InnoDB,
 PARTITION p20160414 VALUES LESS THAN (736433) ENGINE = InnoDB,
 PARTITION p20160415 VALUES LESS THAN (736434) ENGINE = InnoDB,
 PARTITION p20160416 VALUES LESS THAN (736435) ENGINE = InnoDB,
 PARTITION p20160417 VALUES LESS THAN (736436) ENGINE = InnoDB,
 PARTITION p20160418 VALUES LESS THAN (736437) ENGINE = InnoDB,
 PARTITION p20160419 VALUES LESS THAN (736438) ENGINE = InnoDB,
 PARTITION p20160420 VALUES LESS THAN (736439) ENGINE = InnoDB,
 PARTITION p20160421 VALUES LESS THAN (736440) ENGINE = InnoDB,
 PARTITION p20160422 VALUES LESS THAN (736441) ENGINE = InnoDB,
 PARTITION p20160423 VALUES LESS THAN (736442) ENGINE = InnoDB,
 PARTITION p20160424 VALUES LESS THAN (736443) ENGINE = InnoDB,
 PARTITION p20160425 VALUES LESS THAN (736444) ENGINE = InnoDB,
 PARTITION p20160426 VALUES LESS THAN (736445) ENGINE = InnoDB,
 PARTITION p20160427 VALUES LESS THAN (736446) ENGINE = InnoDB,
 PARTITION p20160428 VALUES LESS THAN (736447) ENGINE = InnoDB,
 PARTITION p20160429 VALUES LESS THAN (736448) ENGINE = InnoDB,
 PARTITION p20160430 VALUES LESS THAN (736449) ENGINE = InnoDB,
 PARTITION p20160501 VALUES LESS THAN (736450) ENGINE = InnoDB,
 PARTITION p20160502 VALUES LESS THAN (736451) ENGINE = InnoDB,
 PARTITION p20160503 VALUES LESS THAN (736452) ENGINE = InnoDB,
 PARTITION p20160504 VALUES LESS THAN (736453) ENGINE = InnoDB,
 PARTITION p20160505 VALUES LESS THAN (736454) ENGINE = InnoDB,
 PARTITION p20160506 VALUES LESS THAN (736455) ENGINE = InnoDB,
 PARTITION p20160507 VALUES LESS THAN (736456) ENGINE = InnoDB,
 PARTITION p20160508 VALUES LESS THAN (736457) ENGINE = InnoDB,
 PARTITION p20160509 VALUES LESS THAN (736458) ENGINE = InnoDB,
 PARTITION p20160510 VALUES LESS THAN (736459) ENGINE = InnoDB,
 PARTITION p20160511 VALUES LESS THAN (736460) ENGINE = InnoDB,
 PARTITION p20160512 VALUES LESS THAN (736461) ENGINE = InnoDB,
 PARTITION p20160513 VALUES LESS THAN (736462) ENGINE = InnoDB,
 PARTITION p20160514 VALUES LESS THAN (736463) ENGINE = InnoDB,
 PARTITION p20160515 VALUES LESS THAN (736464) ENGINE = InnoDB,
 PARTITION p20160516 VALUES LESS THAN (736465) ENGINE = InnoDB,
 PARTITION p20160517 VALUES LESS THAN (736466) ENGINE = InnoDB,
 PARTITION p20160518 VALUES LESS THAN (736467) ENGINE = InnoDB,
 PARTITION p20160519 VALUES LESS THAN (736468) ENGINE = InnoDB,
 PARTITION p20160520 VALUES LESS THAN (736469) ENGINE = InnoDB,
 PARTITION p20160521 VALUES LESS THAN (736470) ENGINE = InnoDB,
 PARTITION p20160522 VALUES LESS THAN (736471) ENGINE = InnoDB,
 PARTITION p20160523 VALUES LESS THAN (736472) ENGINE = InnoDB,
 PARTITION p20160524 VALUES LESS THAN (736473) ENGINE = InnoDB,
 PARTITION p20160525 VALUES LESS THAN (736474) ENGINE = InnoDB,
 PARTITION p20160526 VALUES LESS THAN (736475) ENGINE = InnoDB,
 PARTITION p20160527 VALUES LESS THAN (736476) ENGINE = InnoDB,
 PARTITION p20160528 VALUES LESS THAN (736477) ENGINE = InnoDB,
 PARTITION p20160529 VALUES LESS THAN (736478) ENGINE = InnoDB,
 PARTITION p20160530 VALUES LESS THAN (736479) ENGINE = InnoDB,
 PARTITION p20160531 VALUES LESS THAN (736480) ENGINE = InnoDB,
 PARTITION p20160601 VALUES LESS THAN (736481) ENGINE = InnoDB,
 PARTITION p20160602 VALUES LESS THAN (736482) ENGINE = InnoDB,
 PARTITION p20160603 VALUES LESS THAN (736483) ENGINE = InnoDB,
 PARTITION p20160604 VALUES LESS THAN (736484) ENGINE = InnoDB,
 PARTITION p20160605 VALUES LESS THAN (736485) ENGINE = InnoDB,
 PARTITION p20160606 VALUES LESS THAN (736486) ENGINE = InnoDB,
 PARTITION p20160607 VALUES LESS THAN (736487) ENGINE = InnoDB,
 PARTITION p20160608 VALUES LESS THAN (736488) ENGINE = InnoDB,
 PARTITION p20160609 VALUES LESS THAN (736489) ENGINE = InnoDB,
 PARTITION p20160610 VALUES LESS THAN (736490) ENGINE = InnoDB,
 PARTITION p20160611 VALUES LESS THAN (736491) ENGINE = InnoDB,
 PARTITION p20160612 VALUES LESS THAN (736492) ENGINE = InnoDB,
 PARTITION p20160613 VALUES LESS THAN (736493) ENGINE = InnoDB,
 PARTITION p20160614 VALUES LESS THAN (736494) ENGINE = InnoDB,
 PARTITION p20160615 VALUES LESS THAN (736495) ENGINE = InnoDB,
 PARTITION p20160616 VALUES LESS THAN (736496) ENGINE = InnoDB,
 PARTITION p20160617 VALUES LESS THAN (736497) ENGINE = InnoDB,
 PARTITION p20160618 VALUES LESS THAN (736498) ENGINE = InnoDB,
 PARTITION p20160619 VALUES LESS THAN (736499) ENGINE = InnoDB,
 PARTITION p20160620 VALUES LESS THAN (736500) ENGINE = InnoDB,
 PARTITION p20160621 VALUES LESS THAN (736501) ENGINE = InnoDB,
 PARTITION p20160622 VALUES LESS THAN (736502) ENGINE = InnoDB,
 PARTITION p20160623 VALUES LESS THAN (736503) ENGINE = InnoDB,
 PARTITION p20160624 VALUES LESS THAN (736504) ENGINE = InnoDB,
 PARTITION p20160625 VALUES LESS THAN (736505) ENGINE = InnoDB,
 PARTITION p20160626 VALUES LESS THAN (736506) ENGINE = InnoDB,
 PARTITION p20160627 VALUES LESS THAN (736507) ENGINE = InnoDB,
 PARTITION p20160628 VALUES LESS THAN (736508) ENGINE = InnoDB,
 PARTITION p20160629 VALUES LESS THAN (736509) ENGINE = InnoDB,
 PARTITION p20160630 VALUES LESS THAN (736510) ENGINE = InnoDB,
 PARTITION p20160701 VALUES LESS THAN (736511) ENGINE = InnoDB,
 PARTITION p20160702 VALUES LESS THAN (736512) ENGINE = InnoDB,
 PARTITION p20160703 VALUES LESS THAN (736513) ENGINE = InnoDB,
 PARTITION p20160704 VALUES LESS THAN (736514) ENGINE = InnoDB,
 PARTITION p20160705 VALUES LESS THAN (736515) ENGINE = InnoDB,
 PARTITION p20160706 VALUES LESS THAN (736516) ENGINE = InnoDB,
 PARTITION p20160707 VALUES LESS THAN (736517) ENGINE = InnoDB,
 PARTITION p20160708 VALUES LESS THAN (736518) ENGINE = InnoDB,
 PARTITION p20160709 VALUES LESS THAN (736519) ENGINE = InnoDB,
 PARTITION p20160710 VALUES LESS THAN (736520) ENGINE = InnoDB,
 PARTITION p20160711 VALUES LESS THAN (736521) ENGINE = InnoDB,
 PARTITION p20160712 VALUES LESS THAN (736522) ENGINE = InnoDB,
 PARTITION p20160713 VALUES LESS THAN (736523) ENGINE = InnoDB,
 PARTITION p20160714 VALUES LESS THAN (736524) ENGINE = InnoDB,
 PARTITION p20160715 VALUES LESS THAN (736525) ENGINE = InnoDB,
 PARTITION p20160716 VALUES LESS THAN (736526) ENGINE = InnoDB,
 PARTITION p20160717 VALUES LESS THAN (736527) ENGINE = InnoDB,
 PARTITION p20160718 VALUES LESS THAN (736528) ENGINE = InnoDB,
 PARTITION p20160719 VALUES LESS THAN (736529) ENGINE = InnoDB,
 PARTITION p20160720 VALUES LESS THAN (736530) ENGINE = InnoDB,
 PARTITION p20160721 VALUES LESS THAN (736531) ENGINE = InnoDB,
 PARTITION p20160722 VALUES LESS THAN (736532) ENGINE = InnoDB,
 PARTITION p20160723 VALUES LESS THAN (736533) ENGINE = InnoDB,
 PARTITION p20160724 VALUES LESS THAN (736534) ENGINE = InnoDB,
 PARTITION p20160725 VALUES LESS THAN (736535) ENGINE = InnoDB,
 PARTITION p20160726 VALUES LESS THAN (736536) ENGINE = InnoDB,
 PARTITION p20160727 VALUES LESS THAN (736537) ENGINE = InnoDB,
 PARTITION p20160728 VALUES LESS THAN (736538) ENGINE = InnoDB,
 PARTITION p20160729 VALUES LESS THAN (736539) ENGINE = InnoDB,
 PARTITION p20160730 VALUES LESS THAN (736540) ENGINE = InnoDB,
 PARTITION p20160731 VALUES LESS THAN (736541) ENGINE = InnoDB,
 PARTITION p20160801 VALUES LESS THAN (736542) ENGINE = InnoDB,
 PARTITION p20160802 VALUES LESS THAN (736543) ENGINE = InnoDB,
 PARTITION p20160803 VALUES LESS THAN (736544) ENGINE = InnoDB,
 PARTITION p20160804 VALUES LESS THAN (736545) ENGINE = InnoDB,
 PARTITION p20160805 VALUES LESS THAN (736546) ENGINE = InnoDB,
 PARTITION p20160806 VALUES LESS THAN (736547) ENGINE = InnoDB,
 PARTITION p20160807 VALUES LESS THAN (736548) ENGINE = InnoDB,
 PARTITION p20160808 VALUES LESS THAN (736549) ENGINE = InnoDB,
 PARTITION p20160809 VALUES LESS THAN (736550) ENGINE = InnoDB,
 PARTITION p20160810 VALUES LESS THAN (736551) ENGINE = InnoDB,
 PARTITION p20160811 VALUES LESS THAN (736552) ENGINE = InnoDB,
 PARTITION p20160812 VALUES LESS THAN (736553) ENGINE = InnoDB,
 PARTITION p20160813 VALUES LESS THAN (736554) ENGINE = InnoDB,
 PARTITION p20160814 VALUES LESS THAN (736555) ENGINE = InnoDB,
 PARTITION p20160815 VALUES LESS THAN (736556) ENGINE = InnoDB,
 PARTITION p20160816 VALUES LESS THAN (736557) ENGINE = InnoDB,
 PARTITION p20160817 VALUES LESS THAN (736558) ENGINE = InnoDB,
 PARTITION p20160818 VALUES LESS THAN (736559) ENGINE = InnoDB,
 PARTITION p20160819 VALUES LESS THAN (736560) ENGINE = InnoDB,
 PARTITION p20160820 VALUES LESS THAN (736561) ENGINE = InnoDB,
 PARTITION p20160821 VALUES LESS THAN (736562) ENGINE = InnoDB,
 PARTITION p20160822 VALUES LESS THAN (736563) ENGINE = InnoDB,
 PARTITION p20160823 VALUES LESS THAN (736564) ENGINE = InnoDB,
 PARTITION p20160824 VALUES LESS THAN (736565) ENGINE = InnoDB,
 PARTITION p20160825 VALUES LESS THAN (736566) ENGINE = InnoDB,
 PARTITION p20160826 VALUES LESS THAN (736567) ENGINE = InnoDB,
 PARTITION p20160827 VALUES LESS THAN (736568) ENGINE = InnoDB,
 PARTITION p20160828 VALUES LESS THAN (736569) ENGINE = InnoDB,
 PARTITION p20160829 VALUES LESS THAN (736570) ENGINE = InnoDB,
 PARTITION p20160830 VALUES LESS THAN (736571) ENGINE = InnoDB,
 PARTITION p20160831 VALUES LESS THAN (736572) ENGINE = InnoDB,
 PARTITION p20160901 VALUES LESS THAN (736573) ENGINE = InnoDB,
 PARTITION p20160902 VALUES LESS THAN (736574) ENGINE = InnoDB,
 PARTITION p20160903 VALUES LESS THAN (736575) ENGINE = InnoDB,
 PARTITION p20160904 VALUES LESS THAN (736576) ENGINE = InnoDB,
 PARTITION p20160905 VALUES LESS THAN (736577) ENGINE = InnoDB,
 PARTITION p20160906 VALUES LESS THAN (736578) ENGINE = InnoDB,
 PARTITION p20160907 VALUES LESS THAN (736579) ENGINE = InnoDB,
 PARTITION p20160908 VALUES LESS THAN (736580) ENGINE = InnoDB,
 PARTITION p20160909 VALUES LESS THAN (736581) ENGINE = InnoDB,
 PARTITION p20160910 VALUES LESS THAN (736582) ENGINE = InnoDB,
 PARTITION p20160911 VALUES LESS THAN (736583) ENGINE = InnoDB,
 PARTITION p20160912 VALUES LESS THAN (736584) ENGINE = InnoDB,
 PARTITION p20160913 VALUES LESS THAN (736585) ENGINE = InnoDB,
 PARTITION p20160914 VALUES LESS THAN (736586) ENGINE = InnoDB,
 PARTITION p20160915 VALUES LESS THAN (736587) ENGINE = InnoDB,
 PARTITION p20160916 VALUES LESS THAN (736588) ENGINE = InnoDB,
 PARTITION p20160917 VALUES LESS THAN (736589) ENGINE = InnoDB,
 PARTITION p20160918 VALUES LESS THAN (736590) ENGINE = InnoDB,
 PARTITION p20160919 VALUES LESS THAN (736591) ENGINE = InnoDB,
 PARTITION p20160920 VALUES LESS THAN (736592) ENGINE = InnoDB,
 PARTITION p20160921 VALUES LESS THAN (736593) ENGINE = InnoDB,
 PARTITION p20160922 VALUES LESS THAN (736594) ENGINE = InnoDB,
 PARTITION p20160923 VALUES LESS THAN (736595) ENGINE = InnoDB,
 PARTITION p20160924 VALUES LESS THAN (736596) ENGINE = InnoDB,
 PARTITION p20160925 VALUES LESS THAN (736597) ENGINE = InnoDB,
 PARTITION p20160926 VALUES LESS THAN (736598) ENGINE = InnoDB,
 PARTITION p20160927 VALUES LESS THAN (736599) ENGINE = InnoDB,
 PARTITION p20160928 VALUES LESS THAN (736600) ENGINE = InnoDB,
 PARTITION p20160929 VALUES LESS THAN (736601) ENGINE = InnoDB,
 PARTITION p20160930 VALUES LESS THAN (736602) ENGINE = InnoDB,
 PARTITION p20161001 VALUES LESS THAN (736603) ENGINE = InnoDB,
 PARTITION p20161002 VALUES LESS THAN (736604) ENGINE = InnoDB,
 PARTITION p20161003 VALUES LESS THAN (736605) ENGINE = InnoDB,
 PARTITION p20161004 VALUES LESS THAN (736606) ENGINE = InnoDB,
 PARTITION p20161005 VALUES LESS THAN (736607) ENGINE = InnoDB,
 PARTITION p20161006 VALUES LESS THAN (736608) ENGINE = InnoDB,
 PARTITION p20161007 VALUES LESS THAN (736609) ENGINE = InnoDB,
 PARTITION p20161008 VALUES LESS THAN (736610) ENGINE = InnoDB,
 PARTITION p20161009 VALUES LESS THAN (736611) ENGINE = InnoDB,
 PARTITION p20161010 VALUES LESS THAN (736612) ENGINE = InnoDB,
 PARTITION p20161011 VALUES LESS THAN (736613) ENGINE = InnoDB,
 PARTITION p20161012 VALUES LESS THAN (736614) ENGINE = InnoDB,
 PARTITION p20161013 VALUES LESS THAN (736615) ENGINE = InnoDB,
 PARTITION p20161014 VALUES LESS THAN (736616) ENGINE = InnoDB,
 PARTITION p20161015 VALUES LESS THAN (736617) ENGINE = InnoDB,
 PARTITION p20161016 VALUES LESS THAN (736618) ENGINE = InnoDB,
 PARTITION p20161017 VALUES LESS THAN (736619) ENGINE = InnoDB,
 PARTITION p20161018 VALUES LESS THAN (736620) ENGINE = InnoDB,
 PARTITION p20161019 VALUES LESS THAN (736621) ENGINE = InnoDB,
 PARTITION p20161020 VALUES LESS THAN (736622) ENGINE = InnoDB,
 PARTITION p20161021 VALUES LESS THAN (736623) ENGINE = InnoDB,
 PARTITION p20161022 VALUES LESS THAN (736624) ENGINE = InnoDB,
 PARTITION p20161023 VALUES LESS THAN (736625) ENGINE = InnoDB,
 PARTITION p20161024 VALUES LESS THAN (736626) ENGINE = InnoDB,
 PARTITION p20161025 VALUES LESS THAN (736627) ENGINE = InnoDB,
 PARTITION p20161026 VALUES LESS THAN (736628) ENGINE = InnoDB,
 PARTITION p20161027 VALUES LESS THAN (736629) ENGINE = InnoDB,
 PARTITION p20161028 VALUES LESS THAN (736630) ENGINE = InnoDB,
 PARTITION p20161029 VALUES LESS THAN (736631) ENGINE = InnoDB,
 PARTITION p20161030 VALUES LESS THAN (736632) ENGINE = InnoDB,
 PARTITION p20161031 VALUES LESS THAN (736633) ENGINE = InnoDB,
 PARTITION p20161101 VALUES LESS THAN (736634) ENGINE = InnoDB,
 PARTITION p20161102 VALUES LESS THAN (736635) ENGINE = InnoDB,
 PARTITION p20161103 VALUES LESS THAN (736636) ENGINE = InnoDB,
 PARTITION p20161104 VALUES LESS THAN (736637) ENGINE = InnoDB,
 PARTITION p20161105 VALUES LESS THAN (736638) ENGINE = InnoDB,
 PARTITION p20161106 VALUES LESS THAN (736639) ENGINE = InnoDB,
 PARTITION p20161107 VALUES LESS THAN (736640) ENGINE = InnoDB,
 PARTITION p20161108 VALUES LESS THAN (736641) ENGINE = InnoDB,
 PARTITION p20161109 VALUES LESS THAN (736642) ENGINE = InnoDB,
 PARTITION p20161110 VALUES LESS THAN (736643) ENGINE = InnoDB,
 PARTITION p20161111 VALUES LESS THAN (736644) ENGINE = InnoDB,
 PARTITION p20161112 VALUES LESS THAN (736645) ENGINE = InnoDB,
 PARTITION p20161113 VALUES LESS THAN (736646) ENGINE = InnoDB,
 PARTITION p20161114 VALUES LESS THAN (736647) ENGINE = InnoDB,
 PARTITION p20161115 VALUES LESS THAN (736648) ENGINE = InnoDB,
 PARTITION p20161116 VALUES LESS THAN (736649) ENGINE = InnoDB,
 PARTITION p20161117 VALUES LESS THAN (736650) ENGINE = InnoDB,
 PARTITION p20161118 VALUES LESS THAN (736651) ENGINE = InnoDB,
 PARTITION p20161119 VALUES LESS THAN (736652) ENGINE = InnoDB,
 PARTITION p20161120 VALUES LESS THAN (736653) ENGINE = InnoDB,
 PARTITION p20161121 VALUES LESS THAN (736654) ENGINE = InnoDB,
 PARTITION p20161122 VALUES LESS THAN (736655) ENGINE = InnoDB,
 PARTITION p20161123 VALUES LESS THAN (736656) ENGINE = InnoDB,
 PARTITION p20161124 VALUES LESS THAN (736657) ENGINE = InnoDB,
 PARTITION p20161125 VALUES LESS THAN (736658) ENGINE = InnoDB,
 PARTITION p20161126 VALUES LESS THAN (736659) ENGINE = InnoDB,
 PARTITION p20161127 VALUES LESS THAN (736660) ENGINE = InnoDB,
 PARTITION p20161128 VALUES LESS THAN (736661) ENGINE = InnoDB,
 PARTITION p20161129 VALUES LESS THAN (736662) ENGINE = InnoDB,
 PARTITION p20161130 VALUES LESS THAN (736663) ENGINE = InnoDB,
 PARTITION p20161201 VALUES LESS THAN (736664) ENGINE = InnoDB,
 PARTITION p20161202 VALUES LESS THAN (736665) ENGINE = InnoDB,
 PARTITION p20161203 VALUES LESS THAN (736666) ENGINE = InnoDB,
 PARTITION p20161204 VALUES LESS THAN (736667) ENGINE = InnoDB,
 PARTITION p20161205 VALUES LESS THAN (736668) ENGINE = InnoDB,
 PARTITION p20161206 VALUES LESS THAN (736669) ENGINE = InnoDB,
 PARTITION p20161207 VALUES LESS THAN (736670) ENGINE = InnoDB,
 PARTITION p20161208 VALUES LESS THAN (736671) ENGINE = InnoDB,
 PARTITION p20161209 VALUES LESS THAN (736672) ENGINE = InnoDB,
 PARTITION p20161210 VALUES LESS THAN (736673) ENGINE = InnoDB,
 PARTITION p20161211 VALUES LESS THAN (736674) ENGINE = InnoDB,
 PARTITION p20161212 VALUES LESS THAN (736675) ENGINE = InnoDB,
 PARTITION p20161213 VALUES LESS THAN (736676) ENGINE = InnoDB,
 PARTITION p20161214 VALUES LESS THAN (736677) ENGINE = InnoDB,
 PARTITION p20161215 VALUES LESS THAN (736678) ENGINE = InnoDB,
 PARTITION p20161216 VALUES LESS THAN (736679) ENGINE = InnoDB,
 PARTITION p20161217 VALUES LESS THAN (736680) ENGINE = InnoDB,
 PARTITION p20161218 VALUES LESS THAN (736681) ENGINE = InnoDB,
 PARTITION p20161219 VALUES LESS THAN (736682) ENGINE = InnoDB,
 PARTITION p20161220 VALUES LESS THAN (736683) ENGINE = InnoDB,
 PARTITION p20161221 VALUES LESS THAN (736684) ENGINE = InnoDB,
 PARTITION p20161222 VALUES LESS THAN (736685) ENGINE = InnoDB,
 PARTITION p20161223 VALUES LESS THAN (736686) ENGINE = InnoDB,
 PARTITION p20161224 VALUES LESS THAN (736687) ENGINE = InnoDB,
 PARTITION p20161225 VALUES LESS THAN (736688) ENGINE = InnoDB,
 PARTITION p20161226 VALUES LESS THAN (736689) ENGINE = InnoDB,
 PARTITION p20161227 VALUES LESS THAN (736690) ENGINE = InnoDB,
 PARTITION p20161228 VALUES LESS THAN (736691) ENGINE = InnoDB,
 PARTITION p20161229 VALUES LESS THAN (736692) ENGINE = InnoDB,
 PARTITION p20161230 VALUES LESS THAN (736693) ENGINE = InnoDB,
 PARTITION p20161231 VALUES LESS THAN (736694) ENGINE = InnoDB,
 PARTITION p20170101 VALUES LESS THAN (736695) ENGINE = InnoDB,
 PARTITION p20170102 VALUES LESS THAN (736696) ENGINE = InnoDB,
 PARTITION p20170103 VALUES LESS THAN (736697) ENGINE = InnoDB,
 PARTITION p20170104 VALUES LESS THAN (736698) ENGINE = InnoDB,
 PARTITION p20170105 VALUES LESS THAN (736699) ENGINE = InnoDB,
 PARTITION p20170106 VALUES LESS THAN (736700) ENGINE = InnoDB,
 PARTITION p20170107 VALUES LESS THAN (736701) ENGINE = InnoDB,
 PARTITION p20170108 VALUES LESS THAN (736702) ENGINE = InnoDB,
 PARTITION p20170109 VALUES LESS THAN (736703) ENGINE = InnoDB,
 PARTITION p20170110 VALUES LESS THAN (736704) ENGINE = InnoDB,
 PARTITION p20170111 VALUES LESS THAN (736705) ENGINE = InnoDB,
 PARTITION p20170112 VALUES LESS THAN (736706) ENGINE = InnoDB,
 PARTITION p20170113 VALUES LESS THAN (736707) ENGINE = InnoDB,
 PARTITION p20170114 VALUES LESS THAN (736708) ENGINE = InnoDB,
 PARTITION p20170115 VALUES LESS THAN (736709) ENGINE = InnoDB,
 PARTITION p20170116 VALUES LESS THAN (736710) ENGINE = InnoDB,
 PARTITION p20170117 VALUES LESS THAN (736711) ENGINE = InnoDB,
 PARTITION p20170118 VALUES LESS THAN (736712) ENGINE = InnoDB,
 PARTITION p20170119 VALUES LESS THAN (736713) ENGINE = InnoDB,
 PARTITION p20170120 VALUES LESS THAN (736714) ENGINE = InnoDB,
 PARTITION p20170121 VALUES LESS THAN (736715) ENGINE = InnoDB,
 PARTITION p20170122 VALUES LESS THAN (736716) ENGINE = InnoDB,
 PARTITION p20170123 VALUES LESS THAN (736717) ENGINE = InnoDB,
 PARTITION p20170124 VALUES LESS THAN (736718) ENGINE = InnoDB,
 PARTITION p20170125 VALUES LESS THAN (736719) ENGINE = InnoDB,
 PARTITION p20170126 VALUES LESS THAN (736720) ENGINE = InnoDB,
 PARTITION p20170127 VALUES LESS THAN (736721) ENGINE = InnoDB,
 PARTITION p20170128 VALUES LESS THAN (736722) ENGINE = InnoDB,
 PARTITION p20170129 VALUES LESS THAN (736723) ENGINE = InnoDB,
 PARTITION p20170130 VALUES LESS THAN (736724) ENGINE = InnoDB,
 PARTITION p20170131 VALUES LESS THAN (736725) ENGINE = InnoDB,
 PARTITION p20170201 VALUES LESS THAN (736726) ENGINE = InnoDB,
 PARTITION p20170202 VALUES LESS THAN (736727) ENGINE = InnoDB,
 PARTITION p20170203 VALUES LESS THAN (736728) ENGINE = InnoDB,
 PARTITION p20170204 VALUES LESS THAN (736729) ENGINE = InnoDB,
 PARTITION p20170205 VALUES LESS THAN (736730) ENGINE = InnoDB,
 PARTITION p20170206 VALUES LESS THAN (736731) ENGINE = InnoDB,
 PARTITION p20170207 VALUES LESS THAN (736732) ENGINE = InnoDB,
 PARTITION p20170208 VALUES LESS THAN (736733) ENGINE = InnoDB,
 PARTITION p20170209 VALUES LESS THAN (736734) ENGINE = InnoDB,
 PARTITION p20170210 VALUES LESS THAN (736735) ENGINE = InnoDB,
 PARTITION p20170211 VALUES LESS THAN (736736) ENGINE = InnoDB,
 PARTITION p20170212 VALUES LESS THAN (736737) ENGINE = InnoDB,
 PARTITION p20170213 VALUES LESS THAN (736738) ENGINE = InnoDB,
 PARTITION p20170214 VALUES LESS THAN (736739) ENGINE = InnoDB,
 PARTITION p20170215 VALUES LESS THAN (736740) ENGINE = InnoDB,
 PARTITION p20170216 VALUES LESS THAN (736741) ENGINE = InnoDB,
 PARTITION p20170217 VALUES LESS THAN (736742) ENGINE = InnoDB,
 PARTITION p20170218 VALUES LESS THAN (736743) ENGINE = InnoDB,
 PARTITION p20170219 VALUES LESS THAN (736744) ENGINE = InnoDB,
 PARTITION p20170220 VALUES LESS THAN (736745) ENGINE = InnoDB,
 PARTITION p20170221 VALUES LESS THAN (736746) ENGINE = InnoDB,
 PARTITION p20170222 VALUES LESS THAN (736747) ENGINE = InnoDB,
 PARTITION p20170223 VALUES LESS THAN (736748) ENGINE = InnoDB,
 PARTITION p20170224 VALUES LESS THAN (736749) ENGINE = InnoDB,
 PARTITION p20170225 VALUES LESS THAN (736750) ENGINE = InnoDB,
 PARTITION p20170226 VALUES LESS THAN (736751) ENGINE = InnoDB,
 PARTITION p20170227 VALUES LESS THAN (736752) ENGINE = InnoDB,
 PARTITION p20170228 VALUES LESS THAN (736753) ENGINE = InnoDB,
 PARTITION p20170301 VALUES LESS THAN (736754) ENGINE = InnoDB,
 PARTITION p20170302 VALUES LESS THAN (736755) ENGINE = InnoDB,
 PARTITION p20170303 VALUES LESS THAN (736756) ENGINE = InnoDB,
 PARTITION p20170304 VALUES LESS THAN (736757) ENGINE = InnoDB,
 PARTITION p20170305 VALUES LESS THAN (736758) ENGINE = InnoDB,
 PARTITION p20170306 VALUES LESS THAN (736759) ENGINE = InnoDB,
 PARTITION p20170307 VALUES LESS THAN (736760) ENGINE = InnoDB,
 PARTITION p20170308 VALUES LESS THAN (736761) ENGINE = InnoDB,
 PARTITION p20170309 VALUES LESS THAN (736762) ENGINE = InnoDB,
 PARTITION p20170310 VALUES LESS THAN (736763) ENGINE = InnoDB,
 PARTITION p20170311 VALUES LESS THAN (736764) ENGINE = InnoDB,
 PARTITION p20170312 VALUES LESS THAN (736765) ENGINE = InnoDB,
 PARTITION p20170313 VALUES LESS THAN (736766) ENGINE = InnoDB,
 PARTITION p20170314 VALUES LESS THAN (736767) ENGINE = InnoDB,
 PARTITION p20170315 VALUES LESS THAN (736768) ENGINE = InnoDB,
 PARTITION p20170316 VALUES LESS THAN (736769) ENGINE = InnoDB,
 PARTITION p20170317 VALUES LESS THAN (736770) ENGINE = InnoDB,
 PARTITION p20170318 VALUES LESS THAN (736771) ENGINE = InnoDB,
 PARTITION p20170319 VALUES LESS THAN (736772) ENGINE = InnoDB,
 PARTITION p20170320 VALUES LESS THAN (736773) ENGINE = InnoDB,
 PARTITION p20170321 VALUES LESS THAN (736774) ENGINE = InnoDB,
 PARTITION p20170322 VALUES LESS THAN (736775) ENGINE = InnoDB,
 PARTITION p20170323 VALUES LESS THAN (736776) ENGINE = InnoDB,
 PARTITION p20170324 VALUES LESS THAN (736777) ENGINE = InnoDB,
 PARTITION p20170325 VALUES LESS THAN (736778) ENGINE = InnoDB,
 PARTITION p20170326 VALUES LESS THAN (736779) ENGINE = InnoDB,
 PARTITION p20170327 VALUES LESS THAN (736780) ENGINE = InnoDB,
 PARTITION p20170328 VALUES LESS THAN (736781) ENGINE = InnoDB,
 PARTITION p20170329 VALUES LESS THAN (736782) ENGINE = InnoDB,
 PARTITION p20170330 VALUES LESS THAN (736783) ENGINE = InnoDB,
 PARTITION p20170331 VALUES LESS THAN (736784) ENGINE = InnoDB,
 PARTITION p20170401 VALUES LESS THAN (736785) ENGINE = InnoDB,
 PARTITION p20170402 VALUES LESS THAN (736786) ENGINE = InnoDB,
 PARTITION p20170403 VALUES LESS THAN (736787) ENGINE = InnoDB,
 PARTITION p20170404 VALUES LESS THAN (736788) ENGINE = InnoDB,
 PARTITION p20170405 VALUES LESS THAN (736789) ENGINE = InnoDB,
 PARTITION p20170406 VALUES LESS THAN (736790) ENGINE = InnoDB,
 PARTITION p20170407 VALUES LESS THAN (736791) ENGINE = InnoDB,
 PARTITION p20170408 VALUES LESS THAN (736792) ENGINE = InnoDB,
 PARTITION p20170409 VALUES LESS THAN (736793) ENGINE = InnoDB,
 PARTITION p20170410 VALUES LESS THAN (736794) ENGINE = InnoDB,
 PARTITION p20170411 VALUES LESS THAN (736795) ENGINE = InnoDB,
 PARTITION p20170412 VALUES LESS THAN (736796) ENGINE = InnoDB,
 PARTITION p20170413 VALUES LESS THAN (736797) ENGINE = InnoDB,
 PARTITION p20170414 VALUES LESS THAN (736798) ENGINE = InnoDB,
 PARTITION p20170415 VALUES LESS THAN (736799) ENGINE = InnoDB,
 PARTITION p20170416 VALUES LESS THAN (736800) ENGINE = InnoDB,
 PARTITION p20170417 VALUES LESS THAN (736801) ENGINE = InnoDB,
 PARTITION p20170418 VALUES LESS THAN (736802) ENGINE = InnoDB,
 PARTITION p20170419 VALUES LESS THAN (736803) ENGINE = InnoDB,
 PARTITION p20170420 VALUES LESS THAN (736804) ENGINE = InnoDB,
 PARTITION p20170421 VALUES LESS THAN (736805) ENGINE = InnoDB,
 PARTITION p20170422 VALUES LESS THAN (736806) ENGINE = InnoDB,
 PARTITION p20170423 VALUES LESS THAN (736807) ENGINE = InnoDB,
 PARTITION p20170424 VALUES LESS THAN (736808) ENGINE = InnoDB) */;

-- ----------------------------
-- Table structure for log_user_device_first
-- ----------------------------
DROP TABLE IF EXISTS `log_user_device_first`;
CREATE TABLE `log_user_device_first` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `ud_id` bigint(18) DEFAULT NULL COMMENT '终端用户ID',
  `channel_name` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '渠道商名',
  `imei` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '终端机器码',
  `record_type` smallint(2) DEFAULT NULL COMMENT '记录类型方式 1:注册 3:三方登录 4:激活设备; 6:游客',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `version_id` mediumint(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `log_filrst` (`create_time`),
  KEY `ind_log_userfirst_userid` (`ud_id`),
  KEY `ind_channel` (`channel_name`),
  KEY `idx_imei` (`imei`(14))
) ENGINE=InnoDB AUTO_INCREMENT=4483529 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='各种记录首次用户设备信息';

-- ----------------------------
-- Table structure for log_user_login
-- ----------------------------
DROP TABLE IF EXISTS `log_user_login`;
CREATE TABLE `log_user_login` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(18) DEFAULT NULL COMMENT '用户id',
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `lat` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL,
  `lag` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL,
  `login_way` smallint(2) DEFAULT NULL COMMENT '登录方式 1-平台登录，2-三方登录',
  `login_type` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_t` (`login_time`),
  KEY `ind_userid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3623441 DEFAULT CHARSET=utf8 COMMENT='用户登录记录表';

-- ----------------------------
-- Table structure for log_user_online_time
-- ----------------------------
DROP TABLE IF EXISTS `log_user_online_time`;
CREATE TABLE `log_user_online_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `client_type` varchar(20) DEFAULT NULL COMMENT 'app端设备类型，iod,android',
  `duration_time` bigint(18) DEFAULT NULL COMMENT '持续在线时长',
  `log_time` datetime DEFAULT NULL COMMENT '记录时间',
  `imei` varchar(50) DEFAULT NULL COMMENT '终端机器码',
  `app_version` varchar(20) DEFAULT NULL COMMENT 'app版本',
  `channel` varchar(50) DEFAULT NULL COMMENT '渠道',
  PRIMARY KEY (`id`),
  KEY `ind_u` (`uid`),
  KEY `ind_t` (`log_time`),
  KEY `ind_imei` (`imei`(14))
) ENGINE=InnoDB AUTO_INCREMENT=13981559 DEFAULT CHARSET=utf8mb4 COMMENT='用户单次启动使用时长日志表';

-- ----------------------------
-- Table structure for log_user_term
-- ----------------------------
DROP TABLE IF EXISTS `log_user_term`;
CREATE TABLE `log_user_term` (
  `term_type` tinyint(4) DEFAULT NULL COMMENT '1:全版本  2：渠道',
  `term_value` varchar(100) DEFAULT NULL,
  `id` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for match_info
-- ----------------------------
DROP TABLE IF EXISTS `match_info`;
CREATE TABLE `match_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(12) CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '赛事状态：0未开始；1海选；2晋级赛；3半决赛；4总决赛；5结束',
  `bg_picture` varchar(300) CHARACTER SET utf8mb4 DEFAULT NULL,
  `width` mediumint(9) DEFAULT NULL COMMENT '图片宽',
  `height` mediumint(9) DEFAULT NULL COMMENT '图片高宽',
  `num_of_people` int(11) NOT NULL DEFAULT '0' COMMENT '本赛事总参选人数',
  `num_of_media` int(11) NOT NULL DEFAULT '0' COMMENT '本赛事总参选作品数',
  `num_of_vote` int(11) NOT NULL DEFAULT '0' COMMENT '本赛事总投票数',
  `start_time` datetime DEFAULT NULL COMMENT '赛事开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '赛事结束时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序顺序',
  `match_url` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='赛事信息表';

-- ----------------------------
-- Table structure for special_activity_and_group
-- ----------------------------
DROP TABLE IF EXISTS `special_activity_and_group`;
CREATE TABLE `special_activity_and_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(4) DEFAULT NULL COMMENT '类型：对应tab_sub_match表type',
  `related_id` int(11) NOT NULL DEFAULT '0' COMMENT '赛事或者活动相关的id',
  `media_url` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
  `images_url` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
  `title` varchar(12) CHARACTER SET utf8mb4 DEFAULT NULL,
  `module_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '瀑布流中栏目的标题背景色',
  `hot_img` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL COMMENT '是否启用：1为启用，0为未启用',
  `match_status` smallint(6) DEFAULT NULL COMMENT '赛事状态',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `pnumber` int(11) DEFAULT NULL COMMENT '点赞数',
  `location` int(11) DEFAULT '0' COMMENT '位置0随机，1第一位，2第二位',
  `h5_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'h5页面地址',
  `share_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分享url',
  `share_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分享图片',
  `share_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分享标题',
  `share_content` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分享内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='赛事、活动等的特殊置顶';

-- ----------------------------
-- Table structure for sys_app_version_convert
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_version_convert`;
CREATE TABLE `sys_app_version_convert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_version` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'APP版本',
  PRIMARY KEY (`id`),
  KEY `ind_ver` (`app_version`(5))
) ENGINE=InnoDB AUTO_INCREMENT=9001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='版本号，字符串转数字';

-- ----------------------------
-- Table structure for sys_app_version_convert_1
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_version_convert_1`;
CREATE TABLE `sys_app_version_convert_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_version` varchar(20) DEFAULT NULL COMMENT 'APP版本',
  `type` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `ind_ver` (`app_version`(5)),
  KEY `ind_1` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=9001 DEFAULT CHARSET=utf8mb4 COMMENT='版本号，字符串转数字';

-- ----------------------------
-- Table structure for sys_hottop_img
-- ----------------------------
DROP TABLE IF EXISTS `sys_hottop_img`;
CREATE TABLE `sys_hottop_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `create_user` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` smallint(2) DEFAULT '0' COMMENT '0启用，1停用',
  `type` smallint(2) DEFAULT NULL COMMENT '1，热门，2，置顶',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='HOT,置顶视频图标表[BASIC]';

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `auser_id` bigint(18) DEFAULT NULL COMMENT '消息发送方',
  `buser_id` bigint(20) DEFAULT NULL COMMENT '消息接收方',
  `content` varchar(500) DEFAULT NULL,
  `images` varchar(500) DEFAULT NULL COMMENT '系统消息引入的图片（名称包含_width_height）',
  `media_id` varchar(18) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL COMMENT '话题id',
  `comment_id` varchar(18) DEFAULT NULL COMMENT '被回复的评论id',
  `type` smallint(2) DEFAULT NULL COMMENT '1：系统消息 2:粉丝消息 3:视频、话题评论消息 4:点赞 5：@消息 6:私信消息',
  `type2` smallint(2) DEFAULT NULL COMMENT '1：视频，2：活动，3：赛事，4：话题，5：系统消息，6：异地登录，7：跳转h5，8：跳转赛事宣传页，9：圈子，10：直播，11：跳获奖名单，12：跳MV',
  `status` smallint(2) DEFAULT '0' COMMENT '0:未读 1:已读 2:删除',
  `create_time` datetime DEFAULT NULL,
  `match_id` int(18) DEFAULT NULL COMMENT '赛事id',
  `match_type` smallint(2) DEFAULT NULL COMMENT '赛事模板类型',
  `h5_url` varchar(256) DEFAULT NULL COMMENT 'h5页面地址',
  `share_url` varchar(256) DEFAULT NULL COMMENT 'h5的分享地址',
  `share_title` varchar(256) DEFAULT NULL COMMENT 'h5的分享标题',
  `share_content` varchar(256) DEFAULT NULL COMMENT 'h5的分享内容',
  `share_image` varchar(256) DEFAULT NULL COMMENT 'h5的分享标题',
  `related_id` int(18) DEFAULT NULL COMMENT '圈子id，直播表的id',
  `aremove` int(1) NOT NULL DEFAULT '0' COMMENT '是否移除了A与B之间的对话条目（0：否 1是）',
  `bremove` int(1) NOT NULL DEFAULT '0',
  `adelete` int(1) NOT NULL DEFAULT '0' COMMENT '是否清空了私信历史记录（0：否 1是）',
  `bdelete` int(1) NOT NULL DEFAULT '0' COMMENT '是否清空了私信历史记录（0：否 1是）',
  PRIMARY KEY (`id`),
  KEY `ind_ct` (`create_time`),
  KEY `index_a` (`auser_id`),
  KEY `index_b` (`buser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17885919 DEFAULT CHARSET=utf8mb4 COMMENT='系统消息表';

-- ----------------------------
-- Table structure for sys_recom_attention
-- ----------------------------
DROP TABLE IF EXISTS `sys_recom_attention`;
CREATE TABLE `sys_recom_attention` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `type` smallint(4) DEFAULT NULL COMMENT '类别:0为短视频推荐,1为直播推荐',
  `status` int(11) DEFAULT '0' COMMENT '0正常2删除',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统推荐关注表';

-- ----------------------------
-- Table structure for sys_search_record
-- ----------------------------
DROP TABLE IF EXISTS `sys_search_record`;
CREATE TABLE `sys_search_record` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(18) DEFAULT NULL COMMENT '用户id，-1：大家都在搜',
  `type` smallint(2) DEFAULT NULL COMMENT '1：圈子 2：赛事 3：精选 4：关注',
  `search_name` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `sort` smallint(4) DEFAULT NULL COMMENT '排序字段',
  `imei` varchar(50) DEFAULT NULL COMMENT '设备码',
  `channel` varchar(20) DEFAULT NULL,
  `app_version` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=357649 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户关键词搜索记录表';

-- ----------------------------
-- Table structure for t_tmp_floor_1
-- ----------------------------
DROP TABLE IF EXISTS `t_tmp_floor_1`;
CREATE TABLE `t_tmp_floor_1` (
  `id` int(18) NOT NULL DEFAULT '0' COMMENT '主键ID',
  `topic_id` int(18) NOT NULL COMMENT '话题ID',
  `atid` int(18) DEFAULT NULL COMMENT '被回复/@的评论id',
  `uid` int(18) NOT NULL COMMENT '发布用户id',
  `uname` varchar(90) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '发布用户昵称',
  `headimg` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '发布用户头像图片',
  `content` varchar(120) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '发布内容',
  `image` varchar(2000) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '上传图片',
  `media_id` bigint(18) DEFAULT NULL COMMENT '视频ID',
  `status` int(11) DEFAULT '0' COMMENT '0：正常 2：已删除',
  `floor_num` int(11) DEFAULT '1',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `type` smallint(2) DEFAULT NULL COMMENT '评论类型  0：评论，1：回复，2：@'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for t_tmp_match_media
-- ----------------------------
DROP TABLE IF EXISTS `t_tmp_match_media`;
CREATE TABLE `t_tmp_match_media` (
  `id` int(11) NOT NULL DEFAULT '0',
  `uid` int(18) DEFAULT NULL COMMENT '选手的用户id',
  `sub_match_id` int(18) NOT NULL COMMENT '对应tab_sub_match赛事id',
  `group_id` smallint(12) DEFAULT '0' COMMENT '赛事分组id',
  `status` smallint(2) DEFAULT '0' COMMENT ' 0为正常   2为删除',
  `media_id` int(18) DEFAULT NULL COMMENT '对应视频表id',
  `vote_num` int(18) DEFAULT '0' COMMENT '投票数',
  `group_name` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `is_recom` smallint(2) DEFAULT NULL COMMENT '1为精选视频 2为擂主视频',
  `sort` int(2) DEFAULT NULL COMMENT '对精选视频排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for t_total_alive
-- ----------------------------
DROP TABLE IF EXISTS `t_total_alive`;
CREATE TABLE `t_total_alive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date DEFAULT NULL COMMENT '激活日期',
  `channel_name` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '渠道商名',
  `total_alive` bigint(21) NOT NULL DEFAULT '0' COMMENT '注册量',
  `total_register` bigint(21) NOT NULL DEFAULT '0' COMMENT '激活量',
  `exchangerate` decimal(4,2) DEFAULT NULL COMMENT '转换率',
  `nextalive` decimal(4,2) DEFAULT NULL COMMENT '次日存活',
  `weekalive` decimal(4,2) DEFAULT NULL COMMENT '周存活',
  `monthalive` decimal(4,2) DEFAULT NULL COMMENT '月存活',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型:1分渠道,2总计',
  `avg_online` decimal(5,1) DEFAULT '0.0' COMMENT '平均在线时长',
  `recharge_money` int(11) DEFAULT '0' COMMENT '该渠道充值金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind_complex` (`create_time`,`channel_name`)
) ENGINE=InnoDB AUTO_INCREMENT=914383 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台统计表';

-- ----------------------------
-- Table structure for t_xuni_10_28
-- ----------------------------
DROP TABLE IF EXISTS `t_xuni_10_28`;
CREATE TABLE `t_xuni_10_28` (
  `id` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) DEFAULT NULL COMMENT '主播的id',
  `q_uid` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '直播标题',
  `cover_image` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '直播封面图片',
  `shot_image` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT ' 直播截图地址',
  `province` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '省份',
  `content` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '直播描述',
  `city` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '地址信息',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '0为未开始，1为正在直播，2为删除，3为赛事进行中，暂时没在播，4为结束，5禁播',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `duration_time` int(11) DEFAULT NULL COMMENT '直播时长',
  `match_id` int(11) DEFAULT NULL COMMENT '赛事id,对应tab_sub_match表的id',
  `online_number` int(11) DEFAULT '0' COMMENT '线上实时在线总人数',
  `online_real_num` int(11) DEFAULT '0' COMMENT '线上实时真实人数',
  `support_num` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `total_visitor` int(11) DEFAULT NULL COMMENT '总在线人数',
  `type` int(2) DEFAULT '0' COMMENT '0为普通直播，1为pk直播，2为校园直播',
  `direction_type` int(2) DEFAULT '0' COMMENT '屏幕方向，0为横向，2为竖向',
  `accept_pk` int(2) NOT NULL DEFAULT '0' COMMENT '0：不接受pk，1：接受pk',
  `accept_pk_status` int(2) DEFAULT NULL COMMENT '真实pk状态',
  `pk_title` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'pk标题',
  `pk_content` varchar(1024) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'pk描述',
  `pk_duration` int(10) DEFAULT NULL COMMENT '设置的pk时长',
  `pk_status` int(2) DEFAULT '0' COMMENT '为0未pk，1为正在pk，2为正在处理pk请求中 4:结束',
  `sort` int(4) DEFAULT '0',
  `is_official` int(2) NOT NULL DEFAULT '0' COMMENT '是否为官方直播 1:是',
  `lon` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '经度',
  `lat` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '纬度',
  `hot_type` int(2) DEFAULT '0' COMMENT '1:置顶 2:热门 3:推荐 4:隐藏',
  `hot_starttime` datetime DEFAULT NULL COMMENT '热门开始时间',
  `hot_endtime` datetime DEFAULT NULL COMMENT '热门结束时间',
  `share_times` int(11) DEFAULT '0' COMMENT '分享次数',
  `comment_times` int(11) DEFAULT '0' COMMENT '聊天次数',
  `hls` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '直播的m3u8地址',
  `file_name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '互动直播录制返回的文件ID',
  `file_error` varchar(1024) CHARACTER SET utf8mb4 DEFAULT NULL,
  `file_src` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '回放文件路径',
  `pk_theme_image` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'PK宣传图片',
  `pk_theme_url` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'PK专题页',
  `share_title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `share_content` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `share_image` varchar(1024) CHARACTER SET utf8mb4 DEFAULT NULL,
  `share_url` varchar(1024) CHARACTER SET utf8mb4 DEFAULT NULL,
  `heartbeat_time` datetime DEFAULT NULL,
  `set_visitor_num_min` int(11) DEFAULT '0' COMMENT '设置水军数量最小值',
  `set_visitor_num_max` int(11) DEFAULT '0' COMMENT '设置水军最大值',
  `set_time` datetime DEFAULT NULL COMMENT '设置刷水军时间',
  `set_time_add` int(11) DEFAULT '0' COMMENT '设置的时间段（秒）',
  `refresh_visitor_num` int(11) DEFAULT '0' COMMENT '已刷水军数量',
  `is_freshing` int(2) DEFAULT '0' COMMENT '1 正在刷水军，0未刷',
  `float_visitor_num` int(11) DEFAULT '0' COMMENT '浮动减少的水军数，值为水军上限 - 实际水军数',
  `is_floating` int(2) DEFAULT '0' COMMENT '1 正在浮动水军，0未浮动',
  `refresh_total_min` int(11) DEFAULT '0' COMMENT '定时更新的水军最小值',
  `refresh_total_max` int(11) DEFAULT '0' COMMENT '定时更新的水军最大值',
  `err_msg` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '错误码',
  `accept_pk_set` int(2) DEFAULT NULL COMMENT '主播进入直播间之后设置的是否允许pk的状态：1为允许，0为不允许。',
  `warning_count` int(11) DEFAULT '0' COMMENT '警告次数',
  `warning_time` datetime DEFAULT NULL COMMENT '最后一次警告时间',
  `confidence` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '识别为黄图的置信度，范围0-100；normalScore, hotScore, pornScore的综合评分，confidence大于83定为疑似图片',
  `normalScore` double DEFAULT NULL COMMENT '图片为正常图片的评分',
  `hotScore` double DEFAULT NULL COMMENT '图片为性感图片的评分',
  `pornScore` double DEFAULT NULL COMMENT '图片为色情图片的评分',
  `check_msg` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '预警内容',
  `stream_id` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '直播流id',
  `up_stream` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '推流地址',
  `rtmp_stream` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'rtmp拉流地址',
  `is_alive` int(2) DEFAULT '1' COMMENT '0为结束，1为正在直播',
  `is_hot` int(2) DEFAULT '0' COMMENT '0：常规，1：热门',
  `visitor_num` int(11) DEFAULT '0' COMMENT '访客人数',
  `fu_num_before` int(18) DEFAULT '0' COMMENT '开播前的服卡数',
  `fu_num` int(18) DEFAULT '0' COMMENT '该场直播获得的福卡数，直播结束后写入。',
  `replay_url` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '重播url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for t_xuni_weixin
-- ----------------------------
DROP TABLE IF EXISTS `t_xuni_weixin`;
CREATE TABLE `t_xuni_weixin` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `weixin` varchar(28) DEFAULT NULL,
  `truth_name` varchar(10) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '区分微信账号：原：0，新：1',
  PRIMARY KEY (`ID`),
  KEY `weixin` (`weixin`(4))
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_act
-- ----------------------------
DROP TABLE IF EXISTS `tab_act`;
CREATE TABLE `tab_act` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `media_url` varchar(128) DEFAULT NULL,
  `image_url` varchar(128) DEFAULT NULL,
  `folder` varchar(128) DEFAULT NULL COMMENT '文件夹名称',
  `name` varchar(256) DEFAULT NULL COMMENT '飙演技名称',
  `bg_aac` varchar(256) DEFAULT NULL COMMENT '背景音乐名称',
  `explain` varchar(1024) DEFAULT NULL COMMENT '介绍',
  `is_caption` int(11) DEFAULT '0' COMMENT '是否需要字幕 0:否 1:是',
  `zip_size` int(10) DEFAULT NULL COMMENT '压缩包大小',
  `zip_path` varchar(256) DEFAULT NULL COMMENT '压缩包路径',
  `version` varchar(16) DEFAULT NULL COMMENT '上线版本',
  `status` int(2) DEFAULT NULL COMMENT '0:推荐 2:无效',
  `sort` int(4) DEFAULT NULL COMMENT '序号',
  `type_id` smallint(4) DEFAULT NULL COMMENT '所属分类id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_act_type
-- ----------------------------
DROP TABLE IF EXISTS `tab_act_type`;
CREATE TABLE `tab_act_type` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `sort` int(8) DEFAULT NULL,
  `status` smallint(2) unsigned zerofill NOT NULL DEFAULT '00' COMMENT '2:无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_activity
-- ----------------------------
DROP TABLE IF EXISTS `tab_activity`;
CREATE TABLE `tab_activity` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '活动id',
  `name` varchar(200) DEFAULT NULL,
  `sort` smallint(4) DEFAULT NULL COMMENT '首页排序顺序',
  `content` varchar(600) DEFAULT NULL,
  `content_short` varchar(200) DEFAULT NULL,
  `status` smallint(4) DEFAULT NULL COMMENT '0:正常 2：删除 3：首页不显示 4：活动结束',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` bigint(18) DEFAULT NULL COMMENT '活动发起人',
  `image_url` varchar(256) DEFAULT NULL,
  `media_url` varchar(256) DEFAULT NULL,
  `h5_url` varchar(64) DEFAULT NULL COMMENT 'h5的赛事说明',
  `is_hot` smallint(4) DEFAULT '0' COMMENT '是否是HOT活动1为hot',
  `width` smallint(6) DEFAULT '0',
  `height` smallint(6) DEFAULT '0',
  `bg_image_url` varchar(64) DEFAULT NULL,
  `view_count` bigint(18) unsigned DEFAULT '0' COMMENT '活动浏览量',
  `hot_img` varchar(256) DEFAULT NULL,
  `rank_num` int(8) DEFAULT '100' COMMENT '活动排行榜显示第几名的点赞数',
  `maxNum` int(3) DEFAULT NULL COMMENT '活动允许最大视频数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_activity_rank
-- ----------------------------
DROP TABLE IF EXISTS `tab_activity_rank`;
CREATE TABLE `tab_activity_rank` (
  `uid` int(18) NOT NULL COMMENT '用户id',
  `activity_id` int(18) NOT NULL DEFAULT '0' COMMENT '活动id',
  `pnumber` int(18) DEFAULT '0' COMMENT '点赞数',
  `h5_sort` int(3) DEFAULT NULL COMMENT '在h5页面中排列顺序',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活动排行榜(活动分类求和)';

-- ----------------------------
-- Table structure for tab_actor
-- ----------------------------
DROP TABLE IF EXISTS `tab_actor`;
CREATE TABLE `tab_actor` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `act_id` int(11) DEFAULT NULL,
  `images_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_advert
-- ----------------------------
DROP TABLE IF EXISTS `tab_advert`;
CREATE TABLE `tab_advert` (
  `id` int(18) NOT NULL AUTO_INCREMENT COMMENT '广告主键ID',
  `image_url` varchar(200) DEFAULT NULL COMMENT '图片url',
  `media_url` varchar(200) DEFAULT NULL COMMENT '视频url',
  `duration` int(10) DEFAULT '0' COMMENT '视频时长',
  `number` int(15) DEFAULT '0' COMMENT '播放次数',
  `sub_match_id` int(18) DEFAULT NULL COMMENT '规则关联的赛事id',
  `type` int(2) DEFAULT '0' COMMENT '0:正常广告 1:赛事规则',
  `width` int(4) DEFAULT NULL,
  `height` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='广告表';

-- ----------------------------
-- Table structure for tab_advert_keyword
-- ----------------------------
DROP TABLE IF EXISTS `tab_advert_keyword`;
CREATE TABLE `tab_advert_keyword` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `keywords` varchar(2000) DEFAULT NULL COMMENT '关键字',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `type` smallint(2) DEFAULT '0' COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COMMENT='评论广告关键词过滤表';

-- ----------------------------
-- Table structure for tab_analyze_live_classify
-- ----------------------------
DROP TABLE IF EXISTS `tab_analyze_live_classify`;
CREATE TABLE `tab_analyze_live_classify` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `live_id` int(11) DEFAULT '-1' COMMENT '直播id',
  `user_id` int(11) DEFAULT '-1' COMMENT '用户id',
  `start_time` datetime DEFAULT NULL COMMENT '直播开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '直播结束时间',
  `talk_num` mediumint(6) DEFAULT '0' COMMENT '聊天数',
  `fans_num` smallint(6) DEFAULT '0' COMMENT '粉丝个数',
  `gift_num` int(11) DEFAULT '0' COMMENT '礼物数',
  `gift_val` int(11) DEFAULT '0' COMMENT '礼物价值',
  `support_num` smallint(6) DEFAULT '0' COMMENT '点赞数',
  `share_num` smallint(6) DEFAULT '0' COMMENT '分享数',
  `visitor_num` int(11) DEFAULT '0' COMMENT '参与用户',
  `barrage_num` int(11) DEFAULT '0' COMMENT '弹幕数',
  `live_duration` int(11) DEFAULT '0' COMMENT '直播时长',
  `type` tinyint(4) DEFAULT '0' COMMENT '分类：0直播，1用户',
  `valid_day` tinyint(4) DEFAULT '0' COMMENT '有效天',
  PRIMARY KEY (`ID`),
  KEY `start_time` (`start_time`),
  KEY `ind_cr` (`start_time`),
  KEY `ind_uid` (`user_id`),
  KEY `ind_liveid` (`live_id`)
) ENGINE=InnoDB AUTO_INCREMENT=397851 DEFAULT CHARSET=utf8mb4 COMMENT='直播分类数据统计';

-- ----------------------------
-- Table structure for tab_anchor_manager
-- ----------------------------
DROP TABLE IF EXISTS `tab_anchor_manager`;
CREATE TABLE `tab_anchor_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anchor_uid` int(8) DEFAULT NULL COMMENT '主播的用户id',
  `manager_uid` int(8) DEFAULT NULL COMMENT '房管的uid',
  `status` tinyint(2) DEFAULT '0' COMMENT '0为正常，2为删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8573 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='主播-房管关系表';

-- ----------------------------
-- Table structure for tab_android_apk_version
-- ----------------------------
DROP TABLE IF EXISTS `tab_android_apk_version`;
CREATE TABLE `tab_android_apk_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) DEFAULT NULL COMMENT '渠道',
  `version` varchar(10) DEFAULT NULL COMMENT '用来比较版本大小的数字',
  `version_no` varchar(10) DEFAULT NULL,
  `base_version_no` varchar(10) DEFAULT NULL COMMENT '如果是增量更新，该字段记录此更新包在哪个版本的基础上进行更新',
  `apk_url` varchar(200) DEFAULT NULL COMMENT '版本下载地址',
  `version_explain` varchar(255) DEFAULT NULL COMMENT '版本描述',
  `is_patch` tinyint(2) DEFAULT '0' COMMENT '是否是补丁包：1是，增量更新，0不是，全量更新',
  `size` int(8) DEFAULT NULL COMMENT '文件大小',
  `status` tinyint(2) DEFAULT '0' COMMENT '0为待上线，1为上线',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=589 DEFAULT CHARSET=utf8mb4 COMMENT='android各渠道apk版本及下载地址信息表';

-- ----------------------------
-- Table structure for tab_android_version
-- ----------------------------
DROP TABLE IF EXISTS `tab_android_version`;
CREATE TABLE `tab_android_version` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '下载目录',
  `app_version` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'app版本',
  `channel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_time` datetime DEFAULT NULL COMMENT '更改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='android补丁表';

-- ----------------------------
-- Table structure for tab_app_action
-- ----------------------------
DROP TABLE IF EXISTS `tab_app_action`;
CREATE TABLE `tab_app_action` (
  `id` int(11) NOT NULL,
  `sale_type` tinyint(4) DEFAULT '8' COMMENT '消费类型：默认8',
  `pay_coin` smallint(6) DEFAULT '0' COMMENT '消耗不服币',
  `description` varchar(60) DEFAULT NULL COMMENT '描述消费活动',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='app平台产生的消费活动';

-- ----------------------------
-- Table structure for tab_app_coin
-- ----------------------------
DROP TABLE IF EXISTS `tab_app_coin`;
CREATE TABLE `tab_app_coin` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `coin_before` decimal(18,2) DEFAULT '0.00' COMMENT '变更前数量',
  `coin_change` decimal(18,0) DEFAULT '0' COMMENT '变更数量',
  `coin_after` decimal(18,2) DEFAULT '0.00' COMMENT '变更后数量',
  `price_coin` decimal(18,2) DEFAULT NULL COMMENT '购买时花费的人民币金额',
  `change_text` varchar(512) DEFAULT NULL COMMENT '原因',
  `change_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  `status` int(2) DEFAULT NULL COMMENT '0:待支付 1:成功 2:失败',
  `related_no` int(11) DEFAULT NULL COMMENT '消费礼物编号',
  `type` int(11) DEFAULT NULL COMMENT '0:支出 1:收入',
  `from` varchar(255) DEFAULT NULL COMMENT '1:微信 2:支付宝 3:appstore 4:福卡兑换不服币 5:活动 6:送礼物 7:任务奖励',
  `order_no` varchar(20) DEFAULT NULL COMMENT '订单号',
  `transaction_id` varchar(30) DEFAULT NULL COMMENT '购买时，记录微信支付的transaction_id',
  `err_code_des` varchar(255) DEFAULT NULL COMMENT '支付失败原因',
  `imei` varchar(64) DEFAULT NULL COMMENT '设备码',
  `buyer_account` varchar(256) DEFAULT NULL COMMENT '购买者的三方账号',
  `change_class` varchar(20) DEFAULT NULL COMMENT '运营系统不服币发放类目',
  `is_recharge` tinyint(4) DEFAULT '0' COMMENT '是否充值过，1为充过',
  `gift_num` smallint(6) DEFAULT '1' COMMENT '礼物个数',
  PRIMARY KEY (`id`,`change_time`),
  KEY `ind_uid` (`uid`),
  KEY `ind_ctime` (`change_time`)
) ENGINE=InnoDB AUTO_INCREMENT=6190343 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT
/*!50100 PARTITION BY RANGE (TO_DAYS(change_time))
(PARTITION p_2016_07 VALUES LESS THAN (736511) ENGINE = InnoDB,
 PARTITION p_2016_08 VALUES LESS THAN (736542) ENGINE = InnoDB,
 PARTITION p_2016_09 VALUES LESS THAN (736573) ENGINE = InnoDB,
 PARTITION p_2016_10 VALUES LESS THAN (736603) ENGINE = InnoDB,
 PARTITION p_2016_11 VALUES LESS THAN (736634) ENGINE = InnoDB,
 PARTITION p_2016_12 VALUES LESS THAN (736664) ENGINE = InnoDB,
 PARTITION p_2017_01 VALUES LESS THAN (736695) ENGINE = InnoDB,
 PARTITION p_2017_02 VALUES LESS THAN (736726) ENGINE = InnoDB,
 PARTITION p_2017_03 VALUES LESS THAN (736754) ENGINE = InnoDB,
 PARTITION p_2017_04 VALUES LESS THAN (736785) ENGINE = InnoDB,
 PARTITION p_2017_05 VALUES LESS THAN (736815) ENGINE = InnoDB,
 PARTITION p_2017_06 VALUES LESS THAN (736846) ENGINE = InnoDB,
 PARTITION p_2017_07 VALUES LESS THAN (736876) ENGINE = InnoDB,
 PARTITION p_2017_08 VALUES LESS THAN (736907) ENGINE = InnoDB,
 PARTITION p_2017_09 VALUES LESS THAN (736938) ENGINE = InnoDB,
 PARTITION p_catch_all VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Table structure for tab_app_coin_1219
-- ----------------------------
DROP TABLE IF EXISTS `tab_app_coin_1219`;
CREATE TABLE `tab_app_coin_1219` (
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `SUM(coin_change)` decimal(40,0) DEFAULT NULL,
  `SUM(price_coin)` decimal(40,2) DEFAULT NULL,
  `change_text` varchar(512) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '原因',
  `status` varchar(19) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `type` int(11) DEFAULT NULL COMMENT '0:支出 1:收入',
  `from` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '1:微信 2:支付宝 3:appstore 4:福卡兑换不服币 5:活动 6:送礼物 7:任务奖励'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for tab_app_coin_copy
-- ----------------------------
DROP TABLE IF EXISTS `tab_app_coin_copy`;
CREATE TABLE `tab_app_coin_copy` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `coin_before` decimal(18,2) DEFAULT '0.00' COMMENT '变更前数量',
  `coin_change` decimal(18,0) DEFAULT '0' COMMENT '变更数量',
  `coin_after` decimal(18,2) DEFAULT '0.00' COMMENT '变更后数量',
  `price_coin` decimal(18,2) DEFAULT NULL COMMENT '购买时花费的人民币金额',
  `change_text` varchar(512) DEFAULT NULL COMMENT '原因',
  `change_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  `status` int(2) DEFAULT NULL COMMENT '0:待支付 1:成功 2:失败',
  `related_no` int(11) DEFAULT NULL COMMENT '消费礼物编号',
  `type` int(11) DEFAULT NULL COMMENT '0:支出 1:收入',
  `from` varchar(255) DEFAULT NULL COMMENT '1:微信 2:支付宝 3:appstore 4:福卡兑换不服币 5:活动 6:送礼物 7:任务奖励',
  `order_no` varchar(20) DEFAULT NULL COMMENT '订单号',
  `transaction_id` varchar(30) DEFAULT NULL COMMENT '购买时，记录微信支付的transaction_id',
  `err_code_des` varchar(255) DEFAULT NULL COMMENT '支付失败原因',
  `imei` varchar(64) DEFAULT NULL COMMENT '设备码',
  `buyer_account` varchar(256) DEFAULT NULL COMMENT '购买者的三方账号',
  `change_class` varchar(20) DEFAULT NULL COMMENT '运营系统不服币发放类目',
  `is_recharge` tinyint(4) DEFAULT '0' COMMENT '是否充值过，1为充过',
  `gift_num` smallint(6) DEFAULT '1' COMMENT '礼物个数',
  PRIMARY KEY (`id`,`change_time`),
  KEY `ind_uid` (`uid`),
  KEY `ind_ctime` (`change_time`)
) ENGINE=InnoDB AUTO_INCREMENT=3504540 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT
/*!50100 PARTITION BY RANGE (TO_DAYS(change_time))
(PARTITION p_2016_07 VALUES LESS THAN (736511) ENGINE = InnoDB,
 PARTITION p_2016_08 VALUES LESS THAN (736542) ENGINE = InnoDB,
 PARTITION p_2016_09 VALUES LESS THAN (736573) ENGINE = InnoDB,
 PARTITION p_2016_10 VALUES LESS THAN (736603) ENGINE = InnoDB,
 PARTITION p_2016_11 VALUES LESS THAN (736634) ENGINE = InnoDB,
 PARTITION p_2016_12 VALUES LESS THAN (736664) ENGINE = InnoDB,
 PARTITION p_2017_01 VALUES LESS THAN (736695) ENGINE = InnoDB,
 PARTITION p_2017_02 VALUES LESS THAN (736726) ENGINE = InnoDB,
 PARTITION p_2017_03 VALUES LESS THAN (736754) ENGINE = InnoDB,
 PARTITION p_2017_04 VALUES LESS THAN (736785) ENGINE = InnoDB,
 PARTITION p_2017_05 VALUES LESS THAN (736815) ENGINE = InnoDB,
 PARTITION p_2017_06 VALUES LESS THAN (736846) ENGINE = InnoDB,
 PARTITION p_2017_07 VALUES LESS THAN (736876) ENGINE = InnoDB,
 PARTITION p_2017_08 VALUES LESS THAN (736907) ENGINE = InnoDB,
 PARTITION p_2017_09 VALUES LESS THAN (736938) ENGINE = InnoDB,
 PARTITION p_catch_all VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Table structure for tab_app_coin_tmp
-- ----------------------------
DROP TABLE IF EXISTS `tab_app_coin_tmp`;
CREATE TABLE `tab_app_coin_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `coin_change` decimal(18,0) DEFAULT NULL,
  `change_text` varchar(255) DEFAULT NULL,
  `change_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '0待插入1已插入2删除',
  `change_class` varchar(255) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '类型：0为支出，1为收入',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_app_coin_xuni
-- ----------------------------
DROP TABLE IF EXISTS `tab_app_coin_xuni`;
CREATE TABLE `tab_app_coin_xuni` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `coin_before` decimal(18,2) DEFAULT '0.00' COMMENT '变更前数量',
  `coin_change` decimal(18,0) DEFAULT '0' COMMENT '变更数量',
  `coin_after` decimal(18,2) DEFAULT '0.00' COMMENT '变更后数量',
  `price_coin` decimal(18,2) DEFAULT NULL COMMENT '购买时花费的人民币金额',
  `change_text` varchar(512) DEFAULT NULL COMMENT '原因',
  `change_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  `status` int(2) DEFAULT NULL COMMENT '0:待支付 1:成功 2:失败',
  `related_no` int(11) DEFAULT NULL COMMENT '消费礼物编号',
  `type` int(11) DEFAULT NULL COMMENT '0:支出 1:收入',
  `from` varchar(255) DEFAULT NULL COMMENT '1:微信 2:支付宝 3:appstrone 4:福卡,5活动送',
  `order_no` varchar(20) DEFAULT NULL COMMENT '订单号',
  `transaction_id` varchar(30) DEFAULT NULL COMMENT '购买时，记录微信支付的transaction_id',
  `err_code_des` varchar(255) DEFAULT NULL COMMENT '支付失败原因',
  `imei` varchar(64) DEFAULT NULL COMMENT '设备码',
  `buyer_account` varchar(256) DEFAULT NULL COMMENT '购买者的三方账号',
  `change_class` varchar(20) DEFAULT NULL COMMENT '运营系统不服币发放类目',
  `is_recharge` tinyint(4) DEFAULT '0' COMMENT '是否充值过，1为充过',
  `gift_num` smallint(6) DEFAULT '1' COMMENT '礼物个数',
  PRIMARY KEY (`id`,`change_time`),
  KEY `ind_uid` (`uid`),
  KEY `ind_ct` (`change_time`)
) ENGINE=InnoDB AUTO_INCREMENT=51542899 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_app_coin_xuni_1
-- ----------------------------
DROP TABLE IF EXISTS `tab_app_coin_xuni_1`;
CREATE TABLE `tab_app_coin_xuni_1` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `coin_before` decimal(18,2) DEFAULT '0.00' COMMENT '变更前数量',
  `coin_change` decimal(18,0) DEFAULT '0' COMMENT '变更数量',
  `coin_after` decimal(18,2) DEFAULT '0.00' COMMENT '变更后数量',
  `price_coin` decimal(18,2) DEFAULT NULL COMMENT '购买时花费的人民币金额',
  `change_text` varchar(512) DEFAULT NULL COMMENT '原因',
  `change_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  `status` int(2) DEFAULT NULL COMMENT '0:待支付 1:成功 2:失败',
  `related_no` int(11) DEFAULT NULL COMMENT '消费礼物编号',
  `type` int(11) DEFAULT NULL COMMENT '0:支出 1:收入',
  `from` varchar(255) DEFAULT NULL COMMENT '1:微信 2:支付宝 3:appstrone 4:福卡,5活动送',
  `order_no` varchar(20) DEFAULT NULL COMMENT '订单号',
  `transaction_id` varchar(30) DEFAULT NULL COMMENT '购买时，记录微信支付的transaction_id',
  `err_code_des` varchar(255) DEFAULT NULL COMMENT '支付失败原因',
  `imei` varchar(64) DEFAULT NULL COMMENT '设备码',
  `buyer_account` varchar(256) DEFAULT NULL COMMENT '购买者的三方账号',
  `change_class` varchar(20) DEFAULT NULL COMMENT '运营系统不服币发放类目',
  `is_recharge` tinyint(4) DEFAULT '0' COMMENT '是否充值过，1为充过',
  `gift_num` smallint(6) DEFAULT '1' COMMENT '礼物个数',
  PRIMARY KEY (`id`,`change_time`),
  KEY `ind_uid` (`uid`),
  KEY `ind_ct` (`change_time`)
) ENGINE=InnoDB AUTO_INCREMENT=51451223 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_app_coin_xuni_copy
-- ----------------------------
DROP TABLE IF EXISTS `tab_app_coin_xuni_copy`;
CREATE TABLE `tab_app_coin_xuni_copy` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `coin_before` decimal(18,2) DEFAULT '0.00' COMMENT '变更前数量',
  `coin_change` decimal(18,0) DEFAULT '0' COMMENT '变更数量',
  `coin_after` decimal(18,2) DEFAULT '0.00' COMMENT '变更后数量',
  `price_coin` decimal(18,2) DEFAULT NULL COMMENT '购买时花费的人民币金额',
  `change_text` varchar(512) DEFAULT NULL COMMENT '原因',
  `change_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  `status` int(2) DEFAULT NULL COMMENT '0:待支付 1:成功 2:失败',
  `related_no` int(11) DEFAULT NULL COMMENT '消费礼物编号',
  `type` int(11) DEFAULT NULL COMMENT '0:支出 1:收入',
  `from` varchar(255) DEFAULT NULL COMMENT '1:微信 2:支付宝 3:appstrone 4:福卡,5活动送',
  `order_no` varchar(20) DEFAULT NULL COMMENT '订单号',
  `transaction_id` varchar(30) DEFAULT NULL COMMENT '购买时，记录微信支付的transaction_id',
  `err_code_des` varchar(255) DEFAULT NULL COMMENT '支付失败原因',
  `imei` varchar(64) DEFAULT NULL COMMENT '设备码',
  `buyer_account` varchar(256) DEFAULT NULL COMMENT '购买者的三方账号',
  `change_class` varchar(20) DEFAULT NULL COMMENT '运营系统不服币发放类目',
  `is_recharge` tinyint(4) DEFAULT '0' COMMENT '是否充值过，1为充过',
  `gift_num` smallint(6) DEFAULT '1' COMMENT '礼物个数',
  PRIMARY KEY (`id`,`change_time`),
  KEY `ind_uid` (`uid`),
  KEY `ind_ct` (`change_time`)
) ENGINE=InnoDB AUTO_INCREMENT=51542897 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_app_star_h5
-- ----------------------------
DROP TABLE IF EXISTS `tab_app_star_h5`;
CREATE TABLE `tab_app_star_h5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(20) DEFAULT NULL COMMENT '页面上方标题',
  `sub_title` varchar(100) DEFAULT NULL COMMENT '图片下方的副标题',
  `image_url` varchar(255) DEFAULT NULL COMMENT '图片url',
  `content` varchar(500) DEFAULT NULL COMMENT '规则',
  `share_url` varchar(255) DEFAULT NULL COMMENT '分享url',
  `share_title` varchar(50) DEFAULT NULL COMMENT '分享标题',
  `share_content` varchar(100) DEFAULT NULL COMMENT '分享内容',
  `share_image` varchar(255) DEFAULT NULL COMMENT '分享图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='app“服布斯”榜排名H5页面';

-- ----------------------------
-- Table structure for tab_app_star_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_app_star_user`;
CREATE TABLE `tab_app_star_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `star_h5_id` int(11) DEFAULT NULL COMMENT '对应的h5页面的id',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `max_support` int(11) DEFAULT NULL COMMENT '最大点赞数',
  `sum_support` int(11) DEFAULT NULL COMMENT '点赞数总和',
  `sort` int(2) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COMMENT='app各期“服布斯”榜用户';

-- ----------------------------
-- Table structure for tab_app_task
-- ----------------------------
DROP TABLE IF EXISTS `tab_app_task`;
CREATE TABLE `tab_app_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(50) DEFAULT NULL COMMENT '任务描述',
  `coin_text` varchar(50) DEFAULT NULL COMMENT '奖励描述',
  `coin` int(8) DEFAULT NULL COMMENT '奖励的金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='app任务表';

-- ----------------------------
-- Table structure for tab_app_version
-- ----------------------------
DROP TABLE IF EXISTS `tab_app_version`;
CREATE TABLE `tab_app_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version_no` varchar(16) CHARACTER SET utf8mb4 DEFAULT NULL,
  `is_compel_update` smallint(2) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='APP版本信息表';

-- ----------------------------
-- Table structure for tab_area
-- ----------------------------
DROP TABLE IF EXISTS `tab_area`;
CREATE TABLE `tab_area` (
  `id` int(10) NOT NULL COMMENT 'ID',
  `areaname` varchar(50) DEFAULT NULL,
  `parentid` int(10) NOT NULL COMMENT '父级ID',
  `shortname` varchar(50) DEFAULT NULL,
  `areacode` int(6) DEFAULT NULL,
  `zipcode` int(10) DEFAULT NULL,
  `pinyin` varchar(100) DEFAULT NULL,
  `lng` varchar(20) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `level` tinyint(1) NOT NULL COMMENT '级别',
  `position` varchar(255) DEFAULT NULL,
  `sort` tinyint(3) unsigned DEFAULT '50' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='省市区表[BASIC]';

-- ----------------------------
-- Table structure for tab_bar_info
-- ----------------------------
DROP TABLE IF EXISTS `tab_bar_info`;
CREATE TABLE `tab_bar_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL COMMENT '酒吧id',
  `placeName` varchar(50) DEFAULT NULL COMMENT '酒吧名称',
  `uid` int(11) DEFAULT NULL COMMENT '对应在app中的用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 COMMENT='酒吧信息表';

-- ----------------------------
-- Table structure for tab_bg_basic_quota
-- ----------------------------
DROP TABLE IF EXISTS `tab_bg_basic_quota`;
CREATE TABLE `tab_bg_basic_quota` (
  `create_time` date NOT NULL COMMENT '日期',
  `user_total` mediumint(9) NOT NULL DEFAULT '0' COMMENT '当天新增用户总量',
  `startup_time` int(11) NOT NULL DEFAULT '0' COMMENT '当天启动总量',
  `media_total` smallint(6) NOT NULL DEFAULT '0' COMMENT '当天新增视频总量',
  `comment_total` mediumint(9) NOT NULL DEFAULT '0' COMMENT '当天新增评论总量',
  `topic_total` smallint(6) NOT NULL DEFAULT '0' COMMENT '当天新增话题总量',
  `share_total` mediumint(9) NOT NULL DEFAULT '0' COMMENT '当天分享总量',
  `support_time` int(11) NOT NULL DEFAULT '0' COMMENT '当天点赞总量',
  `play_time` int(11) NOT NULL DEFAULT '0' COMMENT '当天播放总量',
  `STATUS` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0为平台真实数据，1仿友盟数据',
  PRIMARY KEY (`create_time`,`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='后台分析数据';

-- ----------------------------
-- Table structure for tab_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `tab_blacklist`;
CREATE TABLE `tab_blacklist` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `auid` int(18) DEFAULT NULL,
  `buid` int(18) DEFAULT NULL,
  `status` int(2) DEFAULT '0' COMMENT '0:拉黑 2:取消拉黑',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6271 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_c2c_anchor
-- ----------------------------
DROP TABLE IF EXISTS `tab_c2c_anchor`;
CREATE TABLE `tab_c2c_anchor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '被允许发起c2c的主播id',
  `disagree_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_canjoin
-- ----------------------------
DROP TABLE IF EXISTS `tab_canjoin`;
CREATE TABLE `tab_canjoin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `match_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_chatroom_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_chatroom_user`;
CREATE TABLE `tab_chatroom_user` (
  `id` bigint(18) NOT NULL,
  `user_id` bigint(18) DEFAULT NULL,
  `chatroom_id` bigint(18) DEFAULT NULL,
  `lasttime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_code
-- ----------------------------
DROP TABLE IF EXISTS `tab_code`;
CREATE TABLE `tab_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(2) DEFAULT NULL COMMENT '状态：0为可用，1为已分配，2为已用',
  `code` varchar(20) DEFAULT NULL COMMENT '邀请码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=utf8mb4 COMMENT='邀请码记录表';

-- ----------------------------
-- Table structure for tab_coin
-- ----------------------------
DROP TABLE IF EXISTS `tab_coin`;
CREATE TABLE `tab_coin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `imei` varchar(64) DEFAULT NULL,
  `coin_before` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `change_text` varchar(50) DEFAULT NULL COMMENT '变更原因',
  `coin_change` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '变更数值',
  `change_time` datetime DEFAULT NULL COMMENT '变更时间',
  `coin_after` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `status` int(255) DEFAULT '1' COMMENT '0:审核中 1:成功 2:失败  3.提现处理中  4:拒绝  5:审核通过未打款',
  `mch_billno` varchar(255) DEFAULT NULL COMMENT '微信红包账单号 或支付宝批次号',
  `err_code` varchar(255) DEFAULT NULL COMMENT '微信发红包返回码',
  `err_code_des` varchar(255) DEFAULT NULL COMMENT '微信红包接口返回值解释',
  `send_time` varchar(25) DEFAULT NULL,
  `type` smallint(2) DEFAULT NULL COMMENT '0:提现 1:收入',
  `fu_before` decimal(11,0) DEFAULT NULL,
  `fu_change` decimal(11,0) DEFAULT NULL,
  `fu_after` decimal(11,0) DEFAULT NULL,
  `ali_batch_no` varchar(255) DEFAULT NULL COMMENT '  流水号',
  `ali_account` varchar(255) DEFAULT NULL,
  `ali_name` varchar(255) DEFAULT NULL,
  `coin_type` int(2) DEFAULT '0' COMMENT '提现类型 1:支付宝 2:微信0:无',
  `related_id` bigint(20) DEFAULT NULL COMMENT '得到服票 关联的事件id 1:直播',
  `related_type` int(2) NOT NULL DEFAULT '0' COMMENT '得到服票 事件类型 0:普通记录无关联事件 1:直播送礼 2:任务奖励 3:平台活动',
  `from` varchar(255) DEFAULT NULL COMMENT '1:收礼物 2:兑换不服币 3:提现',
  `gift_num` smallint(6) DEFAULT '1' COMMENT '礼物个数',
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4171519 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_coin_copy
-- ----------------------------
DROP TABLE IF EXISTS `tab_coin_copy`;
CREATE TABLE `tab_coin_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `imei` varchar(64) DEFAULT NULL,
  `coin_before` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `change_text` varchar(50) DEFAULT NULL COMMENT '变更原因',
  `coin_change` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '变更数值',
  `change_time` datetime DEFAULT NULL COMMENT '变更时间',
  `coin_after` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `status` int(255) DEFAULT '1' COMMENT '0:审核中 1:成功 2:失败  3.提现处理中  4:拒绝  5:审核通过未打款',
  `mch_billno` varchar(255) DEFAULT NULL COMMENT '微信红包账单号 或支付宝批次号',
  `err_code` varchar(255) DEFAULT NULL COMMENT '微信发红包返回码',
  `err_code_des` varchar(255) DEFAULT NULL COMMENT '微信红包接口返回值解释',
  `send_time` varchar(25) DEFAULT NULL,
  `type` smallint(2) DEFAULT NULL COMMENT '0:提现 1:收入',
  `fu_before` decimal(11,0) DEFAULT NULL,
  `fu_change` decimal(11,0) DEFAULT NULL,
  `fu_after` decimal(11,0) DEFAULT NULL,
  `ali_batch_no` varchar(255) DEFAULT NULL COMMENT '  流水号',
  `ali_account` varchar(255) DEFAULT NULL,
  `ali_name` varchar(255) DEFAULT NULL,
  `coin_type` int(2) DEFAULT '0' COMMENT '提现类型 1:支付宝 2:微信0:无',
  `related_id` bigint(20) DEFAULT NULL COMMENT '得到服票 关联的事件id 1:直播',
  `related_type` int(2) NOT NULL DEFAULT '0' COMMENT '得到服票 事件类型 0:普通记录无关联事件 1:直播送礼 2:任务奖励 3:平台活动',
  `from` varchar(255) DEFAULT NULL COMMENT '1:收礼物 2:兑换不服币 3:提现',
  `gift_num` smallint(6) DEFAULT '1' COMMENT '礼物个数',
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4048971 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_coin_exchange_cfg
-- ----------------------------
DROP TABLE IF EXISTS `tab_coin_exchange_cfg`;
CREATE TABLE `tab_coin_exchange_cfg` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `app_coin` int(10) DEFAULT NULL,
  `price_coin` decimal(10,2) DEFAULT NULL COMMENT '购买消耗',
  `text` varchar(512) DEFAULT NULL COMMENT '显示的文本（如：980+20）',
  `type` int(2) DEFAULT NULL COMMENT '类型：0：常规，1:首冲，2：热门，3：优惠',
  `status` int(2) DEFAULT NULL COMMENT '状态：1，正常；2，删除；',
  `sort` int(5) DEFAULT NULL,
  `exchange_type` int(2) DEFAULT NULL COMMENT '1：现金-->不服币；2：票-->不服币；3：Apple商店 4：vip商品',
  `product_id` varchar(255) DEFAULT NULL COMMENT '苹果商店 商品key',
  `old_coin` varchar(10) DEFAULT NULL COMMENT '原价',
  `months` int(3) DEFAULT NULL COMMENT 'vip 月数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_coin_xuni
-- ----------------------------
DROP TABLE IF EXISTS `tab_coin_xuni`;
CREATE TABLE `tab_coin_xuni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `imei` varchar(64) DEFAULT NULL,
  `coin_before` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `change_text` varchar(50) DEFAULT NULL COMMENT '变更原因',
  `coin_change` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '变更数值',
  `change_time` datetime DEFAULT NULL COMMENT '变更时间',
  `coin_after` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `status` int(255) DEFAULT '1' COMMENT '0:审核中 1:成功 2:失败  3.提现处理中  4:拒绝  5:审核通过未打款',
  `mch_billno` varchar(255) DEFAULT NULL COMMENT '微信红包账单号 或支付宝批次号',
  `err_code` varchar(255) DEFAULT NULL COMMENT '微信发红包返回码',
  `err_code_des` varchar(255) DEFAULT NULL COMMENT '微信红包接口返回值解释',
  `send_time` varchar(25) DEFAULT NULL,
  `type` smallint(2) DEFAULT NULL COMMENT '0:提现 1:收入',
  `fu_before` decimal(11,0) DEFAULT NULL,
  `fu_change` decimal(11,0) DEFAULT NULL,
  `fu_after` decimal(11,0) DEFAULT NULL,
  `ali_batch_no` varchar(255) DEFAULT NULL COMMENT '  流水号',
  `ali_account` varchar(255) DEFAULT NULL,
  `ali_name` varchar(255) DEFAULT NULL,
  `coin_type` int(2) DEFAULT '0' COMMENT '提现类型 1:支付宝 2:微信0:无',
  `related_id` bigint(20) DEFAULT NULL COMMENT '得到服票 关联的事件id 1:直播',
  `related_type` int(2) NOT NULL DEFAULT '0' COMMENT '得到服票 事件类型 0:普通记录无关联事件 1:直播送礼 2:任务奖励 3:平台活动',
  `from` varchar(255) DEFAULT NULL COMMENT '1:收礼物 2:兑换不服币 3:提现',
  `wx_status` varchar(32) DEFAULT NULL,
  `wx_account` varchar(28) DEFAULT NULL,
  `gift_num` smallint(6) DEFAULT '1' COMMENT '礼物个数',
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`),
  KEY `ind_ctime` (`change_time`)
) ENGINE=InnoDB AUTO_INCREMENT=50508817 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_column
-- ----------------------------
DROP TABLE IF EXISTS `tab_column`;
CREATE TABLE `tab_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '栏目名称',
  `sort` varchar(255) DEFAULT NULL COMMENT '排序',
  `status` varchar(255) DEFAULT '1' COMMENT '状态1为生效，2为删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='视频专栏表';

-- ----------------------------
-- Table structure for tab_comment_content
-- ----------------------------
DROP TABLE IF EXISTS `tab_comment_content`;
CREATE TABLE `tab_comment_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论库',
  `comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=782 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_crontab
-- ----------------------------
DROP TABLE IF EXISTS `tab_crontab`;
CREATE TABLE `tab_crontab` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` tinyint(4) DEFAULT '0' COMMENT '1刷赞;2刷播放;3刷粉丝',
  `user_id` varchar(4000) DEFAULT '0' COMMENT '用户ID',
  `media_id` varchar(4000) DEFAULT '0' COMMENT '视频ID',
  `match_id` int(11) DEFAULT '0' COMMENT '赛事ID',
  `minval` smallint(6) DEFAULT '0' COMMENT '随机最小票数',
  `maxval` smallint(6) DEFAULT '0' COMMENT '随机最大票数',
  `starttime` varchar(100) DEFAULT NULL COMMENT '*表示每日任务，指定日期格式如1:3:5',
  `minsec` smallint(6) DEFAULT '0' COMMENT '随机最小秒数',
  `maxsec` smallint(6) DEFAULT '0' COMMENT '随机最大秒数',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态：0正常;1结束',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `ind_media_id` (`media_id`(191)) USING BTREE,
  KEY `ind_user_id` (`user_id`(191)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_cute_disagree_no
-- ----------------------------
DROP TABLE IF EXISTS `tab_cute_disagree_no`;
CREATE TABLE `tab_cute_disagree_no` (
  `id` int(11) NOT NULL,
  `disagree_no` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `disagree_no` (`disagree_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='不服靓号';

-- ----------------------------
-- Table structure for tab_employee
-- ----------------------------
DROP TABLE IF EXISTS `tab_employee`;
CREATE TABLE `tab_employee` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `disagree_no` varchar(36) NOT NULL COMMENT '不服号',
  `nick_name` varchar(120) DEFAULT NULL COMMENT '昵称',
  `truth_name` varchar(12) DEFAULT NULL COMMENT '真实姓名',
  `type` tinyint(4) DEFAULT NULL COMMENT '1:运营，2：技术，3：兼职，4：其他',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COMMENT='内部员工不服账号信息';

-- ----------------------------
-- Table structure for tab_experience_config
-- ----------------------------
DROP TABLE IF EXISTS `tab_experience_config`;
CREATE TABLE `tab_experience_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(8) DEFAULT NULL COMMENT '等级',
  `level_area` int(18) DEFAULT NULL COMMENT '等级区间（1-11：区间1普通用户,12-16：区间2……等）',
  `level_experience` int(18) DEFAULT NULL COMMENT '到达该级别所需要的经验',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COMMENT='经验、经验区间配置表。';

-- ----------------------------
-- Table structure for tab_fetch_rand
-- ----------------------------
DROP TABLE IF EXISTS `tab_fetch_rand`;
CREATE TABLE `tab_fetch_rand` (
  `id` int(11) NOT NULL COMMENT '主键ID',
  `tab_name` varchar(20) DEFAULT NULL COMMENT '表名',
  `tab_field` varchar(20) DEFAULT NULL COMMENT '表字段名',
  `field_max` int(11) DEFAULT NULL COMMENT '该字段的最大值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='取某表某字段的最大值';

-- ----------------------------
-- Table structure for tab_finance_balance
-- ----------------------------
DROP TABLE IF EXISTS `tab_finance_balance`;
CREATE TABLE `tab_finance_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL COMMENT '截止日期',
  `a1` int(11) DEFAULT NULL COMMENT '总充值（不服币）',
  `a2` decimal(10,2) DEFAULT NULL COMMENT '总充值（金额）',
  `a3` int(11) DEFAULT NULL COMMENT '活动发放不服币',
  `a4` int(11) DEFAULT NULL COMMENT '平台剩余不服币',
  `a5` int(11) DEFAULT NULL COMMENT '虚拟商品销售所得不服币',
  `a6` int(11) DEFAULT NULL COMMENT '兑换不服币',
  `a7` int(11) DEFAULT NULL COMMENT '送礼',
  `b1` int(11) DEFAULT NULL COMMENT '已提现不服票',
  `b2` int(11) DEFAULT NULL COMMENT '已提现人民币',
  `b3` int(11) DEFAULT NULL COMMENT '平台剩余不服票',
  `b4` int(11) DEFAULT NULL COMMENT '已兑换不服票',
  `b5` int(11) DEFAULT NULL COMMENT '收礼',
  `ban` int(11) DEFAULT NULL COMMENT '平衡差',
  `STATUS` tinyint(4) DEFAULT NULL COMMENT '0:历史,1：实时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind_uniq_dateAndstatus` (`create_date`,`STATUS`)
) ENGINE=InnoDB AUTO_INCREMENT=8913 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for tab_gift
-- ----------------------------
DROP TABLE IF EXISTS `tab_gift`;
CREATE TABLE `tab_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_name` varchar(20) DEFAULT NULL COMMENT '礼物名',
  `gift_type` int(2) DEFAULT NULL COMMENT '礼物类型 0-普通礼物 1-动画礼物 2-连击礼物 3-红包礼物',
  `is_great_gift` int(2) DEFAULT NULL COMMENT '是否是重要礼物（重要礼物在APP端会有特殊展示）',
  `is_support_hits` int(2) DEFAULT NULL COMMENT '是否支持连击 0:否 1:支持',
  `experience` int(18) DEFAULT NULL COMMENT '1个礼物对应的经验值',
  `fu_num` int(18) DEFAULT NULL COMMENT '1个礼物对应的福卡数',
  `status` int(2) DEFAULT NULL COMMENT '状态：1可用，2删除',
  `sort` int(2) DEFAULT NULL COMMENT '排序',
  `app_coin` int(11) DEFAULT '0' COMMENT '购买礼物消耗的不服币',
  `ico_url` varchar(128) DEFAULT NULL COMMENT '动画',
  `imge_url` varchar(128) DEFAULT NULL COMMENT '图标地址(真实路径)',
  `size` double(12,0) DEFAULT NULL,
  `folder` varchar(255) DEFAULT NULL,
  `zip_path` varchar(255) DEFAULT NULL,
  `series_number` int(18) NOT NULL DEFAULT '0',
  `gift_word` varchar(20) DEFAULT NULL COMMENT '礼物默认祝福语',
  `bufu_picket` int(11) DEFAULT '0' COMMENT '该礼物对应的不服票',
  `vip` tinyint(2) DEFAULT '0' COMMENT '是都是vip礼物：1-是vip礼物，0-不是vip礼物',
  `type` tinyint(2) DEFAULT '0' COMMENT '礼物类型：0-普通礼物，1-pk礼物',
  `is_super` tinyint(2) DEFAULT NULL COMMENT '是否是跑道礼物：1-是，0-不是',
  `image` varchar(128) DEFAULT NULL COMMENT '普通路径',
  `zx_image` varchar(128) DEFAULT NULL COMMENT '周星路径',
  `zx_fame` varchar(255) DEFAULT NULL COMMENT '周星称呼',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COMMENT='礼物信息表';

-- ----------------------------
-- Table structure for tab_gift_activity
-- ----------------------------
DROP TABLE IF EXISTS `tab_gift_activity`;
CREATE TABLE `tab_gift_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL COMMENT '周星开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '周星结束时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `gift_id` int(11) DEFAULT NULL COMMENT '礼物id',
  `status` tinyint(2) DEFAULT '0' COMMENT '0正常，2删除',
  `activity_name` varchar(64) DEFAULT NULL COMMENT '标示活动',
  `activity_no` int(11) DEFAULT NULL COMMENT '标示第几周或某个活动',
  `gift_num` int(11) DEFAULT NULL COMMENT '价值个数(展示为送个多少个 例：1个导弹精灵价值50个)',
  `pk_gift_id` int(11) DEFAULT NULL COMMENT '同个礼物中pk中的id',
  `uid` int(11) DEFAULT NULL COMMENT '周星用户的id',
  `title` varchar(20) DEFAULT NULL COMMENT '周星称号',
  `title_end_time` datetime DEFAULT NULL COMMENT '周星称号截止时间',
  PRIMARY KEY (`id`),
  KEY `ind_` (`start_time`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COMMENT='周星配置表';

-- ----------------------------
-- Table structure for tab_gift_record
-- ----------------------------
DROP TABLE IF EXISTS `tab_gift_record`;
CREATE TABLE `tab_gift_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_id` int(8) NOT NULL COMMENT '礼物id,对应tab_gift表的id,-1：购买平台虚拟服务，-2：pk赢，-3：pk输',
  `live_id` int(18) NOT NULL COMMENT '直播id，对应tab_live_ugc的id',
  `from_uid` int(18) NOT NULL COMMENT '送礼物的用户id',
  `to_uid` int(18) NOT NULL COMMENT '收礼物的用户id',
  `createtime` datetime NOT NULL,
  `fu_card` int(11) DEFAULT '0',
  `pk_id` int(11) DEFAULT NULL COMMENT '如果是在pk过程中送的礼物，则记录pk_id',
  `gift_num` smallint(6) DEFAULT '1' COMMENT '礼物个数',
  PRIMARY KEY (`id`,`createtime`),
  KEY `ind_liveid` (`live_id`),
  KEY `ind_to_uid` (`to_uid`),
  KEY `ind_from_uid` (`from_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4148191 DEFAULT CHARSET=utf8mb4 COMMENT='送礼物记录表'
/*!50100 PARTITION BY RANGE (TO_DAYS(createtime))
(PARTITION p_2016_07 VALUES LESS THAN (736511) ENGINE = InnoDB,
 PARTITION p_2016_08 VALUES LESS THAN (736542) ENGINE = InnoDB,
 PARTITION p_2016_09 VALUES LESS THAN (736573) ENGINE = InnoDB,
 PARTITION p_2016_10 VALUES LESS THAN (736603) ENGINE = InnoDB,
 PARTITION p_2016_11 VALUES LESS THAN (736634) ENGINE = InnoDB,
 PARTITION p_2016_12 VALUES LESS THAN (736664) ENGINE = InnoDB,
 PARTITION p_2017_01 VALUES LESS THAN (736695) ENGINE = InnoDB,
 PARTITION p_2017_02 VALUES LESS THAN (736726) ENGINE = InnoDB,
 PARTITION p_2017_03 VALUES LESS THAN (736754) ENGINE = InnoDB,
 PARTITION p_2017_04 VALUES LESS THAN (736785) ENGINE = InnoDB,
 PARTITION p_2017_05 VALUES LESS THAN (736815) ENGINE = InnoDB,
 PARTITION p_2017_06 VALUES LESS THAN (736846) ENGINE = InnoDB,
 PARTITION p_2017_07 VALUES LESS THAN (736876) ENGINE = InnoDB,
 PARTITION p_2017_08 VALUES LESS THAN (736907) ENGINE = InnoDB,
 PARTITION p_2017_09 VALUES LESS THAN (736938) ENGINE = InnoDB,
 PARTITION p_catch_all VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Table structure for tab_gift_record_1
-- ----------------------------
DROP TABLE IF EXISTS `tab_gift_record_1`;
CREATE TABLE `tab_gift_record_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_id` int(8) NOT NULL COMMENT '礼物id,对应tab_gift表的id,-1：购买平台虚拟服务，-2：pk赢，-3：pk输',
  `live_id` int(18) NOT NULL COMMENT '直播id，对应tab_live_ugc的id',
  `from_uid` int(18) NOT NULL COMMENT '送礼物的用户id',
  `to_uid` int(18) NOT NULL COMMENT '收礼物的用户id',
  `createtime` datetime NOT NULL,
  `fu_card` int(11) DEFAULT '0',
  `pk_id` int(11) DEFAULT NULL COMMENT '如果是在pk过程中送的礼物，则记录pk_id',
  `gift_num` smallint(6) DEFAULT '1' COMMENT '礼物个数',
  PRIMARY KEY (`id`,`createtime`),
  KEY `ind_liveid` (`live_id`),
  KEY `ind_to_uid` (`to_uid`),
  KEY `ind_from_uid` (`from_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3603237 DEFAULT CHARSET=utf8mb4 COMMENT='送礼物记录表';

-- ----------------------------
-- Table structure for tab_gift_record_copy
-- ----------------------------
DROP TABLE IF EXISTS `tab_gift_record_copy`;
CREATE TABLE `tab_gift_record_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_id` int(8) NOT NULL COMMENT '礼物id,对应tab_gift表的id,-1：购买平台虚拟服务，-2：pk赢，-3：pk输',
  `live_id` int(18) NOT NULL COMMENT '直播id，对应tab_live_ugc的id',
  `from_uid` int(18) NOT NULL COMMENT '送礼物的用户id',
  `to_uid` int(18) NOT NULL COMMENT '收礼物的用户id',
  `createtime` datetime NOT NULL,
  `fu_card` int(11) DEFAULT '0',
  `pk_id` int(11) DEFAULT NULL COMMENT '如果是在pk过程中送的礼物，则记录pk_id',
  `gift_num` smallint(6) DEFAULT '1' COMMENT '礼物个数',
  PRIMARY KEY (`id`,`createtime`),
  KEY `ind_liveid` (`live_id`),
  KEY `ind_to_uid` (`to_uid`),
  KEY `ind_from_uid` (`from_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2973400 DEFAULT CHARSET=utf8mb4 COMMENT='送礼物记录表'
/*!50100 PARTITION BY RANGE (TO_DAYS(createtime))
(PARTITION p_2016_07 VALUES LESS THAN (736511) ENGINE = InnoDB,
 PARTITION p_2016_08 VALUES LESS THAN (736542) ENGINE = InnoDB,
 PARTITION p_2016_09 VALUES LESS THAN (736573) ENGINE = InnoDB,
 PARTITION p_2016_10 VALUES LESS THAN (736603) ENGINE = InnoDB,
 PARTITION p_2016_11 VALUES LESS THAN (736634) ENGINE = InnoDB,
 PARTITION p_2016_12 VALUES LESS THAN (736664) ENGINE = InnoDB,
 PARTITION p_2017_01 VALUES LESS THAN (736695) ENGINE = InnoDB,
 PARTITION p_2017_02 VALUES LESS THAN (736726) ENGINE = InnoDB,
 PARTITION p_2017_03 VALUES LESS THAN (736754) ENGINE = InnoDB,
 PARTITION p_2017_04 VALUES LESS THAN (736785) ENGINE = InnoDB,
 PARTITION p_2017_05 VALUES LESS THAN (736815) ENGINE = InnoDB,
 PARTITION p_2017_06 VALUES LESS THAN (736846) ENGINE = InnoDB,
 PARTITION p_2017_07 VALUES LESS THAN (736876) ENGINE = InnoDB,
 PARTITION p_2017_08 VALUES LESS THAN (736907) ENGINE = InnoDB,
 PARTITION p_2017_09 VALUES LESS THAN (736938) ENGINE = InnoDB,
 PARTITION p_catch_all VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Table structure for tab_gift_record_xuni
-- ----------------------------
DROP TABLE IF EXISTS `tab_gift_record_xuni`;
CREATE TABLE `tab_gift_record_xuni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_id` int(8) NOT NULL COMMENT '礼物id,对应tab_gift表的id',
  `live_id` int(18) NOT NULL COMMENT '直播id，对应tab_live_ugc的id',
  `from_uid` int(18) NOT NULL COMMENT '送礼物的用户id',
  `to_uid` int(18) NOT NULL COMMENT '收礼物的用户id',
  `createtime` datetime NOT NULL,
  `fu_card` int(11) DEFAULT '0',
  `pk_id` int(11) DEFAULT NULL COMMENT '如果是在pk过程中送的礼物，则记录pk_id',
  `gift_num` smallint(6) DEFAULT '1' COMMENT '礼物个数',
  PRIMARY KEY (`id`,`createtime`),
  KEY `ind_liveid` (`live_id`),
  KEY `ind_to_uid` (`to_uid`),
  KEY `ind_live_id` (`live_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50362145 DEFAULT CHARSET=utf8mb4 COMMENT='送礼物记录表';

-- ----------------------------
-- Table structure for tab_gift_week_star
-- ----------------------------
DROP TABLE IF EXISTS `tab_gift_week_star`;
CREATE TABLE `tab_gift_week_star` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL COMMENT '周星开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '周星结束时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `gift_id` int(11) DEFAULT NULL COMMENT '礼物id',
  `status` tinyint(2) DEFAULT '0' COMMENT '0正常，2删除',
  `week_num` int(11) DEFAULT NULL COMMENT '标示第几周',
  `uid` int(11) DEFAULT NULL COMMENT '周星用户的id',
  `title` varchar(20) DEFAULT NULL COMMENT '周星称号',
  `title_end_time` datetime DEFAULT NULL COMMENT '周星称号截止时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='周星配置表';

-- ----------------------------
-- Table structure for tab_god_config
-- ----------------------------
DROP TABLE IF EXISTS `tab_god_config`;
CREATE TABLE `tab_god_config` (
  `god_key` varchar(255) DEFAULT NULL COMMENT '配置键',
  `god_value` varchar(255) DEFAULT NULL COMMENT '配置值',
  `god_value1` varchar(255) DEFAULT NULL,
  `god_value2` varchar(255) DEFAULT NULL,
  `god_value3` varchar(255) DEFAULT NULL,
  `god_value4` varchar(255) DEFAULT NULL,
  `god_remark` varchar(255) DEFAULT NULL COMMENT '配置备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_gpk_plan
-- ----------------------------
DROP TABLE IF EXISTS `tab_gpk_plan`;
CREATE TABLE `tab_gpk_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gpk_id` int(8) DEFAULT NULL COMMENT '官方pk活动的id',
  `auid` int(11) DEFAULT NULL COMMENT '主播id',
  `buid` int(11) DEFAULT NULL COMMENT '主播id',
  `presenter_uid` int(11) DEFAULT NULL COMMENT '主持人用户id',
  `status` tinyint(2) DEFAULT '0' COMMENT '0为正常，1开始，2为删除，4结束',
  `start_time` datetime DEFAULT NULL COMMENT 'pk开始时间',
  `end_time` datetime DEFAULT NULL COMMENT 'pk截止时间',
  `live_id` int(8) DEFAULT NULL COMMENT '直播id，对应tab_live_ugc表的id',
  `winner` int(11) DEFAULT NULL COMMENT '获胜者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_gpk_sign
-- ----------------------------
DROP TABLE IF EXISTS `tab_gpk_sign`;
CREATE TABLE `tab_gpk_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gpk_id` int(8) DEFAULT NULL COMMENT '官方pk活动的id',
  `uid` int(11) DEFAULT NULL COMMENT '报名者的id',
  `status` tinyint(2) DEFAULT '0' COMMENT '0正常，1删除',
  `create_time` datetime DEFAULT NULL COMMENT '申请日期',
  `mobile` varchar(15) DEFAULT NULL COMMENT '申请者的手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_guide_page
-- ----------------------------
DROP TABLE IF EXISTS `tab_guide_page`;
CREATE TABLE `tab_guide_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(4) DEFAULT '1' COMMENT '1:正常 0：删除',
  `image_url` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `weight` int(3) NOT NULL DEFAULT '0' COMMENT '权重',
  `sort` int(4) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for tab_h5_match_config
-- ----------------------------
DROP TABLE IF EXISTS `tab_h5_match_config`;
CREATE TABLE `tab_h5_match_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `match_id` int(18) DEFAULT NULL COMMENT '赛事id',
  `template_name` varchar(40) DEFAULT NULL COMMENT '模板名',
  `page_title` varchar(20) DEFAULT NULL COMMENT '页面标题',
  `image_url` varchar(256) DEFAULT NULL COMMENT '图片地址',
  `media_url` varchar(256) DEFAULT NULL COMMENT '视频地址',
  `share_title` varchar(50) DEFAULT NULL COMMENT '分享标题',
  `share_content` longtext COMMENT '分享内容',
  `share_image` varchar(256) DEFAULT NULL COMMENT '分享图片',
  `step1_tab` varchar(20) DEFAULT NULL COMMENT 'tab标题1',
  `step1_time` varchar(20) DEFAULT NULL COMMENT 'tab时间1',
  `step1_content` varchar(500) DEFAULT NULL COMMENT 'tab内容1',
  `step1_active` int(2) DEFAULT NULL COMMENT '是否是被选中状态,1选中，0未选中',
  `step1_enable` int(2) DEFAULT NULL COMMENT '是否可被点击,1可点击，0不可点击',
  `step2_tab` varchar(20) DEFAULT NULL COMMENT 'tab标题2',
  `step2_time` varchar(20) DEFAULT NULL COMMENT 'tab时间2',
  `step2_content` varchar(500) DEFAULT NULL COMMENT 'tab内容3',
  `step2_active` int(2) DEFAULT NULL COMMENT '是否是被选中状态,1选中，0未选中',
  `step2_enable` int(2) DEFAULT NULL COMMENT '是否可被点击,1可点击，0不可点击',
  `step3_tab` varchar(20) DEFAULT NULL COMMENT 'tab标题3',
  `step3_time` varchar(20) DEFAULT NULL COMMENT 'tab时间3',
  `step3_content` varchar(500) DEFAULT NULL COMMENT 'tab内容3',
  `step3_active` int(2) DEFAULT NULL COMMENT '是否是被选中状态,1选中，0未选中',
  `step3_enable` int(2) DEFAULT NULL COMMENT '是否可被点击,1可点击，0不可点击',
  `block_title` varchar(20) DEFAULT NULL COMMENT '标题',
  `block_content` varchar(200) DEFAULT NULL COMMENT '内容',
  `text1_title` varchar(20) DEFAULT NULL COMMENT '文本标题1',
  `text1_content` varchar(500) DEFAULT NULL COMMENT '文本内容1',
  `text1_active` int(2) DEFAULT NULL COMMENT '是否是被选中状态,1选中，0未选中',
  `text1_enable` int(2) DEFAULT NULL COMMENT '是否可被点击,1可点击，0不可点击',
  `text2_title` varchar(20) DEFAULT NULL,
  `text2_content` varchar(500) DEFAULT NULL,
  `text2_active` int(2) DEFAULT NULL COMMENT '是否是被选中状态,1选中，0未选中',
  `text2_enable` int(2) DEFAULT NULL COMMENT '是否可被点击,1可点击，0不可点击',
  `media_container_title` varchar(20) DEFAULT NULL COMMENT '视频容器标题',
  `media_ids` varchar(100) DEFAULT NULL COMMENT '精彩视频的id',
  `show_support_num` int(1) DEFAULT '1' COMMENT '是否显示点赞数，1为显示；0为不显示。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_h5_share_log
-- ----------------------------
DROP TABLE IF EXISTS `tab_h5_share_log`;
CREATE TABLE `tab_h5_share_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `h5_url` varchar(128) DEFAULT NULL COMMENT '被分享的h5_url',
  `share_time` datetime DEFAULT NULL COMMENT '分享时间',
  `imei` varchar(50) DEFAULT NULL,
  `app_version` varchar(255) DEFAULT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL COMMENT '视频id',
  `type` int(2) DEFAULT NULL COMMENT '1为视频分享,2为直播分享,3红包页面分享',
  `live_id` int(11) DEFAULT NULL COMMENT '直播id',
  `live_uid` int(11) DEFAULT NULL COMMENT '主播的用户id',
  `related_id` int(11) DEFAULT NULL COMMENT '关联id，当type=3时，为tab_red_packet_performance表的group_id',
  PRIMARY KEY (`id`),
  KEY `ind_t` (`share_time`),
  KEY `ind_imei` (`imei`),
  KEY `ind_m` (`media_id`),
  KEY `ind_userid` (`uid`),
  KEY `ind_live_id` (`live_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=291507 DEFAULT CHARSET=utf8mb4 COMMENT='web_view分享记录表';

-- ----------------------------
-- Table structure for tab_holiday
-- ----------------------------
DROP TABLE IF EXISTS `tab_holiday`;
CREATE TABLE `tab_holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL COMMENT '活动名称',
  `gift_ids` varchar(256) DEFAULT NULL COMMENT '活动特殊礼物',
  `start_time` datetime DEFAULT NULL COMMENT '活动开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '活动结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_idfa
-- ----------------------------
DROP TABLE IF EXISTS `tab_idfa`;
CREATE TABLE `tab_idfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfa` varchar(50) NOT NULL COMMENT 'IDFA',
  `n` int(8) DEFAULT '0' COMMENT '计数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `imei` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_c` (`create_time`),
  KEY `ind_1` (`idfa`(7))
) ENGINE=InnoDB AUTO_INCREMENT=571937 DEFAULT CHARSET=utf8mb4 COMMENT='广告IDFA表';

-- ----------------------------
-- Table structure for tab_idfa_copy
-- ----------------------------
DROP TABLE IF EXISTS `tab_idfa_copy`;
CREATE TABLE `tab_idfa_copy` (
  `idfa` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_index_menu_config
-- ----------------------------
DROP TABLE IF EXISTS `tab_index_menu_config`;
CREATE TABLE `tab_index_menu_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `related_id` int(8) DEFAULT NULL COMMENT '关联id，圈子或者赛事id等',
  `title` varchar(20) DEFAULT NULL COMMENT '菜单标题',
  `type` int(2) DEFAULT '0' COMMENT '3：赛事，9：圈子，10：直播,11不服来战,12:热门 13:飚演技 14:h5',
  `status` int(2) DEFAULT '0' COMMENT '0为正常，1为删除',
  `sort` int(4) DEFAULT '0',
  `href_url` varchar(128) DEFAULT NULL COMMENT 'h5地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_interface_analyze
-- ----------------------------
DROP TABLE IF EXISTS `tab_interface_analyze`;
CREATE TABLE `tab_interface_analyze` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '数据来源',
  `interface` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '接口名',
  `consumer_time` decimal(6,3) DEFAULT NULL COMMENT '耗时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '入库时间',
  `ltype` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'api',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2450364 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='web服务器接口耗时统计表';

-- ----------------------------
-- Table structure for tab_ios_version
-- ----------------------------
DROP TABLE IF EXISTS `tab_ios_version`;
CREATE TABLE `tab_ios_version` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `jspath` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'js下载目录',
  `jsversion` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'js脚本的版本',
  `app_version` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'app版本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='更新IOS的js脚本';

-- ----------------------------
-- Table structure for tab_judge
-- ----------------------------
DROP TABLE IF EXISTS `tab_judge`;
CREATE TABLE `tab_judge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(18) NOT NULL COMMENT '对应tab_user表id',
  `sub_match_id` bigint(18) NOT NULL COMMENT '对应tab_sub_match表id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_level_area
-- ----------------------------
DROP TABLE IF EXISTS `tab_level_area`;
CREATE TABLE `tab_level_area` (
  `id` int(18) NOT NULL,
  `level_min` int(10) DEFAULT NULL,
  `level_max` int(10) DEFAULT NULL,
  `level_right` varchar(2048) DEFAULT NULL,
  `level_image` varchar(512) DEFAULT NULL COMMENT '等级标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_live
-- ----------------------------
DROP TABLE IF EXISTS `tab_live`;
CREATE TABLE `tab_live` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_name` varchar(20) DEFAULT NULL COMMENT '直播名',
  `ring_content` varchar(100) DEFAULT NULL,
  `player_list_title` varchar(20) DEFAULT NULL COMMENT '玩家列表的标题，如：10大歌手、10大舞者',
  `player_describe_title` varchar(20) DEFAULT NULL COMMENT '选手描述的文本，如：高手特征。',
  `status` smallint(2) DEFAULT '0' COMMENT '0为未开始，1为开始，2为删除，4为结束',
  `image_url` varchar(256) DEFAULT NULL COMMENT '直播未开始前的宣传图片，格式：以宽高结尾',
  `media_url` varchar(256) DEFAULT NULL COMMENT '直播未开始前的宣传视频，格式：以宽高结尾',
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `stream_id` varchar(50) DEFAULT NULL COMMENT '七牛直播id',
  `online_users` int(11) DEFAULT '0' COMMENT '在线人数',
  `share_title` varchar(255) DEFAULT NULL,
  `share_content` varchar(255) DEFAULT NULL,
  `share_image` varchar(255) DEFAULT NULL,
  `chatroom_id` int(11) DEFAULT NULL COMMENT '聊天室id',
  `share_url` varchar(255) DEFAULT NULL,
  `content` varchar(1024) DEFAULT NULL,
  `online_person` int(11) DEFAULT '0' COMMENT '在线人数',
  `adv` varchar(1000) DEFAULT NULL,
  `push_type` enum('app','computer') DEFAULT NULL COMMENT 'app，由手机app端推送；computer，由电脑端推送',
  `push_uid` int(11) DEFAULT NULL COMMENT '如果是从app推流的，此处就是推流的APP用户id',
  `ugc_id` int(11) DEFAULT NULL COMMENT '对应ugc直播的id',
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序',
  `h5_url` varchar(255) DEFAULT NULL COMMENT 'h5页面的url地址',
  `is_school_live` int(11) DEFAULT '0' COMMENT '是否是校园直播  1:是 0否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_live_comment
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_comment`;
CREATE TABLE `tab_live_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(8) DEFAULT NULL COMMENT 'tab_live的id',
  `text` varchar(50) DEFAULT NULL,
  `nick_name` varchar(20) DEFAULT NULL COMMENT '昵称',
  `avatars_url` varchar(255) DEFAULT NULL COMMENT '评论头像',
  `comment_time` datetime DEFAULT NULL COMMENT '评论时间',
  `dsecond` int(8) DEFAULT NULL COMMENT '直播开始后第几秒评论的',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='web直播评论记录表';

-- ----------------------------
-- Table structure for tab_live_forbid_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_forbid_user`;
CREATE TABLE `tab_live_forbid_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT '1' COMMENT '状态 1:禁播  2:无效禁播',
  `text` varchar(1024) DEFAULT NULL,
  `hour` varchar(255) DEFAULT NULL COMMENT '禁播时长',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=655 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_live_forbidden
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_forbidden`;
CREATE TABLE `tab_live_forbidden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL COMMENT '直播id',
  `buid` int(11) DEFAULT NULL COMMENT '被禁言者的id',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8159 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_live_gpk
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_gpk`;
CREATE TABLE `tab_live_gpk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pk_title` varchar(255) DEFAULT NULL COMMENT 'pk主题',
  `pk_time` varchar(20) DEFAULT NULL COMMENT 'pk时间',
  `sign_end_time` datetime DEFAULT NULL COMMENT '报名截止时间',
  `head_image` varchar(200) DEFAULT NULL COMMENT '顶部图片',
  `bg_image` varchar(200) DEFAULT NULL COMMENT '背景图片',
  `status` tinyint(2) DEFAULT '0' COMMENT '0为正常，2为删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_live_his_stream
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_his_stream`;
CREATE TABLE `tab_live_his_stream` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL COMMENT '直播的id',
  `media_url` varchar(256) DEFAULT NULL COMMENT '机位视频地址',
  `image_url` varchar(256) DEFAULT NULL COMMENT '机位视频截图地址',
  `title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_live_integration
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_integration`;
CREATE TABLE `tab_live_integration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT '0' COMMENT '直播id',
  `uid` int(11) DEFAULT '0' COMMENT '主播id',
  `user_integration` int(11) DEFAULT '0' COMMENT '用户积分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '直播结束时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind_uniq` (`live_id`,`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6421 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_live_lunbo
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_lunbo`;
CREATE TABLE `tab_live_lunbo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` int(11) DEFAULT NULL COMMENT '赛事或者活动相关的id(关联赛事时使用系列赛事的父id)',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type2` varchar(4) DEFAULT NULL COMMENT '与tab_lunbo一致，目前有：7：跳转h5',
  `status` varchar(255) DEFAULT NULL COMMENT '0:生效 1:无效',
  `sort` int(4) DEFAULT NULL COMMENT '排序字段',
  `image` varchar(255) DEFAULT NULL COMMENT '图片URL',
  `href_url` varchar(255) DEFAULT NULL COMMENT '点击跳转URL',
  `share_url` varchar(255) DEFAULT NULL COMMENT '分享URL',
  `share_title` varchar(255) DEFAULT NULL COMMENT '分享标题',
  `share_memo` varchar(255) DEFAULT NULL COMMENT '分享描述',
  `share_image` varchar(255) DEFAULT NULL COMMENT '分享图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_live_msg_record
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_msg_record`;
CREATE TABLE `tab_live_msg_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) NOT NULL COMMENT '直播间Id',
  `msg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '聊天内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `from_uid` int(8) DEFAULT NULL COMMENT '发送聊天信息者的用户id',
  `to_uid` int(8) DEFAULT NULL COMMENT '主播的用户id',
  `is_screen_msg` tinyint(2) DEFAULT NULL COMMENT '是否是弹幕消息，0为普通消息，1为弹幕消息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6114579 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='直播间聊天记录表';

-- ----------------------------
-- Table structure for tab_live_pk
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_pk`;
CREATE TABLE `tab_live_pk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL COMMENT 'live_ugc的主键',
  `start_time` datetime DEFAULT NULL COMMENT 'pk开始时间',
  `end_time` datetime DEFAULT NULL COMMENT 'pk结束时间（与选择的pk时长有关）',
  `pk_shot_image` varchar(255) DEFAULT NULL COMMENT 'pk截图',
  `pk_duration` int(11) DEFAULT NULL COMMENT '真实pk时长，单位秒',
  `pk_uid` int(11) DEFAULT NULL COMMENT 'pk挑战者的id',
  `pk_q_uid` varchar(128) DEFAULT NULL,
  `pk_hls` varchar(255) DEFAULT NULL COMMENT 'pk的m3u8地址',
  `pk_image` varchar(255) DEFAULT NULL COMMENT 'pk发起者的封面',
  `a_support` int(11) DEFAULT '0' COMMENT '该场pk中主播获得的点赞数',
  `b_support` int(11) DEFAULT '0' COMMENT '该场pk中挑战者获得的点赞数',
  `a_fu_card` int(11) DEFAULT '0' COMMENT '该场pk中主播获得的服卡数',
  `b_fu_card` int(11) DEFAULT '0' COMMENT '该场pk中挑战者获得的服卡数',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1进行中，4结束',
  `share_times` int(11) DEFAULT '0' COMMENT 'pk直播被分享的次数',
  `pk_heartbeat_time` datetime DEFAULT NULL,
  `presenter_uid` int(11) DEFAULT NULL COMMENT '主持人的用户id',
  `plan_id` int(11) DEFAULT '0' COMMENT '天灯配置表的id',
  `a_energy` int(11) DEFAULT '0' COMMENT '左邊用戶的能力值',
  `b_energy` int(11) DEFAULT '0' COMMENT '右邊用戶的能力值',
  `a_light` int(11) DEFAULT '0',
  `b_light` int(11) DEFAULT '0',
  `winner` int(11) DEFAULT '0',
  `percent` tinyint(4) DEFAULT '0',
  `right_flag` int(2) DEFAULT '0' COMMENT '互动主播是否进入　0未进入　１已经进入',
  PRIMARY KEY (`id`),
  KEY `ind_liveid` (`live_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3137 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_live_player
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_player`;
CREATE TABLE `tab_live_player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL COMMENT '直播表的id',
  `uid` int(18) DEFAULT NULL COMMENT '玩家的用户id',
  `vote_num` int(11) DEFAULT NULL COMMENT '获得的票数',
  `avatars_url` varchar(200) DEFAULT NULL COMMENT '玩家头像',
  `player_describe_title` varchar(20) DEFAULT NULL COMMENT '选手描述的文本标题，如：高手特征。',
  `player_describe` varchar(100) DEFAULT NULL COMMENT '选手特征描述',
  `state` tinyint(4) DEFAULT '0' COMMENT '刷票状态：0不刷，1开刷',
  `set_votenum` smallint(6) DEFAULT '0' COMMENT '设置刷票量',
  `today_votenum` smallint(6) DEFAULT '0' COMMENT '当天virt刷票量',
  `total_votenum` int(11) DEFAULT '0' COMMENT '总virt刷票量',
  `total_votenum_mid` int(11) DEFAULT '0' COMMENT '临时存储刷票量',
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='直播中的玩家信息';

-- ----------------------------
-- Table structure for tab_live_player_support
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_player_support`;
CREATE TABLE `tab_live_player_support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL COMMENT '直播id',
  `auser_id` int(18) DEFAULT NULL COMMENT '点击牛的用户id',
  `open_id` varchar(50) DEFAULT NULL,
  `buser_id` int(18) DEFAULT NULL COMMENT '被点牛的选手id',
  `status` smallint(2) DEFAULT NULL COMMENT '状态0为点赞',
  `create_time` datetime DEFAULT NULL COMMENT '点牛的时间',
  PRIMARY KEY (`id`),
  KEY `ind_auid` (`auser_id`),
  KEY `ind_buid` (`buser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_live_report
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_report`;
CREATE TABLE `tab_live_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auid` int(11) DEFAULT NULL COMMENT '举报者的用户id',
  `buid` int(11) DEFAULT NULL COMMENT '被举报者的用户id',
  `live_id` int(11) DEFAULT NULL COMMENT '直播id',
  `status` int(2) DEFAULT '0' COMMENT '0待处理，1已处理',
  `create_time` datetime DEFAULT NULL,
  `is_anchor` int(11) DEFAULT NULL COMMENT '0观众，1主播',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8113 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_live_segment
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_segment`;
CREATE TABLE `tab_live_segment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL,
  `media_url` varchar(256) DEFAULT NULL,
  `image_url` varchar(256) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `width` int(8) DEFAULT NULL,
  `height` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_live_stream
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_stream`;
CREATE TABLE `tab_live_stream` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL COMMENT '直播的id',
  `stream_id` varchar(50) DEFAULT NULL COMMENT '七牛直播流id',
  `stream_name` varchar(20) DEFAULT NULL COMMENT '直播摄像编号',
  `publish_url` varchar(256) DEFAULT NULL COMMENT '推流地址',
  `hls_url_high` varchar(256) DEFAULT NULL,
  `hls_url` varchar(256) DEFAULT NULL COMMENT 'm3u8拉流地址',
  `hls_url_low` varchar(256) DEFAULT NULL,
  `rtmp_url_high` varchar(256) DEFAULT NULL,
  `rtmp_url` varchar(256) DEFAULT NULL COMMENT 'rtmp拉流地址',
  `rtmp_url_low` varchar(256) DEFAULT NULL,
  `stream_image_url` varchar(256) DEFAULT NULL COMMENT '直播截图地址',
  `status` smallint(2) DEFAULT '0' COMMENT '1为启用，0为未启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COMMENT='直播摄像头信息表';

-- ----------------------------
-- Table structure for tab_live_ugc
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_ugc`;
CREATE TABLE `tab_live_ugc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '主播的id',
  `q_uid` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '直播标题',
  `cover_image` varchar(255) DEFAULT NULL COMMENT '直播封面图片',
  `shot_image` varchar(255) DEFAULT NULL COMMENT ' 直播截图地址',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `content` varchar(100) DEFAULT NULL COMMENT '直播描述',
  `city` varchar(20) DEFAULT NULL COMMENT '地址信息',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '0为未开始，1为正在直播，2为删除，3为赛事进行中，暂时没在播，4为结束，5禁播',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `duration_time` int(11) DEFAULT NULL COMMENT '直播时长',
  `match_id` int(11) DEFAULT NULL COMMENT '赛事id,对应tab_sub_match表的id',
  `online_number` int(11) DEFAULT '0' COMMENT '线上实时在线总人数',
  `online_real_num` int(11) DEFAULT '0' COMMENT '线上实时真实人数',
  `support_num` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `total_visitor` int(11) DEFAULT NULL COMMENT '总在线人数',
  `type` int(2) DEFAULT '0' COMMENT '0为普通直播，1为pk直播，2为校园直播',
  `direction_type` int(2) DEFAULT '0' COMMENT '屏幕方向，0为横向，2为竖向',
  `accept_pk` int(2) NOT NULL DEFAULT '0' COMMENT '0：不接受pk，1：接受pk',
  `accept_pk_status` int(2) DEFAULT NULL COMMENT '真实pk状态',
  `pk_title` varchar(20) DEFAULT NULL COMMENT 'pk标题',
  `pk_content` varchar(1024) DEFAULT NULL COMMENT 'pk描述',
  `pk_duration` int(10) DEFAULT NULL COMMENT '设置的pk时长',
  `pk_status` int(2) DEFAULT '0' COMMENT '为0未pk，1为正在pk，2为正在处理pk请求中 4:结束',
  `sort` int(4) DEFAULT '0',
  `is_official` int(2) NOT NULL DEFAULT '0' COMMENT '是否为官方直播 1:是',
  `lon` varchar(10) DEFAULT NULL COMMENT '经度',
  `lat` varchar(10) DEFAULT NULL COMMENT '纬度',
  `hot_type` int(2) DEFAULT '0' COMMENT '1:置顶 2:热门 3:推荐 4:隐藏',
  `hot_starttime` datetime DEFAULT NULL COMMENT '热门开始时间',
  `hot_endtime` datetime DEFAULT NULL COMMENT '热门结束时间',
  `share_times` int(11) DEFAULT '0' COMMENT '分享次数',
  `comment_times` int(11) DEFAULT '0' COMMENT '聊天次数',
  `hls` varchar(255) DEFAULT NULL COMMENT '直播的m3u8地址',
  `file_name` varchar(255) DEFAULT NULL COMMENT '互动直播录制返回的文件ID',
  `file_error` varchar(1024) DEFAULT NULL,
  `file_src` varchar(255) DEFAULT NULL COMMENT '回放文件路径',
  `pk_theme_image` varchar(255) DEFAULT NULL COMMENT 'PK宣传图片',
  `pk_theme_url` varchar(255) DEFAULT NULL COMMENT 'PK专题页',
  `share_title` varchar(255) DEFAULT NULL,
  `share_content` varchar(255) DEFAULT NULL,
  `share_image` varchar(1024) DEFAULT NULL,
  `share_url` varchar(1024) DEFAULT NULL,
  `heartbeat_time` datetime DEFAULT NULL,
  `set_visitor_num_min` int(11) DEFAULT '0' COMMENT '设置水军数量最小值',
  `set_visitor_num_max` int(11) DEFAULT '0' COMMENT '设置水军最大值',
  `set_time` datetime DEFAULT NULL COMMENT '设置刷水军时间',
  `set_time_add` int(11) DEFAULT '0' COMMENT '设置的时间段（秒）',
  `refresh_visitor_num` int(11) DEFAULT '0' COMMENT '已刷水军数量',
  `is_freshing` int(2) DEFAULT '0' COMMENT '1 正在刷水军，0未刷',
  `float_visitor_num` int(11) DEFAULT '0' COMMENT '浮动减少的水军数，值为水军上限 - 实际水军数',
  `is_floating` int(2) DEFAULT '0' COMMENT '1 正在浮动水军，0未浮动',
  `refresh_total_min` int(11) DEFAULT '0' COMMENT '定时更新的水军最小值',
  `refresh_total_max` int(11) DEFAULT '0' COMMENT '定时更新的水军最大值',
  `err_msg` varchar(100) DEFAULT NULL COMMENT '错误码',
  `accept_pk_set` int(2) DEFAULT NULL COMMENT '主播进入直播间之后设置的是否允许pk的状态：1为允许，0为不允许。',
  `warning_count` int(11) DEFAULT '0' COMMENT '警告次数',
  `warning_time` datetime DEFAULT NULL COMMENT '最后一次警告时间',
  `confidence` varchar(255) DEFAULT NULL COMMENT '识别为黄图的置信度，范围0-100；normalScore, hotScore, pornScore的综合评分，confidence大于83定为疑似图片',
  `normalScore` double DEFAULT NULL COMMENT '图片为正常图片的评分',
  `hotScore` double DEFAULT NULL COMMENT '图片为性感图片的评分',
  `pornScore` double DEFAULT NULL COMMENT '图片为色情图片的评分',
  `check_msg` varchar(255) DEFAULT NULL COMMENT '预警内容',
  `stream_id` varchar(50) DEFAULT NULL COMMENT '直播流id',
  `up_stream` varchar(255) DEFAULT NULL COMMENT '推流地址',
  `rtmp_stream` varchar(255) DEFAULT NULL COMMENT 'rtmp拉流地址',
  `is_alive` int(2) DEFAULT '1' COMMENT '0为结束，1为正在直播',
  `is_hot` int(2) DEFAULT '0' COMMENT '0：常规，1：热门',
  `visitor_num` int(11) DEFAULT '0' COMMENT '访客人数',
  `fu_num_before` int(18) DEFAULT '0' COMMENT '开播前的服卡数',
  `fu_num` int(18) DEFAULT '0' COMMENT '该场直播获得的福卡数，直播结束后写入。',
  `replay_url` varchar(255) DEFAULT NULL COMMENT '重播url',
  PRIMARY KEY (`id`),
  KEY `idx_tab_live_ugc_uid` (`uid`) USING BTREE,
  KEY `ind_etime` (`end_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=518787 DEFAULT CHARSET=utf8mb4 COMMENT='ugc直播表';

-- ----------------------------
-- Table structure for tab_live_ugc_extend
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_ugc_extend`;
CREATE TABLE `tab_live_ugc_extend` (
  `id` int(11) NOT NULL,
  `is_lqrt` tinyint(2) DEFAULT '0' COMMENT 'is_low_quality_report_times：是否是低质量直播：1为是，0为否。',
  `is_back` tinyint(2) DEFAULT '0' COMMENT '是否切到了后台',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='直播表扩展';

-- ----------------------------
-- Table structure for tab_live_ugc_visitor
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_ugc_visitor`;
CREATE TABLE `tab_live_ugc_visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL COMMENT '直播id，对应tab_live_ugc的id',
  `auid` int(18) DEFAULT NULL COMMENT '观众的用户id',
  `buid` int(18) DEFAULT NULL COMMENT '主播的y用户id',
  `imei` varchar(50) DEFAULT NULL COMMENT '设备码',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '进入直播间的时间',
  `leave_time` datetime DEFAULT NULL COMMENT '退出直播房间时间',
  `is_moke` int(2) DEFAULT NULL COMMENT '是否是虚拟用户，1是虚拟用户，0不是虚拟用户',
  PRIMARY KEY (`id`,`create_time`),
  KEY `ind_liveid` (`live_id`),
  KEY `ind_auid` (`auid`),
  KEY `ind_cr` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=50586181 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT
/*!50100 PARTITION BY RANGE (TO_DAYS(create_time))
(PARTITION p_2016_07 VALUES LESS THAN (736511) ENGINE = InnoDB,
 PARTITION p_2016_08 VALUES LESS THAN (736542) ENGINE = InnoDB,
 PARTITION p_2016_09 VALUES LESS THAN (736573) ENGINE = InnoDB,
 PARTITION p_2016_10 VALUES LESS THAN (736603) ENGINE = InnoDB,
 PARTITION p_2016_11 VALUES LESS THAN (736634) ENGINE = InnoDB,
 PARTITION p_2016_12 VALUES LESS THAN (736664) ENGINE = InnoDB,
 PARTITION p_2017_01 VALUES LESS THAN (736695) ENGINE = InnoDB,
 PARTITION p_2017_02 VALUES LESS THAN (736726) ENGINE = InnoDB,
 PARTITION p_2017_03 VALUES LESS THAN (736754) ENGINE = InnoDB,
 PARTITION p_2017_04 VALUES LESS THAN (736785) ENGINE = InnoDB,
 PARTITION p_2017_05 VALUES LESS THAN (736815) ENGINE = InnoDB,
 PARTITION p_2017_06 VALUES LESS THAN (736846) ENGINE = InnoDB,
 PARTITION p_2017_07 VALUES LESS THAN (736876) ENGINE = InnoDB,
 PARTITION p_2017_08 VALUES LESS THAN (736907) ENGINE = InnoDB,
 PARTITION p_2017_09 VALUES LESS THAN (736938) ENGINE = InnoDB,
 PARTITION p_catch_all VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;

-- ----------------------------
-- Table structure for tab_live_ugc_visitor_analyze
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_ugc_visitor_analyze`;
CREATE TABLE `tab_live_ugc_visitor_analyze` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `live_id` int(11) DEFAULT NULL COMMENT '直播id，对应tab_live_ugc的id',
  `visitor_num` int(11) DEFAULT '0' COMMENT '此次直播的观众数',
  `create_time` datetime NOT NULL COMMENT '进入直播间的时间',
  `leave_time` datetime NOT NULL COMMENT '离开直播间的时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `live_id` (`live_id`),
  KEY `ind_cr` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=150822 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='直播真实观众数汇总';

-- ----------------------------
-- Table structure for tab_live_ugc_xuni
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_ugc_xuni`;
CREATE TABLE `tab_live_ugc_xuni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '主播的id',
  `q_uid` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '直播标题',
  `cover_image` varchar(255) DEFAULT NULL COMMENT '直播封面图片',
  `shot_image` varchar(255) DEFAULT NULL COMMENT ' 直播截图地址',
  `province` varchar(20) DEFAULT NULL COMMENT '省份',
  `content` varchar(100) DEFAULT NULL COMMENT '直播描述',
  `city` varchar(20) DEFAULT NULL COMMENT '地址信息',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '0为未开始，1为正在直播，2为删除，3为赛事进行中，暂时没在播，4为结束，5禁播',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `duration_time` int(11) DEFAULT NULL COMMENT '直播时长',
  `match_id` int(11) DEFAULT NULL COMMENT '赛事id,对应tab_sub_match表的id',
  `online_number` int(11) DEFAULT '0' COMMENT '线上实时在线总人数',
  `online_real_num` int(11) DEFAULT '0' COMMENT '线上实时真实人数',
  `support_num` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `total_visitor` int(11) DEFAULT NULL COMMENT '总在线人数',
  `type` int(2) DEFAULT '0' COMMENT '0为普通直播，1为pk直播，2为校园直播',
  `direction_type` int(2) DEFAULT '0' COMMENT '屏幕方向，0为横向，2为竖向',
  `accept_pk` int(2) NOT NULL DEFAULT '0' COMMENT '0：不接受pk，1：接受pk',
  `accept_pk_status` int(2) DEFAULT NULL COMMENT '真实pk状态',
  `pk_title` varchar(20) DEFAULT NULL COMMENT 'pk标题',
  `pk_content` varchar(1024) DEFAULT NULL COMMENT 'pk描述',
  `pk_duration` int(10) DEFAULT NULL COMMENT '设置的pk时长',
  `pk_status` int(2) DEFAULT '0' COMMENT '为0未pk，1为正在pk，2为正在处理pk请求中 4:结束',
  `sort` int(4) DEFAULT '0',
  `is_official` int(2) NOT NULL DEFAULT '0' COMMENT '是否为官方直播 1:是',
  `lon` varchar(10) DEFAULT NULL COMMENT '经度',
  `lat` varchar(10) DEFAULT NULL COMMENT '纬度',
  `hot_type` int(2) DEFAULT '0' COMMENT '1:置顶 2:热门 3:推荐 4:隐藏',
  `hot_starttime` datetime DEFAULT NULL COMMENT '热门开始时间',
  `hot_endtime` datetime DEFAULT NULL COMMENT '热门结束时间',
  `share_times` int(11) DEFAULT '0' COMMENT '分享次数',
  `comment_times` int(11) DEFAULT '0' COMMENT '聊天次数',
  `hls` varchar(255) DEFAULT NULL COMMENT '直播的m3u8地址',
  `file_name` varchar(255) DEFAULT NULL COMMENT '互动直播录制返回的文件ID',
  `file_error` varchar(1024) DEFAULT NULL,
  `file_src` varchar(255) DEFAULT NULL COMMENT '回放文件路径',
  `pk_theme_image` varchar(255) DEFAULT NULL COMMENT 'PK宣传图片',
  `pk_theme_url` varchar(255) DEFAULT NULL COMMENT 'PK专题页',
  `share_title` varchar(255) DEFAULT NULL,
  `share_content` varchar(255) DEFAULT NULL,
  `share_image` varchar(1024) DEFAULT NULL,
  `share_url` varchar(1024) DEFAULT NULL,
  `heartbeat_time` datetime DEFAULT NULL,
  `set_visitor_num_min` int(11) DEFAULT '0' COMMENT '设置水军数量最小值',
  `set_visitor_num_max` int(11) DEFAULT '0' COMMENT '设置水军最大值',
  `set_time` datetime DEFAULT NULL COMMENT '设置刷水军时间',
  `set_time_add` int(11) DEFAULT '0' COMMENT '设置的时间段（秒）',
  `refresh_visitor_num` int(11) DEFAULT '0' COMMENT '已刷水军数量',
  `is_freshing` int(2) DEFAULT '0' COMMENT '1 正在刷水军，0未刷',
  `float_visitor_num` int(11) DEFAULT '0' COMMENT '浮动减少的水军数，值为水军上限 - 实际水军数',
  `is_floating` int(2) DEFAULT '0' COMMENT '1 正在浮动水军，0未浮动',
  `refresh_total_min` int(11) DEFAULT '0' COMMENT '定时更新的水军最小值',
  `refresh_total_max` int(11) DEFAULT '0' COMMENT '定时更新的水军最大值',
  `err_msg` varchar(100) DEFAULT NULL COMMENT '错误码',
  `accept_pk_set` int(2) DEFAULT NULL COMMENT '主播进入直播间之后设置的是否允许pk的状态：1为允许，0为不允许。',
  `warning_count` int(11) DEFAULT '0' COMMENT '警告次数',
  `warning_time` datetime DEFAULT NULL COMMENT '最后一次警告时间',
  `confidence` varchar(255) DEFAULT NULL COMMENT '识别为黄图的置信度，范围0-100；normalScore, hotScore, pornScore的综合评分，confidence大于83定为疑似图片',
  `normalScore` double DEFAULT NULL COMMENT '图片为正常图片的评分',
  `hotScore` double DEFAULT NULL COMMENT '图片为性感图片的评分',
  `pornScore` double DEFAULT NULL COMMENT '图片为色情图片的评分',
  `check_msg` varchar(255) DEFAULT NULL COMMENT '预警内容',
  `stream_id` varchar(50) DEFAULT NULL COMMENT '直播流id',
  `up_stream` varchar(255) DEFAULT NULL COMMENT '推流地址',
  `rtmp_stream` varchar(255) DEFAULT NULL COMMENT 'rtmp拉流地址',
  `is_alive` int(2) DEFAULT '1' COMMENT '0为结束，1为正在直播',
  `is_hot` int(2) DEFAULT '0' COMMENT '0：常规，1：热门',
  `visitor_num` int(11) DEFAULT '0' COMMENT '访客人数',
  `fu_num_before` int(18) DEFAULT '0' COMMENT '开播前的服卡数',
  `fu_num` int(18) DEFAULT '0' COMMENT '该场直播获得的福卡数，直播结束后写入。',
  `replay_url` varchar(255) DEFAULT NULL COMMENT '重播url',
  PRIMARY KEY (`id`),
  KEY `idx_tab_live_ugc_uid` (`uid`) USING BTREE,
  KEY `ind_etime` (`end_time`)
) ENGINE=InnoDB AUTO_INCREMENT=197625 DEFAULT CHARSET=utf8mb4 COMMENT='ugc直播表';

-- ----------------------------
-- Table structure for tab_live_visitor
-- ----------------------------
DROP TABLE IF EXISTS `tab_live_visitor`;
CREATE TABLE `tab_live_visitor` (
  `live_id` int(11) DEFAULT NULL COMMENT '直播id',
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `active_time` datetime DEFAULT NULL COMMENT '活跃的时间',
  `open_id` varchar(50) DEFAULT NULL,
  `union_id` varchar(50) DEFAULT NULL,
  UNIQUE KEY `idx_luo_id` (`live_id`,`uid`,`open_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_log
-- ----------------------------
DROP TABLE IF EXISTS `tab_log`;
CREATE TABLE `tab_log` (
  `content` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for tab_logo_config
-- ----------------------------
DROP TABLE IF EXISTS `tab_logo_config`;
CREATE TABLE `tab_logo_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '水印名字',
  `url` varchar(255) DEFAULT NULL COMMENT '水印图片，全路径',
  `size` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT '0' COMMENT '状态，2为删除',
  `remark` varchar(20) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_logtest
-- ----------------------------
DROP TABLE IF EXISTS `tab_logtest`;
CREATE TABLE `tab_logtest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for tab_lottery_record
-- ----------------------------
DROP TABLE IF EXISTS `tab_lottery_record`;
CREATE TABLE `tab_lottery_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `lottery_time` datetime DEFAULT NULL COMMENT '抽奖时间',
  `lottery_id` int(4) DEFAULT NULL COMMENT '区分抽奖活动1为搞笑达人秀的抽奖活动',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COMMENT='用户抽奖记录';

-- ----------------------------
-- Table structure for tab_lottery_share_log
-- ----------------------------
DROP TABLE IF EXISTS `tab_lottery_share_log`;
CREATE TABLE `tab_lottery_share_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `lottery_id` int(4) DEFAULT NULL COMMENT '区分抽奖活动1为搞笑达人秀的抽奖活动',
  `share_time` datetime DEFAULT NULL COMMENT '分享时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='记录抽奖页面的微信分享日志';

-- ----------------------------
-- Table structure for tab_lottery_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tab_lottery_user_info`;
CREATE TABLE `tab_lottery_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `mobile` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `lottery_id` int(4) DEFAULT NULL COMMENT '区分抽奖活动1为高校达人秀的抽奖活动',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户中奖后，记录用户信息';

-- ----------------------------
-- Table structure for tab_lottery_win
-- ----------------------------
DROP TABLE IF EXISTS `tab_lottery_win`;
CREATE TABLE `tab_lottery_win` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `prize_type` int(2) DEFAULT NULL COMMENT '奖品类型',
  `lottery_id` int(4) DEFAULT NULL COMMENT '区分抽奖活动1为高校达人秀的抽奖活动',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户中奖记录表';

-- ----------------------------
-- Table structure for tab_lqrt
-- ----------------------------
DROP TABLE IF EXISTS `tab_lqrt`;
CREATE TABLE `tab_lqrt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imei` varchar(50) DEFAULT NULL COMMENT '设备码',
  `live_id` int(8) DEFAULT NULL COMMENT '直播id',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153149 DEFAULT CHARSET=utf8mb4 COMMENT='低质量直播上报详情表';

-- ----------------------------
-- Table structure for tab_lunbo
-- ----------------------------
DROP TABLE IF EXISTS `tab_lunbo`;
CREATE TABLE `tab_lunbo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `related_id` int(11) DEFAULT NULL COMMENT '赛事或者活动相关的id(关联赛事时使用系列赛事的父id)',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` varchar(255) DEFAULT NULL COMMENT '类型1：app轮播中显示   2：app弹出广告中显示',
  `type2` varchar(4) DEFAULT NULL COMMENT '1：视频，2：活动，3：赛事，4：话题，5：系统消息，6：异地登录，7：跳转h5，8：跳转赛事宣传页，9：圈子，10：直播，11：跳获奖名单，12：跳MV，18：ugc直播',
  `status` varchar(255) DEFAULT NULL COMMENT '0:生效 1:无效',
  `sort` int(4) DEFAULT NULL COMMENT '排序字段',
  `image_narrow` varchar(255) DEFAULT NULL COMMENT '图片URL-窄（新版本使用）',
  `image` varchar(255) DEFAULT NULL COMMENT '图片URL',
  `href_url` varchar(255) DEFAULT NULL COMMENT '点击跳转URL',
  `share_url` varchar(255) DEFAULT NULL COMMENT '分享URL',
  `share_title` varchar(255) DEFAULT NULL COMMENT '分享标题',
  `share_memo` varchar(255) DEFAULT NULL COMMENT '分享描述',
  `share_image` varchar(255) DEFAULT NULL COMMENT '分享图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4660 DEFAULT CHARSET=utf8mb4 COMMENT='图片轮播表';

-- ----------------------------
-- Table structure for tab_match_h5
-- ----------------------------
DROP TABLE IF EXISTS `tab_match_h5`;
CREATE TABLE `tab_match_h5` (
  `id` int(11) NOT NULL,
  `match_id` int(11) DEFAULT NULL COMMENT '赛事id,对应tab_sub_match表的match_id',
  `page_title` varchar(20) DEFAULT NULL COMMENT '页面标题',
  `content` varchar(500) DEFAULT NULL COMMENT '赛事规则',
  `image_url` varchar(255) DEFAULT NULL COMMENT '赛事宣传页上方图片',
  `share_title` varchar(255) DEFAULT NULL,
  `share_content` varchar(255) DEFAULT NULL,
  `share_url` varchar(255) DEFAULT NULL,
  `share_image` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '2为删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='赛事专题页h5';

-- ----------------------------
-- Table structure for tab_match_winers
-- ----------------------------
DROP TABLE IF EXISTS `tab_match_winers`;
CREATE TABLE `tab_match_winers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_match_id` int(18) DEFAULT NULL COMMENT '赛事id',
  `uid` int(18) DEFAULT NULL,
  `prize_name` varchar(20) DEFAULT NULL COMMENT '获得的奖项名字',
  `prize_image` varchar(256) DEFAULT NULL COMMENT '奖项图片全路径，若有，app端显示图片，没有则显示prize_name的值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_media
-- ----------------------------
DROP TABLE IF EXISTS `tab_media`;
CREATE TABLE `tab_media` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `user_id` bigint(18) DEFAULT NULL,
  `status` smallint(2) DEFAULT '0' COMMENT '视频pk的状态   0:未审核 1：已审核 2：已删除 ',
  `create_time` datetime DEFAULT NULL,
  `media_url` varchar(256) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `cnumber` bigint(18) DEFAULT '0' COMMENT '评论数',
  `pnumber` bigint(18) DEFAULT '0' COMMENT '点赞数',
  `bnumber` bigint(18) DEFAULT '0' COMMENT '播放次数',
  `rnumber` bigint(18) DEFAULT '0' COMMENT '举报数',
  `content` varchar(4096) DEFAULT NULL,
  `media_duration` int(11) DEFAULT NULL COMMENT '视频时长',
  `is_moke` smallint(2) DEFAULT '0' COMMENT '是否模拟视频 0-真实，1-模拟',
  `match_hot` int(11) DEFAULT '0' COMMENT '不服来战精选视频，0默认1精选',
  `hot` smallint(2) DEFAULT '0' COMMENT 'HOT 视频 默认0 1是HOT 2是置顶，以后会有3,4...',
  `hot_img` varchar(256) DEFAULT NULL,
  `tag_id` varchar(256) DEFAULT NULL,
  `images_url` varchar(600) DEFAULT NULL,
  `isdeal` smallint(2) DEFAULT '0' COMMENT '是否刷过评论 0:未处理 1：已处理',
  `activity_id` bigint(18) DEFAULT NULL COMMENT '活动id',
  `back_color` varchar(20) DEFAULT NULL,
  `match_id` bigint(18) DEFAULT NULL COMMENT '赛事id',
  `checkNew` int(11) DEFAULT '0' COMMENT '检查是否为新视频',
  `atlist` varchar(255) DEFAULT NULL,
  `is_acting` int(1) NOT NULL DEFAULT '0' COMMENT '0:非表演技视频 1:表演技视频',
  `ifcheck` int(11) DEFAULT '0' COMMENT '0：初始状态，1,鉴定完成',
  `checkVideoFresh` int(11) DEFAULT '0' COMMENT '判断播放是否刷：0不刷1开刷',
  `set_pnumber` int(11) DEFAULT '0',
  `total_pnumber` int(11) DEFAULT '0',
  `today_pnumber` int(11) DEFAULT '0',
  `set_bnumber` int(11) DEFAULT '0' COMMENT '设置的用户播放次数',
  `total_bnumber` int(11) DEFAULT '0' COMMENT '累计的用户播放次数',
  `today_bnumber` int(11) DEFAULT '0' COMMENT '每天实际的用户播放次数',
  `checkPraiseFresh` int(11) DEFAULT '0' COMMENT '判断点赞是否发：0不刷1开刷',
  `comm_state` tinyint(4) DEFAULT '0' COMMENT '通用评论状态，开刷为0，停刷为1',
  `quality_level` varchar(2) DEFAULT NULL COMMENT '视频质量等级ABCD。A最高',
  `quality_time` datetime DEFAULT NULL COMMENT '视频评级时间',
  `col_id` tinyint(4) DEFAULT NULL COMMENT '专栏id，当视频的quality_level="S"时，该id不允许为Null',
  `rec_sort` int(11) DEFAULT '0' COMMENT '主推排序',
  `reverse_sort` mediumint(9) DEFAULT NULL COMMENT '对主键取负数',
  `support_download` tinyint(2) DEFAULT '1' COMMENT '1为允许下载，0为不允许下载',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `ind_match_id` (`match_id`),
  KEY `ind_status` (`status`),
  KEY `ind_c` (`create_time`),
  KEY `ind_rev_sort` (`reverse_sort`)
) ENGINE=InnoDB AUTO_INCREMENT=186627 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='视频基本信息';

-- ----------------------------
-- Table structure for tab_media_comment
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_comment`;
CREATE TABLE `tab_media_comment` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `media_id` bigint(18) DEFAULT NULL,
  `auser_id` bigint(18) DEFAULT NULL COMMENT '发表评论的用户id',
  `buser_id` bigint(18) DEFAULT NULL COMMENT '被回复我用户id',
  `cuser_id` varchar(256) DEFAULT NULL,
  `comment_id` bigint(18) DEFAULT NULL COMMENT '被回复的评论id',
  `type` smallint(2) DEFAULT NULL COMMENT '评论类型  0：评论，1：回复，2：@',
  `status` smallint(2) DEFAULT '0',
  `content` varchar(400) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `is_judge_comment` smallint(2) DEFAULT '0' COMMENT '是否是评委评论，0为普通评论，1为评委评论',
  `check_code` int(11) DEFAULT '1' COMMENT '1,"正常内容，通过" 2,"垃圾内容，删除" 3,"嫌疑内容" 4,"内容审核失败"',
  PRIMARY KEY (`id`),
  KEY `ind_tab_media_comment_auser_id` (`auser_id`),
  KEY `ind_tab_media_comment_create_time` (`create_time`),
  KEY `ind_media_id` (`media_id`),
  KEY `ind_comp` (`media_id`,`content`(191)),
  KEY `ind_auser` (`auser_id`),
  KEY `ind_buser` (`buser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2329447 DEFAULT CHARSET=utf8mb4 COMMENT='视频评论信息';

-- ----------------------------
-- Table structure for tab_media_comment_add
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_comment_add`;
CREATE TABLE `tab_media_comment_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `media_id` int(11) NOT NULL DEFAULT '0' COMMENT '视频ID',
  `content` varchar(1200) DEFAULT NULL COMMENT '评论内容',
  `status` int(11) DEFAULT '0' COMMENT '是否已使用，0未使用，1已使用',
  `create_time` datetime DEFAULT NULL COMMENT '生成时间',
  `addUser` varchar(255) DEFAULT NULL COMMENT '评论添加人',
  `state` tinyint(4) DEFAULT '0' COMMENT '状态区分，1当天刷，0未刷，2结束',
  `update_time` datetime DEFAULT NULL COMMENT '视频更新时间，用于判断视频是不是使用了',
  PRIMARY KEY (`id`),
  KEY `ind_createtime` (`create_time`),
  KEY `ind_update_time` (`update_time`),
  KEY `ind_` (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1025715 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='刷视频评论辅助表';

-- ----------------------------
-- Table structure for tab_media_comment_shua
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_comment_shua`;
CREATE TABLE `tab_media_comment_shua` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_media_comment_shua_open
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_comment_shua_open`;
CREATE TABLE `tab_media_comment_shua_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `media_info` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_media_copy
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_copy`;
CREATE TABLE `tab_media_copy` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `user_id` bigint(18) DEFAULT NULL,
  `status` smallint(2) DEFAULT '0' COMMENT '视频pk的状态   0:未审核 1：已审核 2：已删除 ',
  `create_time` datetime DEFAULT NULL,
  `media_url` varchar(256) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `cnumber` bigint(18) DEFAULT '0' COMMENT '评论数',
  `pnumber` bigint(18) DEFAULT '0' COMMENT '点赞数',
  `bnumber` bigint(18) DEFAULT '0' COMMENT '播放次数',
  `rnumber` bigint(18) DEFAULT '0' COMMENT '举报数',
  `content` varchar(4096) DEFAULT NULL,
  `media_duration` int(11) DEFAULT NULL COMMENT '视频时长',
  `is_moke` smallint(2) DEFAULT '0' COMMENT '是否模拟视频 0-真实，1-模拟',
  `match_hot` int(11) DEFAULT '0' COMMENT '不服来战精选视频，0默认1精选',
  `hot` smallint(2) DEFAULT '0' COMMENT 'HOT 视频 默认0 1是HOT 2是置顶，以后会有3,4...',
  `hot_img` varchar(256) DEFAULT NULL,
  `tag_id` varchar(256) DEFAULT NULL,
  `images_url` varchar(600) DEFAULT NULL,
  `isdeal` smallint(2) DEFAULT '0' COMMENT '是否刷过评论 0:未处理 1：已处理',
  `activity_id` bigint(18) DEFAULT NULL COMMENT '活动id',
  `back_color` varchar(20) DEFAULT NULL,
  `match_id` bigint(18) DEFAULT NULL COMMENT '赛事id',
  `checkNew` int(11) DEFAULT '0' COMMENT '检查是否为新视频',
  `atlist` varchar(255) DEFAULT NULL,
  `is_acting` int(1) NOT NULL DEFAULT '0' COMMENT '0:非表演技视频 1:表演技视频',
  `ifcheck` int(11) DEFAULT '0' COMMENT '0：初始状态，1,鉴定完成',
  `checkVideoFresh` int(11) DEFAULT '0' COMMENT '判断播放是否刷：0不刷1开刷',
  `set_pnumber` int(11) DEFAULT '0',
  `total_pnumber` int(11) DEFAULT '0',
  `today_pnumber` int(11) DEFAULT '0',
  `set_bnumber` int(11) DEFAULT '0' COMMENT '设置的用户播放次数',
  `total_bnumber` int(11) DEFAULT '0' COMMENT '累计的用户播放次数',
  `today_bnumber` int(11) DEFAULT '0' COMMENT '每天实际的用户播放次数',
  `checkPraiseFresh` int(11) DEFAULT '0' COMMENT '判断点赞是否发：0不刷1开刷',
  `comm_state` tinyint(4) DEFAULT '0' COMMENT '通用评论状态，开刷为0，停刷为1',
  `quality_level` varchar(2) DEFAULT NULL COMMENT '视频质量等级ABCD。A最高',
  `quality_time` datetime DEFAULT NULL COMMENT '视频评级时间',
  `col_id` tinyint(4) DEFAULT NULL COMMENT '专栏id，当视频的quality_level="S"时，该id不允许为Null',
  `rec_sort` int(11) DEFAULT '0' COMMENT '主推排序',
  `reverse_sort` mediumint(9) DEFAULT NULL COMMENT '对主键取负数',
  `support_download` tinyint(2) DEFAULT '1' COMMENT '1为允许下载，0为不允许下载',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `ind_match_id` (`match_id`),
  KEY `ind_status` (`status`),
  KEY `ind_c` (`create_time`),
  KEY `ind_rev_sort` (`reverse_sort`)
) ENGINE=InnoDB AUTO_INCREMENT=110763 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='视频基本信息';

-- ----------------------------
-- Table structure for tab_media_recommend
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_recommend`;
CREATE TABLE `tab_media_recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(18) DEFAULT NULL COMMENT '视频id',
  `image_url` varchar(256) DEFAULT NULL COMMENT '推荐视频时的视频封面',
  `title` varchar(20) DEFAULT NULL COMMENT '推荐视频时的视频标题',
  `type` int(2) NOT NULL COMMENT '推荐类型：1为今日主推视频',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=942 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_media_recommend_tmp
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_recommend_tmp`;
CREATE TABLE `tab_media_recommend_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `media_id` int(18) DEFAULT NULL COMMENT '视频id',
  `image_url` varchar(256) DEFAULT NULL COMMENT '推荐视频时的视频封面',
  `title` varchar(20) DEFAULT NULL COMMENT '推荐视频时的视频标题',
  `type` int(2) NOT NULL COMMENT '推荐类型：1为今日主推视频',
  `create_time` datetime NOT NULL COMMENT '预计时间',
  PRIMARY KEY (`id`),
  KEY `ind_` (`media_id`),
  KEY `ind_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=942 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_media_record
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_record`;
CREATE TABLE `tab_media_record` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `auser_id` bigint(18) DEFAULT NULL,
  `buser_id` bigint(18) DEFAULT NULL,
  `media_id` bigint(18) DEFAULT NULL,
  `into_time` datetime DEFAULT NULL,
  `leave_time` datetime DEFAULT NULL,
  `stay_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_` (`into_time`),
  KEY `ind_into_time` (`into_time`),
  KEY `ind_auser` (`auser_id`),
  KEY `ind_buser` (`buser_id`),
  KEY `ind_m` (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18624809 DEFAULT CHARSET=utf8mb4 COMMENT='视频播放记录';

-- ----------------------------
-- Table structure for tab_media_related
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_related`;
CREATE TABLE `tab_media_related` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `media_id` bigint(20) NOT NULL COMMENT '视频ID',
  `special_tag` tinyint(4) DEFAULT '0' COMMENT '特殊标记：0普通，1特殊',
  PRIMARY KEY (`id`),
  KEY `media_related__media_id` (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='视频内容相关表';

-- ----------------------------
-- Table structure for tab_media_report
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_report`;
CREATE TABLE `tab_media_report` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `auser_id` bigint(18) DEFAULT NULL,
  `buser_id` bigint(18) DEFAULT NULL,
  `media_id` bigint(18) DEFAULT NULL,
  `status` smallint(2) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2849 DEFAULT CHARSET=utf8mb4 COMMENT='视频举报记录关联表';

-- ----------------------------
-- Table structure for tab_media_sex
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_sex`;
CREATE TABLE `tab_media_sex` (
  `id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `review` varchar(20) DEFAULT NULL,
  `ifcheck` int(11) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_media_share
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_share`;
CREATE TABLE `tab_media_share` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `auser_id` bigint(18) DEFAULT NULL,
  `buser_id` bigint(18) DEFAULT NULL,
  `related_id` bigint(18) DEFAULT NULL,
  `origin` varchar(64) DEFAULT NULL,
  `content` varchar(256) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `type` smallint(4) NOT NULL COMMENT '分享类型：1为视频，2为话题，3为活动',
  PRIMARY KEY (`id`),
  KEY `ind_bu` (`buser_id`),
  KEY `ind_au` (`auser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7389 DEFAULT CHARSET=utf8mb4 COMMENT='视频分享表';

-- ----------------------------
-- Table structure for tab_media_support
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_support`;
CREATE TABLE `tab_media_support` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `media_id` bigint(18) DEFAULT NULL,
  `auser_id` bigint(18) DEFAULT NULL,
  `buser_id` bigint(18) DEFAULT NULL,
  `status` smallint(2) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tab_media_support_auser_id` (`auser_id`),
  KEY `idx_media_id` (`media_id`),
  KEY `ind_media_support` (`create_time`),
  KEY `ind_buser_id` (`buser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13015415 DEFAULT CHARSET=utf8mb4 COMMENT='视频点赞信息';

-- ----------------------------
-- Table structure for tab_media_temp
-- ----------------------------
DROP TABLE IF EXISTS `tab_media_temp`;
CREATE TABLE `tab_media_temp` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `user_id` bigint(18) DEFAULT NULL,
  `status` smallint(2) DEFAULT '0' COMMENT '视频pk的状态   -1:未审核 1：已审核 2：已删除 ',
  `status_bak` smallint(2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `media_url` varchar(256) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `cnumber` bigint(18) DEFAULT '0' COMMENT '评论数',
  `pnumber` bigint(18) DEFAULT '0' COMMENT '点赞数',
  `bnumber` bigint(18) DEFAULT '0' COMMENT '播放次数',
  `rnumber` bigint(18) DEFAULT '0' COMMENT '举报数',
  `content` varchar(4096) DEFAULT NULL,
  `media_duration` int(11) DEFAULT NULL COMMENT '视频时长',
  `is_moke` smallint(2) DEFAULT '0' COMMENT '是否模拟视频 0-真实，1-模拟',
  `match_hot` int(11) DEFAULT NULL,
  `hot` smallint(2) DEFAULT '0' COMMENT 'HOT 视频 默认0 1是HOT 2是置顶，以后会有3,4...',
  `hot_img` varchar(256) DEFAULT NULL,
  `tag_id` varchar(256) DEFAULT NULL,
  `images_url` varchar(600) DEFAULT NULL,
  `isdeal` smallint(2) DEFAULT '0' COMMENT '是否刷过评论 0:未处理 1：已处理',
  `activity_id` bigint(18) DEFAULT NULL COMMENT '活动id',
  `back_color` varchar(20) DEFAULT NULL,
  `match_id` bigint(18) DEFAULT NULL COMMENT '赛事id',
  `checkNew` int(11) DEFAULT '0' COMMENT '检查是否为新视频',
  `atlist` varchar(255) DEFAULT NULL,
  `is_acting` int(1) NOT NULL DEFAULT '0',
  `ifcheck` int(11) DEFAULT '0' COMMENT '0：初始状态，1,鉴定完成',
  `checkVideoFresh` int(11) DEFAULT '0' COMMENT '判断播放是否刷：0不刷1开刷',
  `set_pnumber` int(11) DEFAULT '0',
  `total_pnumber` int(11) DEFAULT '0',
  `today_pnumber` int(11) DEFAULT '0',
  `set_bnumber` int(11) DEFAULT '0' COMMENT '设置的用户播放次数',
  `total_bnumber` int(11) DEFAULT '0' COMMENT '累计的用户播放次数',
  `today_bnumber` int(11) DEFAULT '0' COMMENT '每天实际的用户播放次数',
  `check_refuse` int(2) DEFAULT NULL COMMENT '1为审核不通过',
  `checkPraiseFresh` int(11) DEFAULT '0' COMMENT '判断点赞是否发：0不刷1开刷',
  `support_download` tinyint(2) DEFAULT '1' COMMENT '1为允许下载，0为不允许下载',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `ind_match_id` (`match_id`)
) ENGINE=InnoDB AUTO_INCREMENT=179535 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='视频临时表信息';

-- ----------------------------
-- Table structure for tab_music
-- ----------------------------
DROP TABLE IF EXISTS `tab_music`;
CREATE TABLE `tab_music` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(1024) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `url` varchar(1024) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_music_geshou
-- ----------------------------
DROP TABLE IF EXISTS `tab_music_geshou`;
CREATE TABLE `tab_music_geshou` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `crt_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_music_list
-- ----------------------------
DROP TABLE IF EXISTS `tab_music_list`;
CREATE TABLE `tab_music_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songType` varchar(20) NOT NULL COMMENT '音乐类目，以‘,’隔开',
  `singerId` varchar(50) NOT NULL,
  `uid` varchar(64) NOT NULL,
  `filePath` varchar(200) NOT NULL,
  `sysParamValueCode` varchar(20) NOT NULL,
  `singerName` varchar(100) NOT NULL,
  `parentSongId` varchar(20) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `chorusCount` int(11) NOT NULL,
  `tags` varchar(20) NOT NULL,
  `fileSize` int(11) NOT NULL,
  `attention` int(11) NOT NULL,
  `singerImgPath` varchar(100) NOT NULL,
  `guide` varchar(10) NOT NULL,
  `songName` varchar(100) NOT NULL,
  `lyricPath` varchar(200) NOT NULL,
  `zipPath` varchar(200) DEFAULT NULL COMMENT '音乐、歌词压缩后zip文件的七牛地址',
  `zipSize` int(11) DEFAULT NULL COMMENT 'zip文件大小',
  `hot` tinyint(4) DEFAULT '0' COMMENT '熱門字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind_music_list_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=201925 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_music_tag
-- ----------------------------
DROP TABLE IF EXISTS `tab_music_tag`;
CREATE TABLE `tab_music_tag` (
  `uid` varchar(64) NOT NULL,
  `deletedDate` date NOT NULL,
  `inUseFlag` tinyint(4) NOT NULL,
  `code` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `site` tinyint(4) NOT NULL,
  `source` tinyint(4) NOT NULL,
  `sysParamCode` varchar(20) NOT NULL,
  `descriptions` varchar(4000) NOT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` varchar(50) NOT NULL,
  `deletedBy` varchar(50) NOT NULL,
  `deletedFlag` tinyint(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_mv
-- ----------------------------
DROP TABLE IF EXISTS `tab_mv`;
CREATE TABLE `tab_mv` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(1024) DEFAULT NULL,
  `title` varchar(1024) DEFAULT NULL,
  `alias` varchar(1024) DEFAULT NULL,
  `name` varchar(1024) DEFAULT NULL COMMENT 'Mv名称',
  `folder` varchar(255) DEFAULT NULL COMMENT '文件夹名称',
  `pathn` varchar(255) DEFAULT NULL COMMENT '未选择图标',
  `pathp` varchar(255) DEFAULT NULL COMMENT '选择图标',
  `pathn_url` varchar(1024) DEFAULT NULL,
  `pathp_url` varchar(1024) NOT NULL,
  `pathn_size` int(11) DEFAULT NULL COMMENT '未选择图标大小',
  `pathp_size` int(11) DEFAULT NULL COMMENT '选择图标大小',
  `aac` varchar(255) DEFAULT NULL COMMENT '音乐文件名称',
  `bg_aac` varchar(255) DEFAULT NULL COMMENT '背景音乐',
  `mv_zip` varchar(255) DEFAULT NULL,
  `version` varchar(48) DEFAULT NULL,
  `status` int(2) DEFAULT '0' COMMENT '0为正常 2为删除',
  `type` int(2) NOT NULL DEFAULT '0',
  `sort` int(2) DEFAULT NULL COMMENT '排序，倒序',
  `mv_size` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_mv_paths
-- ----------------------------
DROP TABLE IF EXISTS `tab_mv_paths`;
CREATE TABLE `tab_mv_paths` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `mv_id` bigint(18) DEFAULT NULL COMMENT '所属mvid',
  `key` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `value` varchar(255) DEFAULT NULL COMMENT '文件下载地址',
  `size` int(11) DEFAULT NULL COMMENT '文件大小',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_operation_kpi
-- ----------------------------
DROP TABLE IF EXISTS `tab_operation_kpi`;
CREATE TABLE `tab_operation_kpi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `create_time` date DEFAULT NULL COMMENT '统计日期',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `truth_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `new_media` smallint(6) DEFAULT '0' COMMENT '今日新视频数',
  `new_user` smallint(6) DEFAULT '0' COMMENT '今日注册用户',
  `uncomment` smallint(6) DEFAULT '0' COMMENT '评论数目，为了不改动程序，暂时保留原先的uncomment字段',
  `unattention` smallint(6) DEFAULT '0' COMMENT '未关注数',
  `upload_media` smallint(6) DEFAULT '0' COMMENT '该用户上传视频',
  `state` tinyint(4) DEFAULT '0' COMMENT '0按天，1按周',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind_c` (`create_time`,`user_id`,`truth_name`,`state`)
) ENGINE=InnoDB AUTO_INCREMENT=2712525 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='运营kpi表';

-- ----------------------------
-- Table structure for tab_parent_match
-- ----------------------------
DROP TABLE IF EXISTS `tab_parent_match`;
CREATE TABLE `tab_parent_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '赛事名',
  `media_url` varchar(256) DEFAULT NULL COMMENT '赛事宣传视频地址',
  `image_url` varchar(256) DEFAULT NULL COMMENT '赛事宣传视频缩略图地址',
  `width` smallint(6) DEFAULT NULL,
  `height` smallint(6) DEFAULT NULL,
  `current_sub_match` int(18) DEFAULT NULL,
  `content` varchar(1024) DEFAULT NULL COMMENT '赛事描述',
  `view_count` int(18) DEFAULT NULL COMMENT '赛事浏览次数',
  `status` int(2) DEFAULT NULL COMMENT '赛事状态0未开始1正在进行2删除4:结束',
  `type` int(2) DEFAULT NULL,
  `sort` smallint(4) DEFAULT NULL COMMENT '排序顺序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_parent_match_config
-- ----------------------------
DROP TABLE IF EXISTS `tab_parent_match_config`;
CREATE TABLE `tab_parent_match_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_match_id` int(18) NOT NULL COMMENT '大赛事id',
  `prize_name` varchar(20) DEFAULT NULL,
  `prize_content` varchar(100) DEFAULT NULL,
  `media_id` int(18) DEFAULT NULL COMMENT '视频表的id',
  `type` varchar(20) NOT NULL COMMENT '配置类型：‘prize’为奖品设置，‘media’为精选视频',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_pk_light
-- ----------------------------
DROP TABLE IF EXISTS `tab_pk_light`;
CREATE TABLE `tab_pk_light` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_id` int(8) DEFAULT NULL COMMENT '对应tba_gpk_plan表的id',
  `min` int(11) DEFAULT NULL COMMENT '报名者的id',
  `max` varchar(255) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0' COMMENT '0正常，1删除',
  `light_open_num` int(11) DEFAULT NULL COMMENT '已亮灯的数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_proposal
-- ----------------------------
DROP TABLE IF EXISTS `tab_proposal`;
CREATE TABLE `tab_proposal` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '对应tab_user标配的id',
  `contact` varchar(64) DEFAULT NULL,
  `content` varchar(256) DEFAULT NULL,
  `status` smallint(2) DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COMMENT='建议表';

-- ----------------------------
-- Table structure for tab_publish_message
-- ----------------------------
DROP TABLE IF EXISTS `tab_publish_message`;
CREATE TABLE `tab_publish_message` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL,
  `cid` varchar(256) DEFAULT NULL,
  `content` varchar(512) DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '0:未发送 1:已发送(暂未使用)',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '1:全推  0:个推',
  `create_time` datetime DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `message_type` int(2) DEFAULT '5' COMMENT '消息类型，默认为5。目前支持类型5和15。5：普通消息，15：他人空间。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6751 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_publish_message_log
-- ----------------------------
DROP TABLE IF EXISTS `tab_publish_message_log`;
CREATE TABLE `tab_publish_message_log` (
  `id` int(18) NOT NULL AUTO_INCREMENT,
  `cid` varchar(255) DEFAULT NULL COMMENT '个推推送用户Cid',
  `content` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL COMMENT '推送时间',
  `type` int(2) DEFAULT '0' COMMENT '0:个推 1:全推',
  `ret` varchar(255) DEFAULT NULL COMMENT '返回结果',
  `status` int(2) DEFAULT NULL COMMENT '0:失败 1:成功',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2437 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_publish_message_open_log
-- ----------------------------
DROP TABLE IF EXISTS `tab_publish_message_open_log`;
CREATE TABLE `tab_publish_message_open_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publish_id` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141393 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_quan_rank
-- ----------------------------
DROP TABLE IF EXISTS `tab_quan_rank`;
CREATE TABLE `tab_quan_rank` (
  `uid` int(18) NOT NULL COMMENT '用户id',
  `tag_id` int(18) NOT NULL DEFAULT '0' COMMENT '圈子id',
  `pnumber` int(18) DEFAULT '0' COMMENT '点赞数',
  `hisnumber` int(18) DEFAULT '0' COMMENT '历史点赞总数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='圈子排行榜';

-- ----------------------------
-- Table structure for tab_reckon_config
-- ----------------------------
DROP TABLE IF EXISTS `tab_reckon_config`;
CREATE TABLE `tab_reckon_config` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `pnumber` int(11) DEFAULT '0' COMMENT '热门点赞数',
  `protion` varchar(32) DEFAULT NULL,
  `hot_number` int(11) DEFAULT NULL COMMENT '一页HOT展现几个',
  `rm_days` int(11) DEFAULT NULL COMMENT '热门视频随机多少天范围内的数据',
  `nm_days` int(11) DEFAULT NULL COMMENT '新视频随机多少天范围内的数据',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='算法-配置表[BASIC]';

-- ----------------------------
-- Table structure for tab_reckon_repeat
-- ----------------------------
DROP TABLE IF EXISTS `tab_reckon_repeat`;
CREATE TABLE `tab_reckon_repeat` (
  `user_id` bigint(18) NOT NULL COMMENT '用户ID',
  `ids` longtext CHARACTER SET utf8 COMMENT '刷视频的ID记录',
  `tag_id` bigint(18) NOT NULL COMMENT '模块(刷了哪个模块的视频)',
  `record_time` datetime NOT NULL COMMENT '记录时间',
  `imei` varchar(64) DEFAULT NULL COMMENT '设备码',
  UNIQUE KEY `idx_utid` (`user_id`,`tag_id`,`imei`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='算法-记录用户刷视频记录';

-- ----------------------------
-- Table structure for tab_red_packet
-- ----------------------------
DROP TABLE IF EXISTS `tab_red_packet`;
CREATE TABLE `tab_red_packet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rpp_id` int(8) DEFAULT NULL COMMENT '对应tab_red_packet_performance表的id',
  `status` tinyint(2) DEFAULT NULL COMMENT '0为初始化，1为已关联用户，2已被领走',
  `coin` int(8) DEFAULT NULL COMMENT '红包金额',
  `code` varchar(10) DEFAULT NULL COMMENT '红包领取码（随机生成）',
  `create_time` datetime DEFAULT NULL COMMENT '红包创建时间',
  `type` tinyint(2) DEFAULT NULL COMMENT '1为抢的红包，2为分享红包',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `imei` varchar(50) DEFAULT NULL COMMENT '设备码',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118392 DEFAULT CHARSET=utf8mb4 COMMENT='红包记录表';

-- ----------------------------
-- Table structure for tab_red_packet_performance
-- ----------------------------
DROP TABLE IF EXISTS `tab_red_packet_performance`;
CREATE TABLE `tab_red_packet_performance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL COMMENT '活动开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '活动结束时间',
  `group_id` int(11) DEFAULT NULL COMMENT '该场次红包活动，是属于哪一组活动，1是国庆红包，2是pk直播间爆灯红包',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `batch_no` varchar(255) DEFAULT NULL COMMENT '红包批次号(爆灯红包批次生成规则：直播id-0左1右-灯数，如：29487-1-3)',
  `live_id` int(8) DEFAULT NULL COMMENT '红包直播间的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4 COMMENT='红包活动场次表';

-- ----------------------------
-- Table structure for tab_relation_contacts
-- ----------------------------
DROP TABLE IF EXISTS `tab_relation_contacts`;
CREATE TABLE `tab_relation_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `f_name` varchar(10) DEFAULT NULL COMMENT '通讯录好友姓名',
  `f_mobile` varchar(11) DEFAULT NULL COMMENT '通讯录好友号码',
  `has_in_app` int(1) DEFAULT '0' COMMENT '0为非app用户，1为app用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4161413 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_relation_weibo
-- ----------------------------
DROP TABLE IF EXISTS `tab_relation_weibo`;
CREATE TABLE `tab_relation_weibo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `wb_id` varchar(20) DEFAULT NULL COMMENT '好友的微博id',
  `wb_name` varchar(10) DEFAULT NULL COMMENT '好友的微博昵称',
  `avatars_url` varchar(255) DEFAULT NULL COMMENT '好友的微博头像url',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`),
  KEY `ind_wb_id` (`wb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1489927 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_school_group
-- ----------------------------
DROP TABLE IF EXISTS `tab_school_group`;
CREATE TABLE `tab_school_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '社团头像',
  `head_image` varchar(255) NOT NULL COMMENT '社团头像',
  `school` varchar(20) NOT NULL COMMENT '社团所属学校',
  `type` varchar(20) DEFAULT NULL COMMENT '社团类型',
  `nature` varchar(20) DEFAULT NULL COMMENT '社团性质',
  `mobile` varchar(11) NOT NULL COMMENT '社团联系人手机号',
  `pub_vedio` varchar(255) DEFAULT NULL COMMENT '宣传视频',
  `pub_img` varchar(1000) DEFAULT NULL COMMENT '宣传图片，用英文逗号隔开',
  `about` mediumtext NOT NULL COMMENT '社团介绍',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态，0为正常，2为删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `cu_id` int(11) DEFAULT NULL COMMENT 'cms_user表的id',
  `is_united` int(11) DEFAULT '0' COMMENT '是否是社联：0不是1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8mb4 COMMENT='校园社团表';

-- ----------------------------
-- Table structure for tab_school_group_student
-- ----------------------------
DROP TABLE IF EXISTS `tab_school_group_student`;
CREATE TABLE `tab_school_group_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(8) NOT NULL COMMENT '社团表的id，对应tab_school_group表的id',
  `student_id` int(8) NOT NULL COMMENT '社员表的id，对应tab_school_student表的id',
  `status` tinyint(2) NOT NULL COMMENT '状态：0为申请中，1为通过，2取消申请，3拒绝',
  `create_time` datetime DEFAULT NULL COMMENT '申请日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24158 DEFAULT CHARSET=utf8mb4 COMMENT='社团成员关系表';

-- ----------------------------
-- Table structure for tab_school_student
-- ----------------------------
DROP TABLE IF EXISTS `tab_school_student`;
CREATE TABLE `tab_school_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `cu_id` varchar(20) DEFAULT NULL COMMENT '对应cms_user表的id',
  `specialities` varchar(20) DEFAULT NULL COMMENT '专业',
  `class` varchar(20) DEFAULT NULL COMMENT '班级',
  `school_no` varchar(15) DEFAULT NULL COMMENT '学号',
  `mobile_l` varchar(15) DEFAULT NULL COMMENT '长号',
  `mobile_s` varchar(10) DEFAULT NULL COMMENT '短号',
  `qq` varchar(15) DEFAULT NULL COMMENT 'QQ号',
  `wx` varchar(20) DEFAULT NULL COMMENT '微信号',
  `hobby` varchar(100) DEFAULT NULL COMMENT '爱好',
  `openid` varchar(50) DEFAULT NULL COMMENT '微信openid',
  `unionid` varchar(50) DEFAULT NULL COMMENT '微信unionid',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `person_ident` varchar(18) DEFAULT NULL COMMENT '个人身份证号',
  `sex` varchar(5) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12684 DEFAULT CHARSET=utf8mb4 COMMENT='社团社员表';

-- ----------------------------
-- Table structure for tab_service_heart_beat
-- ----------------------------
DROP TABLE IF EXISTS `tab_service_heart_beat`;
CREATE TABLE `tab_service_heart_beat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_ip` varchar(30) DEFAULT NULL,
  `beat_time` datetime DEFAULT NULL COMMENT '最后一次心跳时间',
  `comments` varchar(20) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`),
  KEY `ind_ip` (`service_ip`(8))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='服务器状态心跳表';

-- ----------------------------
-- Table structure for tab_sign_error_log
-- ----------------------------
DROP TABLE IF EXISTS `tab_sign_error_log`;
CREATE TABLE `tab_sign_error_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sign` varchar(100) DEFAULT NULL COMMENT '签名',
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `media_id` int(18) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL COMMENT '投票token',
  `type` varchar(30) DEFAULT NULL COMMENT '三方登录类型',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `sns_account` varchar(50) DEFAULT NULL COMMENT '三方账号',
  `nonce_str` varchar(50) DEFAULT NULL,
  `imei` varchar(50) DEFAULT NULL,
  `bufukey` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL COMMENT '错误原因',
  `error_time` datetime DEFAULT NULL COMMENT '签名错误发生的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267759 DEFAULT CHARSET=utf8mb4 COMMENT='签名错误时，记录日志';

-- ----------------------------
-- Table structure for tab_sr_user_xuni
-- ----------------------------
DROP TABLE IF EXISTS `tab_sr_user_xuni`;
CREATE TABLE `tab_sr_user_xuni` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` int(11) DEFAULT NULL COMMENT ' 用户id',
  `disagree_no` varchar(8) DEFAULT NULL,
  `user_ident` tinyint(4) DEFAULT '-1' COMMENT '用户身份标识。0:送礼用户，1：提现用户',
  `user_belong` smallint(6) DEFAULT '-1' COMMENT '分配给哪个用户操作',
  `open_id` varchar(60) DEFAULT NULL,
  `wx_account` varchar(30) DEFAULT NULL COMMENT '微信账号',
  `alipay` varchar(50) DEFAULT NULL COMMENT '微信账号',
  `username` varchar(15) DEFAULT NULL COMMENT '操作人姓名',
  `telephone` varchar(11) DEFAULT NULL COMMENT '操作人手机号码',
  `belong_association` smallint(6) DEFAULT '0' COMMENT '属于哪个工会',
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `disagree_no` (`disagree_no`)
) ENGINE=InnoDB AUTO_INCREMENT=56238 DEFAULT CHARSET=utf8mb4 COMMENT='虚拟充值收礼送礼对照表';

-- ----------------------------
-- Table structure for tab_sr_user_xuni_1
-- ----------------------------
DROP TABLE IF EXISTS `tab_sr_user_xuni_1`;
CREATE TABLE `tab_sr_user_xuni_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` int(11) DEFAULT NULL COMMENT ' 用户id',
  `disagree_no` varchar(8) DEFAULT NULL,
  `user_ident` tinyint(4) DEFAULT '-1' COMMENT '用户身份标识。0:送礼用户，1：提现用户',
  `user_belong` smallint(6) DEFAULT '-1' COMMENT '分配给哪个用户操作',
  `open_id` varchar(60) DEFAULT NULL,
  `wx_account` varchar(30) DEFAULT NULL COMMENT '微信账号',
  `alipay` varchar(50) DEFAULT NULL COMMENT '微信账号',
  `username` varchar(15) DEFAULT NULL COMMENT '操作人姓名',
  `telephone` varchar(11) DEFAULT NULL COMMENT '操作人手机号码',
  `belong_association` smallint(6) DEFAULT '0' COMMENT '属于哪个工会',
  `create_time` date DEFAULT NULL,
  `manager` varchar(10) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '人员分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `disagree_no` (`disagree_no`),
  UNIQUE KEY `ind_uid` (`user_id`),
  UNIQUE KEY `ind_dno` (`disagree_no`)
) ENGINE=InnoDB AUTO_INCREMENT=73663 DEFAULT CHARSET=utf8mb4 COMMENT='虚拟充值收礼送礼对照表';

-- ----------------------------
-- Table structure for tab_sub_match
-- ----------------------------
DROP TABLE IF EXISTS `tab_sub_match`;
CREATE TABLE `tab_sub_match` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `name_short` varchar(20) DEFAULT NULL,
  `part_name` varchar(20) DEFAULT NULL COMMENT '如果是系列赛事，标记第几期',
  `sort` smallint(4) DEFAULT NULL COMMENT '首页排序顺序',
  `content` varchar(600) DEFAULT NULL COMMENT '不服来战赛事规则或赛事描述',
  `content_short` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '不服来站赛事描述或普通赛事简短介绍',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image_url` varchar(256) DEFAULT NULL COMMENT '赛事头部图片',
  `image_url0` varchar(256) DEFAULT NULL COMMENT '预热图片(赛事卡片)',
  `image_url1` varchar(256) DEFAULT NULL COMMENT '开始图片(赛事卡片)',
  `image_url4` varchar(256) DEFAULT NULL COMMENT '结束图片(赛事卡片)',
  `image_square` varchar(255) DEFAULT NULL COMMENT ' 在H5的赛事宣传页中使用，全路径',
  `media_url` varchar(256) DEFAULT NULL,
  `h5_url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'h5的赛事说明',
  `share_url` varchar(128) DEFAULT NULL COMMENT '赛事分享地址',
  `share_title` varchar(128) DEFAULT NULL COMMENT '分享标题',
  `share_title_short` varchar(20) DEFAULT NULL,
  `share_content` varchar(128) DEFAULT NULL COMMENT '分享内容',
  `share_image` varchar(128) DEFAULT NULL COMMENT '分享图片',
  `is_hot` smallint(4) DEFAULT '0' COMMENT '是否是HOT活动1为hot',
  `width` smallint(6) DEFAULT '0' COMMENT '赛事图片大小',
  `height` smallint(6) DEFAULT '0' COMMENT '赛事图片大小',
  `width_h5` smallint(6) DEFAULT NULL COMMENT 'H5链接页面上部图片宽度 （赛事列表卡片大小）',
  `height_h5` smallint(6) DEFAULT NULL COMMENT 'H5链接页面上部图片高度（赛事列表卡片大小）',
  `bg_image_url` varchar(128) DEFAULT NULL,
  `view_count` int(11) DEFAULT '0',
  `hot_img` varchar(256) DEFAULT NULL,
  `rank_num` int(8) DEFAULT '100' COMMENT '活动排行榜显示第几名的点赞数',
  `parent_id` int(8) DEFAULT NULL COMMENT '大赛事id',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `status` smallint(4) DEFAULT '0' COMMENT '0为未开始，1为开始，2为删除，4：为结束（赛事的开始结束由人工跑批控制），9：h5_url不能为空，直接跳转h5页面(状态9的情况，从2.2.0开始已经取消了。)',
  `type` smallint(4) DEFAULT NULL COMMENT '类型，配置不同模式的比赛模板，1为活动，2为海选赛，3为试镜争夺赛，4为挑战赛，5:不服来站分组卡片，6:普通直播赛事，7:pk直播赛事',
  `type2` smallint(2) DEFAULT '1' COMMENT '不服来战：1为普通，2为测试',
  `is_coin_show` smallint(2) DEFAULT '1' COMMENT '是否显示赛事金额：1显示，0不显示',
  `is_china_voice` smallint(2) DEFAULT '0' COMMENT '不服来战：0为普通，1为好声音；',
  `chatroom_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `maxNum` int(3) DEFAULT '999' COMMENT '最大允许视频数量',
  `match_id` int(18) DEFAULT NULL COMMENT '父赛事id',
  `need_mobile` int(3) DEFAULT '0' COMMENT '是否需要手机号',
  `rise_rank_id` int(18) DEFAULT NULL COMMENT '晋级名单id,对应tab_activity_rank表的activity_id。如果有值，则说明参加该活动需要在活动排行榜表里有排名。',
  `coin_pool` float(11,2) DEFAULT '0.00' COMMENT '奖金池，类型4使用该字段',
  `index_show` int(2) unsigned DEFAULT '1' COMMENT '类型为4是，是否在首页显示,标记为1的是显示，只显示1条。',
  `pool_init_coin` int(8) DEFAULT '0' COMMENT '初始金币数',
  `is_final` smallint(2) DEFAULT '0' COMMENT '是否是总决赛，0为不是，1为是',
  `incmoney_everyone` tinyint(4) DEFAULT '0',
  `observe_everyone` tinyint(4) DEFAULT '0',
  `prefetch_rank` tinyint(4) DEFAULT '0',
  `h5_btn_text` varchar(20) DEFAULT NULL COMMENT '不服来战，分享的H5页面下方按钮文本',
  `h5_title_text` varchar(20) DEFAULT NULL COMMENT '不服来战，分享的H5页面上方状态栏文本',
  `is_acting` int(2) DEFAULT '0' COMMENT '该字段针对不服来战：0为普通视频，1为拍摄飙演技视频。',
  `start_txt` varchar(255) DEFAULT NULL COMMENT '开始推送文案',
  `end_txt` varchar(255) DEFAULT NULL COMMENT '结束描述文案',
  `tag_image` varchar(255) DEFAULT NULL COMMENT '直播赛事，主播的直播详情页左上角的赛事图片',
  `play_limit` smallint(6) DEFAULT '0' COMMENT '截至多少名，之后的选手奖金数为0',
  `single_rank` varchar(500) DEFAULT NULL COMMENT '单独排名，每个名次以，隔开',
  `region_rank` varchar(500) DEFAULT NULL COMMENT '区间排名，名次间以：分割',
  `end_send` varchar(255) DEFAULT NULL COMMENT '结束后系统消息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_sub_match_coin
-- ----------------------------
DROP TABLE IF EXISTS `tab_sub_match_coin`;
CREATE TABLE `tab_sub_match_coin` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `sub_match_id` bigint(18) DEFAULT NULL COMMENT '关联的赛事的id',
  `basic_coin` decimal(8,2) DEFAULT '100.00' COMMENT '赛事的基础奖金',
  `increment_coin` decimal(8,2) NOT NULL DEFAULT '1.00' COMMENT '人数增加额度',
  `basic_num` int(8) NOT NULL DEFAULT '0' COMMENT '基础人数',
  `pfirst` decimal(8,2) DEFAULT NULL COMMENT '第一份比例(小于1内小数)',
  `psecond` decimal(8,2) DEFAULT NULL COMMENT '第二名比例(小于1内小数)',
  `pthird` decimal(8,2) DEFAULT NULL COMMENT '第三名比例(小于1内小数)',
  `sum_coin` decimal(8,2) DEFAULT NULL COMMENT '赛事结束后奖金总额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_sub_match_coin2
-- ----------------------------
DROP TABLE IF EXISTS `tab_sub_match_coin2`;
CREATE TABLE `tab_sub_match_coin2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sub_match_id` bigint(20) NOT NULL COMMENT '赛事id',
  `rankid` bigint(20) NOT NULL COMMENT '赛事排名',
  `price` int(9) NOT NULL COMMENT '奖金值',
  PRIMARY KEY (`id`),
  KEY `ind_sub_match_coin2match_id` (`sub_match_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11161 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_sub_match_group
-- ----------------------------
DROP TABLE IF EXISTS `tab_sub_match_group`;
CREATE TABLE `tab_sub_match_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) DEFAULT NULL COMMENT '分组名',
  `previous_group_id` int(11) DEFAULT NULL COMMENT '上一步的组id,如：试镜赛女神组上一步的组id为海选赛女神组id',
  `has_judge` smallint(2) DEFAULT '0' COMMENT '是否有评委，0没有；1有',
  `status` smallint(2) DEFAULT '0' COMMENT '状态，0为默认  2为删除 ',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间，根据当前时间与比开始时间较判断是否开始',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间，根据当前时间与结束时间比较判断是否结束',
  `sub_match_id` int(18) DEFAULT NULL COMMENT '对应tab_sub_match表id',
  `bg_img_url` varchar(128) DEFAULT NULL COMMENT '海选赛首页分组头像图片',
  `image_url` varchar(128) DEFAULT NULL COMMENT '分组房间进去后的顶部图片',
  `media_url` varchar(128) DEFAULT NULL COMMENT '视频url',
  `width` smallint(6) DEFAULT NULL,
  `height` smallint(6) DEFAULT NULL,
  `color` varchar(15) DEFAULT NULL COMMENT '背景颜色',
  `background_color` varchar(255) DEFAULT NULL COMMENT '背景颜色',
  `content` varchar(256) DEFAULT NULL,
  `rank_num` int(8) DEFAULT '100' COMMENT '显示第rank_num名的票数',
  `group_image` varchar(256) DEFAULT NULL COMMENT '房间列背景图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_sub_match_media
-- ----------------------------
DROP TABLE IF EXISTS `tab_sub_match_media`;
CREATE TABLE `tab_sub_match_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '选手的用户id',
  `sub_match_id` int(18) NOT NULL COMMENT '对应tab_sub_match赛事id',
  `group_id` smallint(12) DEFAULT '0' COMMENT '赛事分组id',
  `status` smallint(2) DEFAULT '0' COMMENT ' 0为正常   2为删除',
  `media_id` int(18) DEFAULT NULL COMMENT '对应视频表id',
  `vote_num` int(18) DEFAULT '0' COMMENT '投票数',
  `group_name` varchar(20) DEFAULT NULL,
  `is_recom` smallint(2) DEFAULT NULL COMMENT 'type为4的赛事使用此字段：1为精选视频 2为擂主视频 3为默认播放的视频',
  `sort` int(2) DEFAULT NULL COMMENT '对精选视频排序',
  `set_votenum` int(11) DEFAULT '0' COMMENT '设置需要刷的数量',
  `today_votenum` int(11) DEFAULT '0' COMMENT '今日已经刷的数量',
  `total_votenum` int(11) DEFAULT '0' COMMENT '虚拟刷的总数量',
  `state` tinyint(4) DEFAULT '0' COMMENT '刷票状态：0不刷，1刷票',
  `stage` char(1) DEFAULT NULL COMMENT '根据作品质量划分等级:A-F,A最高',
  `type` smallint(4) DEFAULT '0' COMMENT '0选择中1预晋级2预淘汰',
  `set_votenum_mid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`) USING BTREE,
  KEY `ind_matchid` (`sub_match_id`) USING BTREE,
  KEY `ind_` (`media_id`),
  KEY `ind_gid` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11519 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_sub_match_media_hy
-- ----------------------------
DROP TABLE IF EXISTS `tab_sub_match_media_hy`;
CREATE TABLE `tab_sub_match_media_hy` (
  `id` int(11) NOT NULL DEFAULT '0',
  `uid` int(18) DEFAULT NULL COMMENT '选手的用户id',
  `sub_match_id` int(18) NOT NULL COMMENT '对应tab_sub_match赛事id',
  `group_id` smallint(12) DEFAULT '0' COMMENT '赛事分组id',
  `status` smallint(2) DEFAULT '0' COMMENT ' 0为正常   2为删除',
  `media_id` int(18) DEFAULT NULL COMMENT '对应视频表id',
  `vote_num` int(18) DEFAULT '0' COMMENT '投票数',
  `group_name` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `is_recom` smallint(2) DEFAULT NULL COMMENT 'type为4的赛事使用此字段：1为精选视频 2为擂主视频 3为默认播放的视频',
  `sort` int(2) DEFAULT NULL COMMENT '对精选视频排序',
  `set_votenum` int(11) DEFAULT '0' COMMENT '设置需要刷的数量',
  `today_votenum` int(11) DEFAULT '0' COMMENT '今日已经刷的数量',
  `total_votenum` int(11) DEFAULT '0' COMMENT '虚拟刷的总数量',
  `state` tinyint(4) DEFAULT '0' COMMENT '刷票状态：0不刷，1刷票',
  `stage` char(1) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '根据作品质量划分等级:A-F,A最高',
  `type` smallint(4) DEFAULT '0' COMMENT '0选择中1预晋级2预淘汰',
  `set_votenum_mid` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for tab_sub_match_player
-- ----------------------------
DROP TABLE IF EXISTS `tab_sub_match_player`;
CREATE TABLE `tab_sub_match_player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '选手的用户id',
  `sub_match_id` int(18) NOT NULL COMMENT '对应tab_sub_match赛事id',
  `group_id` smallint(12) DEFAULT '0' COMMENT '赛事分组id',
  `status` smallint(2) DEFAULT '0' COMMENT ' 0为正常  1为晋级  2为删除',
  `rise_type` smallint(2) DEFAULT NULL COMMENT '晋级方式：0为常规晋级，1为评委指定晋级 2:发起者',
  `coin_yesterday` decimal(11,2) DEFAULT '0.00' COMMENT 'type为4的赛事使用该字段，用户在该场赛事中截止前一天24时计算出的金币数',
  `rank_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11221 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_sub_match_player_info
-- ----------------------------
DROP TABLE IF EXISTS `tab_sub_match_player_info`;
CREATE TABLE `tab_sub_match_player_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_match_id` int(11) DEFAULT NULL COMMENT '赛事id',
  `f_key` varchar(20) DEFAULT NULL COMMENT '资料键',
  `f_name` varchar(50) DEFAULT NULL COMMENT '资料值',
  `uid` int(11) DEFAULT NULL COMMENT '参赛选手id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='参赛选手的附件信息表';

-- ----------------------------
-- Table structure for tab_sub_match_player_info_config
-- ----------------------------
DROP TABLE IF EXISTS `tab_sub_match_player_info_config`;
CREATE TABLE `tab_sub_match_player_info_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_match_id` int(11) NOT NULL COMMENT '赛事id',
  `f_key` varchar(20) DEFAULT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `placeholder` varchar(50) DEFAULT NULL,
  `type` int(2) DEFAULT NULL COMMENT '类型：1为普通，2为下拉',
  `data` varchar(100) DEFAULT NULL COMMENT '当type为2时，提供下来数据。以逗号隔开。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='参数用户额外资料配置表';

-- ----------------------------
-- Table structure for tab_sub_match_register
-- ----------------------------
DROP TABLE IF EXISTS `tab_sub_match_register`;
CREATE TABLE `tab_sub_match_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_match_id` int(11) DEFAULT NULL COMMENT '赛事id',
  `ch_name` varchar(20) DEFAULT NULL COMMENT '报名者的中文名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '报名者的手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='不服来战线下报名表';

-- ----------------------------
-- Table structure for tab_support_zhangw
-- ----------------------------
DROP TABLE IF EXISTS `tab_support_zhangw`;
CREATE TABLE `tab_support_zhangw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sdate` date DEFAULT NULL,
  `media_id` int(11) NOT NULL COMMENT '视频ID',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '视频名',
  `tag_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '圈子名',
  `user_type` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户类型',
  `play_num` int(11) DEFAULT '0' COMMENT '播放数',
  `support_num` int(11) DEFAULT '0' COMMENT '点赞数',
  `comment_num` int(11) DEFAULT '0' COMMENT '评论数',
  PRIMARY KEY (`id`),
  KEY `sdate` (`sdate`)
) ENGINE=InnoDB AUTO_INCREMENT=304713 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='每日真实视频的用户行为';

-- ----------------------------
-- Table structure for tab_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `tab_sys_config`;
CREATE TABLE `tab_sys_config` (
  `cfg_key` varchar(50) NOT NULL DEFAULT '' COMMENT '配置key',
  `cfg_memo` varchar(50) DEFAULT NULL COMMENT '描述',
  `cfg_value` varchar(4000) DEFAULT NULL COMMENT '配置详情',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT 'null为公用配置，0为不服app配置，1为小号app配置',
  PRIMARY KEY (`cfg_key`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统配置表';

-- ----------------------------
-- Table structure for tab_sys_config_copy
-- ----------------------------
DROP TABLE IF EXISTS `tab_sys_config_copy`;
CREATE TABLE `tab_sys_config_copy` (
  `cfg_key` varchar(50) NOT NULL DEFAULT '' COMMENT '配置key',
  `cfg_memo` varchar(50) DEFAULT NULL COMMENT '描述',
  `cfg_value` varchar(4000) DEFAULT NULL COMMENT '配置详情',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT 'null为公用配置，0为不服app配置，1为小号app配置',
  PRIMARY KEY (`cfg_key`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统配置表';

-- ----------------------------
-- Table structure for tab_tag
-- ----------------------------
DROP TABLE IF EXISTS `tab_tag`;
CREATE TABLE `tab_tag` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '圈子主键ID',
  `title` varchar(64) DEFAULT NULL COMMENT '标题',
  `status` smallint(2) DEFAULT '0' COMMENT '0:正常 2：删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `width` int(18) DEFAULT NULL COMMENT '宽度',
  `height` int(18) DEFAULT NULL COMMENT '高度',
  `index_image` varchar(128) DEFAULT NULL COMMENT '首页圈子图片',
  `index_image_ios` varchar(128) DEFAULT NULL COMMENT 'ios首页圈子图片',
  `image_url` varchar(128) DEFAULT NULL,
  `min_image_url` varchar(128) DEFAULT NULL,
  `media_url` varchar(128) DEFAULT NULL,
  `sort` smallint(2) DEFAULT NULL COMMENT '排序',
  `memo` varchar(200) DEFAULT NULL COMMENT '主题描述',
  `users` varchar(2000) DEFAULT NULL COMMENT '版主',
  `is_topic_show` smallint(4) DEFAULT '1' COMMENT '话题板块是否显示:1为显示,0为不显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='圈子表';

-- ----------------------------
-- Table structure for tab_taste_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_taste_user`;
CREATE TABLE `tab_taste_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `mobile` char(11) DEFAULT NULL COMMENT '手机号码',
  `ident_code` char(4) DEFAULT NULL COMMENT '验证码',
  `description` varchar(20) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COMMENT='体验用户表';

-- ----------------------------
-- Table structure for tab_tmp_count
-- ----------------------------
DROP TABLE IF EXISTS `tab_tmp_count`;
CREATE TABLE `tab_tmp_count` (
  `act_id` int(11) NOT NULL,
  `manual_count` int(11) DEFAULT NULL,
  `STATUS` int(11) DEFAULT '0',
  PRIMARY KEY (`act_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活动刷新纪录表';

-- ----------------------------
-- Table structure for tab_topic
-- ----------------------------
DROP TABLE IF EXISTS `tab_topic`;
CREATE TABLE `tab_topic` (
  `id` int(18) NOT NULL AUTO_INCREMENT COMMENT '话题主键ID',
  `uid` int(18) NOT NULL COMMENT '发布用户id',
  `uname` varchar(90) DEFAULT NULL COMMENT '发布用户昵称',
  `headimg` varchar(200) DEFAULT NULL COMMENT '发布用户头像',
  `title` varchar(20) DEFAULT NULL COMMENT '主题',
  `content` varchar(500) DEFAULT NULL COMMENT '内容',
  `image` varchar(2000) DEFAULT NULL,
  `tag_id` int(18) DEFAULT NULL COMMENT '圈子id',
  `type` smallint(2) NOT NULL DEFAULT '0' COMMENT '0为圈子id, 1为赛事id',
  `view_count` int(11) DEFAULT '0' COMMENT '浏览数',
  `comment_count` int(11) DEFAULT '0' COMMENT '评论数',
  `status` int(11) DEFAULT '0' COMMENT '0：正常 2：已删除 3:加精 4：置顶 5：推荐',
  `sort` smallint(4) DEFAULT NULL COMMENT '推荐话题的排序',
  `media_id` int(18) DEFAULT NULL COMMENT '引用的视频id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `rnumber` int(11) DEFAULT '0' COMMENT '举报数',
  `is_index_show` smallint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ind_tab_topic1` (`create_time`),
  KEY `ind_tab_topic2` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2313 DEFAULT CHARSET=utf8mb4 COMMENT='话题表';

-- ----------------------------
-- Table structure for tab_topic_comment
-- ----------------------------
DROP TABLE IF EXISTS `tab_topic_comment`;
CREATE TABLE `tab_topic_comment` (
  `id` int(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `topic_id` int(18) NOT NULL COMMENT '话题ID',
  `atid` int(18) DEFAULT NULL COMMENT '被回复/@的评论id',
  `uid` int(18) NOT NULL COMMENT '发布用户id',
  `uname` varchar(90) DEFAULT NULL COMMENT '发布用户昵称',
  `headimg` varchar(200) DEFAULT NULL COMMENT '发布用户头像图片',
  `content` varchar(120) DEFAULT NULL COMMENT '发布内容',
  `image` varchar(2000) DEFAULT NULL COMMENT '上传图片',
  `media_id` bigint(18) DEFAULT NULL COMMENT '视频ID',
  `status` int(11) DEFAULT '0' COMMENT '0：正常 2：已删除',
  `floor_num` int(11) DEFAULT '1',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `type` smallint(2) DEFAULT NULL COMMENT '评论类型  0：评论，1：回复，2：@',
  PRIMARY KEY (`id`),
  KEY `ind_topic_comment1` (`create_time`),
  KEY `ind_topic_comment2` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=22770 DEFAULT CHARSET=utf8mb4 COMMENT='话题评论明细';

-- ----------------------------
-- Table structure for tab_topic_reply_add
-- ----------------------------
DROP TABLE IF EXISTS `tab_topic_reply_add`;
CREATE TABLE `tab_topic_reply_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `topic_id` int(11) NOT NULL DEFAULT '0' COMMENT '话题ID',
  `content` varchar(1200) DEFAULT NULL COMMENT '话题回复内容',
  `status` int(11) DEFAULT '0' COMMENT '是否已使用，0未使用，1已使用',
  `create_time` datetime DEFAULT NULL COMMENT '生成时间',
  `addUser` varchar(255) DEFAULT NULL COMMENT '话题回复添加人',
  `state` tinyint(4) DEFAULT '0' COMMENT '状态区分，1当天刷，0不刷',
  `update_time` datetime DEFAULT NULL COMMENT '话题回复更新时间，用于判断话题回复是不是使用了',
  PRIMARY KEY (`id`),
  KEY `ind_createtime` (`create_time`),
  KEY `ind_update_time` (`update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1865 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='刷话题回复辅助表';

-- ----------------------------
-- Table structure for tab_topic_report
-- ----------------------------
DROP TABLE IF EXISTS `tab_topic_report`;
CREATE TABLE `tab_topic_report` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `auser_id` bigint(18) DEFAULT NULL COMMENT '投诉用户',
  `buser_id` bigint(18) DEFAULT NULL COMMENT '被投诉用户',
  `topic_id` bigint(18) DEFAULT NULL COMMENT '话题ID',
  `status` smallint(2) DEFAULT '0' COMMENT '处理状态:0，未处理，1，已处理',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='话题举报记录关联表';

-- ----------------------------
-- Table structure for tab_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_user`;
CREATE TABLE `tab_user` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `disagree_no` varchar(8) NOT NULL COMMENT '不服号',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(128) DEFAULT NULL COMMENT '昵称',
  `signature` varchar(120) DEFAULT NULL COMMENT '签名',
  `sex` smallint(2) DEFAULT '0' COMMENT '性别',
  `age` smallint(4) DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(64) DEFAULT NULL COMMENT '生日',
  `mobile` varchar(16) DEFAULT NULL COMMENT '手机号码',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `status` smallint(2) DEFAULT '0' COMMENT '0正常 1停用 2禁止评论  3禁止发布视频 4禁止发布视频和评论',
  `avatars_url` varchar(256) DEFAULT NULL COMMENT '头像url',
  `pnumber` bigint(18) DEFAULT '0' COMMENT '评论数',
  `anumber` bigint(18) DEFAULT '0' COMMENT '关注数',
  `fnumber` bigint(18) DEFAULT '0' COMMENT '粉丝数',
  `mnumber` int(11) DEFAULT '0' COMMENT '用户视频数',
  `tnumber` int(11) DEFAULT '0' COMMENT '话题数',
  `match_number` int(11) DEFAULT '0' COMMENT '赛事视频数',
  `bg_url` varchar(256) DEFAULT NULL COMMENT '背景url',
  `lat` varchar(64) DEFAULT NULL COMMENT '保留字段',
  `lag` varchar(64) DEFAULT NULL COMMENT '保留字段',
  `province_name` varchar(32) DEFAULT NULL COMMENT '省份',
  `city_name` varchar(32) DEFAULT NULL COMMENT '城市',
  `position_city` varchar(32) DEFAULT NULL COMMENT '定位城市',
  `area_name` varchar(32) DEFAULT NULL COMMENT '地区',
  `level` smallint(2) DEFAULT '1' COMMENT '用户等级',
  `token` varchar(256) DEFAULT NULL,
  `cid` varchar(256) DEFAULT NULL,
  `push_status` int(1) DEFAULT '1' COMMENT '0:不推送 1:推送',
  `push_live_status` int(11) DEFAULT '1' COMMENT '0:不推送 1:推送',
  `sns_account` varchar(64) DEFAULT NULL COMMENT '三方账号',
  `weibo_account` varchar(64) DEFAULT NULL COMMENT '微博id',
  `weibo_token` varchar(128) DEFAULT NULL COMMENT '微博token',
  `is_moke` smallint(2) NOT NULL DEFAULT '0' COMMENT '是否模拟用户  0：真实，1：虚拟',
  `contact_mobile` varchar(16) DEFAULT NULL COMMENT '联系号码，不同于mobile。mobile是用户账号',
  `name_zh` varchar(60) DEFAULT NULL,
  `wx_openid` varchar(60) DEFAULT NULL,
  `wx_status` smallint(2) NOT NULL DEFAULT '0' COMMENT '0:未授权  1:已授权',
  `unionid` varchar(64) DEFAULT NULL,
  `type` int(2) NOT NULL DEFAULT '1' COMMENT '0:游客，1:登录用户',
  `has_register` int(2) NOT NULL DEFAULT '0' COMMENT '0:未注册 1:已注册',
  `set_fnumber` int(11) DEFAULT '0' COMMENT '设定的粉丝量',
  `need_upload_contact` int(2) DEFAULT '0' COMMENT '新注册的账号该值为1，如果是新注册的，询问用户传通讯录好友，发送推送。询问后设为0。',
  `is_sign` int(11) DEFAULT '0' COMMENT '是否被签约，0未签约1已签约',
  `hot_sign_count` int(11) DEFAULT '0' COMMENT '签约上热门的次数',
  `hot_real_count` int(11) DEFAULT '0' COMMENT '实际上热门的次数',
  `imei` varchar(50) DEFAULT NULL COMMENT ' 用户登录时的设备码',
  `forbidden_withdrawals` int(2) DEFAULT '0' COMMENT '是否禁止提现，0为不禁止，1为禁止提现',
  `today_fnumber` int(11) DEFAULT '0' COMMENT '每天刷的粉丝量',
  `total_fnumber` int(11) DEFAULT '0' COMMENT '历史累计刷粉数',
  `checkFresh` int(11) DEFAULT '0' COMMENT '判断是否刷：0不刷1开刷',
  `next_level_exp` int(5) DEFAULT NULL COMMENT '等级区间',
  `experience` int(10) DEFAULT '0',
  `auth` varchar(100) DEFAULT NULL COMMENT '认证信息',
  `auth_type` tinyint(4) DEFAULT '0' COMMENT '0:普通 1:认证 2-10保留 11:会员',
  `auth_image` varchar(256) DEFAULT NULL COMMENT '认证的图片地址',
  `auth_comment` varchar(50) DEFAULT NULL COMMENT '加V备注',
  `authentication` varchar(100) DEFAULT '' COMMENT '认证信息',
  `tab_usercol` int(2) DEFAULT '0',
  `q_uid` varchar(50) DEFAULT NULL COMMENT '用户登录腾讯云所使用的id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind_` (`disagree_no`),
  KEY `tel_index` (`mobile`) USING BTREE,
  KEY `ind_sns_account` (`sns_account`),
  KEY `ind_register_time` (`register_time`),
  KEY `ind_moke` (`is_moke`),
  KEY `ind_user_nick` (`nick_name`),
  KEY `ind_cid` (`cid`(191)),
  KEY `INDEX_tel` (`contact_mobile`) USING BTREE,
  KEY `ind_unionid` (`unionid`)
) ENGINE=InnoDB AUTO_INCREMENT=1901059 DEFAULT CHARSET=utf8mb4 COMMENT='用户基础信息';

-- ----------------------------
-- Table structure for tab_user_attention
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_attention`;
CREATE TABLE `tab_user_attention` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `auser_id` bigint(18) DEFAULT NULL COMMENT '关注用户ID',
  `buser_id` bigint(18) DEFAULT NULL COMMENT '被关注用户ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` smallint(2) DEFAULT '0' COMMENT '状态：0，单方关注，1，取消关注',
  PRIMARY KEY (`id`),
  KEY `ind_date` (`create_time`),
  KEY `ind_auser` (`auser_id`),
  KEY `ind_buser` (`buser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6350317 DEFAULT CHARSET=utf8mb4 COMMENT='用户关注表';

-- ----------------------------
-- Table structure for tab_user_attention_1
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_attention_1`;
CREATE TABLE `tab_user_attention_1` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `auser_id` bigint(18) DEFAULT NULL COMMENT '关注用户ID',
  `buser_id` bigint(18) DEFAULT NULL COMMENT '被关注用户ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` smallint(2) DEFAULT '0' COMMENT '状态：0，单方关注，1，取消关注',
  PRIMARY KEY (`id`),
  KEY `idx_tab_user_attention_auser_id` (`auser_id`),
  KEY `idx_tab_user_attention_buser_id` (`buser_id`) USING BTREE,
  KEY `ind_abuser` (`auser_id`,`buser_id`) USING BTREE,
  KEY `ind_date` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=5080546 DEFAULT CHARSET=utf8mb4 COMMENT='用户关注表';

-- ----------------------------
-- Table structure for tab_user_attention_copy
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_attention_copy`;
CREATE TABLE `tab_user_attention_copy` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `auser_id` bigint(18) DEFAULT NULL COMMENT '关注用户ID',
  `buser_id` bigint(18) DEFAULT NULL COMMENT '被关注用户ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` smallint(2) DEFAULT '0' COMMENT '状态：0，单方关注，1，取消关注',
  PRIMARY KEY (`id`),
  KEY `ind_date` (`create_time`),
  KEY `ind_auser` (`auser_id`),
  KEY `ind_buser` (`buser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6299001 DEFAULT CHARSET=utf8mb4 COMMENT='用户关注表';

-- ----------------------------
-- Table structure for tab_user_config
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_config`;
CREATE TABLE `tab_user_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startTime` datetime DEFAULT NULL COMMENT '活动开始时间',
  `endTime` datetime DEFAULT NULL COMMENT '活动的结束时间',
  `minCoin` decimal(10,2) DEFAULT NULL COMMENT '个人所得最小金额数',
  `maxCoin` decimal(10,2) DEFAULT NULL COMMENT '个人所得最大金额数',
  `type` int(2) DEFAULT '0' COMMENT '0：新用户红包   1：全体用户',
  `tip` varchar(255) DEFAULT NULL COMMENT '红包的提示文本',
  `timeTip` varchar(255) DEFAULT NULL COMMENT '有效时间',
  `status` smallint(2) DEFAULT '0' COMMENT '1:使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_user_forbidden
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_forbidden`;
CREATE TABLE `tab_user_forbidden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `imei` varchar(50) DEFAULT NULL COMMENT '设备码',
  `reason` varchar(50) DEFAULT NULL COMMENT '封号原因',
  `duration_str` varchar(20) DEFAULT NULL COMMENT '封号时长(字符串)',
  `end_time` datetime DEFAULT NULL COMMENT '封号结束时间（永久则设为null）',
  `type` int(2) DEFAULT NULL COMMENT '1封号，2封设备',
  `status` int(2) DEFAULT NULL COMMENT '1启用，2删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1695 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_user_interact
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_interact`;
CREATE TABLE `tab_user_interact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `status` smallint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_user_interact_users
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_interact_users`;
CREATE TABLE `tab_user_interact_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auid` int(11) DEFAULT NULL COMMENT '不服互动平台帐号',
  `buid` int(11) DEFAULT NULL COMMENT '不服帐号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_user_match_regist
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_match_regist`;
CREATE TABLE `tab_user_match_regist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(18) DEFAULT NULL COMMENT '用户id',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb4 COMMENT='用户参赛报名表';

-- ----------------------------
-- Table structure for tab_user_nearestcommend
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_nearestcommend`;
CREATE TABLE `tab_user_nearestcommend` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `auser_id` bigint(18) DEFAULT NULL COMMENT '发起的用户',
  `buser_id` bigint(18) DEFAULT NULL COMMENT '被@用户',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `ind_user_nearestcommend1` (`create_time`),
  KEY `ind_user_nearestcommend2` (`auser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48775 DEFAULT CHARSET=utf8mb4 COMMENT='用户最近@好友表';

-- ----------------------------
-- Table structure for tab_user_task
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_task`;
CREATE TABLE `tab_user_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `task_id` int(11) DEFAULT NULL COMMENT '任务id，对应tab_app_task表的id',
  `tab_status` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '任务完成时间',
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户完成任务日志表';

-- ----------------------------
-- Table structure for tab_user_temp
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_temp`;
CREATE TABLE `tab_user_temp` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `disagree_no` varchar(36) DEFAULT NULL COMMENT '不服号',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(128) DEFAULT NULL COMMENT '昵称',
  `signature` varchar(120) DEFAULT NULL COMMENT '签名',
  `sex` smallint(2) DEFAULT NULL COMMENT '性别',
  `age` smallint(4) DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(64) DEFAULT NULL COMMENT '生日',
  `mobile` varchar(16) DEFAULT NULL COMMENT '手机号码',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `status` smallint(2) DEFAULT '0' COMMENT '0正常 1停用 2禁止评论  3禁止发布视频 4禁止发布视频和评论',
  `avatars_url` varchar(256) DEFAULT NULL COMMENT '头像url',
  `pnumber` bigint(18) DEFAULT '0' COMMENT '评论数',
  `anumber` bigint(18) DEFAULT '0' COMMENT '关注数',
  `fnumber` bigint(18) DEFAULT '0' COMMENT '粉丝数',
  `mnumber` int(11) DEFAULT '0' COMMENT '用户视频数',
  `tnumber` int(11) DEFAULT '0' COMMENT '话题数',
  `match_number` int(11) DEFAULT '0' COMMENT '赛事视频数',
  `bg_url` varchar(256) DEFAULT NULL COMMENT '背景url',
  `lat` varchar(64) DEFAULT NULL COMMENT '保留字段',
  `lag` varchar(64) DEFAULT NULL COMMENT '保留字段',
  `province_name` varchar(32) DEFAULT NULL COMMENT '省份',
  `city_name` varchar(32) DEFAULT NULL COMMENT '城市',
  `area_name` varchar(32) DEFAULT NULL COMMENT '地区',
  `level` smallint(2) DEFAULT '1' COMMENT '用户等级',
  `token` varchar(256) DEFAULT NULL,
  `cid` varchar(256) DEFAULT NULL,
  `sns_account` varchar(64) DEFAULT NULL COMMENT '三方账号',
  `weibo_account` varchar(64) DEFAULT NULL COMMENT '微博id',
  `weibo_token` varchar(128) DEFAULT NULL COMMENT '微博token',
  `is_moke` smallint(2) NOT NULL DEFAULT '0' COMMENT '是否模拟用户  0：真实，1：虚拟',
  `contact_mobile` varchar(16) DEFAULT NULL COMMENT '联系号码，不同于mobile。mobile是用户账号',
  `name_zh` varchar(60) DEFAULT NULL,
  `wx_openid` varchar(60) DEFAULT NULL,
  `wx_status` smallint(2) NOT NULL DEFAULT '0' COMMENT '0:未授权  1:已授权',
  PRIMARY KEY (`id`),
  KEY `dio_index` (`disagree_no`) USING BTREE,
  KEY `tel_index` (`mobile`) USING BTREE,
  KEY `ind_sns_account` (`sns_account`) USING BTREE,
  KEY `ind_register_time` (`register_time`) USING BTREE,
  KEY `ind_moke` (`is_moke`) USING BTREE,
  KEY `ind_user_nick` (`nick_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_user_xuni
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_xuni`;
CREATE TABLE `tab_user_xuni` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `disagree_no` varchar(8) NOT NULL COMMENT '不服号',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(128) DEFAULT NULL COMMENT '昵称',
  `signature` varchar(120) DEFAULT NULL COMMENT '签名',
  `sex` smallint(2) DEFAULT '0' COMMENT '性别',
  `age` smallint(4) DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(64) DEFAULT NULL COMMENT '生日',
  `mobile` varchar(16) DEFAULT NULL COMMENT '手机号码',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `status` smallint(2) DEFAULT '0' COMMENT '0正常 1停用 2禁止评论  3禁止发布视频 4禁止发布视频和评论',
  `avatars_url` varchar(256) DEFAULT NULL COMMENT '头像url',
  `pnumber` bigint(18) DEFAULT '0' COMMENT '评论数',
  `anumber` bigint(18) DEFAULT '0' COMMENT '关注数',
  `fnumber` bigint(18) DEFAULT '0' COMMENT '粉丝数',
  `mnumber` int(11) DEFAULT '0' COMMENT '用户视频数',
  `tnumber` int(11) DEFAULT '0' COMMENT '话题数',
  `match_number` int(11) DEFAULT '0' COMMENT '赛事视频数',
  `bg_url` varchar(256) DEFAULT NULL COMMENT '背景url',
  `lat` varchar(64) DEFAULT NULL COMMENT '保留字段',
  `lag` varchar(64) DEFAULT NULL COMMENT '保留字段',
  `province_name` varchar(32) DEFAULT NULL COMMENT '省份',
  `city_name` varchar(32) DEFAULT NULL COMMENT '城市',
  `position_city` varchar(32) DEFAULT NULL COMMENT '定位城市',
  `area_name` varchar(32) DEFAULT NULL COMMENT '地区',
  `level` smallint(2) DEFAULT '1' COMMENT '用户等级',
  `token` varchar(256) DEFAULT NULL,
  `cid` varchar(256) DEFAULT NULL,
  `push_status` int(1) DEFAULT '1' COMMENT '0:不推送 1:推送',
  `push_live_status` int(11) DEFAULT '1' COMMENT '0:不推送 1:推送',
  `sns_account` varchar(64) DEFAULT NULL COMMENT '三方账号',
  `weibo_account` varchar(64) DEFAULT NULL COMMENT '微博id',
  `weibo_token` varchar(128) DEFAULT NULL COMMENT '微博token',
  `is_moke` smallint(2) NOT NULL DEFAULT '0' COMMENT '是否模拟用户  0：真实，1：虚拟',
  `contact_mobile` varchar(16) DEFAULT NULL COMMENT '联系号码，不同于mobile。mobile是用户账号',
  `name_zh` varchar(60) DEFAULT NULL,
  `wx_openid` varchar(60) DEFAULT NULL,
  `wx_status` smallint(2) NOT NULL DEFAULT '0' COMMENT '0:未授权  1:已授权',
  `unionid` varchar(64) DEFAULT NULL,
  `type` int(2) NOT NULL DEFAULT '1' COMMENT '0:游客，1:登录用户',
  `has_register` int(2) NOT NULL DEFAULT '0' COMMENT '0:未注册 1:已注册',
  `set_fnumber` int(11) DEFAULT '0' COMMENT '设定的粉丝量',
  `need_upload_contact` int(2) DEFAULT '0' COMMENT '新注册的账号该值为1，如果是新注册的，询问用户传通讯录好友，发送推送。询问后设为0。',
  `is_sign` int(11) DEFAULT '0' COMMENT '是否被签约，0未签约1已签约',
  `hot_sign_count` int(11) DEFAULT '0' COMMENT '签约上热门的次数',
  `hot_real_count` int(11) DEFAULT '0' COMMENT '实际上热门的次数',
  `imei` varchar(50) DEFAULT NULL COMMENT ' 用户登录时的设备码',
  `forbidden_withdrawals` int(2) DEFAULT '0' COMMENT '是否禁止提现，0为不禁止，1为禁止提现',
  `today_fnumber` int(11) DEFAULT '0' COMMENT '每天刷的粉丝量',
  `total_fnumber` int(11) DEFAULT '0' COMMENT '历史累计刷粉数',
  `checkFresh` int(11) DEFAULT '0' COMMENT '判断是否刷：0不刷1开刷',
  `next_level_exp` int(5) DEFAULT NULL COMMENT '等级区间',
  `experience` int(10) DEFAULT '0',
  `auth` varchar(100) DEFAULT NULL COMMENT '认证信息',
  `auth_type` tinyint(4) DEFAULT '0' COMMENT '0:普通 1:认证 2-10保留 11:会员',
  `auth_image` varchar(256) DEFAULT NULL COMMENT '认证的图片地址',
  `auth_comment` varchar(50) DEFAULT NULL COMMENT '加V备注',
  `authentication` varchar(100) DEFAULT '' COMMENT '认证信息',
  `q_uid` varchar(100) DEFAULT NULL,
  `province1` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `lon` varchar(40) DEFAULT NULL,
  `lat1` varchar(40) DEFAULT NULL,
  `user_ident` tinyint(4) DEFAULT '-1' COMMENT '用户身份标识。-2：原充值用户，-1：原提现用户，0:送礼用户，1：提现用户',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind_` (`disagree_no`),
  KEY `tel_index` (`mobile`) USING BTREE,
  KEY `ind_sns_account` (`sns_account`),
  KEY `ind_register_time` (`register_time`),
  KEY `ind_moke` (`is_moke`),
  KEY `ind_user_nick` (`nick_name`),
  KEY `ind_cid` (`cid`(191)),
  KEY `INDEX_tel` (`contact_mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=837013 DEFAULT CHARSET=utf8mb4 COMMENT='用户基础信息';

-- ----------------------------
-- Table structure for tab_user_xuni_copy
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_xuni_copy`;
CREATE TABLE `tab_user_xuni_copy` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `disagree_no` varchar(8) NOT NULL COMMENT '不服号',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(128) DEFAULT NULL COMMENT '昵称',
  `signature` varchar(120) DEFAULT NULL COMMENT '签名',
  `sex` smallint(2) DEFAULT '0' COMMENT '性别',
  `age` smallint(4) DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(64) DEFAULT NULL COMMENT '生日',
  `mobile` varchar(16) DEFAULT NULL COMMENT '手机号码',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `status` smallint(2) DEFAULT '0' COMMENT '0正常 1停用 2禁止评论  3禁止发布视频 4禁止发布视频和评论',
  `avatars_url` varchar(256) DEFAULT NULL COMMENT '头像url',
  `pnumber` bigint(18) DEFAULT '0' COMMENT '评论数',
  `anumber` bigint(18) DEFAULT '0' COMMENT '关注数',
  `fnumber` bigint(18) DEFAULT '0' COMMENT '粉丝数',
  `mnumber` int(11) DEFAULT '0' COMMENT '用户视频数',
  `tnumber` int(11) DEFAULT '0' COMMENT '话题数',
  `match_number` int(11) DEFAULT '0' COMMENT '赛事视频数',
  `bg_url` varchar(256) DEFAULT NULL COMMENT '背景url',
  `lat` varchar(64) DEFAULT NULL COMMENT '保留字段',
  `lag` varchar(64) DEFAULT NULL COMMENT '保留字段',
  `province_name` varchar(32) DEFAULT NULL COMMENT '省份',
  `city_name` varchar(32) DEFAULT NULL COMMENT '城市',
  `position_city` varchar(32) DEFAULT NULL COMMENT '定位城市',
  `area_name` varchar(32) DEFAULT NULL COMMENT '地区',
  `level` smallint(2) DEFAULT '1' COMMENT '用户等级',
  `token` varchar(256) DEFAULT NULL,
  `cid` varchar(256) DEFAULT NULL,
  `push_status` int(1) DEFAULT '1' COMMENT '0:不推送 1:推送',
  `push_live_status` int(11) DEFAULT '1' COMMENT '0:不推送 1:推送',
  `sns_account` varchar(64) DEFAULT NULL COMMENT '三方账号',
  `weibo_account` varchar(64) DEFAULT NULL COMMENT '微博id',
  `weibo_token` varchar(128) DEFAULT NULL COMMENT '微博token',
  `is_moke` smallint(2) NOT NULL DEFAULT '0' COMMENT '是否模拟用户  0：真实，1：虚拟',
  `contact_mobile` varchar(16) DEFAULT NULL COMMENT '联系号码，不同于mobile。mobile是用户账号',
  `name_zh` varchar(60) DEFAULT NULL,
  `wx_openid` varchar(60) DEFAULT NULL,
  `wx_status` smallint(2) NOT NULL DEFAULT '0' COMMENT '0:未授权  1:已授权',
  `unionid` varchar(64) DEFAULT NULL,
  `type` int(2) NOT NULL DEFAULT '1' COMMENT '0:游客，1:登录用户',
  `has_register` int(2) NOT NULL DEFAULT '0' COMMENT '0:未注册 1:已注册',
  `set_fnumber` int(11) DEFAULT '0' COMMENT '设定的粉丝量',
  `need_upload_contact` int(2) DEFAULT '0' COMMENT '新注册的账号该值为1，如果是新注册的，询问用户传通讯录好友，发送推送。询问后设为0。',
  `is_sign` int(11) DEFAULT '0' COMMENT '是否被签约，0未签约1已签约',
  `hot_sign_count` int(11) DEFAULT '0' COMMENT '签约上热门的次数',
  `hot_real_count` int(11) DEFAULT '0' COMMENT '实际上热门的次数',
  `imei` varchar(50) DEFAULT NULL COMMENT ' 用户登录时的设备码',
  `forbidden_withdrawals` int(2) DEFAULT '0' COMMENT '是否禁止提现，0为不禁止，1为禁止提现',
  `today_fnumber` int(11) DEFAULT '0' COMMENT '每天刷的粉丝量',
  `total_fnumber` int(11) DEFAULT '0' COMMENT '历史累计刷粉数',
  `checkFresh` int(11) DEFAULT '0' COMMENT '判断是否刷：0不刷1开刷',
  `next_level_exp` int(5) DEFAULT NULL COMMENT '等级区间',
  `experience` int(10) DEFAULT '0',
  `auth` varchar(100) DEFAULT NULL COMMENT '认证信息',
  `auth_type` tinyint(4) DEFAULT '0' COMMENT '0:普通 1:认证 2-10保留 11:会员',
  `auth_image` varchar(256) DEFAULT NULL COMMENT '认证的图片地址',
  `auth_comment` varchar(50) DEFAULT NULL COMMENT '加V备注',
  `authentication` varchar(100) DEFAULT '' COMMENT '认证信息',
  `q_uid` varchar(100) DEFAULT NULL,
  `province1` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `lon` varchar(40) DEFAULT NULL,
  `lat1` varchar(40) DEFAULT NULL,
  `user_ident` tinyint(4) DEFAULT '-1' COMMENT '用户身份标识。-2：原充值用户，-1：原提现用户，0:送礼用户，1：提现用户',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ind_` (`disagree_no`),
  KEY `tel_index` (`mobile`) USING BTREE,
  KEY `ind_sns_account` (`sns_account`),
  KEY `ind_register_time` (`register_time`),
  KEY `ind_moke` (`is_moke`),
  KEY `ind_user_nick` (`nick_name`),
  KEY `ind_cid` (`cid`(191)),
  KEY `INDEX_tel` (`contact_mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=837011 DEFAULT CHARSET=utf8mb4 COMMENT='用户基础信息';

-- ----------------------------
-- Table structure for tab_vip_record
-- ----------------------------
DROP TABLE IF EXISTS `tab_vip_record`;
CREATE TABLE `tab_vip_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `related_no` int(11) DEFAULT NULL COMMENT '关联的商品id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `price` smallint(6) DEFAULT '0' COMMENT '购买金额',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单id',
  `transaction_id` varchar(32) DEFAULT '0' COMMENT '不是会员时候的类型',
  `buyer_account` varchar(255) DEFAULT NULL COMMENT '不是会员时候的认证角标',
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=675 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_virtual_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_virtual_user`;
CREATE TABLE `tab_virtual_user` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `id` bigint(18) NOT NULL COMMENT '用户ID',
  `disagree_no` varchar(36) DEFAULT NULL COMMENT '不服号',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(128) DEFAULT NULL COMMENT '昵称',
  `signature` varchar(120) DEFAULT NULL COMMENT '签名',
  `sex` smallint(2) DEFAULT NULL COMMENT '性别',
  `age` smallint(4) DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(64) DEFAULT NULL COMMENT '生日',
  `mobile` varchar(16) DEFAULT NULL COMMENT '手机号码',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `status` smallint(2) DEFAULT '0' COMMENT '0正常 1停用 2禁止评论  3禁止发布视频 4禁止发布视频和评论',
  `avatars_url` varchar(256) DEFAULT NULL COMMENT '头像url',
  `pnumber` bigint(18) DEFAULT '0' COMMENT '评论数',
  `anumber` bigint(18) DEFAULT '0' COMMENT '关注数',
  `fnumber` bigint(18) DEFAULT '0' COMMENT '粉丝数',
  `mnumber` int(11) DEFAULT '0' COMMENT '用户视频数',
  `tnumber` int(11) DEFAULT '0' COMMENT '话题数',
  `match_number` int(11) DEFAULT '0' COMMENT '赛事视频数',
  `bg_url` varchar(256) DEFAULT NULL COMMENT '背景url',
  `lat` varchar(64) DEFAULT NULL COMMENT '保留字段',
  `lag` varchar(64) DEFAULT NULL COMMENT '保留字段',
  `province_name` varchar(32) DEFAULT NULL COMMENT '省份',
  `city_name` varchar(32) DEFAULT NULL COMMENT '城市',
  `area_name` varchar(32) DEFAULT NULL COMMENT '地区',
  `level` smallint(2) DEFAULT '1' COMMENT '用户等级',
  `token` varchar(256) DEFAULT NULL,
  `cid` varchar(256) DEFAULT NULL,
  `sns_account` varchar(64) DEFAULT NULL COMMENT '三方账号',
  `is_moke` smallint(2) NOT NULL DEFAULT '0' COMMENT '是否模拟用户  0：真实，1：虚拟',
  `contact_mobile` varchar(16) DEFAULT NULL COMMENT '联系号码，不同于mobile。mobile是用户账号',
  `name_zh` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21906 DEFAULT CHARSET=utf8mb4 COMMENT='虚拟用户基础信息';

-- ----------------------------
-- Table structure for tab_vote_detail
-- ----------------------------
DROP TABLE IF EXISTS `tab_vote_detail`;
CREATE TABLE `tab_vote_detail` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `uid` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `media_id` bigint(18) DEFAULT NULL COMMENT '视频ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `openid` varchar(50) DEFAULT NULL,
  `type` int(2) DEFAULT '0' COMMENT '0:app 1:微信 2:微博 （把微信更新为1）',
  PRIMARY KEY (`id`),
  KEY `ind_createtime` (`create_time`),
  KEY `ind_uid` (`uid`),
  KEY `ind_comp` (`id`,`media_id`,`uid`),
  KEY `ind_mediaid` (`media_id`),
  KEY `IND_openid` (`openid`(13))
) ENGINE=InnoDB AUTO_INCREMENT=8952609 DEFAULT CHARSET=utf8mb4 COMMENT='投票记录';

-- ----------------------------
-- Table structure for tab_vote_detail_copy
-- ----------------------------
DROP TABLE IF EXISTS `tab_vote_detail_copy`;
CREATE TABLE `tab_vote_detail_copy` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `uid` bigint(18) DEFAULT NULL COMMENT '用户ID',
  `media_id` bigint(18) DEFAULT NULL COMMENT '视频ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `openid` varchar(50) DEFAULT NULL,
  `type` int(2) DEFAULT '0' COMMENT '0:app 1:微信 2:微博 （把微信更新为1）',
  PRIMARY KEY (`id`),
  KEY `ind_createtime` (`create_time`),
  KEY `ind_uid` (`uid`),
  KEY `ind_comp` (`id`,`media_id`,`uid`),
  KEY `ind_mediaid` (`media_id`),
  KEY `IND_openid` (`openid`(13))
) ENGINE=InnoDB AUTO_INCREMENT=8952609 DEFAULT CHARSET=utf8mb4 COMMENT='投票记录';

-- ----------------------------
-- Table structure for tab_wb_server_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_wb_server_user`;
CREATE TABLE `tab_wb_server_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) DEFAULT NULL COMMENT '微博uid',
  `nick_name` varchar(30) DEFAULT NULL COMMENT '微信昵称',
  `country` varchar(30) DEFAULT NULL COMMENT '国家',
  `province` varchar(30) DEFAULT NULL COMMENT '省',
  `city` varchar(30) DEFAULT NULL COMMENT '城市',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '微信头像地址',
  `sex` int(2) DEFAULT NULL COMMENT '1为男，0为女',
  `unionid` varchar(50) DEFAULT NULL COMMENT '联合ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tab_wx_h5_refresh
-- ----------------------------
DROP TABLE IF EXISTS `tab_wx_h5_refresh`;
CREATE TABLE `tab_wx_h5_refresh` (
  `id` bigint(18) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nick_name` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '昵称',
  `disagree_no` varchar(8) CHARACTER SET utf8mb4 NOT NULL COMMENT '不服号',
  `avatars_url` varchar(280) CHARACTER SET utf8mb4 DEFAULT NULL,
  `media_id` bigint(18) NOT NULL DEFAULT '0',
  `title` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `content` varchar(4096) CHARACTER SET utf8mb4 DEFAULT NULL,
  `media_url` varchar(280) CHARACTER SET utf8mb4 DEFAULT NULL,
  `images_url` text CHARACTER SET utf8mb4,
  `match_status` smallint(4) DEFAULT '0' COMMENT '0为未开始，1为开始，2为删除，4：为结束（赛事的开始结束由人工跑批控制），9：h5_url不能为空，直接跳转h5页面(状态9的情况，从2.2.0开始已经取消了。)',
  `coin_yesterday` decimal(11,2) DEFAULT '0.00' COMMENT 'type为4的赛事使用该字段，用户在该场赛事中截止前一天24时计算出的金币数',
  `rise_type` smallint(2) DEFAULT NULL COMMENT '晋级方式：0为常规晋级，1为评委指定晋级 2:发起者',
  `is_recom` smallint(2) DEFAULT NULL COMMENT 'type为4的赛事使用此字段：1为精选视频 2为擂主视频 3为默认播放的视频',
  `vote_num` int(18) DEFAULT '0' COMMENT '投票数',
  `coin` varchar(8) CHARACTER SET latin1 DEFAULT NULL,
  `is_vote` int(11) NOT NULL DEFAULT '0',
  `is_self` int(11) NOT NULL DEFAULT '0',
  `recom_sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for tab_wx_server_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_wx_server_user`;
CREATE TABLE `tab_wx_server_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) DEFAULT NULL COMMENT '微信openid',
  `nick_name` varchar(30) DEFAULT NULL COMMENT '微信昵称',
  `country` varchar(30) DEFAULT NULL COMMENT '国家',
  `province` varchar(30) DEFAULT NULL COMMENT '省',
  `city` varchar(30) DEFAULT NULL COMMENT '城市',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '微信头像地址',
  `sex` int(2) DEFAULT NULL COMMENT '1为男，0为女',
  `unionid` varchar(50) DEFAULT NULL COMMENT '联合ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ind_openid` (`openid`(13))
) ENGINE=InnoDB AUTO_INCREMENT=293355 DEFAULT CHARSET=utf8mb4 COMMENT='关注不服APP服务号的用户信息';

-- ----------------------------
-- Table structure for tab_wx_sharelog
-- ----------------------------
DROP TABLE IF EXISTS `tab_wx_sharelog`;
CREATE TABLE `tab_wx_sharelog` (
  `appid` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `crt_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_wx_support
-- ----------------------------
DROP TABLE IF EXISTS `tab_wx_support`;
CREATE TABLE `tab_wx_support` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `content` varchar(200) NOT NULL,
  `crt_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1259 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_wx_tixian
-- ----------------------------
DROP TABLE IF EXISTS `tab_wx_tixian`;
CREATE TABLE `tab_wx_tixian` (
  `uid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `crt_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_wx_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `tab_wx_userinfo`;
CREATE TABLE `tab_wx_userinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `headimgurl` varchar(500) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `crt_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002246 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tab_xuni_rechange_test
-- ----------------------------
DROP TABLE IF EXISTS `tab_xuni_rechange_test`;
CREATE TABLE `tab_xuni_rechange_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '-1',
  `money` int(11) DEFAULT '0' COMMENT '面值',
  `create_time` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `valid_day` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ind_u` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=134000 DEFAULT CHARSET=utf8mb4 COMMENT='充值记录明细';

-- ----------------------------
-- Table structure for tb_sequence
-- ----------------------------
DROP TABLE IF EXISTS `tb_sequence`;
CREATE TABLE `tb_sequence` (
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `current_value` int(11) NOT NULL,
  `_increment` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for temple_idfa
-- ----------------------------
DROP TABLE IF EXISTS `temple_idfa`;
CREATE TABLE `temple_idfa` (
  `app_store_ID` varchar(9) DEFAULT NULL,
  `idfa` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  KEY `ind_1` (`idfa`(7))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for temple_text
-- ----------------------------
DROP TABLE IF EXISTS `temple_text`;
CREATE TABLE `temple_text` (
  `words` varchar(200) NOT NULL,
  `num` int(11) DEFAULT NULL,
  `arg` int(11) DEFAULT NULL,
  `flag` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tmp_finance
-- ----------------------------
DROP TABLE IF EXISTS `tmp_finance`;
CREATE TABLE `tmp_finance` (
  `order_no` varchar(20) DEFAULT NULL COMMENT '订单号',
  `buyer_account` varchar(256) DEFAULT NULL COMMENT '购买者的三方账号',
  `price_coin` decimal(18,2) DEFAULT NULL COMMENT '购买时花费的人民币金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for tmp_user_attention
-- ----------------------------
DROP TABLE IF EXISTS `tmp_user_attention`;
CREATE TABLE `tmp_user_attention` (
  `id` bigint(18) DEFAULT NULL COMMENT '主键ID',
  KEY `ind_tmp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- View structure for tab_app_coin_union
-- ----------------------------
DROP VIEW IF EXISTS `tab_app_coin_union`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tab_app_coin_union` AS select `tab_app_coin_xuni`.`uid` AS `uid`,`tab_app_coin_xuni`.`coin_before` AS `coin_before`,`tab_app_coin_xuni`.`coin_change` AS `coin_change`,`tab_app_coin_xuni`.`coin_after` AS `coin_after`,`tab_app_coin_xuni`.`price_coin` AS `price_coin`,`tab_app_coin_xuni`.`change_text` AS `change_text`,`tab_app_coin_xuni`.`change_time` AS `change_time`,`tab_app_coin_xuni`.`status` AS `status`,`tab_app_coin_xuni`.`related_no` AS `related_no`,`tab_app_coin_xuni`.`type` AS `type`,`tab_app_coin_xuni`.`from` AS `from`,`tab_app_coin_xuni`.`order_no` AS `order_no`,`tab_app_coin_xuni`.`transaction_id` AS `transaction_id`,`tab_app_coin_xuni`.`err_code_des` AS `err_code_des`,`tab_app_coin_xuni`.`imei` AS `imei`,`tab_app_coin_xuni`.`buyer_account` AS `buyer_account`,`tab_app_coin_xuni`.`change_class` AS `change_class`,`tab_app_coin_xuni`.`is_recharge` AS `is_recharge`,`tab_app_coin_xuni`.`gift_num` AS `gift_num` from `tab_app_coin_xuni` union all select `tab_app_coin`.`uid` AS `uid`,`tab_app_coin`.`coin_before` AS `coin_before`,`tab_app_coin`.`coin_change` AS `coin_change`,`tab_app_coin`.`coin_after` AS `coin_after`,`tab_app_coin`.`price_coin` AS `price_coin`,`tab_app_coin`.`change_text` AS `change_text`,`tab_app_coin`.`change_time` AS `change_time`,`tab_app_coin`.`status` AS `status`,`tab_app_coin`.`related_no` AS `related_no`,`tab_app_coin`.`type` AS `type`,`tab_app_coin`.`from` AS `from`,`tab_app_coin`.`order_no` AS `order_no`,`tab_app_coin`.`transaction_id` AS `transaction_id`,`tab_app_coin`.`err_code_des` AS `err_code_des`,`tab_app_coin`.`imei` AS `imei`,`tab_app_coin`.`buyer_account` AS `buyer_account`,`tab_app_coin`.`change_class` AS `change_class`,`tab_app_coin`.`is_recharge` AS `is_recharge`,`tab_app_coin`.`gift_num` AS `gift_num` from `tab_app_coin` ;

-- ----------------------------
-- View structure for tab_coin_union
-- ----------------------------
DROP VIEW IF EXISTS `tab_coin_union`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tab_coin_union` AS select `tab_coin`.`uid` AS `uid`,`tab_coin`.`imei` AS `imei`,`tab_coin`.`coin_before` AS `coin_before`,`tab_coin`.`change_text` AS `change_text`,`tab_coin`.`coin_change` AS `coin_change`,`tab_coin`.`change_time` AS `change_time`,`tab_coin`.`coin_after` AS `coin_after`,`tab_coin`.`status` AS `status`,`tab_coin`.`mch_billno` AS `mch_billno`,`tab_coin`.`err_code` AS `err_code`,`tab_coin`.`err_code_des` AS `err_code_des`,`tab_coin`.`send_time` AS `send_time`,`tab_coin`.`type` AS `type`,`tab_coin`.`fu_before` AS `fu_before`,`tab_coin`.`fu_change` AS `fu_change`,`tab_coin`.`fu_after` AS `fu_after`,`tab_coin`.`ali_batch_no` AS `ali_batch_no`,`tab_coin`.`ali_account` AS `ali_account`,`tab_coin`.`ali_name` AS `ali_name`,`tab_coin`.`coin_type` AS `coin_type`,`tab_coin`.`related_id` AS `related_id`,`tab_coin`.`related_type` AS `related_type`,`tab_coin`.`from` AS `from`,`tab_coin`.`gift_num` AS `gift_num` from `tab_coin` union all select `tab_coin_xuni`.`uid` AS `uid`,`tab_coin_xuni`.`imei` AS `imei`,`tab_coin_xuni`.`coin_before` AS `coin_before`,`tab_coin_xuni`.`change_text` AS `change_text`,`tab_coin_xuni`.`coin_change` AS `coin_change`,`tab_coin_xuni`.`change_time` AS `change_time`,`tab_coin_xuni`.`coin_after` AS `coin_after`,`tab_coin_xuni`.`status` AS `status`,`tab_coin_xuni`.`mch_billno` AS `mch_billno`,`tab_coin_xuni`.`err_code` AS `err_code`,`tab_coin_xuni`.`err_code_des` AS `err_code_des`,`tab_coin_xuni`.`send_time` AS `send_time`,`tab_coin_xuni`.`type` AS `type`,`tab_coin_xuni`.`fu_before` AS `fu_before`,`tab_coin_xuni`.`fu_change` AS `fu_change`,`tab_coin_xuni`.`fu_after` AS `fu_after`,`tab_coin_xuni`.`ali_batch_no` AS `ali_batch_no`,`tab_coin_xuni`.`ali_account` AS `ali_account`,`tab_coin_xuni`.`ali_name` AS `ali_name`,`tab_coin_xuni`.`coin_type` AS `coin_type`,`tab_coin_xuni`.`related_id` AS `related_id`,`tab_coin_xuni`.`related_type` AS `related_type`,`tab_coin_xuni`.`from` AS `from`,`tab_coin_xuni`.`gift_num` AS `gift_num` from `tab_coin_xuni` ;

-- ----------------------------
-- View structure for v_activity_rank1
-- ----------------------------
DROP VIEW IF EXISTS `v_activity_rank1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_activity_rank1` AS select `b`.`id` AS `id`,`b`.`nick_name` AS `nick_name`,`b`.`avatars_url` AS `avatars_url`,`b`.`signature` AS `signature`,`b`.`match_id` AS `match_id`,`b`.`pcount` AS `pcount`,((select count(0) from `v_activity_rank2` `a` where ((`a`.`match_id` = `b`.`match_id`) and (`a`.`pcount` > `b`.`pcount`))) + 1) AS `prank` from `v_activity_rank2` `b` ;

-- ----------------------------
-- View structure for v_activity_rank2
-- ----------------------------
DROP VIEW IF EXISTS `v_activity_rank2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_activity_rank2` AS select `a`.`id` AS `id`,`a`.`nick_name` AS `nick_name`,`a`.`avatars_url` AS `avatars_url`,`a`.`signature` AS `signature`,`b`.`match_id` AS `match_id`,count(distinct `c`.`create_time`) AS `pcount` from (((`tab_user` `a` join `tab_media` `b`) join `tab_media_support` `c`) join `tab_sub_match` `d`) where ((`a`.`id` = `b`.`user_id`) and (`b`.`id` = `c`.`media_id`) and (`b`.`match_id` = `d`.`id`)) group by 1,5 order by 5,6 desc ;

-- ----------------------------
-- View structure for v_daily_truevote
-- ----------------------------
DROP VIEW IF EXISTS `v_daily_truevote`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_daily_truevote` AS select `b`.`media_id` AS `media_id`,count(`f`.`id`) AS `pcount` from (`tab_sub_match_media` `b` left join (`tab_vote_detail` `a` left join `tab_user` `f` on(((`f`.`id` = `a`.`uid`) and (`f`.`is_moke` = 0)))) on(((`a`.`media_id` = `b`.`media_id`) and (`b`.`status` <> 2) and (`b`.`sub_match_id` = 19)))) where (`a`.`create_time` > curdate()) group by `b`.`media_id` ;

-- ----------------------------
-- View structure for v_huati_tj
-- ----------------------------
DROP VIEW IF EXISTS `v_huati_tj`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_huati_tj` AS select `a`.`id` AS `id`,count(distinct `e`.`id`) AS `huatS`,count(distinct `f`.`id`) AS `huifS` from ((`tab_sub_match` `a` left join `tab_topic` `e` on((`a`.`id` = `e`.`tag_id`))) left join `tab_topic_comment` `f` on((`e`.`id` = `f`.`topic_id`))) where (`e`.`type` = 1) group by `a`.`id` ;

-- ----------------------------
-- View structure for v_kapian_tj
-- ----------------------------
DROP VIEW IF EXISTS `v_kapian_tj`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_kapian_tj` AS select `a`.`id` AS `id`,max(`a`.`name`) AS `ssm`,max(`a`.`view_count`) AS `kap`,sum(`b`.`vote_num`) AS `toupZ` from (`tab_sub_match` `a` join `tab_sub_match_media` `b` on((`a`.`id` = `b`.`sub_match_id`))) group by `a`.`id` ;

-- ----------------------------
-- View structure for v_match_rank
-- ----------------------------
DROP VIEW IF EXISTS `v_match_rank`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_match_rank` AS select `b`.`id` AS `match_id`,`c`.`id` AS `user_id`,`c`.`nick_name` AS `nick_name`,`c`.`signature` AS `signature`,`c`.`avatars_url` AS `avatars_url`,sum(`a`.`pnumber`) AS `pcount` from ((`tab_media` `a` left join `tab_sub_match` `b` on((`a`.`match_id` = `b`.`id`))) left join `tab_user` `c` on((`a`.`user_id` = `c`.`id`))) where (`a`.`match_id` > 0) group by `b`.`id`,`a`.`user_id` order by 2,6 ;

-- ----------------------------
-- View structure for v_match_rank_by_group
-- ----------------------------
DROP VIEW IF EXISTS `v_match_rank_by_group`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_match_rank_by_group` AS select `a`.`uid` AS `uid`,`a`.`media_id` AS `media_id`,`a`.`vote_num` AS `vote_num`,`a`.`sub_match_id` AS `sub_match_id`,(select (count(0) + 1) from `tab_sub_match_media` `b` where ((`a`.`vote_num` < `b`.`vote_num`) and (`a`.`sub_match_id` = `b`.`sub_match_id`))) AS `rank` from `tab_sub_match_media` `a` order by 4,5 ;

-- ----------------------------
-- View structure for v_match_type_count
-- ----------------------------
DROP VIEW IF EXISTS `v_match_type_count`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_match_type_count` AS select `tu`.`nick_name` AS `nick_name`,`mp`.`sub_match_id` AS `sub_match_id`,sum(`mm`.`vote_num`) AS `summ`,`tm`.`title` AS `title`,`tu`.`id` AS `id`,`mm`.`group_id` AS `group_id`,max(`tu`.`is_moke`) AS `is_moke`,concat(`tm`.`title`,',',sum(`mm`.`vote_num`)) AS `pj` from (((`tab_sub_match_player` `mp` join `tab_sub_match_media` `mm`) join `tab_media` `tm`) join `tab_user` `tu`) where ((`mp`.`uid` = `mm`.`uid`) and (`mp`.`group_id` = `mm`.`group_id`) and (`tu`.`id` = `mp`.`uid`) and (`tm`.`id` = `mm`.`media_id`)) group by `tu`.`nick_name`,`mp`.`sub_match_id`,`tu`.`id`,`tm`.`title`,`mm`.`group_id` order by 3 desc ;

-- ----------------------------
-- View structure for v_pinglun_tj
-- ----------------------------
DROP VIEW IF EXISTS `v_pinglun_tj`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_pinglun_tj` AS select `a`.`id` AS `id`,count(`d`.`id`) AS `pinglz`,count(distinct `d`.`auser_id`) AS `pinglR` from ((`tab_sub_match` `a` join `tab_sub_match_media` `b` on((`a`.`id` = `b`.`sub_match_id`))) left join `tab_media_comment` `d` on((`b`.`media_id` = `d`.`media_id`))) group by `a`.`id` ;

-- ----------------------------
-- View structure for v_tab_sub_match_media
-- ----------------------------
DROP VIEW IF EXISTS `v_tab_sub_match_media`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_tab_sub_match_media` AS select `a`.`uid` AS `uid`,`a`.`group_id` AS `group_id`,`b`.`status` AS `status`,(case when (`b`.`status` = 1) then 9999999 else sum(`a`.`vote_num`) end) AS `pcount` from (`tab_sub_match_media` `a` join `tab_sub_match_player` `b`) where ((`a`.`uid` = `b`.`uid`) and (`a`.`group_id` = `b`.`group_id`)) group by `a`.`uid`,`a`.`group_id` order by `b`.`status` desc,(case when (`b`.`status` = 1) then 9999999 else sum(`a`.`vote_num`) end) desc ;

-- ----------------------------
-- View structure for v_tab_sub_match_media_second
-- ----------------------------
DROP VIEW IF EXISTS `v_tab_sub_match_media_second`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_tab_sub_match_media_second` AS select `b`.`uid` AS `uid`,`b`.`group_id` AS `group_id`,`b`.`status` AS `status`,(select sum(`a`.`vote_num`) from `tab_sub_match_media` `a` where ((`a`.`uid` = `b`.`uid`) and (`a`.`group_id` = `b`.`group_id`))) AS `pcount` from `v_tab_sub_match_media` `b` ;

-- ----------------------------
-- View structure for v_test
-- ----------------------------
DROP VIEW IF EXISTS `v_test`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_test` AS select '前日结余' AS `type1`,sum(`tab_app_coin`.`coin_change`) AS `bufu1`,0 AS `coin1` from `tab_app_coin` where (`tab_app_coin`.`change_time` < '2016-10-12') union select '国庆抢红包' AS `国庆抢红包`,sum(`tab_app_coin`.`coin_change`) AS `SUM(coin_change)`,0 AS `0` from `tab_app_coin` where ((`tab_app_coin`.`change_text` = '国庆抢红包') and (`tab_app_coin`.`change_time` >= '2016-10-12') and (`tab_app_coin`.`change_time` < '2016-10-12 10:00:00')) union select '国庆分享红包' AS `国庆分享红包`,sum(`tab_app_coin`.`coin_change`) AS `SUM(coin_change)`,0 AS `0` from `tab_app_coin` where ((`tab_app_coin`.`change_text` = '国庆分享红包') and (`tab_app_coin`.`change_time` >= '2016-10-12') and (`tab_app_coin`.`change_time` < '2016-10-12 10:00:00')) union select '充值' AS `充值`,sum(`tab_app_coin`.`coin_change`) AS `r_fu`,sum(`tab_app_coin`.`price_coin`) AS `money` from `tab_app_coin` where ((`tab_app_coin`.`change_text` = '充值') and (`tab_app_coin`.`change_time` >= '2016-10-12') and (`tab_app_coin`.`change_time` < '2016-10-12 10:00:00')) union select '用户Apple商店充值' AS `用户Apple商店充值`,sum(`tab_app_coin`.`coin_change`) AS `r_fu`,sum(`tab_app_coin`.`price_coin`) AS `money` from `tab_app_coin` where ((`tab_app_coin`.`change_text` = '用户Apple商店充值') and (`tab_app_coin`.`change_time` >= '2016-10-12') and (`tab_app_coin`.`change_time` < '2016-10-12 10:00:00')) union select '副卡兑换' AS `副卡兑换`,sum(`tab_app_coin`.`coin_change`) AS `sum(coin_change)`,0 AS `0` from `tab_app_coin` where ((`tab_app_coin`.`change_text` = '福卡兑换') and (`tab_app_coin`.`change_time` >= '2016-10-12') and (`tab_app_coin`.`change_time` < '2016-10-12 10:00:00')) union select '送出礼物' AS `送出礼物`,sum(`tab_app_coin`.`coin_change`) AS `sum(coin_change)`,0 AS `0` from `tab_app_coin` where ((`tab_app_coin`.`change_text` = '送出礼物') and (`tab_app_coin`.`change_time` >= '2016-10-12') and (`tab_app_coin`.`change_time` < '2016-10-12 10:00:00')) union select '今日结余' AS `今日结余`,sum(`tab_app_coin`.`coin_change`) AS `s_fu`,0 AS `0` from `tab_app_coin` where (`tab_app_coin`.`change_time` < '2016-10-12 10:00:00') ;

-- ----------------------------
-- View structure for v_toupiao_tj
-- ----------------------------
DROP VIEW IF EXISTS `v_toupiao_tj`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_toupiao_tj` AS select `a`.`id` AS `id`,count(distinct `c`.`uid`) AS `toupR`,count(`c`.`uid`) AS `toupS` from ((`tab_sub_match` `a` join `tab_sub_match_media` `b` on((`a`.`id` = `b`.`sub_match_id`))) left join `tab_vote_detail` `c` on((`b`.`media_id` = `c`.`media_id`))) group by `a`.`id` ;

-- ----------------------------
-- View structure for vw_live_ugc
-- ----------------------------
DROP VIEW IF EXISTS `vw_live_ugc`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `vw_live_ugc` AS select `a`.`id` AS `id`,`a`.`uid` AS `uid`,`a`.`q_uid` AS `q_uid`,`a`.`title` AS `title`,`a`.`cover_image` AS `cover_image`,`a`.`shot_image` AS `shot_image`,`a`.`province` AS `province`,`a`.`content` AS `content`,`a`.`city` AS `city`,`a`.`status` AS `status`,`a`.`start_time` AS `start_time`,`a`.`end_time` AS `end_time`,`a`.`duration_time` AS `duration_time`,`a`.`match_id` AS `match_id`,`a`.`online_number` AS `online_number`,`a`.`online_real_num` AS `online_real_num`,`a`.`support_num` AS `support_num`,`a`.`total_visitor` AS `total_visitor`,`a`.`type` AS `type`,`a`.`direction_type` AS `direction_type`,`a`.`accept_pk` AS `accept_pk`,`a`.`accept_pk_status` AS `accept_pk_status`,`a`.`pk_title` AS `pk_title`,`a`.`pk_content` AS `pk_content`,`a`.`pk_duration` AS `pk_duration`,`a`.`pk_status` AS `pk_status`,`a`.`sort` AS `sort`,`a`.`is_official` AS `is_official`,`a`.`lon` AS `lon`,`a`.`lat` AS `lat`,`a`.`hot_type` AS `hot_type`,`a`.`hot_starttime` AS `hot_starttime`,`a`.`hot_endtime` AS `hot_endtime`,`a`.`share_times` AS `share_times`,`a`.`comment_times` AS `comment_times`,`a`.`hls` AS `hls`,`a`.`file_name` AS `file_name`,`a`.`file_error` AS `file_error`,`a`.`file_src` AS `file_src`,`a`.`pk_theme_image` AS `pk_theme_image`,`a`.`pk_theme_url` AS `pk_theme_url`,`a`.`share_title` AS `share_title`,`a`.`share_content` AS `share_content`,`a`.`share_image` AS `share_image`,`a`.`share_url` AS `share_url`,`a`.`heartbeat_time` AS `heartbeat_time`,`a`.`set_visitor_num_min` AS `set_visitor_num_min`,`a`.`set_visitor_num_max` AS `set_visitor_num_max`,`a`.`set_time` AS `set_time`,`a`.`set_time_add` AS `set_time_add`,`a`.`refresh_visitor_num` AS `refresh_visitor_num`,`a`.`is_freshing` AS `is_freshing`,`a`.`float_visitor_num` AS `float_visitor_num`,`a`.`is_floating` AS `is_floating`,`a`.`refresh_total_min` AS `refresh_total_min`,`a`.`refresh_total_max` AS `refresh_total_max`,`a`.`err_msg` AS `err_msg`,`a`.`accept_pk_set` AS `accept_pk_set`,`a`.`warning_count` AS `warning_count`,`a`.`warning_time` AS `warning_time`,`a`.`confidence` AS `confidence`,`a`.`normalScore` AS `normalScore`,`a`.`hotScore` AS `hotScore`,`a`.`pornScore` AS `pornScore`,`a`.`check_msg` AS `check_msg`,`a`.`stream_id` AS `stream_id`,`a`.`up_stream` AS `up_stream`,`a`.`rtmp_stream` AS `rtmp_stream`,`a`.`is_alive` AS `is_alive`,`a`.`is_hot` AS `is_hot`,`a`.`visitor_num` AS `visitor_num`,`a`.`fu_num_before` AS `fu_num_before`,`a`.`fu_num` AS `fu_num`,`a`.`replay_url` AS `replay_url`,`b`.`is_lqrt` AS `is_lqrt`,`b`.`is_back` AS `is_back` from (`tab_live_ugc` `a` join `tab_live_ugc_extend` `b`) where (`a`.`id` = `b`.`id`) ;

-- ----------------------------
-- Procedure structure for before_Match
-- ----------------------------
DROP PROCEDURE IF EXISTS `before_Match`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `before_Match`(IN matchId int, IN nextMatchId int)
    COMMENT '总决赛预热'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/0725
   Description  :
   */
	-- 总决赛开始预热 --
	UPDATE tab_sub_match SET status=0 where id=nextMatchId ;

	INSERT INTO tab_sub_match_player(uid, sub_match_id, group_id, status)
		SELECT 	
			mp.uid,
			nextMatchId,
			mg.previous_group_id,
			0
		FROM   tab_sub_match_player mp INNER JOIN tab_sub_match_group mg on mp.group_id =mg.id
		WHERE  mp.sub_match_id=matchId
	AND mp.status=1;
  
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for before_ZdMatch
-- ----------------------------
DROP PROCEDURE IF EXISTS `before_ZdMatch`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `before_ZdMatch`(IN hxMid int, IN zdMid int,IN num int)
    COMMENT '系统赛的争夺赛更新为预热'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :
   */
	-- 海选赛赛事结束，晋级前num名选手。--
	-- update tab_lunbo SET related_id=zdMid and image='争夺赛image' --
	UPDATE tab_sub_match SET status=4 where id=hxMid and type=2;
	UPDATE tab_sub_match_player mp SET status=1 where sub_match_id=hxMid and EXISTS(
		SELECT
			v_smm.*
		FROM
			v_tab_sub_match_media v_smm
		WHERE
			(
				SELECT
					COUNT(uid)
				FROM
					v_tab_sub_match_media
				WHERE
					group_id = v_smm.group_id
				AND pcount > v_smm.pcount
			) < num+1
		AND v_smm.uid=mp.uid and v_smm.group_id=mp.group_id
	);

	-- 系统赛的争夺赛更新为预热；将海选赛的晋级选手插入到争夺赛对应分组中 --

	UPDATE tab_sub_match SET status=0 where id=zdMid and type=3;

	INSERT INTO tab_sub_match_player(uid, sub_match_id, group_id, status)
		SELECT 	
			mp.uid,
			zdMid,
			mg.previous_group_id,
			0
		FROM   tab_sub_match_player mp INNER JOIN tab_sub_match_group mg on mp.group_id =mg.id
		WHERE  mg.sub_match_id=hxMid
	AND mp.status=1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for end_boxingMatch
-- ----------------------------
DROP PROCEDURE IF EXISTS `end_boxingMatch`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `end_boxingMatch`(in matchId int, in msge varchar(512), in tent varchar(512))
    COMMENT '赛事结束后期处理'
BEGIN
  
		DECLARE userId int(11) DEFAULT NULL;                                		 
		DECLARE pvote_num int(11) DEFAULT 0;                                     
		DECLARE rank int(11) DEFAULT 0;                                          

		
    UPDATE tab_sub_match SET `status` = 4, content_short=tent where id = matchId;
		
		
		
		
		SELECT
				`a`.`uid` ,
				`a`.`vote_num` ,
				 @x:=ifnull(@x,0)+1 
		INTO userId,pvote_num,rank	
		FROM
				`tab_sub_match_media` as `a`,(select @x := 0) b
		 WHERE
				a.sub_match_id = matchId
		ORDER BY 2 desc
		LIMIT 1;
    
		UPDATE tab_sub_match_media SET is_recom=2 WHERE sub_match_id=matchId AND uid=userId;

    
    INSERT INTO tab_app_coin (
			uid,
			change_text,
			coin_change,
			change_time,
			STATUS,
			type,
      `from`
		) SELECT
			mp.uid,
			CONCAT(m. NAME, '赛事奖励'),
			func_rank_assign_amount (mp.uid, m.id),
			NOW(),
			1,
			1,
      5
		FROM
			tab_sub_match_player mp
		INNER JOIN tab_sub_match m ON m.id = mp.sub_match_id
		LEFT JOIN (
			SELECT
				uid,
				sum(coin_change) AS coin_sum
			FROM
				tab_coin
			GROUP BY
				uid
		) AS c ON c.uid = mp.uid
		WHERE
			m.id = matchId 
		AND mp. STATUS <> 2
		;



    
		INSERT INTO sys_notice (
			auser_id,
			buser_id,
			content,
			type,
			type2,
			match_id,
			status,
			create_time
		) SELECT
			1,
			mp.uid,
			msge,
			1,
			5,
			matchId,
			0,
			NOW()
		FROM
			tab_sub_match_player mp
		WHERE
			mp.sub_match_id = matchId 
		AND mp. STATUS <> 2
		;

		
		
  
UPDATE tab_sub_match_player x SET rank_num = func_match_user_rank(x.uid,x.sub_match_id) WHERE sub_match_id = matchId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for end_Match
-- ----------------------------
DROP PROCEDURE IF EXISTS `end_Match`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `end_Match`(IN mid int)
    COMMENT '赛事结束'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :争夺赛结束
   */
	-- 争夺赛结束。--
		UPDATE tab_sub_match SET status=4 WHERE id=mid ;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ht_shua
-- ----------------------------
DROP PROCEDURE IF EXISTS `ht_shua`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ht_shua`()
BEGIN
  DECLARE pmediaid INTEGER DEFAULT 0;
  DECLARE coment VARCHAR(255);
  DECLARE p_rand INTEGER DEFAULT 0;
  DECLARE pfound   INT DEFAULT FALSE;
  DECLARE pcursor CURSOR FOR SELECT id FROM tab_media WHERE create_time>='2016-11-13 18:00:00' AND create_time<='2016-11-14 16:00:00' AND is_moke=0;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = TRUE;

OPEN pcursor;
A1:LOOP
  FETCH pcursor INTO pmediaid;
  SELECT FLOOR(1 + (RAND() * 4)) into p_rand;
  INSERT INTO tab_media_comment_add(media_id,content,create_time,addUser) SELECT pmediaid,`comment`,NOW(),'seven' FROM tab_comment_content ORDER BY RAND() LIMIT p_rand;
  IF pfound = TRUE THEN
    LEAVE A1;
  END IF;
END LOOP;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ht_shua_two
-- ----------------------------
DROP PROCEDURE IF EXISTS `ht_shua_two`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` PROCEDURE `ht_shua_two`()
BEGIN
  DECLARE pmediaid INTEGER DEFAULT 0;
  DECLARE coment VARCHAR(255);
  DECLARE p_rand INTEGER DEFAULT 0;
  DECLARE pfound   INT DEFAULT FALSE;
  DECLARE pcursor CURSOR FOR SELECT id FROM tab_media WHERE create_time>='2016-12-25 12:00:00' AND create_time<='2016-12-25 18:00:00' AND is_moke=0;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = TRUE;

OPEN pcursor;
A1:LOOP
  FETCH pcursor INTO pmediaid;
  SELECT FLOOR(1 + (RAND() * 1)) into p_rand;
  INSERT INTO tab_media_comment_add(media_id,content,create_time,addUser) SELECT pmediaid,`comment`,NOW(),'seven' FROM tab_comment_content ORDER BY RAND() LIMIT p_rand;
  IF pfound = TRUE THEN
    LEAVE A1;
  END IF;
END LOOP;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_end_parent_match
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_end_parent_match`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_end_parent_match`(IN `parent_match_id` int)
    COMMENT '设置赛事结束状态'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :更新赛事状态为结束
   */
	UPDATE tab_parent_match SET status = 4 WHERE id = parent_match_id; -- 更新赛事状态为结束
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_update_match_coin2
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_update_match_coin2`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_update_match_coin2`(IN `p_match_id` int)
    COMMENT '每增加一个选手，调整相应金额'
A1:BEGIN
  
	DECLARE p_single_rank VARCHAR(500);         --  单独名次
  DECLARE p_region_rank VARCHAR(500);         --  区间名次
	DECLARE p_media_num INTEGER DEFAULT 0;      --  取得的名次
  DECLARE p_single_sum SMALLINT DEFAULT -1;   --  单独设置名次的个数
  DECLARE p_single_bufu SMALLINT DEFAULT 0;   --  单独设置名次的bufu
  DECLARE p_region_sum SMALLINT DEFAULT -1;   --  单独设置名次的个数
  DECLARE p_midd VARCHAR(30)  DEFAULT '';     --  分次取值
  DECLARE p_start SMALLINT DEFAULT 0;         --  区间的开始值
  DECLARE p_end SMALLINT DEFAULT 0;           --  区间的结束值
  DECLARE p_bufu SMALLINT DEFAULT 0;          --  区间对应的不服币
  DECLARE p_2 SMALLINT DEFAULT 0;             --  判断
  DECLARE i TINYINT DEFAULT 1;
-- 取设置的值
  SELECT single_rank,
         region_rank 
    INTO p_single_rank,
         p_region_rank 
    from tab_sub_match WHERE id = p_match_id;
-- 取名次
    SELECT count(*) INTO p_media_num from tab_sub_match_player WHERE sub_match_id = p_match_id AND status<>2 AND rise_type IS null ;

-- 单独设置了多少个名次
  SELECT LENGTH(p_single_rank) - LENGTH(REPLACE(p_single_rank,',',''))  INTO  p_single_sum;
-- 单独名次的设置
  IF p_media_num BETWEEN 1 AND p_single_sum  THEN
     SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(p_single_rank,',',p_media_num),',',-1) INTO p_single_bufu;
     insert into tab_sub_match_coin2(sub_match_id,rankid,price) select p_match_id,p_media_num,p_single_bufu;
     UPDATE tab_sub_match_coin2 SET price = SUBSTRING_INDEX(p_single_rank,',',1) WHERE sub_match_id = p_match_id AND rankid = 1; 
     LEAVE A1;
  END IF;
-- 更新第一名的奖金
   
-- 区间名次设置
  IF p_region_rank IS NOT NULL THEN
     SELECT LENGTH(p_region_rank) - LENGTH(REPLACE(p_region_rank,',',''))  INTO  p_region_sum; -- 存在p_region_sum个区间
            SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(p_region_rank,',',1),',',-1) INTO p_midd; 
            SET p_2 = SUBSTRING_INDEX(SUBSTRING_INDEX(p_midd,':',2),':',-1);
         WHILE i <= p_region_sum DO
             SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(p_region_rank,',',i),',',-1) INTO p_midd; 
             SET p_start = SUBSTRING_INDEX(SUBSTRING_INDEX(p_midd,':',1),':',-1);
             SET p_end   = SUBSTRING_INDEX(SUBSTRING_INDEX(p_midd,':',2),':',-1);
             SET p_bufu  = SUBSTRING_INDEX(SUBSTRING_INDEX(p_midd,':',3),':',-1);
             IF p_end > p_2 THEN
                SET  p_2 = p_end;
             END IF;
             SET i = i + 1;
                 IF p_media_num BETWEEN p_start AND p_end THEN
                    insert into tab_sub_match_coin2(sub_match_id,rankid,price) select p_match_id,count(*)+1,p_bufu from tab_sub_match_coin2 where sub_match_id = p_match_id;  -- 区间内  
                 END IF; 
         END WHILE;
         IF p_media_num > p_2 THEN
            insert into tab_sub_match_coin2(sub_match_id,rankid,price) select p_match_id,count(*)+1,0 from tab_sub_match_coin2 where sub_match_id = p_match_id;  -- 没有设置的名次，不服币置0
         END IF;
  ELSE   -- 区间范围没有设置
      insert into tab_sub_match_coin2(sub_match_id,rankid,price) select p_match_id,count(*)+1,0 from tab_sub_match_coin2 where sub_match_id = p_match_id;  -- 没有设置的名次，不服币置0
  END IF;
 
   

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_add_live_changeci
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_add_live_changeci`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_add_live_changeci`(p_date date,p_changci int)
    COMMENT '新增直播场次'
BEGIN
   DECLARE pfound TINYINT DEFAULT 0;
   DECLARE base_1 INT DEFAULT UNIX_TIMESTAMP(CURDATE()); -- 今天的时间戳
   DECLARE p_uid INT DEFAULT -1;
   DECLARE p_rand FLOAT;
   DECLARE p_rand1 FLOAT;
   DECLARE p_start datetime;
   DECLARE p_rand2 FLOAT;
   DECLARE p_min datetime; 
   DECLARE p_interval INT DEFAULT 0; 
   DECLARE pcursor CURSOR FOR SELECT id FROM tab_user_xuni WHERE is_moke = 0 AND id  IN (
  SELECT uid  FROM tab_coin_xuni where change_text ='收到礼物' GROUP BY uid order by sum(fu_change)/250 ASC
) limit p_changci; 

   DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
   SELECT MIN(change_time),
          TIMESTAMPDIFF(SECOND,MIN(change_time),MAX(change_time)) 
     INTO p_min,
          p_interval
     FROM tab_app_coin_xuni WHERE DATE(change_time) = p_date;
OPEN pcursor;
  A1:LOOP
     FETCH pcursor INTO p_uid;
     SET p_start = p_min + INTERVAL p_interval * RAND() SECOND;
     IF pfound = 1 THEN
        LEAVE A1;
     END IF;
    SET p_rand2 = RAND();

INSERT INTO `tab_live_ugc_xuni` (
	`uid`,`q_uid`,`title`,`cover_image`,`shot_image`,
	`province`,`city`,`status`,`start_time`,`end_time`,
	`online_number`,`online_real_num`,`support_num`,`total_visitor`,`lon`,
	`lat`,`share_times`,`comment_times`,`heartbeat_time`,
	`is_alive`

)
  SELECT
		id,
		q_uid,
		(SELECT title FROM tab_live_ugc a WHERE a.start_time > p_date - INTERVAL 10 DAY order by RAND() LIMIT 1),
		(SELECT cover_image FROM tab_live_ugc a WHERE a.start_time > p_date - INTERVAL 10 DAY order by RAND() LIMIT 1),
		NULL,
		province1,
		city,
		'4',
		p_start,
		p_start + INTERVAL 60*70+(80*64)*RAND() SECOND,
		200+800*p_rand2,200+800*p_rand2*(1-0.1*RAND()),300*p_rand2,200+800*p_rand2,lon,
		lat1,100*p_rand2,200*p_rand2,
		FROM_UNIXTIME(p_start)+INTERVAL 3 * RAND() SECOND,
		'1'
 FROM tab_user_xuni where id = p_uid;

    UPDATE tab_live_ugc_xuni SET duration_time = TIMESTAMPDIFF(SECOND,start_time,end_time) WHERE uid = p_uid AND  DATE(start_time) = p_date;
  END LOOP;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_apply_withdraw
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_apply_withdraw`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_apply_withdraw`(p_date date)
    COMMENT '虚拟提现'
BEGIN
   DECLARE pfound INT DEFAULT 0;               -- 游标状态
   DECLARE p_anchor_uid INT DEFAULT -1;        -- 主播id
   DECLARE p_withdraw_bufu INT DEFAULT 0;      -- 能提现的不服币
   DECLARE p_withdraw_bufu_1 INT DEFAULT 0;    -- 能提现的不服币
   DECLARE p_withdraw_bufu_2 INT DEFAULT 0;    -- 能提现的不服币
   DECLARE p_withdraw_bufu_3 INT DEFAULT 0;    -- 能提现的不服币
   DECLARE p_time datetime;                    -- 获得礼物的最后时间
   DECLARE p_interval INT DEFAULT 0;           -- 提现间隔，随机
   DECLARE p_withdraw_200 INT DEFAULT 0;       -- 每次提现200
   DECLARE p_surplus INT DEFAULT 0;            -- 余额提现 
   DECLARE p_200_time datetime;                -- 余额提现时间
   DECLARE i SMALLINT DEFAULT 1;               -- 200提现内循环
   DECLARE pcursor CURSOR FOR 
               SELECT uid,
                      sum(fu_change) fu_change1 
                 FROM tab_coin_xuni a,tab_sr_user_xuni_1 b 
                WHERE a.uid = b.user_id AND b.user_ident = 1 AND a.`status` = 1  GROUP BY uid HAVING sum(fu_change) >= 2500;   -- 至少满足10元提现
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
OPEN pcursor;
A1:LOOP
   FETCH pcursor INTO p_anchor_uid,p_withdraw_bufu;
-- 游标退出
   IF pfound = 1 THEN
     LEAVE A1;
   END IF;
-- 需要满足提现余额与送礼物的时刻对应 
    
   SELECT MAX(change_time) INTO p_time FROM  tab_coin_xuni WHERE uid = p_anchor_uid AND change_time > p_date AND change_text = '收到礼物';
  -- SET p_withdraw_200 = FLOOR(p_withdraw_bufu / 50000);  -- 一次提现200

-- 提现金额> 500元
IF p_withdraw_bufu >= 600 * 250 THEN
      SET p_withdraw_bufu_1 = 500 * 250 + 250 * ROUND(RAND() * 100);
      SET p_withdraw_bufu_2 = p_withdraw_bufu - p_withdraw_bufu_1;
     WHILE (p_withdraw_bufu_2 >= 0) DO
       INSERT INTO tab_coin_xuni(
          `uid`,
	        `imei`,
	        `coin_before`,
	        `change_text`,
	        `coin_change`,
	        `change_time`,
	        `coin_after`,
	        `status`,
	        `mch_billno`,
	        `err_code`,
	        `err_code_des`,
	        `send_time`,
	        `type`,
	        `fu_before`,
	        `fu_change`,
        	`fu_after`,
	        `ali_batch_no`,
	        `ali_account`,
	        `ali_name`,
	        `coin_type`,
	        `related_id`,
        	`related_type`,
	        `from`
                                   )
      SELECT
	        	p_anchor_uid,
	        	NULL,
	        	'0.00',
	        	'用户申请微信提现',
	        	0 - p_withdraw_bufu_1/250,
	        	p_time + INTERVAL 1800*RAND() SECOND,
	        	'0.00',
	        	'4',
	        	NULL,
	        	NULL,
	        	NULL,
	        	NULL,
	        	'0',
	        	'0',
	        	0 - p_withdraw_bufu_1,
	        	'0',
	        	NULL,
	        	NULL,
	        	NULL,
	        	'2',
	        	NULL,
	        	'0',
	        	NULL;
       SET p_withdraw_bufu_1 = 500 * 250 + 250 * ROUND(RAND() * 100);
       SET p_withdraw_bufu_3 = p_withdraw_bufu_2;
       SET p_withdraw_bufu_2 = p_withdraw_bufu_2 - p_withdraw_bufu_1;


     END WHILE;
     IF p_withdraw_bufu_3 > 0 THEN

       INSERT INTO tab_coin_xuni(
          `uid`,
	        `imei`,
	        `coin_before`,
	        `change_text`,
	        `coin_change`,
	        `change_time`,
	        `coin_after`,
	        `status`,
	        `mch_billno`,
	        `err_code`,
	        `err_code_des`,
	        `send_time`,
	        `type`,
	        `fu_before`,
	        `fu_change`,
        	`fu_after`,
	        `ali_batch_no`,
	        `ali_account`,
	        `ali_name`,
	        `coin_type`,
	        `related_id`,
        	`related_type`,
	        `from`
                                   )
      SELECT
	        	p_anchor_uid,
	        	NULL,
	        	'0.00',
	        	'用户申请微信提现',
	        	0 - floor(p_withdraw_bufu_3/250),
	        	p_time + INTERVAL 1800*RAND() SECOND,
	        	'0.00',
	        	'4',
	        	NULL,
	        	NULL,
	        	NULL,
	        	NULL,
	        	'0',
	        	'0',
	        	0 - p_withdraw_bufu_3+mod(p_withdraw_bufu_3,250),
	        	'0',
	        	NULL,
	        	NULL,
	        	NULL,
	        	'2',
	        	NULL,
	        	'0',
	        	NULL;

     END IF;

    select p_withdraw_bufu_2;

ELSE
-- 提现金额小于500元
   SET p_surplus  = FLOOR(p_withdraw_bufu / 250); -- 余额提现，要满足>=10元
       INSERT INTO tab_coin_xuni(
          `uid`,
	        `imei`,
	        `coin_before`,
	        `change_text`,
	        `coin_change`,
	        `change_time`,
	        `coin_after`,
	        `status`,
	        `mch_billno`,
	        `err_code`,
	        `err_code_des`,
	        `send_time`,
	        `type`,
	        `fu_before`,
	        `fu_change`,
        	`fu_after`,
	        `ali_batch_no`,
	        `ali_account`,
	        `ali_name`,
	        `coin_type`,
	        `related_id`,
        	`related_type`,
	        `from`
                                   )
      SELECT
	        	p_anchor_uid,
	        	NULL,
	        	'0.00',
	        	'用户申请微信提现',
	        	0 - floor(p_withdraw_bufu/250),
	        	p_time + INTERVAL 1800*RAND() SECOND,
	        	'0.00',
	        	'4',
	        	NULL,
	        	NULL,
	        	NULL,
	        	NULL,
	        	'0',
	        	'0',
	        	0 - p_withdraw_bufu  + MOD(p_withdraw_bufu,250),
	        	'0',
	        	NULL,
	        	NULL,
	        	NULL,
	        	'2',
	        	NULL,
	        	'0',
	        	NULL;
END IF;

 END LOOP;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_apply_withdraw_new
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_apply_withdraw_new`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_apply_withdraw_new`()
    COMMENT '虚拟提现'
BEGIN
   DECLARE pfound INT DEFAULT 0;               -- 游标状态
   DECLARE p_anchor_uid INT DEFAULT -1;        -- 主播id
   DECLARE p_withdraw_bufu INT DEFAULT 0;      -- 能提现的不服币
   DECLARE p_time datetime;                    -- 获得礼物的最后时间
   DECLARE p_interval INT DEFAULT 0;           -- 提现间隔，随机
   DECLARE p_surplus INT DEFAULT 0;            -- 余额提现 
   DECLARE p_200_time datetime;                -- 余额提现时间
   DECLARE p_weixin VARCHAR(30);
   DECLARE i SMALLINT DEFAULT 1;               -- 200提现内循环                                                                                        -- >= 1000
   DECLARE pcursor CURSOR FOR SELECT uid,sum(fu_change) fu_change1 FROM tab_coin_xuni WHERE change_time > CURDATE() GROUP BY uid HAVING sum(fu_change) >= 1000;   -- 至少满足10元提现
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
OPEN pcursor;
A1:LOOP
   FETCH pcursor INTO p_anchor_uid,p_withdraw_bufu;
-- 游标退出
   IF pfound = 1 THEN
     LEAVE A1;
   END IF;
-- 需要满足提现余额与送礼物的时刻对应   
   SELECT MAX(change_time) INTO p_time FROM  tab_coin_xuni WHERE uid = p_anchor_uid AND change_time > CURDATE() AND change_text = '收到礼物';
                                              -- *0.9/100
   SET p_surplus      = FLOOR(p_withdraw_bufu / 100); -- 余额提现，要满足>=10元
       INSERT INTO tab_coin_xuni(
          `uid`,
	        `imei`,
	        `coin_before`,
	        `change_text`,
	        `coin_change`,
	        `change_time`,
	        `coin_after`,
	        `status`,
	        `mch_billno`,
	        `err_code`,
	        `err_code_des`,
	        `send_time`,
	        `type`,
	        `fu_before`,
	        `fu_change`,
        	`fu_after`,
	        `ali_batch_no`,
	        `ali_account`,
	        `ali_name`,
	        `coin_type`,
	        `related_id`,
        	`related_type`,
	        `from`
                                   )
      SELECT
	        	p_anchor_uid,
	        	NULL,
	        	'0.00',
	        	'用户申请微信提现',
	        	0 - p_surplus,
	        	p_time + INTERVAL 1800*RAND() SECOND,
	        	'0.00',
	        	'4',
	        	NULL,
	        	NULL,
	        	NULL,
	        	NULL,
	        	'0',
	        	'0',
            -- 100*0.9
	        	0 - p_surplus * 100,
	        	'0',
	        	NULL,
	        	NULL,
	        	NULL,
	        	'2',
	        	NULL,
	        	'0',
	        	NULL;

 END LOOP;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_assign_association
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_assign_association`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_assign_association`()
    COMMENT '分配工会'
BEGIN
   DECLARE pfound TINYINT DEFAULT 0;
   DECLARE p_uid INT DEFAULT 0;                      -- 提现用户
   DECLARE p_user_belong SMALLINT DEFAULT -1;        -- 属于哪个用户
   DECLARE p_belong_association SMALLINT DEFAULT -1; -- 所属gonghui
   DECLARE p_association_id SMALLINT DEFAULT -1;     -- 工会id
   DECLARE pcursor CURSOR FOR SELECT uid FROM tab_coin_xuni WHERE change_text = '用户申请微信提现' AND change_time > CURDATE() AND change_time < CURDATE() +  INTERVAL 1 DAY;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
OPEN pcursor;
  A1:LOOP
       FETCH pcursor INTO p_uid;
       IF pfound = 1 THEN           
         LEAVE A1;
       END IF;
          SELECT user_belong,
                 belong_association 
            INTO p_user_belong,
                 p_belong_association
            FROM tab_sr_user_xuni WHERE user_ident = 1 AND user_id = p_uid;
        IF p_belong_association = 0 THEN
         SELECT a.id INTO p_association_id FROM cms_association_xuni a   ORDER BY RAND() LIMIT 1;
         UPDATE tab_sr_user_xuni SET belong_association = p_association_id WHERE user_belong = p_user_belong AND user_ident = 1;
        END IF;
     END LOOP;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_balance_finance
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_balance_finance`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_balance_finance`(p_date date)
    COMMENT '平衡财务与虚拟充值金额'
BEGIN
   DECLARE pfound TINYINT DEFAULT 0;
   DECLARE p_money DECIMAL(18,2);     -- 充值面额
   DECLARE p_count INT DEFAULT 0;     -- 某面额的充值数量
   DECLARE p_id INT DEFAULT 0;        -- 行位置
   DECLARE pcursor CURSOR FOR select price_coin,count(*) 
                                FROM tab_app_coin 
                                where uid =  851182 AND 
                                      DATE(change_time)= p_date AND  -- 昨天的财务充值记录
                                      change_text = '充值' AND 
                                      `status`= 2 AND transaction_id <> ''GROUP BY price_coin;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
OPEN pcursor;
  A1:LOOP
       IF pfound = 1 THEN           
         LEAVE A1;
       END IF;
       FETCH pcursor INTO p_money,p_count;
         SELECT MAX(id)
           INTO p_id
           FROM 
                (
                    SELECT id FROM tab_app_coin_xuni 
                             WHERE DATE(change_time)= p_date AND  -- 昨天的虚拟充值记录
                                   change_text = '充值' AND price_coin = p_money LIMIT p_count) x;
         DELETE FROM tab_app_coin_xuni WHERE DATE(change_time)= p_date AND change_text = '充值' AND price_coin = p_money AND id > p_id;
     END LOOP;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_create_live
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_create_live`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_create_live`()
    COMMENT '循环执行创建直播的存储过程'
BEGIN
   DECLARE i INT DEFAULT 1;
   DECLARE p_changeci INT DEFAULT 0; 
   DECLARE p_date DATE;
 WHILE i < 16 DO
     SET p_date = date'2016-12-17' + INTERVAL i DAY;
     SET p_changeci = 520 + 200 * RAND();
     CALL p_xuni_live_ugc(p_date,p_changeci);
   SET i = i + 1;
 END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_live_new
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_live_new`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_live_new`()
    COMMENT '11-17号最新的虚拟生成直播'
BEGIN
  DECLARE pfound TINYINT DEFAULT 0;          -- 游标状态
  DECLARE p_user_belong SMALLINT DEFAULT -1; -- 用户属主
  DECLARE p_uid INT DEFAULT -1;              -- 主播
  DECLARE p_rand2 FLOAT;
  DECLARE p_start datetime;                  -- 直播开始时间
  DECLARE pcur CURSOR FOR
                   select DISTINCT user_belong 
                     from tab_sr_user_xuni a, 
                          tab_app_coin_xuni b 
                    WHERE a.user_id = b.uid AND 
                          a.user_ident = 0 AND 
                          b.change_time > CURDATE() - INTERVAL 1 DAY AND 
                          b.change_time < CURDATE() AND `status` = 1; 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;

OPEN pcur;
  A1:LOOP
    FETCH pcur INTO p_user_belong;
  IF pfound =1 THEN
     LEAVE A1;
  END IF;
-- 查找直播用户
    SELECT user_id INTO p_uid FROM tab_sr_user_xuni WHERE user_belong = p_user_belong AND user_ident = 1 
       ORDER BY RAND() LIMIT 1;  -- 目前只开一场直播
  
 SET p_start = CURDATE() + INTERVAL 7 HOUR + INTERVAL 13*3600*RAND() SECOND;   -- 直播时间
 SET p_rand2 = RAND();
--  创建直播
INSERT INTO `tab_live_ugc_xuni` (
	`uid`,`q_uid`,`title`,`cover_image`,`shot_image`,
	`province`,`city`,`status`,`start_time`,`end_time`,
	`online_number`,`online_real_num`,`support_num`,`total_visitor`,`lon`,
	`lat`,`share_times`,`comment_times`,`heartbeat_time`,
	`is_alive`

)
  SELECT
		id,
		q_uid,
		(SELECT title FROM tab_live_ugc a WHERE a.start_time > CURDATE() - INTERVAL 10 DAY order by RAND() LIMIT 1),
		(SELECT cover_image FROM tab_live_ugc a WHERE a.start_time > CURDATE() - INTERVAL 10 DAY order by RAND() LIMIT 1),
		NULL,
		province1,
		city,
		'4',
		p_start ,
		p_start + INTERVAL 60*70+(80*64)*RAND() SECOND,
		200+800*p_rand2,200+800*p_rand2*(1-0.1*RAND()),300*p_rand2,200+800*p_rand2,lon,
		lat1,100*p_rand2,200*p_rand2,
		p_start+INTERVAL 3 * RAND() SECOND,
		'1'
 FROM tab_user_xuni where id = p_uid;

-- 更新直播时长
    UPDATE tab_live_ugc_xuni SET duration_time = TIMESTAMPDIFF(SECOND,start_time,end_time) WHERE uid = p_uid;    

  END LOOP;
CLOSE pcur;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_live_new_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_live_new_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_live_new_1`()
    COMMENT '11-17号最新的虚拟生成直播'
BEGIN
  DECLARE pfound TINYINT DEFAULT 0;          -- 游标状态
  DECLARE p_user_belong SMALLINT DEFAULT -1; -- 用户属主
  DECLARE p_uid INT DEFAULT -1;              -- 主播
  DECLARE p_rand2 FLOAT;
  DECLARE p_start datetime;                  -- 直播开始时间
  DECLARE pcur CURSOR FOR
                   select DISTINCT user_belong 
                     from tab_sr_user_xuni_1 a, 
                          tab_app_coin_xuni b 
                    WHERE a.user_id = b.uid AND 
                          a.user_ident = 0 AND 
                          b.change_time > CURDATE() - INTERVAL 1 DAY AND 
                          b.change_time < CURDATE() AND `status` = 1; 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;

OPEN pcur;
  A1:LOOP
    FETCH pcur INTO p_user_belong;
  IF pfound =1 THEN
     LEAVE A1;
  END IF;
-- 查找直播用户
    SELECT user_id INTO p_uid FROM tab_sr_user_xuni_1 WHERE user_belong = p_user_belong AND user_ident = 1;  -- 目前只开一场直播
  
 SET p_start = CURDATE() + INTERVAL 7 HOUR + INTERVAL 13*3600*RAND() SECOND;   -- 直播时间
 SET p_rand2 = RAND();
--  创建直播
INSERT INTO `tab_live_ugc_xuni` (
	`uid`,`q_uid`,`title`,`cover_image`,`shot_image`,
	`province`,`city`,`status`,`start_time`,`end_time`,
	`online_number`,`online_real_num`,`support_num`,`total_visitor`,`lon`,
	`lat`,`share_times`,`comment_times`,`heartbeat_time`,
	`is_alive`

)
  SELECT
		id,
		q_uid,
		(SELECT title FROM tab_live_ugc a WHERE a.start_time > CURDATE() - INTERVAL 10 DAY order by RAND() LIMIT 1),
		(SELECT cover_image FROM tab_live_ugc a WHERE a.start_time > CURDATE() - INTERVAL 10 DAY order by RAND() LIMIT 1),
		NULL,
		province1,
		city,
		'4',
		p_start ,
		p_start + INTERVAL 60*70+(80*64)*RAND() SECOND,
		200+800*p_rand2,200+800*p_rand2*(1-0.1*RAND()),300*p_rand2,200+800*p_rand2,lon,
		lat1,100*p_rand2,200*p_rand2,
		p_start+INTERVAL 3 * RAND() SECOND,
		'1'
 FROM tab_user_xuni where id = p_uid;

-- 更新直播时长
    UPDATE tab_live_ugc_xuni SET duration_time = TIMESTAMPDIFF(SECOND,start_time,end_time) WHERE uid = p_uid;    

  END LOOP;
CLOSE pcur;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_live_new_date
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_live_new_date`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_live_new_date`(p_date date)
    COMMENT '11-17号最新的虚拟生成直播'
BEGIN
  DECLARE pfound TINYINT DEFAULT 0;          -- 游标状态
  DECLARE p_user_belong SMALLINT DEFAULT -1; -- 用户属主
  DECLARE p_uid INT DEFAULT -1;              -- 主播
  DECLARE p_rand2 FLOAT;
  DECLARE p_start datetime;                  -- 直播开始时间
  DECLARE pcur CURSOR FOR
                   select DISTINCT user_belong 
                     from tab_sr_user_xuni_1 a, 
                          tab_app_coin_xuni b 
                    WHERE a.user_id = b.uid AND 
                          a.user_ident = 0 AND 
                          b.change_time > p_date - INTERVAL 1 DAY AND 
                          b.change_time < p_date AND `status` = 1; 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;

OPEN pcur;
  A1:LOOP
    FETCH pcur INTO p_user_belong;
  IF pfound =1 THEN
     LEAVE A1;
  END IF;
-- 查找直播用户
    SELECT user_id INTO p_uid FROM tab_sr_user_xuni_1 WHERE user_belong = p_user_belong AND user_ident = 1;  -- 目前只开一场直播
  
 SET p_start = p_date + INTERVAL 7 HOUR + INTERVAL 13*3600*RAND() SECOND;   -- 直播时间
 SET p_rand2 = RAND();
--  创建直播
INSERT INTO `tab_live_ugc_xuni` (
	`uid`,`q_uid`,`title`,`cover_image`,`shot_image`,
	`province`,`city`,`status`,`start_time`,`end_time`,
	`online_number`,`online_real_num`,`support_num`,`total_visitor`,`lon`,
	`lat`,`share_times`,`comment_times`,`heartbeat_time`,
	`is_alive`

)
  SELECT
		id,
		q_uid,
		(SELECT title FROM tab_live_ugc a WHERE a.start_time > p_date - INTERVAL 10 DAY order by RAND() LIMIT 1),
		(SELECT cover_image FROM tab_live_ugc a WHERE a.start_time > p_date - INTERVAL 10 DAY order by RAND() LIMIT 1),
		NULL,
		province1,
		city,
		'4',
		p_start ,
		p_start + INTERVAL 60*70+(80*64)*RAND() SECOND,
		200+800*p_rand2,200+800*p_rand2*(1-0.1*RAND()),300*p_rand2,200+800*p_rand2,lon,
		lat1,100*p_rand2,200*p_rand2,
		p_start+INTERVAL 3 * RAND() SECOND,
		'1'
 FROM tab_user_xuni where id = p_uid;

-- 更新直播时长
    UPDATE tab_live_ugc_xuni SET duration_time = TIMESTAMPDIFF(SECOND,start_time,end_time) WHERE uid = p_uid;    

  END LOOP;
CLOSE pcur;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_live_ugc
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_live_ugc`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_live_ugc`(p_date date,p_changci int)
    COMMENT '虚拟创建直播'
BEGIN
   DECLARE pfound TINYINT DEFAULT 0;
   DECLARE base_1 INT DEFAULT UNIX_TIMESTAMP(CURDATE()); -- 今天的时间戳
   DECLARE p_uid INT DEFAULT -1;
   DECLARE p_rand FLOAT;
   DECLARE p_rand1 FLOAT;
   DECLARE p_start datetime;
   DECLARE p_rand2 FLOAT;
   DECLARE p_min datetime; 
   DECLARE p_interval INT DEFAULT 0; 
   DECLARE pcursor CURSOR FOR SELECT id FROM
(
SELECT id,0 coin_change  FROM tab_user_xuni WHERE is_moke = 0 ORDER BY RAND() 
) a LEFT JOIN
(
SELECT uid,abs(SUM(coin_change)) pcoin_change  FROM tab_coin_xuni WHERE change_text = '用户申请微信提现'  group by uid 
) b ON a.id = b.uid where IFNULL(pcoin_change,0) < 4000  limit p_changci; 

   DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
   SELECT MIN(change_time),
          TIMESTAMPDIFF(SECOND,MIN(change_time),MAX(change_time)) 
     INTO p_min,
          p_interval
     FROM tab_app_coin_xuni WHERE DATE(change_time) = p_date;
OPEN pcursor;
  A1:LOOP
     FETCH pcursor INTO p_uid;
     SET p_start = p_min + INTERVAL p_interval * RAND() SECOND;
     IF pfound = 1 THEN
        LEAVE A1;
     END IF;
    SET p_rand2 = RAND();

INSERT INTO `tab_live_ugc_xuni` (
	`uid`,`q_uid`,`title`,`cover_image`,`shot_image`,
	`province`,`city`,`status`,`start_time`,`end_time`,
	`online_number`,`online_real_num`,`support_num`,`total_visitor`,`lon`,
	`lat`,`share_times`,`comment_times`,`heartbeat_time`,
	`is_alive`

)
  SELECT
		id,
		q_uid,
		(SELECT title FROM tab_live_ugc a WHERE a.start_time > p_date - INTERVAL 10 DAY order by RAND() LIMIT 1),
		(SELECT cover_image FROM tab_live_ugc a WHERE a.start_time > p_date - INTERVAL 10 DAY order by RAND() LIMIT 1),
		NULL,
		province1,
		city,
		'4',
		p_start,
		p_start + INTERVAL 60*70+(80*64)*RAND() SECOND,
		200+800*p_rand2,200+800*p_rand2*(1-0.1*RAND()),300*p_rand2,200+800*p_rand2,lon,
		lat1,100*p_rand2,200*p_rand2,
		FROM_UNIXTIME(p_start)+INTERVAL 3 * RAND() SECOND,
		'1'
 FROM tab_user_xuni where id = p_uid;

    UPDATE tab_live_ugc_xuni SET duration_time = TIMESTAMPDIFF(SECOND,start_time,end_time) WHERE uid = p_uid;
  END LOOP;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_recharge_98and30
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_recharge_98and30`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_recharge_98and30`(p_date date)
    COMMENT '补充98与30元的充值'
BEGIN
     DECLARE p_98 TINYINT DEFAULT 0;
     DECLARE p_30 TINYINT DEFAULT 0;
     SET p_98 = 15 + 140 * RAND();
     SET p_30 = 33 + 200 * RAND();
     INSERT INTO `tab_app_coin_xuni` (
	           `uid`,
	           `coin_change`,
	           `price_coin`,
	           `change_text`,
	           `change_time`,
	           `status`,
	           `type`,
	           `from`
                     )
      SELECT uid,
             98*250,
             98,
             '充值',
             p_date + INTERVAL 7*3600 + 14 * 3600 * RAND()  SECOND, -- p_date
             1,
             2,
             2 
       FROM tab_app_coin_xuni WHERE DATE(change_time) = p_date AND change_text ='充值'  order by RAND() LIMIT p_98;

     INSERT INTO `tab_app_coin_xuni` (
	           `uid`,
	           `coin_change`,
	           `price_coin`,
	           `change_text`,
	           `change_time`,
	           `status`,
	           `type`,
	           `from`
                     )
      SELECT uid,
             30*250,
             30,
             '充值',
             p_date + INTERVAL 7*3600 + 14 * 3600 * RAND()  SECOND, -- p_date
             1,
             2,
             2 
       FROM tab_app_coin_xuni WHERE DATE(change_time) = p_date AND change_text ='充值'  order by RAND() LIMIT p_30;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_send_gift
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_send_gift`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_send_gift`(p_date date)
    COMMENT '虚拟送礼物'
BEGIN
   DECLARE pfound INT DEFAULT 0;               -- 游标状态
   DECLARE p_receive_id INT DEFAULT -1;        -- 主播
   DECLARE p_send_uid INT DEFAULT -1;          -- 送礼物者
   DECLARE p_gift_c INT DEFAULT 0;             -- 礼物个数
   DECLARE p_gift_id INT DEFAULT -1;           -- 礼物id
   DECLARE p_bufu_need INT DEFAULT 0;          -- bufu票数，每场平均84000-90000票
   DECLARE p_bufu INT DEFAULT 0;               -- 检测主播收到的不服票，是不是足够
   DECLARE p_is_great_gift TINYINT DEFAULT 0;  -- 是不是大礼物 
   DECLARE p_starttime datetime;               -- 开始时间
   DECLARE p_entime INT DEFAULT 0;             -- 时间维度
   DECLARE p_gift_change datetime;             -- 礼物数据变动时间
   DECLARE p_fu_num SMALLINT DEFAULT 0;        -- 单个礼物福卡数
   DECLARE p_live_id INT DEFAULT -1;           -- 直播id
   DECLARE p_count INT DEFAULT 0;              -- 是不是还有用户能够满足支付要求
   DECLARE i SMALLINT DEFAULT 1;               -- 内循环
   DECLARE p_bufu_total INT DEFAULT 0;         -- 每次送的副科总数
   DECLARE p_total INT DEFAULT 0; 
   DECLARE pcursor CURSOR FOR SELECT id,uid,start_time,duration_time FROM tab_live_ugc_xuni where DATE(start_time) = p_date;   -- 需要再加判断，直播状态和时间
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
OPEN pcursor;
A1:LOOP
   FETCH pcursor INTO p_live_id,p_receive_id,p_starttime,p_entime;
-- 游标退出
   IF pfound = 1 THEN
      LEAVE A1;
   END IF;

     SET p_bufu_need = 30000 + CEIL(70000 * RAND());   -- 取需要刷的不服票
-- 主播当天余额
     SELECT ifnull(sum(fu_change),0) 
       INTO p_bufu 
       FROM tab_coin_xuni WHERE uid = p_receive_id AND date(change_time) = p_date AND change_text = '收到礼物' AND related_id = p_live_id; 
-- 每个主播每天收到的礼物数，循环
        B1:WHILE  p_bufu < p_bufu_need  DO 
-- 随机取礼物
        SELECT id,is_great_gift,fu_num 
          INTO p_gift_id,p_is_great_gift,p_fu_num 
          FROM tab_gift WHERE is_great_gift = 1 AND gift_type = 1 AND status <> 2 order by RAND() LIMIT 1;  
-- 判断是否大礼物
        IF   p_gift_id IN (46,49,50,51,55) THEN    
             SET p_gift_c = CEIL(2*RAND());
        ELSE
             SET p_gift_c = CEIL(10 * RAND());
        END IF;
        SET p_bufu_total = p_fu_num * p_gift_c;
-- 超出需要的额度，跳出本次循环
        IF p_bufu + p_bufu_total > p_bufu_need  AND  p_bufu_total < 2000 THEN
            LEAVE B1;
        ELSEIF p_bufu + p_bufu_total > p_bufu_need AND p_bufu_total > 2000 THEN
            ITERATE B1;
        END IF;
-- 是否有足够余额支付，取出该用户id,否则直接结束本存储过程
        SELECT uid
          INTO p_send_uid
           FROM 
              (
SELECT uid,SUM(s1) coin_change1 FROM
(
SELECT uid,SUM(coin_change) s1 FROM tab_app_coin_xuni WHERE date(change_time) <= p_date - INTERVAL 1 DAY GROUP BY uid
UNION ALL
SELECT uid,SUM(coin_change) s2 FROM tab_app_coin_xuni WHERE date(change_time) = p_date AND change_text = '送出礼物'  GROUP BY uid
) xx GROUP BY uid
 
              ) x 
              where coin_change1 >= p_bufu_total  ORDER BY RAND() LIMIT 1;
-- 所有用户均无钱支付礼物，退出
        IF p_send_uid IS NOT NULL  THEN


-- 送礼物过程
        WHILE i <= p_gift_c DO
             SET p_gift_change = p_starttime + INTERVAL p_entime * RAND() SECOND;
             INSERT INTO tab_gift_record_xuni(live_id,gift_id,from_uid,to_uid,createtime,fu_card)                                -- 送出礼物明细
                    SELECT p_live_id,
                           p_gift_id,
                           p_send_uid,    --  send
                           p_receive_id,  -- receive
                           p_gift_change, -- 送出时间
                           p_fu_num;

             INSERT INTO tab_app_coin_xuni(uid,coin_change, change_text, change_time, related_no, type, STATUS)                 -- 送出礼物，不服票变动情况
                    SELECT p_send_uid,    --  send
                           0 - p_fu_num, 
                           '送出礼物', 
                           p_gift_change,  -- 送出时间
                           p_gift_id,
                           0,
                           1;
            
             INSERT INTO tab_coin_xuni(uid, change_text, status,change_time,send_time, type, fu_change,related_id,related_type)  -- 收到的不服票
                    SELECT p_receive_id,
                           '收到礼物',
                           1, 
                           p_gift_change,  -- 收到时间
                           p_gift_change,  -- 收到时间
                           1,
                           p_fu_num,
                           p_live_id,
                           1;
            SET i= i+ 1;
        END WHILE;

           SET i = 1;
      ELSE
           LEAVE A1;
      END IF;

-- 送完礼物后，主播余额
     SELECT ifnull(sum(fu_change),0) 
       INTO p_bufu 
       FROM tab_coin_xuni WHERE uid = p_receive_id AND change_text = '收到礼物' AND related_id = p_live_id AND date(change_time) = p_date; 
        
     END WHILE ;
END LOOP;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_send_gift_new
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_send_gift_new`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_send_gift_new`()
    COMMENT '11-17号最新的虚拟送礼'
BEGIN
  DECLARE pfound TINYINT DEFAULT 0;          -- 游标状态
  DECLARE p_user_belong SMALLINT DEFAULT -1; -- 用户属主
  DECLARE p_s_uid INT DEFAULT -1;            -- 送礼用户
  DECLARE p_r_uid INT DEFAULT -1;            -- 收礼用户
  DECLARE p_bufu INT DEFAULT 0;              -- 充值不服币
  DECLARE p_sum INT DEFAULT 0;               -- 收到的不服票          
  DECLARE p_gift_id  INT DEFAULT -1;         -- 礼物id
  DECLARE p_gift_fu  INT DEFAULT 0;          -- 某礼物价值
  DECLARE p_live_id INT DEFAULT -1;          -- 直播id
  DECLARE p_start_time datetime;             -- 直播开始时间
  DECLARE p_s_gift_time datetime;            -- 送礼物时间
  DECLARE p_duration_time INT DEFAULT 0;     -- 直播持续时间
  DECLARE p_gift_count TINYINT DEFAULT 0;    -- 礼物个数
  DECLARE p_4 SMALLINT  default 0;           -- 桃花个数
  DECLARE pcur CURSOR FOR
          SELECT a.uid s_user,SUM(coin_change) coin_sum,c.uid r_user,c.id,start_time,duration_time 
            FROM tab_app_coin_xuni a LEFT JOIN
                 tab_sr_user_xuni b 
              ON a.uid = b.user_id   LEFT JOIN
               (
                  SELECT m.id,m.uid,n.user_belong,start_time,m.duration_time
                    FROM tab_live_ugc_xuni m LEFT JOIN
                         tab_sr_user_xuni n ON
                         m.uid = n.user_id
                   WHERE m.start_time > CURDATE() AND m.start_time < CURDATE() + INTERVAL 24 HOUR AND
                         n.user_ident = 1
                ) c
              ON b.user_belong = c.user_belong
           WHERE a.`status` = 1 AND 
                 a.type = 1 AND 
                 duration_time > 0 AND
                 change_time > CURDATE() - INTERVAL 1 DAY  AND 
                 change_time < CURDATE()  GROUP BY s_user; 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;

OPEN pcur;
  A1:LOOP
    FETCH pcur INTO p_s_uid, p_bufu, p_r_uid, p_live_id, p_start_time, p_duration_time;
  IF pfound =1 THEN
     LEAVE A1;
  END IF;
   -- SELECT p_s_uid, p_bufu, p_r_uid, p_live_id, p_start_time, p_duration_time;
-- 送礼物过程

     SET p_sum = 0;
     B1: WHILE p_sum < p_bufu DO
        SET p_s_gift_time = p_start_time + INTERVAL ROUND(p_duration_time * RAND()) SECOND;  -- 送礼时间
        SELECT id,fu_num INTO p_gift_id,p_gift_fu FROM tab_gift where  is_great_gift = 1 AND status  = 0 AND vip = 0 and id > 6 ORDER BY RAND() LIMIT 1;  -- 取礼物信息
        IF p_gift_id in (46,49,50,51,127) THEN
           SET p_gift_count =1;
        ELSE 
           SET p_gift_count = 1 + 10 * RAND();
        END IF;
        SELECT IFNULL(SUM(fu_card),0) INTO p_sum FROM tab_gift_record_xuni WHERE from_uid = p_s_uid AND to_uid = p_r_uid AND createtime > CURDATE() AND createtime < CURDATE() + INTERVAL 24 HOUR; -- 已收到的不服票
        IF p_gift_fu * p_gift_count + p_sum > p_bufu THEN
           SET p_4 = (p_bufu - p_sum)/4;    -- 剩余送桃花
             INSERT INTO tab_gift_record_xuni(live_id,gift_id,from_uid,to_uid,createtime,fu_card,gift_num)                                -- 送出礼物明细
                    SELECT p_live_id,
                           28,
                           p_s_uid,    --  send
                           p_r_uid,  -- receive
                           p_s_gift_time, -- 送出时间
                           4*p_4,
                           p_4;

             INSERT INTO tab_app_coin_xuni(uid,coin_change, change_text, change_time, related_no, type, STATUS, gift_num)                 -- 送出礼物，不服票变动情况
                    SELECT p_s_uid,    --  send
                           0 - 4*p_4, 
                           '送出礼物', 
                           p_s_gift_time,  -- 送出时间
                           28,
                           0,
                           1,
                           p_4;
            
             INSERT INTO tab_coin_xuni(uid, change_text, status,change_time,send_time, type, fu_change,related_id,related_type,gift_num)  -- 收到的不服票
                    SELECT p_r_uid,
                           '收到礼物',
                           1, 
                           p_s_gift_time,  -- 收到时间
                           p_s_gift_time,  -- 收到时间
                           1,
                           4*p_4,
                           p_live_id,
                           1,
                           p_4;
           LEAVE B1;
        END IF;
             INSERT INTO tab_gift_record_xuni(live_id, gift_id, from_uid, to_uid, createtime, fu_card, gift_num)                                -- 送出礼物明细
                    SELECT p_live_id,
                           28,
                           p_s_uid,    --  send
                           p_r_uid,  -- receive
                           p_s_gift_time, -- 送出时间
                           p_gift_fu * p_gift_count,
                           p_gift_count;

             INSERT INTO tab_app_coin_xuni(uid,coin_change, change_text, change_time, related_no, type, STATUS, gift_num)                 -- 送出礼物，不服票变动情况
                    SELECT p_s_uid,    --  send
                           0 - p_gift_fu * p_gift_count, 
                           '送出礼物', 
                           p_s_gift_time,  -- 送出时间
                           p_gift_id,
                           0,
                           1,
                           p_gift_count;
            
             INSERT INTO tab_coin_xuni(uid, change_text, status,change_time,send_time, type, fu_change,related_id,related_type, gift_num)  -- 收到的不服票
                    SELECT p_r_uid,
                           '收到礼物',
                           1, 
                           p_s_gift_time,  -- 收到时间
                           p_s_gift_time,  -- 收到时间
                           1,
                           p_gift_fu * p_gift_count,
                           p_live_id,
                           1,
                           p_gift_count;
     END WHILE;

  END LOOP;
CLOSE pcur;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_send_gift_new_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_send_gift_new_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_send_gift_new_1`()
    COMMENT '11-17号最新的虚拟送礼'
BEGIN
  DECLARE pfound TINYINT DEFAULT 0;          -- 游标状态
  DECLARE p_user_belong SMALLINT DEFAULT -1; -- 用户属主
  DECLARE p_s_uid INT DEFAULT -1;            -- 送礼用户
  DECLARE p_r_uid INT DEFAULT -1;            -- 收礼用户
  DECLARE p_bufu INT DEFAULT 0;              -- 充值不服币
  DECLARE p_sum INT DEFAULT 0;               -- 收到的不服票          
  DECLARE p_gift_id  INT DEFAULT -1;         -- 礼物id
  DECLARE p_gift_fu  INT DEFAULT 0;          -- 某礼物价值
  DECLARE p_live_id INT DEFAULT -1;          -- 直播id
  DECLARE p_start_time datetime;             -- 直播开始时间
  DECLARE p_s_gift_time datetime;            -- 送礼物时间
  DECLARE p_duration_time INT DEFAULT 0;     -- 直播持续时间
  DECLARE p_gift_count TINYINT DEFAULT 0;    -- 礼物个数
  DECLARE p_4 SMALLINT  default 0;           -- 桃花个数
  DECLARE pcur CURSOR FOR
          SELECT a.uid s_user,SUM(coin_change) coin_sum,c.uid r_user,c.id,start_time,duration_time 
            FROM tab_app_coin_xuni a LEFT JOIN
                 tab_sr_user_xuni_1 b 
              ON a.uid = b.user_id   LEFT JOIN
               (
                  SELECT m.id,m.uid,n.user_belong,start_time,m.duration_time
                    FROM tab_live_ugc_xuni m LEFT JOIN
                         tab_sr_user_xuni_1 n ON
                         m.uid = n.user_id
                   WHERE m.start_time > CURDATE() AND m.start_time < CURDATE() + INTERVAL 24 HOUR AND
                         n.user_ident = 1
                ) c
              ON b.user_belong = c.user_belong
           WHERE a.`status` = 1 AND 
                 a.type = 1 AND 
                 duration_time > 0 AND
                 change_time > CURDATE() - INTERVAL 1 DAY  AND 
                 change_time < CURDATE()  GROUP BY s_user; 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;

OPEN pcur;
  A1:LOOP
    FETCH pcur INTO p_s_uid, p_bufu, p_r_uid, p_live_id, p_start_time, p_duration_time;
  IF pfound =1 THEN
     LEAVE A1;
  END IF;
   -- SELECT p_s_uid, p_bufu, p_r_uid, p_live_id, p_start_time, p_duration_time;
-- 送礼物过程

     SET p_sum = 0;
     B1: WHILE p_sum < p_bufu DO
        SET p_s_gift_time = p_start_time + INTERVAL ROUND(p_duration_time * RAND()) SECOND;  -- 送礼时间
        SELECT id,fu_num INTO p_gift_id,p_gift_fu FROM tab_gift where  is_great_gift = 1 AND status  = 0 AND vip = 0 and id > 6 ORDER BY RAND() LIMIT 1;  -- 取礼物信息
        IF p_gift_id in (46,49,50,51,127) THEN
           SET p_gift_count =1;
        ELSE 
           SET p_gift_count = 1 + 10 * RAND();
        END IF;
        SELECT IFNULL(SUM(fu_card),0) INTO p_sum FROM tab_gift_record_xuni WHERE from_uid = p_s_uid AND to_uid = p_r_uid AND createtime > CURDATE() AND createtime < CURDATE() + INTERVAL 24 HOUR; -- 已收到的不服票
        IF p_gift_fu * p_gift_count + p_sum > p_bufu THEN
           SET p_4 = (p_bufu - p_sum)/4;    -- 剩余送桃花
             INSERT INTO tab_gift_record_xuni(live_id,gift_id,from_uid,to_uid,createtime,fu_card,gift_num)                                -- 送出礼物明细
                    SELECT p_live_id,
                           28,
                           p_s_uid,    --  send
                           p_r_uid,  -- receive
                           p_s_gift_time, -- 送出时间
                           4*p_4,
                           p_4;

             INSERT INTO tab_app_coin_xuni(uid,coin_change, change_text, change_time, related_no, type, STATUS, gift_num)                 -- 送出礼物，不服票变动情况
                    SELECT p_s_uid,    --  send
                           0 - 4*p_4, 
                           '送出礼物', 
                           p_s_gift_time,  -- 送出时间
                           28,
                           0,
                           1,
                           p_4;
            
             INSERT INTO tab_coin_xuni(uid, change_text, status,change_time,send_time, type, fu_change,related_id,related_type,gift_num)  -- 收到的不服票
                    SELECT p_r_uid,
                           '收到礼物',
                           1, 
                           p_s_gift_time,  -- 收到时间
                           p_s_gift_time,  -- 收到时间
                           1,
                           4*p_4,
                           p_live_id,
                           1,
                           p_4;
           LEAVE B1;
        END IF;
             INSERT INTO tab_gift_record_xuni(live_id, gift_id, from_uid, to_uid, createtime, fu_card, gift_num)                                -- 送出礼物明细
                    SELECT p_live_id,
                           28,
                           p_s_uid,    --  send
                           p_r_uid,  -- receive
                           p_s_gift_time, -- 送出时间
                           p_gift_fu * p_gift_count,
                           p_gift_count;

             INSERT INTO tab_app_coin_xuni(uid,coin_change, change_text, change_time, related_no, type, STATUS, gift_num)                 -- 送出礼物，不服票变动情况
                    SELECT p_s_uid,    --  send
                           0 - p_gift_fu * p_gift_count, 
                           '送出礼物', 
                           p_s_gift_time,  -- 送出时间
                           p_gift_id,
                           0,
                           1,
                           p_gift_count;
            
             INSERT INTO tab_coin_xuni(uid, change_text, status,change_time,send_time, type, fu_change,related_id,related_type, gift_num)  -- 收到的不服票
                    SELECT p_r_uid,
                           '收到礼物',
                           1, 
                           p_s_gift_time,  -- 收到时间
                           p_s_gift_time,  -- 收到时间
                           1,
                           p_gift_fu * p_gift_count,
                           p_live_id,
                           1,
                           p_gift_count;
     END WHILE;

  END LOOP;
CLOSE pcur;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_send_gift_new_date
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_send_gift_new_date`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_send_gift_new_date`(p_date date)
    COMMENT '11-17号最新的虚拟送礼'
BEGIN
  DECLARE pfound TINYINT DEFAULT 0;          -- 游标状态
  DECLARE p_user_belong SMALLINT DEFAULT -1; -- 用户属主
  DECLARE p_s_uid INT DEFAULT -1;            -- 送礼用户
  DECLARE p_r_uid INT DEFAULT -1;            -- 收礼用户
  DECLARE p_bufu INT DEFAULT 0;              -- 充值不服币
  DECLARE p_sum INT DEFAULT 0;               -- 收到的不服票          
  DECLARE p_gift_id  INT DEFAULT -1;         -- 礼物id
  DECLARE p_gift_fu  INT DEFAULT 0;          -- 某礼物价值
  DECLARE p_live_id INT DEFAULT -1;          -- 直播id
  DECLARE p_start_time datetime;             -- 直播开始时间
  DECLARE p_s_gift_time datetime;            -- 送礼物时间
  DECLARE p_duration_time INT DEFAULT 0;     -- 直播持续时间
  DECLARE p_gift_count TINYINT DEFAULT 0;    -- 礼物个数
  DECLARE p_4 SMALLINT  default 0;           -- 桃花个数
  DECLARE pcur CURSOR FOR
          SELECT a.uid s_user,SUM(coin_change) coin_sum,c.uid r_user,c.id,start_time,duration_time 
            FROM tab_app_coin_xuni a LEFT JOIN
                 tab_sr_user_xuni_1 b 
              ON a.uid = b.user_id   LEFT JOIN
               (
                  SELECT m.id,m.uid,n.user_belong,start_time,m.duration_time
                    FROM tab_live_ugc_xuni m LEFT JOIN
                         tab_sr_user_xuni_1 n ON
                         m.uid = n.user_id
                   WHERE m.start_time > p_date AND m.start_time < p_date + INTERVAL 24 HOUR AND
                         n.user_ident = 1
                ) c
              ON b.user_belong = c.user_belong
           WHERE a.`status` = 1 AND 
                 a.type = 1 AND 
                 duration_time > 0 AND
                 change_time > p_date - INTERVAL 1 DAY  AND 
                 change_time < p_date  GROUP BY s_user; 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;

OPEN pcur;
  A1:LOOP
    FETCH pcur INTO p_s_uid, p_bufu, p_r_uid, p_live_id, p_start_time, p_duration_time;
  IF pfound =1 THEN
     LEAVE A1;
  END IF;
   -- SELECT p_s_uid, p_bufu, p_r_uid, p_live_id, p_start_time, p_duration_time;
-- 送礼物过程

     SET p_sum = 0;
     B1: WHILE p_sum < p_bufu DO
        SET p_s_gift_time = p_start_time + INTERVAL ROUND(p_duration_time * RAND()) SECOND;  -- 送礼时间
        SELECT id,fu_num INTO p_gift_id,p_gift_fu FROM tab_gift where  is_great_gift = 1 AND status  = 0 AND vip = 0 and id > 6 ORDER BY RAND() LIMIT 1;  -- 取礼物信息
        IF p_gift_id in (46,49,50,51,127) THEN
           SET p_gift_count =1;
        ELSE 
           SET p_gift_count = 1 + 10 * RAND();
        END IF;
        SELECT IFNULL(SUM(fu_card),0) INTO p_sum FROM tab_gift_record_xuni 
         WHERE from_uid = p_s_uid AND to_uid = p_r_uid AND createtime > p_date AND createtime < p_date + INTERVAL 24 HOUR; -- 已收到的不服票
        IF p_gift_fu * p_gift_count + p_sum > p_bufu THEN
           SET p_4 = (p_bufu - p_sum)/4;    -- 剩余送桃花
             INSERT INTO tab_gift_record_xuni(live_id,gift_id,from_uid,to_uid,createtime,fu_card,gift_num)                                -- 送出礼物明细
                    SELECT p_live_id,
                           28,
                           p_s_uid,    --  send
                           p_r_uid,  -- receive
                           p_s_gift_time, -- 送出时间
                           4*p_4,
                           p_4;

             INSERT INTO tab_app_coin_xuni(uid,coin_change, change_text, change_time, related_no, type, STATUS, gift_num)                 -- 送出礼物，不服票变动情况
                    SELECT p_s_uid,    --  send
                           0 - 4*p_4, 
                           '送出礼物', 
                           p_s_gift_time,  -- 送出时间
                           28,
                           0,
                           1,
                           p_4;
            
             INSERT INTO tab_coin_xuni(uid, change_text, status,change_time,send_time, type, fu_change,related_id,related_type,gift_num)  -- 收到的不服票
                    SELECT p_r_uid,
                           '收到礼物',
                           1, 
                           p_s_gift_time,  -- 收到时间
                           p_s_gift_time,  -- 收到时间
                           1,
                           4*p_4,
                           p_live_id,
                           1,
                           p_4;
           LEAVE B1;
        END IF;
             INSERT INTO tab_gift_record_xuni(live_id, gift_id, from_uid, to_uid, createtime, fu_card, gift_num)                                -- 送出礼物明细
                    SELECT p_live_id,
                           28,
                           p_s_uid,    --  send
                           p_r_uid,  -- receive
                           p_s_gift_time, -- 送出时间
                           p_gift_fu * p_gift_count,
                           p_gift_count;

             INSERT INTO tab_app_coin_xuni(uid,coin_change, change_text, change_time, related_no, type, STATUS, gift_num)                 -- 送出礼物，不服票变动情况
                    SELECT p_s_uid,    --  send
                           0 - p_gift_fu * p_gift_count, 
                           '送出礼物', 
                           p_s_gift_time,  -- 送出时间
                           p_gift_id,
                           0,
                           1,
                           p_gift_count;
            
             INSERT INTO tab_coin_xuni(uid, change_text, status,change_time,send_time, type, fu_change,related_id,related_type, gift_num)  -- 收到的不服票
                    SELECT p_r_uid,
                           '收到礼物',
                           1, 
                           p_s_gift_time,  -- 收到时间
                           p_s_gift_time,  -- 收到时间
                           1,
                           p_gift_fu * p_gift_count,
                           p_live_id,
                           1,
                           p_gift_count;
     END WHILE;

  END LOOP;
CLOSE pcur;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_test
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_test`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_test`()
    COMMENT '循环执行增加98-30的存储过程'
BEGIN
   DECLARE i TINYINT DEFAULT 0;
   DECLARE p_start date;
   SET p_start = '2016-11-02';
   WHILE i < 60 DO 
     SET i = i + 1; 
     CALL p_xuni_recharge_98and30(p_start + INTERVAL i DAY); 
   END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_true
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_true`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_true`()
BEGIN
   DECLARE p_date date;
   DECLARE p_date1 date;
   DECLARE i TINYINT DEFAULT 0;
   DECLARE total_money INT DEFAULT 0;
   DECLARE p_total INT DEFAULT 0;
   DECLARE today_money INT DEFAULT 0;
   SET p_date = date'2016-11-05';
   WHILE i < 59  DO
      SET p_date1 = p_date + INTERVAL i DAY;
      SET today_money = 300000 + 60000*RAND(); 
      CALL p_xuni_recharge(today_money,p_date1);
      SET i = i + 1; 
   END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_update_liveid
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_update_liveid`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_update_liveid`()
BEGIN
   DECLARE p_id INT DEFAULT 0; -- liveid
   DECLARE i INT DEFAULT 1;
   DECLARE pfound TINYINT DEFAULT 0;
   DECLARE pcursor CURSOR FOR SELECT id FROM tab_live_ugc_xuni; 
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
OPEN pcursor;
A1:LOOP
 FETCH pcursor INTO p_id;
     IF pfound = 1 THEN
        LEAVE A1;
     END IF;
 WHILE i < 693 DO
   UPDATE  tab_live_ugc_xuni set id = 81201 + id WHERE id = 2 * i - 1;
   UPDATE tab_coin_xuni SET related_id = 81201 + related_id WHERE related_id = p_id;
   UPDATE tab_gift_record_xuni SET live_id = live_id + 81245 WHERE live_id = p_id;
   SET i = i + 1;
 END WHILE;
END LOOP;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_update_recharge_time
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_update_recharge_time`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_update_recharge_time`(p_date date)
    COMMENT '每日更新真实与虚拟充值记录的时间'
BEGIN
   DECLARE pfound  TINYINT DEFAULT  0;
   DECLARE p_seqno_src INT DEFAULT -1;
   DECLARE p_seqno_dst INT DEFAULT -1;
   DECLARE p_start datetime;
   DECLARE p_value SMALLINT DEFAULT 0;
   DECLARE pcursor CURSOR FOR select id,
                                     change_time,
                                     price_coin 
                                FROM tab_app_coin 
                               where uid =  851182 AND 
                                     DATE(change_time)= p_date AND  -- 昨天的充值记录
                                     is_recharge = 0 AND change_text = '充值' AND `status`= 2 AND transaction_id <> '';
   OPEN pcursor;
A1:LOOP
      FETCH pcursor INTO p_seqno_src,p_start,p_value;
   IF pfound = 1 THEN
      LEAVE A1;
   END IF;
      select id
        INTO p_seqno_dst
        FROM tab_app_coin_xuni 
       where DATE(change_time)= p_date AND-- 昨天的虚拟充值记录
             is_recharge = 0 AND change_text = '充值' AND price_coin = p_value LIMIT 1;
    IF p_seqno_dst IS NOT NULL THEN     
      UPDATE tab_app_coin      SET is_recharge = 1                       WHERE id = p_seqno_src; -- 更新真实表
      UPDATE tab_app_coin_xuni SET is_recharge = 1,change_time = p_start WHERE id = p_seqno_dst; -- 更新虚拟表
    ELSE
      SELECT 1;
    END IF;
END LOOP;
   CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_update_weixin_number
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_update_weixin_number`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_update_weixin_number`()
    COMMENT '虚拟充值更新微信号'
BEGIN
  DECLARE p_wx_count SMALLINT DEFAULT 0;
  DECLARE p_wx VARCHAR(30);
  SELECT count(*) INTO p_wx_count FROM t_xuni_weixin ;
  UPDATE tab_coin_xuni m SET wx_account =
         (
           SELECT weixin FROM
               (
                 SELECT recharge_seqno,MOD(@rownum:=@rownum+1,p_wx_count) rw1, -- 取自t_xuni_weixin表的总条数
                        coin_change 
                   FROM
                    (
                      SELECT id recharge_seqno,
                             coin_change 
                        FROM tab_coin_xuni  WHERE change_time > CURDATE()  -- 提现那天的时间
                         AND change_text = '用户申请微信提现' AND
                       uid in (SELECT user_id FROM tab_sr_user_xuni_1 WHERE  user_ident = 1)
ORDER BY coin_change
                    ) a,(SELECT @rownum:=0) b 
               ) x,
              (
                SELECT * FROM (SELECT weixin,@rownum:=@rownum+1 rw2 FROM t_xuni_weixin a,(SELECT @rownum:=-1) b ) hh
              )y WHERE x.rw1 = y.rw2 AND m.id = recharge_seqno
         ) 
where change_text <> '收到礼物' AND change_time > CURDATE() 
AND uid in (SELECT user_id FROM tab_sr_user_xuni_1 WHERE user_ident =1 ) AND wx_account is null; 

SELECT weixin into p_wx FROM t_xuni_weixin  ORDER BY RAND() LIMIT 1;

UPDATE  tab_coin_xuni SET wx_account = p_wx
WHERE change_text <>'收到礼物' AND  change_time >  CURDATE()  AND uid in 
(
select user_id FROM tab_sr_user_xuni_1 where user_ident = 1 -- 这个type=0，表示之前的
) AND wx_account is NULL;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_update_weixin_number_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_update_weixin_number_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_update_weixin_number_1`()
    COMMENT '虚拟充值更新微信号'
BEGIN
  DECLARE p_wx_count SMALLINT DEFAULT 0;
  DECLARE p_wx VARCHAR(30);
  SELECT count(*) INTO p_wx_count FROM t_xuni_weixin where type = 1;
  UPDATE tab_coin_xuni m SET wx_account =
         (
           SELECT weixin FROM
               (
                 SELECT recharge_seqno,MOD(@rownum:=@rownum+1,p_wx_count) rw1, -- 取自t_xuni_weixin表的总条数
                        coin_change 
                   FROM
                    (
                      SELECT id recharge_seqno,
                             coin_change 
                        FROM tab_coin_xuni  WHERE change_time > CURDATE()  -- 提现那天的时间
                         AND change_text = '用户申请微信提现' AND
                       uid in (SELECT user_id FROM tab_sr_user_xuni_1 WHERE type = 1 AND user_ident = 1)
ORDER BY coin_change
                    ) a,(SELECT @rownum:=0) b 
               ) x,
              (
                SELECT * FROM (SELECT weixin,@rownum:=@rownum+1 rw2 FROM t_xuni_weixin a,(SELECT @rownum:=-1) b WHERE a.type = 1) hh
              )y WHERE x.rw1 = y.rw2 AND m.id = recharge_seqno
         ) 
   WHERE change_time > CURDATE() AND change_text = '用户申请微信提现' AND uid in (SELECT user_id FROM tab_sr_user_xuni_1 WHERE type = 1 AND user_ident = 1); 
-- 需要
/*
SELECT weixin into p_wx FROM t_xuni_weixin WHERE type = 1 ORDER BY RAND() LIMIT 1;

UPDATE  tab_coin_xuni SET wx_account = p_wx
WHERE change_text <>'收到礼物' AND  change_time >  CURDATE()  AND uid in 
(
select user_id FROM tab_sr_user_xuni_1 where user_ident = 1 AND type = 1 -- 这个type=0，表示之前的
) AND wx_account is NULL;
*/
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p_xuni_user_supply
-- ----------------------------
DROP PROCEDURE IF EXISTS `p_xuni_user_supply`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `p_xuni_user_supply`()
    COMMENT '增加用户信息，整个过程仅执行一次'
BEGIN
   DECLARE pfound TINYINT DEFAULT 0;
   DECLARE p_uid INT DEFAULT -1;
   DECLARE p_q_uid VARCHAR(40);
   DECLARE p_province VARCHAR(40);
   DECLARE p_city VARCHAR(40);
   DECLARE p_lon VARCHAR(40);
   DECLARE p_lat VARCHAR(40);
   DECLARE pcursor CURSOR FOR SELECT id FROM tab_user_xuni WHERE is_moke = 0 and q_uid is null;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
OPEN pcursor;
  A1:LOOP
     FETCH pcursor INTO p_uid;
     SELECT DISTINCT q_uid,province,city,lon,lat INTO p_q_uid,p_province,p_city,p_lon,p_lat
       FROM tab_live_ugc WHERE province is NOT null AND city not in  ('没有在地球落户','杭州市','不在地球') AND start_time > '2016-10-10'  order by RAND() LIMIT 1;
     UPDATE tab_user_xuni SET q_uid = CONCAT(SUBSTR(p_q_uid,1,LENGTH(p_q_uid)-5),SUBSTR(RAND(),-5)),
                              province1 = p_province,
                              city = p_city,
                              lon = p_lon,
                              lat1 = p_lat
                  WHERE id = p_uid;
     IF pfound = 1 THEN           
        LEAVE A1;
     END IF;
  END LOOP;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_add_loguserdevice_partition
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_add_loguserdevice_partition`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_add_loguserdevice_partition`()
    COMMENT '为log_user_device表增加分区'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :为log_user_device动态增加分区，每次增加99个分区
   */
   DECLARE p_part VARCHAR(8);
   DECLARE p_date DATE;
   DECLARE i INTEGER DEFAULT 1;
   DECLARE p_sql VARCHAR(200);
   DECLARE p_todays INTEGER DEFAULT 0;
   DECLARE p_formatdate VARCHAR(8);
   SELECT SUBSTR(max(PARTITION_name),-8) INTO p_part from information_schema.`PARTITIONS` WHERE TABLE_SCHEMA ='disagree_online' AND TABLE_NAME = 'log_user_device';
   WHILE i < 100 DO
     SELECT DATE_ADD(DATE(p_part),INTERVAL i DAY) INTO p_date;
     SELECT DATE_FORMAT(p_date,'%Y%m%d'),TO_DAYS(p_date) INTO p_formatdate,p_todays;
     SET p_sql = CONCAT('ALTER TABLE log_user_device add PARTITION (PARTITION p',p_formatdate,' VALUES LESS THAN (',p_todays,'))');
     #SELECT p_sql;
     SET @psql = p_sql;
     PREPARE stmt FROM @psql;
     EXECUTE stmt;
     DEALLOCATE PREPARE stmt;
     SET i = i + 1;
   END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_add_user_experience
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_add_user_experience`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_add_user_experience`(p_mediaid INTEGER,p_liveid INTEGER,p_uid INTEGER)
    COMMENT '根据用户行为增加相应经验值'
BEGIN
  DECLARE p_userid          INTEGER DEFAULT NULL;
  DECLARE p_matchid         INTEGER DEFAULT NULL;
  DECLARE pcount            INTEGER DEFAULT 0;
  DECLARE p_lcount          INTEGER DEFAULT 0;
  DECLARE p_media_exp       INTEGER DEFAULT 50;
  DECLARE p_bufu_exp        INTEGER DEFAULT 300;
  DECLARE p_join_live_exp   INTEGER DEFAULT 100;
  DECLARE p_experience      INTEGER DEFAULT 0;
  DECLARE p_sum             INTEGER DEFAULT 0;
  DECLARE p_sum1            INTEGER DEFAULT 0;
  DECLARE p_luserid         INTEGER DEFAULT NULL;
  DECLARE p_5               INTEGER DEFAULT 0;
  DECLARE p_30              INTEGER DEFAULT 0;
  DECLARE before_level      INTEGER DEFAULT 0;
  DECLARE after_level       INTEGER DEFAULT 0;
  DECLARE p_auth            INTEGER DEFAULT 0;
  DECLARE p11               INTEGER DEFAULT 0;
  DECLARE p22               INTEGER DEFAULT 0;
  DECLARE p_view_ugc        INTEGER DEFAULT 0;
-- 参加不服来战
IF p_mediaid IS NOT NULL AND p_liveid IS NULL THEN
  -- 获取用户信息
  SELECT user_id,  
         match_id 
    INTO p_userid,
         p_matchid 
    FROM tab_media 
   WHERE id = p_mediaid;
  SELECT auth_type,      
         level 
    INTO p_auth,
         before_level 
    FROM tab_user 
   WHERE id = p_userid;
  -- 普通作品
  IF p_matchid IS NULL THEN

     SELECT count(*) 
       INTO pcount 
       FROM tab_media  
      WHERE user_id = p_userid 
        AND create_time > CURRENT_DATE()  
        AND match_id IS NULL;

     IF pcount < 5 THEN   
 
        UPDATE tab_user 
           SET experience =  experience + p_media_exp,
               level = func_live_get_level(experience)
         WHERE id = p_userid;
     END IF;
   -- 赛事作品
   ELSE

      SELECT count(*) INTO pcount FROM tab_media WHERE user_id = p_userid AND create_time > CURRENT_DATE() AND status <> 2 AND match_id IS NOT NULL;
      IF pcount < 2 THEN

         UPDATE tab_user 
            SET experience =  experience + p_bufu_exp,
                level = func_live_get_level(experience) 
          WHERE id = p_userid;
      END IF;
  END IF;
  --  更新经验和头像下标
  IF p_auth = 0 THEN  
     SELECT level 
       INTO after_level 
       FROM tab_user 
      WHERE id =  p_userid;
     SET p11 = floor((before_level-1)/10);
     SET p22 = floor((after_level-1)/10);
     IF ( p22 > p11) THEN
        UPDATE tab_user 
           SET auth_image = (SELECT level_image FROM tab_level_area WHERE id = p22 + 1)
         WHERE id = p_userid;
     END IF;
  END IF;
-- 开启直播
ELSEIF p_mediaid IS NULL AND p_liveid IS NOT NULL THEN
  -- 获取直播用户信息
  SELECT uid INTO p_luserid FROM tab_live_ugc WHERE id = p_liveid;
  SELECT auth_type,
         level 
    INTO p_auth,
         before_level 
    FROM tab_user 
   WHERE id = p_luserid;
  -- 获取直播次数
  SELECT count(*) 
    INTO p_lcount 
    FROM tab_live_ugc 
   WHERE uid = p_luserid AND 
         start_time > CURRENT_DATE();
-- 当天仅开启了一场直播
  IF p_lcount = 1 THEN

  SELECT FLOOR(TIMESTAMPDIFF(MINUTE,end_time,start_time)/5),
         FLOOR(TIMESTAMPDIFF(MINUTE,end_time,start_time)/30) 
    INTO p_5,p_30 
    FROM tab_live_ugc 
   WHERE uid = p_luserid AND 
         start_time > CURRENT_DATE() 
ORDER BY start_time ASC limit 1;  
     -- 单场直播时间>5分钟 并且小于<30分
     IF p_5 > 0 AND p_30 = 0 THEN  

        UPDATE tab_user 
           SET experience = experience + 100,
               level = func_live_get_level(experience) 
         WHERE id = p_luserid;
     -- 单场直播时间>30分钟 并且小于<120分
     ELSEIF p_30 > 0 AND p_30 < 4 THEN 

        UPDATE tab_user 
           SET experience = experience + 100 + p_30 * 100,
               level = func_live_get_level(experience) 
         WHERE id = p_luserid;
     -- 单场直播时间>120分
     ELSEIF p_30 > 4 THEN 

        UPDATE tab_user 
           SET experience = experience + 100 + 3 * 100,
               level = func_live_get_level(experience)  
         WHERE id = p_luserid;

     ELSE 
        SELECT 1;
     END IF;
-- 一天开启了多场直播
  ELSEIF p_lcount > 1 THEN
     SELECT SUM(FLOOR(TIMESTAMPDIFF(MINUTE,start_time,end_time)/30)) 
       INTO p_sum 
       FROM tab_live_ugc 
      WHERE uid = p_luserid AND 
            start_time > CURRENT_DATE() AND 
            id <> p_liveid;
     -- 当天非本场直播总时长>90分钟
     IF p_sum > 3 THEN     
        SET p_experience = 0;
     ELSE
        SELECT FLOOR(TIMESTAMPDIFF(MINUTE,start_time,end_time)/30) 
          INTO p_sum1 
          FROM tab_live_ugc 
        WHERE  id = p_liveid;
        -- 直播时间>=30分钟 并且小于<=60分
        IF  3 - p_sum >= p_sum1  AND p_sum1 > 0 THEN

           UPDATE tab_user 
              SET experience = experience + 100 * p_sum1,
                  level = func_live_get_level(experience)     
            WHERE id = p_luserid;
        ELSEIF  3 - p_sum < p_sum1  AND p_sum1 > 0 THEN

           UPDATE tab_user 
             SET  experience = experience + 100 * (3 - p_sum),
                  level = func_live_get_level(experience) 
            WHERE id = p_luserid ;
        ELSE 
           SELECT 1;
        END IF;
     END IF;

  END IF; 
  IF p_auth = 0 THEN
     SELECT level 
       INTO after_level 
       FROM tab_user 
      WHERE id =  p_luserid;
     SET p11 = floor((before_level-1)/10);
     SET p22 = floor((after_level-1)/10);
     IF ( p22 > p11) THEN
        UPDATE tab_user 
           SET auth_image = (SELECT level_image FROM tab_level_area WHERE id = p22 + 1)
         WHERE id =  p_luserid;
     END IF;
  END IF;
-- 观看直播
ELSE
   -- 获取用户信息
   SELECT auth_type,
          level 
     INTO p_auth,
         before_level 
     FROM tab_user 
   WHERE id = p_uid;
   SELECT count(*)  
     INTO p_view_ugc 
     FROM tab_live_ugc_visitor 
    WHERE create_time >= CURDATE() AND auid = p_uid;
   IF p_view_ugc < 11 THEN
       UPDATE tab_user 
         SET  experience = experience + 10,
              level = func_live_get_level(experience) 
        WHERE id = p_uid ;
   IF p_auth = 0 THEN
       SELECT level 
         INTO after_level 
         FROM tab_user 
        WHERE id =  p_uid;
          SET p11 = floor((before_level-1)/10);
          SET p22 = floor((after_level-1)/10);
   IF ( p22 > p11) THEN
       UPDATE tab_user 
          SET auth_image = (SELECT level_image FROM tab_level_area WHERE id = p22 + 1)
        WHERE id =  p_uid;
   END IF;
   END IF;   
   END IF;
      
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_addWxCoin
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_addWxCoin`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_addWxCoin`()
    COMMENT '资金变动明细'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :资金变动明细
   */
	INSERT INTO tab_coin (
		uid,
		coin_before,
		change_text,
		coin_change,
		change_time,
		coin_after,
		STATUS,
		type
	) 
	SELECT
		ws.uid,
		CASE
			WHEN coin IS NULL THEN
				0
			ELSE
				coin
		END AS coin_before,
		'红包',
		price,
		now(),
		CASE
			WHEN coin IS NULL THEN
				price
			ELSE
				price + coin
		END AS coin_after,
	 1,
	 1
	FROM
		(
			SELECT
				uid,
				sum(price) AS price
			FROM
				tab_wx_support
			GROUP BY
				uid
		) AS ws
	LEFT JOIN (
		SELECT
			uid,
			sum(coin_change) AS coin
		FROM
			tab_coin
		GROUP BY
			uid
	) AS c ON c.uid = ws.uid
	WHERE
		price > 10
	AND price < 50;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_analyze_anchor
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_analyze_anchor`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_analyze_anchor`(p_date date)
    COMMENT '按主播统计'
BEGIN
DECLARE p_uid INT;                     -- 主播id
DECLARE p_gift_num INT DEFAULT 0;      -- 礼物个数
DECLARE p_gift_val INT DEFAULT 0;      -- 礼物价值
DECLARE p_talk_num INT DEFAULT 0;      -- 聊天数
DECLARE p_danm_num INT DEFAULT 0;      -- 弹幕数
DECLARE p_visitor_num INT DEFAULT 0;   -- 观众数
DECLARE p_share_num  INT DEFAULT 0 ;   -- 分享数
DECLARE p_fans_num INT DEFAULT 0;      -- 粉丝数
DECLARE p_support_num INT DEFAULT 0;   -- 点赞数
DECLARE p_live_duration INT DEFAULT 0; -- 直播时长(秒)
DECLARE p_valid TINYINT DEFAULT 0;     -- 有效天
DECLARE pfound INTEGER DEFAULT 0;      -- 游标状态
DECLARE p_cursor CURSOR FOR
SELECT DISTINCT uid FROM
(
SELECT id,uid,DATE(end_time) start_time,end_time  FROM tab_live_ugc 
 WHERE start_time <= p_date AND end_time > p_date
UNION ALL
-- 昨天的
SELECT id,uid,start_time,DATE(end_time) - INTERVAL 1 SECOND  FROM tab_live_ugc 
 WHERE start_time <= p_date + INTERVAL 1 DAY AND end_time > p_date + INTERVAL 1 DAY
UNION ALL
SELECT id,uid,start_time,end_time  FROM tab_live_ugc 
 WHERE start_time >= p_date AND start_time  < p_date + INTERVAL 1 DAY AND
          end_time > p_date AND end_time    < p_date + INTERVAL 1 DAY
UNION ALL
-- pk
SELECT live_id,pk_uid,DATE(end_time),end_time  FROM tab_live_pk 
 WHERE start_time <= p_date AND end_time > p_date
UNION ALL
-- 昨天的
SELECT live_id,pk_uid,start_time,DATE(end_time) - INTERVAL 1 SECOND  FROM tab_live_pk 
 WHERE start_time <= p_date + INTERVAL 1 DAY AND end_time > p_date + INTERVAL 1 DAY
UNION ALL
SELECT live_id,pk_uid,start_time,end_time  FROM tab_live_pk 
 WHERE start_time >= p_date  AND start_time  < p_date + INTERVAL 1 DAY AND
          end_time > p_date AND end_time     < p_date + INTERVAL 1 DAY
) x;

OPEN p_cursor;
  A1:LOOP
     FETCH p_cursor INTO p_uid;
  IF pfound = 1 THEN
      LEAVE A1;
  END IF;
-- 礼物个数及数量
     SELECT SUM(gift_num),SUM(fu_card) 
       INTO p_gift_num,p_gift_val 
       FROM tab_gift_record 
      WHERE to_uid = p_uid AND createtime >= p_date AND createtime < p_date + INTERVAL 1 DAY;
-- 聊天数\弹幕数
     SELECT count(*),SUM(if(is_screen_msg>0,1,0))
       INTO p_talk_num,p_danm_num
       FROM tab_live_msg_record 
      WHERE to_uid = p_uid AND create_time >= p_date AND create_time < p_date + INTERVAL 1 DAY;
-- 观众数
     SELECT count(DISTINCT a.auid) INTO p_visitor_num 
       FROM tab_live_ugc_visitor a 
      WHERE  a.buid = p_uid AND create_time >= p_date AND create_time < p_date + INTERVAL 1 DAY;

-- 分享数
     SELECT SUM(share_times),SUM(support_num) INTO p_share_num,p_support_num 
       FROM tab_live_ugc where uid = p_uid AND start_time >= p_date AND start_time < p_date + INTERVAL 1 DAY;
-- 粉丝数
     SELECT max(fnumber) INTO p_fans_num
       FROM tab_user WHERE id = p_uid;
-- 直播时长(秒)

     SET p_live_duration = func_anchor_valid_duration_1(p_uid,p_date,p_date);
     IF p_live_duration >= 7200 THEN
        SET p_valid = 1;
     END IF;
     INSERT INTO tab_analyze_live_classify
            (user_id,start_time,end_time,fans_num  ,gift_num  ,gift_val  ,support_num  ,share_num  ,visitor_num  ,barrage_num,talk_num,live_duration  ,type,valid_day)
     SELECT p_uid,
            p_date,
            p_date + INTERVAL 86399 SECOND,
            IFNULL(p_fans_num,0),
            IFNULL(p_gift_num,0),
            IFNULL(p_gift_val,0),
            IFNULL(p_support_num,0),
            IFNULL(p_share_num,0),
            IFNULL(p_visitor_num,0),
            IFNULL(p_danm_num,0),
            IFNULL(p_talk_num,0),
            IFNULL(p_live_duration,0),
            1,
            p_valid;
  END LOOP;

CLOSE p_cursor;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_analyze_anchor_live
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_analyze_anchor_live`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_analyze_anchor_live`(p_date date)
    COMMENT '按主播直播id统计直播数据'
BEGIN
DECLARE p_liveid INT;                  -- 直播id
DECLARE p_uid INT;                     -- 主播id
DECLARE p_stdate datetime;             -- 直播开始时间
DECLARE p_enddate datetime;            -- 直播结束时间
DECLARE p_gift_num INT DEFAULT 0;      -- 礼物个数
DECLARE p_gift_val INT DEFAULT 0;      -- 礼物价值
DECLARE p_talk_num INT DEFAULT 0;      -- 聊天数
DECLARE p_danm_num INT DEFAULT 0;      -- 弹幕数
DECLARE p_visitor_num INT DEFAULT 0;   -- 观众数
DECLARE p_share_num  INT DEFAULT 0 ;   -- 分享数
DECLARE p_fans_num INT DEFAULT 0;      -- 粉丝数
DECLARE p_support_num INT DEFAULT 0;   -- 点赞数
DECLARE p_live_duration INT DEFAULT 0; -- 直播时长(秒)
DECLARE pfound INTEGER DEFAULT 0;      -- 游标状态
DECLARE p_cursor CURSOR FOR
SELECT id,uid,DATE(end_time) start_time,end_time  FROM tab_live_ugc 
 WHERE start_time <= p_date AND end_time > p_date
UNION ALL
-- 昨天的
SELECT id,uid,start_time,DATE(end_time) - INTERVAL 1 SECOND  FROM tab_live_ugc 
 WHERE start_time <= p_date + INTERVAL 1 DAY AND end_time > p_date + INTERVAL 1 DAY
UNION ALL
SELECT id,uid,start_time,end_time  FROM tab_live_ugc 
 WHERE start_time >= p_date AND start_time  < p_date + INTERVAL 1 DAY AND
          end_time > p_date AND end_time    < p_date + INTERVAL 1 DAY
UNION ALL
-- pk
SELECT live_id,pk_uid,DATE(end_time),end_time  FROM tab_live_pk 
 WHERE start_time <= p_date AND end_time > p_date
UNION ALL
-- 昨天的
SELECT live_id,pk_uid,start_time,DATE(end_time) - INTERVAL 1 SECOND  FROM tab_live_pk 
 WHERE start_time <= p_date + INTERVAL 1 DAY AND end_time > p_date + INTERVAL 1 DAY
UNION ALL
SELECT live_id,pk_uid,start_time,end_time  FROM tab_live_pk 
 WHERE start_time >= p_date  AND start_time  < p_date + INTERVAL 1 DAY AND
          end_time > p_date AND end_time     < p_date + INTERVAL 1 DAY;

OPEN p_cursor;
  A1:LOOP
     FETCH p_cursor INTO p_liveid,p_uid,p_stdate,p_enddate;
  IF pfound = 1 THEN
      LEAVE A1;
  END IF;
-- 礼物个数及数量
     SELECT SUM(gift_num),SUM(fu_card) 
       INTO p_gift_num,p_gift_val 
       FROM tab_gift_record 
      WHERE live_id = p_liveid AND to_uid = p_uid AND createtime >= p_stdate AND createtime < p_enddate;
-- 聊天数\弹幕数
     SELECT count(*),SUM(if(is_screen_msg>0,1,0))
       INTO p_talk_num,p_danm_num
       FROM tab_live_msg_record 
      WHERE live_id = p_liveid AND to_uid = p_uid AND create_time >= p_stdate AND create_time < p_enddate;
-- 观众数
     SELECT count(DISTINCT auid) INTO p_visitor_num 
       FROM tab_live_ugc_visitor  
      WHERE live_id = p_liveid;

-- 分享数
     SELECT share_times,support_num INTO p_share_num,p_support_num 
       FROM tab_live_ugc where id = p_liveid;
-- 粉丝数
     SELECT fnumber INTO p_fans_num
       FROM tab_user WHERE id = p_uid;
-- 直播时长(秒)
     SET p_live_duration = TIMESTAMPDIFF(SECOND,p_stdate,p_enddate);

     INSERT INTO tab_analyze_live_classify
            (live_id ,user_id,start_time,end_time ,fans_num  ,gift_num  ,gift_val  ,support_num  ,share_num  ,visitor_num  ,barrage_num,talk_num,live_duration  ,type)
     SELECT p_liveid,
            p_uid,
            p_stdate,
            p_enddate,
            IFNULL(p_fans_num,0),
            IFNULL(p_gift_num,0),
            IFNULL(p_gift_val,0),
            IFNULL(p_support_num,0),
            IFNULL(p_share_num,0),
            IFNULL(p_visitor_num,0),
            IFNULL(p_danm_num,0),
            IFNULL(p_talk_num,0),
            IFNULL(p_live_duration,0),
            0;
  END LOOP;

CLOSE p_cursor;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_anchor_valid_day
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_anchor_valid_day`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_anchor_valid_day`(p_date date,p_user_id INT,OUT p_1 TINYINT,OUT p_2 INT)
    COMMENT '签约主播有效天数计算'
BEGIN

SELECT COUNT(1) AS count
into  p_1 -- 有效天数
FROM (
SELECT start_time, count(pcount) pc, sum(ptime) pt FROM (SELECT count(DISTINCT xx) pcount,sum(duration_time) ptime,start_time FROM(
SELECT duration_time,start_time, CASE WHEN x > 0 THEN @max_sal:=x ELSE @max_sal end xx FROM
(
select 
   id, 
   uid,
   DATE(start_time) start_time,
   duration_time,
   case WHEN TIMESTAMPDIFF(SECOND,a,start_time) <= 300 THEN 0 ELSE c end x
FROM
(
select id,
       uid,
       start_time,
       end_time,
       TIMESTAMPDIFF(day,date(start_time),date(end_time)),
       duration_time,
       cast(@rownum as datetime) a ,
       (@rownum:=end_time) b,
       @rn:=@rn+1 c
 FROM (
select 
       id,
       uid,
       start_time,
     CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
       end_time 
     ELSE
       DATE(start_time) + INTERVAL 86399 SECOND
     END end_time,
     CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
       TIMESTAMPDIFF(SECOND,start_time,end_time) 
     ELSE
       TIMESTAMPDIFF(SECOND,start_time,DATE(start_time) + INTERVAL 86399 SECOND)
     END duration_time
  FROM (
  SELECT id,uid,start_time,end_time,duration_time FROM tab_live_ugc 
    UNION ALL
   SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time FROM tab_live_ugc a,tab_live_pk b where a.id = b.live_id
   ) x  
  where uid = p_user_id AND start_time>=p_date AND 
                       start_time<=p_date + INTERVAL 1 MONTH - INTERVAL 1 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) > 0 
  UNION ALL
select 
id,
uid,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
start_time 
ELSE
DATE(end_time)
END start_time,
end_time,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
TIMESTAMPDIFF(SECOND,start_time,end_time) 
ELSE
TIMESTAMPDIFF(SECOND,DATE(end_time),end_time)
END duration_time
FROM 
(
SELECT id,uid,start_time,end_time,duration_time FROM tab_live_ugc 
UNION ALL
SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time FROM tab_live_ugc a , tab_live_pk b WHERE a.id = b.live_id
) x   
where uid = p_user_id AND start_time>=p_date
                   AND start_time<=p_date + INTERVAL 1 MONTH - INTERVAL 1 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) > 0 
UNION ALL
SELECT 
id,
uid,
start_time,
end_time,
duration_time
FROM 
(
SELECT id,uid,start_time,end_time,duration_time FROM tab_live_ugc 
UNION ALL
SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time FROM tab_live_ugc a,tab_live_pk b WHERE a.id = b.live_id
) x  
where uid = p_user_id AND start_time>=p_date
                   AND start_time<=p_date + INTERVAL 1 MONTH - INTERVAL 1 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 
) a,(SELECT @rownum:='') b, (SELECT @rn:=0) c   order by id
) c
) g
) mm group by xx,start_time HAVING sum(duration_time)>=1800 
) xx group by pcount,start_time HAVING sum(ptime) >= 7200
)t;
SELECT SUM(pt) as dur
into  
      p_2  -- 有效时长
FROM (
SELECT start_time, count(pcount) pc, sum(ptime) pt FROM (SELECT count(DISTINCT xx) pcount,sum(duration_time) ptime,start_time FROM(
SELECT duration_time,start_time, CASE WHEN x > 0 THEN @max_sal:=x ELSE @max_sal end xx FROM
(
select 
   id, 
   uid,
   DATE(start_time) start_time,
   duration_time,
   case WHEN TIMESTAMPDIFF(SECOND,a,start_time) <= 300 THEN 0 ELSE c end x
FROM
(
select id,
       uid,
       start_time,
       end_time,
       TIMESTAMPDIFF(day,date(start_time),date(end_time)),
       duration_time,
       cast(@rownum as datetime) a ,
       (@rownum:=end_time) b,
       @rn:=@rn+1 c
 FROM (
select 
       id,
       uid,
       start_time,
     CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
       end_time 
     ELSE
       DATE(start_time) + INTERVAL 86399 SECOND
     END end_time,
     CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
       TIMESTAMPDIFF(SECOND,start_time,end_time) 
     ELSE
       TIMESTAMPDIFF(SECOND,start_time,DATE(start_time) + INTERVAL 86399 SECOND)
     END duration_time
  FROM (
  SELECT id,uid,start_time,end_time,duration_time FROM tab_live_ugc 
    UNION ALL
   SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time FROM tab_live_ugc a,tab_live_pk b where a.id = b.live_id
   ) x  
  where uid = p_user_id AND start_time>=p_date AND 
                       start_time<=p_date + INTERVAL 1 MONTH - INTERVAL 1 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) > 0 
  UNION ALL
select 
id,
uid,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
start_time 
ELSE
DATE(end_time)
END start_time,
end_time,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
TIMESTAMPDIFF(SECOND,start_time,end_time) 
ELSE
TIMESTAMPDIFF(SECOND,DATE(end_time),end_time)
END duration_time
FROM 
(
SELECT id,uid,start_time,end_time,duration_time FROM tab_live_ugc 
UNION ALL
SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time FROM tab_live_ugc a , tab_live_pk b WHERE a.id = b.live_id
) x   
where uid = p_user_id AND start_time>=p_date
                   AND start_time<=p_date + INTERVAL 1 MONTH - INTERVAL 1 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) > 0 
UNION ALL
SELECT 
id,
uid,
start_time,
end_time,
duration_time
FROM 
(
SELECT id,uid,start_time,end_time,duration_time FROM tab_live_ugc 
UNION ALL
SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time FROM tab_live_ugc a,tab_live_pk b WHERE a.id = b.live_id
) x  
where uid = p_user_id AND start_time>=p_date
                   AND start_time<=p_date + INTERVAL 1 MONTH - INTERVAL 1 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 
) a,(SELECT @rownum:='') b, (SELECT @rn:=0) c   order by id
) c
) g
) mm group by xx,start_time HAVING sum(duration_time)>=1800 
) xx group by pcount,start_time 
)t;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_app_star_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_app_star_user`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_app_star_user`(h5_id TINYINT,pstart varchar(20),pend varchar(20))
    COMMENT '更新app各期“服布斯”榜用户最大点赞数和总点赞数'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :更新app各期“服布斯”榜用户最大点赞数和总点赞数
   */
  DECLARE p_uid  INTEGER DEFAULT NULL;
  DECLARE pfound INTEGER DEFAULT 0;
  DECLARE p_max  INTEGER DEFAULT 0; -- 最大点赞数
  DECLARE p_sum  INTEGER DEFAULT 0; -- 总点赞数
  DECLARE p_cursor CURSOR FOR SELECT DISTINCT uid FROM tab_app_star_user WHERE star_h5_id = h5_id;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
OPEN p_cursor;
   A1:LOOP
     FETCH p_cursor INTO p_uid;
        IF pfound = 1 THEN
           LEAVE A1;
        END IF;
-- 取最大点赞数与总点赞数
     SELECT MAX(ifnull(func_get_media_pnumber(id),0)),
            SUM(ifnull(func_get_media_pnumber(id),0)) 
       INTO p_max,p_sum 
       FROM tab_media 
      where user_id = p_uid AND 
            create_time BETWEEN pstart AND pend;
-- 更新最大点赞数与总点赞数
     UPDATE tab_app_star_user 
        SET max_support = p_max,sum_support = p_sum 
      WHERE star_h5_id = h5_id AND uid = p_uid;
   END LOOP;
CLOSE p_cursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_bg_basic_quota_today
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_bg_basic_quota_today`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_bg_basic_quota_today`()
    COMMENT '生成当天后台数据量，用于吴泽栋分析平台'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :统计当天的用户行为（评论、评论、新增激活、新增视频等）
   */
   DECLARE p_create_time    date;      -- 统计日期
   DECLARE p_user_total     MEDIUMINT; -- 已改为总激活量
   DECLARE p_startup_time   INTEGER;   -- 启动次数
   DECLARE p_media_total    SMALLINT;  -- 总视频量
   DECLARE p_comment_total  MEDIUMINT; -- 总评论量
   DECLARE p_topic_total    SMALLINT;  -- 已改为总注册
   DECLARE p_share_total    MEDIUMINT; -- 总分享数
   DECLARE p_support_time   INTEGER;   -- 总点赞数
   DECLARE p_play_time      INTEGER;   -- 总播放量
-- 评论数
   SELECT count(*) INTO p_comment_total 
     FROM tab_media_comment a,tab_user b 
    WHERE a.auser_id = b.id AND b.is_moke = 0 AND a.status <> 2 AND create_time >= CURDATE() AND create_time < CURDATE() + INTERVAL 1 DAY;
-- 评论数
   SELECT count(*) INTO p_support_time  
     FROM tab_media_support a,tab_user b  
    WHERE a.auser_id = b.id AND b.is_moke = 0 AND a.status <> 1 AND create_time >= CURDATE() AND create_time <  CURDATE() + INTERVAL 1 DAY;
-- 新增激活
   SELECT count(*) INTO p_user_total   
     FROM log_user_device_first    
    WHERE  create_time >= CURDATE() AND create_time < CURDATE() + INTERVAL 1 DAY AND record_type in (4,7); 
-- 新增视频
   SELECT count(*) INTO p_media_total   
     FROM tab_media a,tab_user b   
    WHERE a.user_id = b.id AND b.is_moke=0 AND  a.status <> 2 AND create_time >= CURDATE() AND create_time < CURDATE() + INTERVAL 1 DAY;
-- 用户注册
   SELECT count(*) INTO p_topic_total   
     FROM tab_user          
    WHERE register_time >= CURDATE() AND register_time < CURDATE() + INTERVAL 1 DAY;
--  分享数
   SELECT count(*) INTO p_share_total
     FROM tab_h5_share_log WHERE share_time >= CURDATE() AND share_time < CURDATE() + INTERVAL 1 DAY;
-- 播放次数
   SELECT count(*) INTO p_play_time     
     FROM tab_media_record  
    WHERE into_time >= CURDATE() AND into_time < CURDATE() + INTERVAL 1 DAY;
-- 启动次数
   SELECT count(*) INTO p_startup_time  
     FROM log_user_device   
    WHERE create_time >= CURDATE() AND create_time < CURDATE() + INTERVAL 1 DAY;

   REPLACE INTO tab_bg_basic_quota(create_time,user_total,startup_time,media_total,comment_total,topic_total,share_total,support_time,play_time)
         SELECT CURDATE(),p_user_total,p_startup_time,p_media_total,p_comment_total,p_topic_total,p_share_total,p_support_time,p_play_time;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_bg_basic_quota_yesterday
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_bg_basic_quota_yesterday`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_bg_basic_quota_yesterday`()
    COMMENT '生成昨天后台数据量'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :统计昨天的用户行为（评论、评论、新增激活、新增视频等）
   */
   DECLARE p_create_time    date;      -- 统计日期
   DECLARE p_user_total     MEDIUMINT; -- 已改为总激活量
   DECLARE p_startup_time   INTEGER;   -- 启动次数
   DECLARE p_media_total    SMALLINT;  -- 总视频量
   DECLARE p_comment_total  MEDIUMINT; -- 总评论量
   DECLARE p_topic_total    SMALLINT;  -- 已改为总注册
   DECLARE p_share_total    MEDIUMINT; -- 分享总数
   DECLARE p_support_time   INTEGER;   -- 总点赞数
   DECLARE p_play_time      INTEGER;   -- 总播放量
-- 评论数
   SELECT count(*) INTO p_comment_total 
     FROM tab_media_comment a,tab_user b 
    WHERE a.auser_id = b.id AND b.is_moke = 0 AND a.status <> 2 AND create_time >=  CURDATE() - INTERVAL 1 DAY AND create_time <  CURDATE();
-- 点赞数
   SELECT count(*) INTO p_support_time  
     FROM tab_media_support a,tab_user b  
    WHERE a.auser_id = b.id AND b.is_moke = 0 AND a.status <> 1 AND create_time >= CURDATE() - INTERVAL 1 DAY AND create_time <  CURDATE();
-- 新增激活
   SELECT count(*) INTO p_user_total  
     FROM log_user_device_first    
    WHERE  create_time >= CURDATE() - INTERVAL 1 DAY AND create_time <  CURDATE() AND record_type in (4,7);  
-- 新增视频
   SELECT count(*) INTO p_media_total   
     FROM tab_media a,tab_user b   
    WHERE a.user_id = b.id AND b.is_moke=0 AND  a.status <> 2 AND create_time >= CURDATE() - INTERVAL 1 DAY AND create_time <  CURDATE();
-- 用户注册
   SELECT count(*) INTO p_topic_total   
     FROM tab_user          
    WHERE register_time >= CURDATE() - INTERVAL 1 DAY AND register_time <  CURDATE();
--  分享数
   SELECT count(*) INTO p_share_total
     FROM tab_h5_share_log WHERE share_time >= CURDATE() - INTERVAL 1 DAY AND share_time <  CURDATE();
-- 播放次数
   SELECT count(*) INTO p_play_time     
     FROM tab_media_record  
    WHERE into_time >= CURDATE() - INTERVAL 1 DAY AND into_time <  CURDATE();
-- 启动次数
   SELECT count(*) INTO p_startup_time  
     FROM log_user_device   
    WHERE create_time >= CURDATE() - INTERVAL 1 DAY AND create_time <  CURDATE();

   REPLACE INTO tab_bg_basic_quota(create_time,user_total,startup_time,media_total,comment_total,topic_total,share_total,support_time,play_time)
         SELECT CURDATE() -INTERVAL 1 DAY,p_user_total,p_startup_time,p_media_total,p_comment_total,p_topic_total,p_share_total,p_support_time,p_play_time;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_daily_fresh_play
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_daily_fresh_play`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_daily_fresh_play`()
    COMMENT '当天刷播放'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :当天刷播放
   */
DECLARE p_found INT DEFAULT FALSE; #游标结束判断
DECLARE p_mediaid INTEGER DEFAULT 0;#取视频id
DECLARE p_rand INTEGER DEFAULT 0; #取随机数
DECLARE p_cursor_virt CURSOR FOR select id from tab_media 
                                     where create_time < NOW() - INTERVAL 300 SECOND AND
                                           create_time >= CURDATE() AND  
                                           status = 1 AND 
                                           checkVideoFresh=0 AND 
                                           user_id in (select id from tab_user where is_moke = 1)  AND  set_bnumber =0 AND today_bnumber = 0;#虚拟用户视频
DECLARE p_cursor_true CURSOR FOR select id from tab_media 
                                     where create_time < NOW() - INTERVAL 300 SECOND AND
                                           create_time >= CURDATE() AND  
                                           status = 1 AND 
                                           checkVideoFresh=0 AND 
                                           user_id in (select id from tab_user where is_moke = 0)  AND  set_bnumber =0 AND today_bnumber = 0;#真实用户视频
DECLARE CONTINUE HANDLER FOR NOT FOUND SET p_found = TRUE;
OPEN p_cursor_virt;    -- 刷虚拟用户视频播放
A1:LOOP
   FETCH p_cursor_virt INTO p_mediaid;
   IF p_found = TRUE THEN
     LEAVE A1;
   END IF;
   SET p_rand = ROUND(1000+1000*RAND());
   UPDATE tab_media SET set_bnumber = p_rand,checkVideoFresh = 1 WHERE id =  p_mediaid AND today_bnumber = 0;
END LOOP;
CLOSE p_cursor_virt;

SET p_found = FALSE; #再次将判断游标结束标志改成false

OPEN p_cursor_true;  -- 刷真实用户视频播放
A2:LOOP
   FETCH p_cursor_true INTO p_mediaid;
   IF p_found = TRUE THEN
     LEAVE A2;
   END IF;
   SET p_rand = ROUND(100+200*RAND());
   UPDATE tab_media SET set_bnumber = p_rand,checkVideoFresh = 1 WHERE id =  p_mediaid AND today_bnumber = 0;
END LOOP;
CLOSE p_cursor_true;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_daily_fresh_playAsupportAfans
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_daily_fresh_playAsupportAfans`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_daily_fresh_playAsupportAfans`()
    COMMENT '当天刷赞、刷粉丝'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :当天刷粉丝和刷赞
   */
DECLARE pmax INTEGER DEFAULT 0;
DECLARE flag INTEGER DEFAULT 0;
DECLARE i INTEGER DEFAULT 1;
DECLARE pcount INTEGER DEFAULT 0;
DECLARE p_userid INTEGER DEFAULT 0;
DECLARE p_rand INTEGER DEFAULT 0;
DECLARE puid INTEGER DEFAULT 0;
DECLARE sfnumber INTEGER DEFAULT 0;
DECLARE spnumber INTEGER DEFAULT 0;
DECLARE pset_fnumber INTEGER DEFAULT 0;
DECLARE ptoday_fnumber INTEGER DEFAULT 0;
DECLARE pset_pnumber INTEGER DEFAULT 0;
DECLARE p_nickname   VARCHAR(60);
DECLARE ptoday_pnumber INTEGER DEFAULT 0;
DECLARE p_aname VARCHAR(60);
DECLARE p_bname VARCHAR(60);
DECLARE p_tagid      INTEGER DEFAULT 0;
DECLARE pfound INT DEFAULT FALSE;
DECLARE pmediaid INTEGER DEFAULT 0;
DECLARE playcount INTEGER DEFAULT 0;
DECLARE p_moke INTEGER DEFAULT 0;
DECLARE puserid INTEGER DEFAULT 0;
#刷粉丝
DECLARE pcursor CURSOR FOR SELECT DISTINCT a.user_id 
                             FROM tab_media a,
                                  tab_user b
                            WHERE a.user_id = b.id AND
                                  create_time < NOW() - INTERVAL 300 SECOND AND
                                  create_time >= CURDATE() AND a.status = 1 AND b.checkFresh = 0 AND a.status = 1; 
#刷赞
DECLARE pcursor1 CURSOR FOR SELECT  a.user_id,a.id,b.is_moke
                             FROM tab_media a, tab_user b
                            WHERE 
                                  a.user_id = b.id AND
                                  create_time < NOW() - INTERVAL 300 SECOND AND
                                  create_time >= CURDATE() AND a.status = 1 AND a.checkPraiseFresh = 0 AND a.status = 1;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = TRUE;

#周末
IF  CURTIME() BETWEEN '07:00:00' AND '23:59:59' THEN  

#刷赞

IF (TIME_TO_SEC(NOW())%100 =0) THEN
  OPEN pcursor1;
  A0:LOOP
    FETCH pcursor1 INTO puserid,pmediaid,p_moke;
    IF pfound THEN
       LEAVE A0;
    END IF; 
    SELECT set_pnumber INTO spnumber FROM tab_media WHERE id = pmediaid;
    IF spnumber = 0 AND p_moke = 0 THEN -- 判断是否为虚拟用户
      UPDATE tab_media SET set_pnumber = 5 + ROUND(35*RAND()) WHERE id = pmediaid;
    ELSE
      UPDATE tab_media SET set_pnumber = 1 + ROUND(10*RAND()) WHERE id = pmediaid;
    END IF;

    SELECT set_pnumber,today_pnumber,IFNULL(tag_id,0) INTO pset_pnumber,ptoday_pnumber,p_tagid from tab_media where id = pmediaid;

    IF ptoday_pnumber < pset_pnumber THEN
-- 随机去虚拟用户来刷
      SET p_rand = ceil(21905 * RAND());
      SELECT id,nick_name INTO puid,p_nickname FROM tab_virtual_user WHERE pid = p_rand;
      IF puid NOT IN (SELECT auser_id FROM tab_media_support WHERE media_id = pmediaid) THEN
         UPDATE tab_media SET pnumber = pnumber + 1,today_pnumber = today_pnumber + 1,total_pnumber =  total_pnumber + 1 WHERE id = pmediaid AND today_pnumber < set_pnumber;
-- 更新点赞数
         INSERT INTO tab_media_support(media_id,auser_id,buser_id,status,create_time) VALUES(pmediaid,puid,puserid,0,now());
-- 插入到短消息列表
         INSERT INTO sys_notice(auser_id,buser_id,content,media_id,type,status,create_time) values(puid,puserid,CONCAT(p_nickname,'喜欢了你的作品'),pmediaid,4,1,NOW());
-- 放入对应的圈子里
         IF p_tagid > 0 THEN 
           INSERT INTO tab_quan_rank(uid,tag_id,pnumber,create_time) VALUES(puserid,p_tagid,1,NOW()) ON DUPLICATE KEY UPDATE pnumber = pnumber + 1 ;
         END IF;
       END IF;
    END IF;
  END LOOP;
  CLOSE  pcursor1;
END IF;


#刷粉丝
SET pfound = FALSE;
IF (TIME_TO_SEC(NOW())%300 =0) THEN
  OPEN pcursor;
  A1:LOOP
    FETCH pcursor INTO p_userid;
    IF pfound THEN
       LEAVE A1;
    END IF; 
    SELECT set_fnumber,nick_name INTO sfnumber,p_bname FROM tab_user WHERE id = p_userid;
-- 如果未设置粉丝数，随机设置一个
    IF sfnumber = 0 THEN
      UPDATE tab_user SET set_fnumber = 1 + ROUND(4*RAND()) WHERE id = p_userid;
    END IF;

    SELECT set_fnumber,today_fnumber INTO pset_fnumber,ptoday_fnumber from tab_user where id = p_userid;
    IF ptoday_fnumber < pset_fnumber THEN
-- 随机去虚拟用户来刷
      SET p_rand = ceil(21905 * RAND());
      SELECT id,nick_name INTO puid,p_aname FROM tab_virtual_user WHERE pid = p_rand;
      IF puid NOT IN (SELECT auser_id FROM tab_user_attention WHERE buser_id = p_userid) THEN
-- 更新粉丝数
       UPDATE tab_user SET fnumber = fnumber + 1,today_fnumber = today_fnumber + 1,total_fnumber = total_fnumber + 1 WHERE id = p_userid AND today_fnumber < set_fnumber;
-- 插入到关注列表
       INSERT INTO tab_user_attention(auser_id,buser_id,create_time,status) VALUES(puid,p_userid,now(),0);
-- 插入到短消息列表
       INSERT INTO sys_notice(auser_id,buser_id,content,type,status,create_time) VALUES(puid,puserid,CONCAT(p_aname,'关注了你'),2,0,NOW());
       END IF;
    END IF;
  END LOOP;
  CLOSE  pcursor;

END IF;

ELSE
   SET flag = 1;
END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_daily_fresh_support
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_daily_fresh_support`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_daily_fresh_support`(p_before_day INTEGER)
    COMMENT '根据指定的日期刷赞'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :根据指定的日期刷赞
   */
   DECLARE pfound boolean DEFAULT FALSE;
   DECLARE p_mediaid INTEGER DEFAULT 0;
   DECLARE pcursor CURSOR FOR SELECT id 
                                FROM tab_media 
                               WHERE status = 1 AND 
                                     create_time BETWEEN CURDATE()- INTERVAL p_before_day DAY + INTERVAL 1 DAY AND CURDATE()-INTERVAL p_before_day DAY + INTERVAL 2 DAY -INTERVAL 1 SECOND AND 
                                     match_id IS NULL;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = TRUE;
   OPEN pcursor;
   A1:LOOP
    FETCH pcursor INTO p_mediaid;
    UPDATE tab_media SET pnumber = pnumber + 1,v_pnumber = v_pnumber + 1 where id = p_mediaid;
    IF pfound THEN
       LEAVE A1;
    END IF;
   END LOOP;
   CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_deal_show
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_deal_show`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_deal_show`(p_in_matchid INTEGER)
    COMMENT '清理前天未完成的赛事刷票记录'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :清理前天未完成的赛事刷票记录
   */
   UPDATE tab_sub_match_media 
      SET set_votenum = 0,
          today_votenum = 0,
          state = 0,
          set_votenum_mid = 0
    WHERE 
          sub_match_id = p_in_matchid;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_deal_user_attention
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_deal_user_attention`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_deal_user_attention`()
    COMMENT '删除重复的评论'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :删除重复的评论，可能由于网络延迟导致
   */
    declare pcount INTEGER default 0;
-- 判断临时表是不是存在
    select count(*) into pcount from information_schema.`TABLES` where TABLE_NAME='tmp_user_attention';
-- 存在则删除
    IF pcount>0 THEN
       drop table tmp_user_attention;
    END IF;
-- 将重复的评论插入tmp_user_attention
    create table tmp_user_attention as select max(id) as id from tab_user_attention group by auser_id,buser_id having count(id) >1;
-- 为tmp_user_attention创建索引
    create index ind_tmp_user on tmp_user_attention(id);
-- 删除重复评论
    delete from tab_user_attention where id in (select id from tmp_user_attention);    
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_deal_zhutui
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_deal_zhutui`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_deal_zhutui`()
    COMMENT '每日自动设置主推'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :每日自动设置主推
   */
   DECLARE pcount TINYINT DEFAULT 0;
   SELECT count(*) 
     INTO pcount 
     FROM tab_media_recommend_tmp
    WHERE create_time BETWEEN NOW() - INTERVAL 1 MINUTE AND NOW() + INTERVAL 1 MINUTE;
IF pcount > 0 THEN
-- 如果存在历史记录则清理掉
   TRUNCATE TABLE tab_media_recommend;
-- 插入新的主推记录
   INSERT INTO tab_media_recommend(id,media_id,image_url,title,type) SELECT id,
                                                                            media_id,
                                                                            image_url,
                                                                            title,
                                                                            type 
                                                                       FROM tab_media_recommend_tmp
                                                                      WHERE create_time BETWEEN NOW() - INTERVAL 1 MINUTE AND NOW() + INTERVAL 1 MINUTE;
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_del_planAfansAsupport
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_del_planAfansAsupport`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_del_planAfansAsupport`()
    COMMENT '清理前日设置的刷赞、刷播放、刷粉丝记录'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :清理前日设置的刷赞、刷播放、刷粉丝记录
   */
   UPDATE tab_media a SET a.today_bnumber = 0 where  a.checkVideoFresh = 0;
   UPDATE tab_media a SET a.today_pnumber = 0 where  a.checkPraiseFresh = 0;
   UPDATE tab_user  b SET b.today_fnumber = 0 where  b.checkFresh = 0;
   UPDATE tab_media a SET a.today_bnumber = 0,a.checkVideoFresh  = 0 where  a.checkVideoFresh = 1  AND a.today_bnumber >= a.set_bnumber;
   UPDATE tab_media a SET a.today_pnumber = 0,a.checkPraiseFresh = 0 where  a.checkPraiseFresh = 1 AND a.today_pnumber >= a.set_pnumber;
   UPDATE tab_user  b SET b.today_fnumber = 0,b.checkFresh = 0 where  b.checkFresh = 1 AND today_fnumber >= set_fnumber;
   UPDATE tab_media a SET a.checkPraiseFresh = 0,a.checkVideoFresh = 0 WHERE a.create_time < CURDATE() - INTERVAL 6 DAY;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_del_qqopen
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_del_qqopen`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_del_qqopen`()
    COMMENT '删除前日和当日qqopen无用记录'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :删除前日和当日qqopen无用记录
   */
IF CURRENT_TIME() BETWEEN '00:00:00' AND '00:05:00' THEN
-- 删除前日log_user_device_first表中非注册的qqopen无用记录
DELETE FROM log_user_device_first 
      where channel_name = 'qqopen' AND 
            create_time BETWEEN CURDATE() - INTERVAL 1 DAY AND CURDATE() AND 
            imei NOT in
                        (
                         SELECT * FROM
                          (
                             SELECT imei 
                               from log_user_device_first WHERE record_type in (1,3) and create_time BETWEEN CURDATE() - INTERVAL 1 DAY AND CURDATE() AND channel_name = 'qqopen'
                          ) x
                        ) AND 
            record_type in (4,7);
-- 删除前日log_user_device表中非注册的qqopen无用记录
DELETE FROM log_user_device 
      WHERE record_type in (4,7) AND 
            channel_name = 'qqopen' AND 
            create_time BETWEEN CURDATE() - INTERVAL 1 DAY AND CURDATE() AND
            imei NOT in
                       (
                         SELECT DISTINCT imei 
                           from log_user_device_first 
                          WHERE create_time BETWEEN CURDATE() - INTERVAL 1 DAY AND CURDATE()  AND 
                                channel_name = 'qqopen'
                       );
ELSE
-- 删除今日log_user_device_first表中非注册的qqopen无用记录
DELETE FROM log_user_device_first 
      where channel_name = 'qqopen' AND 
            create_time > CURDATE() AND 
            imei NOT in
                        (
                         SELECT * FROM
                          (
                             SELECT imei 
                               from log_user_device_first WHERE record_type in (1,3) and create_time > CURDATE() AND channel_name = 'qqopen'
                          ) x
                        ) AND 
            record_type in (4,7);
-- 删除今日log_user_device表中非注册的qqopen无用记录
DELETE FROM log_user_device 
      WHERE record_type in (4,7) AND 
            channel_name = 'qqopen' AND 
            create_time > CURDATE() AND
            imei NOT in
                       (
                         SELECT DISTINCT imei from log_user_device_first WHERE  create_time > CURDATE()  AND channel_name = 'qqopen'
                       );
END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fetch_unique_log_device
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fetch_unique_log_device`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fetch_unique_log_device`()
    COMMENT '将每日活跃的用户（user_id非空）插入log_user_device_every'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :将每日活跃的用户（user_id非空）插入log_user_device_every
   */
DELETE FROM log_user_device_every WHERE create_time >= CURDATE();
-- 取每日活跃的用户user_id非空
insert INTO log_user_device_every
(
user_id,
ip_address,
imei,
channel_name,
device_type,
device_mtype,
app_version,
device_version,
carrier_operator,
record_type,
create_time,
version_id,
before_version_id)
SELECT 
user_id,
ip_address,
imei,
channel_name,
device_type,
device_mtype,
app_version,
device_version,
carrier_operator,
record_type,
min(create_time),
version_id,
before_version_id
FROM log_user_device WHERE create_time > CURDATE() AND user_id is not null
group by 
user_id,
ip_address,
imei,
channel_name,
device_type,
device_mtype,
app_version,
device_version,
carrier_operator,
record_type,
version_id,
before_version_id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fetch_unique_log_device_yesterday
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fetch_unique_log_device_yesterday`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fetch_unique_log_device_yesterday`()
    COMMENT '将前日活跃的用户（user_id非空）插入log_user_device_every'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :将前日活跃的用户（user_id非空）插入log_user_device_every
   */
insert INTO log_user_device_every
(
user_id,
ip_address,
imei,
channel_name,
device_type,
device_mtype,
app_version,
device_version,
carrier_operator,
record_type,
create_time,
version_id,
before_version_id)
SELECT 
user_id,
ip_address,
imei,
channel_name,
device_type,
device_mtype,
app_version,
device_version,
carrier_operator,
record_type,
min(create_time),
version_id,
before_version_id
FROM log_user_device WHERE create_time BETWEEN CURDATE() - INTERVAL 1 DAY AND CURDATE() AND user_id is not null
group by 
user_id,
ip_address,
imei,
channel_name,
device_type,
device_mtype,
app_version,
device_version,
carrier_operator,
record_type,
version_id,
before_version_id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_finance_balance_history
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_finance_balance_history`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_finance_balance_history`()
    COMMENT '历史财务平衡表'
BEGIN
INSERT INTO tab_finance_balance(create_date,a1,a2,a3,a4,a5,a6,a7,b1,b2,b3,b4,b5,ban)
SELECT a.create_date "截止日期",
       a1 "总充值（不服币）",
       a2 "总充值（金额）",
       a3 + a4 "活动发放不服币",
       a8 "平台剩余不服币",
       a6 "虚拟商品销售所得不服币",
       a5 "兑换不服币",
       a7 "送礼" ,
       b1 "已提现不服票",
       b2 "已提现人民币",
       b3 "平台剩余不服票",
       b4 "已兑换不服票",
       b5 "收礼",
       abs(a1+a3+a4-a8-(-a7)+a5)+a6 +ABS(b5-b3-(-b1)-(-b4))+ABS(a7+b5) "平衡差"
 FROM
(
SELECT CURDATE() - INTERVAL 1 DAY create_date,
       SUM(CASE WHEN type =1 AND `from` in (1,2,3)  THEN coin_change ELSE 0 END)                a1, -- 充值不服币
       SUM(CASE WHEN type =1 AND `from` in (1,2,3)  THEN price_coin  ELSE 0 END)                a2, -- 充值rmb
       SUM(CASE WHEN `from`  in (5,7)  THEN coin_change ELSE 0 END)                                   a3, -- 活动送不服币
       SUM(CASE WHEN type =1 AND `from` IS NULL   THEN  coin_change ELSE 0 END)                 a4, -- RMB转为福币
       SUM(CASE WHEN type =1 AND `from` = 4   THEN  coin_change ELSE 0 END)                     a5, -- 福卡兑换
       SUM(CASE WHEN type =0 AND (`from` = 8 OR  `from` is null)  THEN  coin_change ELSE 0 END) a6, -- 兑换VIP、修复用户充值
       SUM(CASE WHEN type =0 AND `from` = 6   THEN coin_change ELSE 0 END )                     a7, -- 送出礼物
       SUM(coin_change)                                                                         a8  -- 剩余不服币
  FROM tab_app_coin where  status in (0,1) AND change_time < CURDATE()
) a LEFT JOIN 
(
SELECT CURDATE() - INTERVAL 1 DAY create_date,
       SUM(CASE WHEN  `from` = 3 THEN  fu_change ELSE 0 END)              b1, -- 申请、成功微信提现不服票
       SUM(CASE WHEN  `from` = 3 THEN  coin_change ELSE 0 END)            b2, -- 申请、成功微信提现rmb
       SUM(fu_change)                                                     b3, -- 剩余不服票
       SUM(CASE WHEN `from` = 2  THEN  fu_change ELSE 0 END)              b4, -- 兑换不服币
       SUM(CASE WHEN `from` = 1 AND `from` = 1 THEN fu_change ELSE 0 END) b5, -- 收到礼物
       SUM(CASE WHEN`from` is null AND type = 0 THEN coin_change END)     b6, -- 赛事奖金rbm,提现
       SUM(CASE WHEN`from` is null AND type = 1 THEN coin_change END)     b7  -- 赛事奖金rbm,不服补贴
  FROM tab_coin where status in (0,1) AND change_time < CURDATE()
) b ON a.create_date = b.create_date;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_finance_balance_today
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_finance_balance_today`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_finance_balance_today`()
    COMMENT '当天半小时财务平衡表'
BEGIN
REPLACE INTO tab_finance_balance(create_date,a1,a2,a3,a4,a5,a6,a7,b1,b2,b3,b4,b5,ban,status)
SELECT a.create_date "截止日期",
       a1 "总充值（不服币）",
       a2 "总充值（金额）",
       a3 + a4 "活动发放不服币",
       a8 "平台剩余不服币",
       a6 "虚拟商品销售所得不服币",
       a5 "兑换不服币",
       a7 "送礼" ,
       b1 "已提现不服票",
       b2 "已提现人民币",
       b3 "平台剩余不服票",
       b4 "已兑换不服票",
       b5 "收礼",
       abs(a1+a3+a4-a8-(-a7)+a5)+a6 +ABS(b5-b3-(-b1)-(-b4))+ABS(a7+b5) "平衡差",
       1 STATUS
 FROM
(
SELECT CURDATE() create_date,
       SUM(CASE WHEN type =1 AND `from` in (1,2,3)  THEN coin_change ELSE 0 END)                a1, -- 充值不服币
       SUM(CASE WHEN type =1 AND `from` in (1,2,3)  THEN price_coin  ELSE 0 END)                a2, -- 充值rmb
       SUM(CASE WHEN `from` in (5,7)  THEN coin_change ELSE 0 END)                                   a3, -- 活动送不服币
       SUM(CASE WHEN type =1 AND `from` IS NULL   THEN  coin_change ELSE 0 END)                 a4, -- RMB转为福币
       SUM(CASE WHEN type =1 AND `from` = 4   THEN  coin_change ELSE 0 END)                     a5, -- 福卡兑换
       SUM(CASE WHEN type =0 AND (`from` = 8 OR  `from` is null)  THEN  coin_change ELSE 0 END) a6, -- 兑换VIP、修复用户充值
       SUM(CASE WHEN type =0 AND `from` = 6   THEN coin_change ELSE 0 END )                     a7, -- 送出礼物
       SUM(coin_change)                                                                         a8  -- 剩余不服币
  FROM tab_app_coin where  status in (0,1) AND change_time < NOW()
) a LEFT JOIN 
(
SELECT CURDATE() create_date,
       SUM(CASE WHEN  `from` = 3 THEN  fu_change ELSE 0 END)              b1, -- 申请、成功微信提现不服票
       SUM(CASE WHEN  `from` = 3 THEN  coin_change ELSE 0 END)            b2, -- 申请、成功微信提现rmb
       SUM(fu_change)                                                     b3, -- 剩余不服票
       SUM(CASE WHEN `from` = 2  THEN  fu_change ELSE 0 END)              b4, -- 兑换不服币
       SUM(CASE WHEN `from` = 1 AND `from` = 1 THEN fu_change ELSE 0 END) b5, -- 收到礼物
       SUM(CASE WHEN`from` is null AND type = 0 THEN coin_change END)     b6, -- 赛事奖金rbm,提现
       SUM(CASE WHEN`from` is null AND type = 1 THEN coin_change END)     b7  -- 赛事奖金rbm,不服补贴
  FROM tab_coin where status in (0,1) AND change_time < NOW()
) b ON a.create_date = b.create_date;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_6day_fans
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_6day_fans`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_6day_fans`()
    COMMENT '刷之前6天的粉丝数'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :刷之前6天的粉丝数
   */
DECLARE p_inner_user_id           INTEGER DEFAULT 0;
DECLARE p_inner_set_fnumber       INTEGER DEFAULT 0;
DECLARE p_mid_1                   INTEGER DEFAULT 0; #取随机数
DECLARE p_found INT DEFAULT 0;
DECLARE p_cursor CURSOR FOR 
                           SELECT DISTINCT a.user_id
                             FROM tab_media a,
                                  tab_user b
                            WHERE a.user_id = b.id AND
                                  a.create_time > CURDATE() -INTERVAL 6 DAY AND
                                  a.create_time < CURDATE() AND a.status = 1 AND b.checkFresh = 0 AND a.status = 1;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET p_found = 1;
OPEN p_cursor;
  A1: LOOP
      FETCH p_cursor INTO p_inner_user_id;
      IF p_found = 1 THEN
         LEAVE A1;
      END IF;
      SELECT set_fnumber INTO p_inner_set_fnumber FROM tab_user WHERE id = p_inner_user_id;
      IF p_inner_set_fnumber = 0 THEN  #设置没有设定粉丝数的视频
         SET p_mid_1 = CEIL(1+3*RAND()); 
         UPDATE tab_user SET set_fnumber = p_mid_1 WHERE id = p_inner_user_id;
      END IF;   
      UPDATE tab_user SET  checkFresh = 1,
                           set_fnumber = CEIL(set_fnumber * (0.15+ROUND(RAND()*0.15,2))),
                           today_fnumber = 0 
                     WHERE id = p_inner_user_id;
  END LOOP;
CLOSE p_cursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_6day_play
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_6day_play`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_6day_play`()
    COMMENT '刷之前6天的播放量'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :刷之前6天的播放量
   */
DECLARE p_inner_media_id          INTEGER DEFAULT 0;
DECLARE p_inner_set_bnumber       INTEGER DEFAULT 0;
DECLARE p_mid_1                   INTEGER DEFAULT 0; #取随机数
DECLARE p_found INT DEFAULT 0;
DECLARE p_cursor CURSOR FOR 
                     SELECT id 
                       FROM tab_media
                      WHERE 
                            create_time < CURDATE() AND 
                            create_time > CURDATE() -INTERVAL 6 DAY  AND 
                            checkVideoFresh=0  AND status = 1;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET p_found = 1;
OPEN p_cursor;
  A1: LOOP
      FETCH p_cursor INTO p_inner_media_id;
      IF p_found = 1 THEN
         LEAVE A1;
      END IF;
      SELECT set_bnumber INTO p_inner_set_bnumber FROM tab_media WHERE id = p_inner_media_id;
      IF p_inner_set_bnumber = 0 THEN  #设置没有设定播放量的视频
         SET p_mid_1 = CEIL(200+100*RAND()); 
         UPDATE tab_media SET set_bnumber = p_mid_1 WHERE id = p_inner_media_id;
      END IF;   
      UPDATE tab_media SET checkVideoFresh = 1,
                           set_bnumber = CEIL(set_bnumber * (0.25+ROUND(RAND()*0.15,2)))+20,
                           today_bnumber = 0 
                     WHERE id = p_inner_media_id;
  END LOOP;
CLOSE p_cursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_6day_support
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_6day_support`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_6day_support`()
    COMMENT '刷之前6天的点赞量'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :刷之前6天的点赞量
   */
DECLARE p_inner_media_id          INTEGER DEFAULT 0;
DECLARE p_inner_set_pnumber       INTEGER DEFAULT 0; 
DECLARE p_mid_1                   INTEGER DEFAULT 0; #取随机数
DECLARE p_found INT DEFAULT 0;
DECLARE p_cursor CURSOR FOR 
                       SELECT id,
                              set_pnumber
                         FROM tab_media a
                        WHERE create_time > CURDATE() - INTERVAL 6 DAY AND
                              create_time < CURDATE() AND 
                              a.status = 1 AND 
                              checkPraiseFresh = 0;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET p_found = 1;
OPEN p_cursor;
  A1: LOOP
      FETCH p_cursor INTO p_inner_media_id,p_inner_set_pnumber;
      IF p_found = 1 THEN
         LEAVE A1;
      END IF;
      IF p_inner_set_pnumber = 0 THEN  #设置没有设定点赞量的视频
         SET p_mid_1 = CEIL(4*RAND()); 
         UPDATE tab_media SET set_pnumber = p_mid_1 WHERE id = p_inner_media_id;
      END IF;   
      UPDATE tab_media SET checkPraiseFresh = 1,
                           set_pnumber = CEIL(set_pnumber * (0.15+ROUND(RAND()*0.15,2))),
                           today_pnumber = 0 
                     WHERE id = p_inner_media_id;
  END LOOP;
CLOSE p_cursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_common_comment
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_common_comment`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_common_comment`()
    COMMENT '刷近三天视频的通用评论'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :刷近三天视频的通用评论
   */
   DECLARE pfound INT DEFAULT FALSE;
   DECLARE pmedia_id INTEGER DEFAULT 0;
   DECLARE puser_id INTEGER DEFAULT 0;
   DECLARE pcontent_id INTEGER DEFAULT 0;
   DECLARE pmax INTEGER DEFAULT 0;
   DECLARE pvmax INTEGER DEFAULT 0;
   DECLARE puid INTEGER DEFAULT 0;
   DECLARE ppid INTEGER DEFAULT 0;
   DECLARE p_nickname VARCHAR(100);
   DECLARE pcomment VARCHAR(300);
   DECLARE pcursor CURSOR FOR SELECT id,
                                     user_id 
                                FROM tab_media 
                               WHERE create_time > CURDATE() - INTERVAL 2 DAY AND 
                                     create_time < NOW() - INTERVAL 30 MINUTE AND 
                                     status = 1 AND 
                                     comm_state = 0;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = TRUE;
   OPEN pcursor;
   A1:LOOP
     FETCH pcursor INTO pmedia_id,puser_id;
   #  SELECT SLEEP(100*RAND());
     IF pfound = TRUE THEN
        LEAVE A1;
     END IF;
#    SELECT max(id) INTO pmax FROM tab_comment_content;
     SET pvmax = ceil(21905 * RAND());
     SELECT id,nick_name INTO puid,p_nickname FROM tab_virtual_user WHERE pid = pvmax;
     SET ppid = ceil(5 + 776 * RAND());
     SELECT comment INTO pcomment FROM tab_comment_content WHERE id = ppid;
-- 插入视频评论明细表
     INSERT INTO tab_media_comment(media_id,auser_id,buser_id,status,content,create_time)
     VALUES(pmedia_id,puid,puser_id,0,pcomment,NOW());
-- 更新视频数量
     UPDATE tab_media a 
        SET cnumber = (select count(*) from tab_media_comment b WHERE a.id = b.media_id AND b.status = 0),
            comm_state = 1
      WHERE EXISTS
           (
             select 1 from tab_media_comment b WHERE a.id = b.media_id AND b.status = 0
            ) AND id = pmedia_id; -- 更新评论
-- 插入短消息表
     INSERT INTO sys_notice(auser_id,buser_id,content,media_id,type,status,create_time) 
                values(puid,puser_id,pcomment,pmedia_id,3,0,NOW());
   END LOOP;
   CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_pgc_live
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_pgc_live`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_pgc_live`()
    COMMENT '刷直播的播放量（未使用）'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :刷直播的播放量（未使用）
   */
   DECLARE p_inner_found  TINYINT DEFAULT FALSE;   #游标状态
   DECLARE p_cur_uid      INTEGER DEFAULT 0;
   DECLARE p_live_id      INTEGER DEFAULT 0;
   DECLARE p_inner_rand   INTEGER DEFAULT 0;
   DECLARE p1             INTEGER DEFAULT 0;
   DECLARE p2             INTEGER DEFAULT 0;
   DECLARE i              INTEGER DEFAULT 0;
   DECLARE p_inner_cursor CURSOR FOR SELECT uid,live_id FROM tab_live_player where  set_votenum > 0 AND state = 1;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET p_inner_found = TRUE;

   IF ((CURDATE() BETWEEN '11:01:01' AND '13:00:00') OR (CURDATE() BETWEEN '20:01:01' AND '23:00:00')) THEN     #繁忙时段刷票
OPEN p_inner_cursor;
A1:LOOP
       FETCH p_inner_cursor INTO p_cur_uid,p_live_id;
       IF p_inner_found THEN
          LEAVE A1;
       END IF;
       SET i = 0;
       SET p_inner_rand =  ROUND(6 * RAND());   
-- 插入投票明细
       WHILE i < p_inner_rand DO
       INSERT INTO tab_live_player_support(live_id,auser_id,buser_id,status,create_time) 
                                     SELECT p_live_id,id,p_cur_uid,0,NOW()  FROM tab_virtual_user 
                                      WHERE id NOT IN (SELECT auser_id FROM tab_live_player_support WHERE buser_id = p_cur_uid AND live_id = p_live_id) LIMIT 1;
       UPDATE tab_live_player  #刷票主业务
          SET vote_num =  vote_num + 1,
              today_votenum = today_votenum + 1,
              total_votenum = total_votenum + 1
        WHERE uid = p_cur_uid AND live_id = p_live_id;
       UPDATE tab_live SET online_person = online_person + 1 WHERE id = p_live_id;
       SET i = i + 1;
       SELECT SLEEP(1);
       END WHILE;
-- 判断投票是否超限
        SELECT set_votenum,today_votenum INTO p1,p2 FROM tab_live_player WHERE uid = p_cur_uid AND live_id = p_live_id;
        IF p1 <= p2 THEN
           UPDATE tab_live_player set state = 0,set_votenum = 0  WHERE uid = p_cur_uid AND live_id = p_live_id;
        END IF;
 
END LOOP;
  CLOSE p_inner_cursor;

  ELSEIF ((CURDATE() BETWEEN '09:00:00' AND '11:00:00') OR (CURDATE() BETWEEN '13:00:00' AND '20:00:00')) THEN     #相对繁忙时段刷票
OPEN p_inner_cursor;
A1:LOOP
       FETCH p_inner_cursor INTO p_cur_uid,p_live_id;
       IF p_inner_found THEN
          LEAVE A1;
       END IF;
       SET i = 0;
       SET p_inner_rand =  ROUND(4 * RAND());   
-- 插入投票明细
       WHILE i < p_inner_rand DO
       INSERT INTO tab_live_player_support(live_id,auser_id,buser_id,status,create_time) 
                                     SELECT p_live_id,id,p_cur_uid,0,NOW()  FROM tab_virtual_user 
                                      WHERE id NOT IN (SELECT auser_id FROM tab_live_player_support WHERE buser_id = p_cur_uid AND live_id = p_live_id) LIMIT 1;
       UPDATE tab_live_player  #刷票主业务
          SET vote_num =  vote_num + 1,
              today_votenum = today_votenum + 1,
              total_votenum = total_votenum + 1
        WHERE uid = p_cur_uid AND live_id = p_live_id;
       UPDATE tab_live SET online_person = online_person + 1 WHERE id = p_live_id;
       SET i = i + 1;
       SELECT SLEEP(1);
       END WHILE;
-- 判断投票是否超限
        SELECT set_votenum,today_votenum INTO p1,p2 FROM tab_live_player WHERE uid = p_cur_uid AND live_id = p_live_id;
        IF p1 <= p2 THEN
           UPDATE tab_live_player set state = 0,set_votenum = 0  WHERE uid = p_cur_uid AND live_id = p_live_id;
        END IF;
 
END LOOP;
  CLOSE p_inner_cursor;
   ELSE                                                                              # 凌晨零星刷票
OPEN p_inner_cursor;
A1:LOOP
       FETCH p_inner_cursor INTO p_cur_uid,p_live_id;
       IF p_inner_found THEN
          LEAVE A1;
       END IF;
       SET i = 0;
       SET p_inner_rand =  ROUND(2 * RAND());   
-- 插入投票明细
       WHILE i < p_inner_rand DO
       INSERT INTO tab_live_player_support(live_id,auser_id,buser_id,status,create_time) 
                                     SELECT p_live_id,id,p_cur_uid,0,NOW()  FROM tab_virtual_user 
                                      WHERE id NOT IN (SELECT auser_id FROM tab_live_player_support WHERE buser_id = p_cur_uid AND live_id = p_live_id) LIMIT 1;
       UPDATE tab_live_player  #刷票主业务
          SET vote_num =  vote_num + 1,
              today_votenum = today_votenum + 1,
              total_votenum = total_votenum + 1
        WHERE uid = p_cur_uid AND live_id = p_live_id;
       UPDATE tab_live SET online_person = online_person + 1 WHERE id = p_live_id;
       SET i = i + 1;
       SELECT SLEEP(1);
       END WHILE;
-- 判断投票是否超限
        SELECT set_votenum,today_votenum INTO p1,p2 FROM tab_live_player WHERE uid = p_cur_uid AND live_id = p_live_id;
        IF p1 <= p2 THEN
           UPDATE tab_live_player set state = 0,set_votenum = 0  WHERE uid = p_cur_uid AND live_id = p_live_id;
        END IF;
 
END LOOP;
  CLOSE p_inner_cursor;
   END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_playAsupportAfans
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_playAsupportAfans`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_playAsupportAfans`()
    COMMENT '设置前6日需要刷的播放量和点赞量'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :设置前6日需要刷的播放量和点赞量
   */
DECLARE i INTEGER DEFAULT 1;
DECLARE pcount INTEGER DEFAULT 0;
DECLARE p_userid INTEGER DEFAULT 0;
DECLARE p_rand INTEGER DEFAULT 0;
DECLARE puid INTEGER DEFAULT 0;
DECLARE sfnumber INTEGER DEFAULT 0;
DECLARE spnumber INTEGER DEFAULT 0;
DECLARE pset_fnumber INTEGER DEFAULT 0;
DECLARE ptoday_fnumber INTEGER DEFAULT 0;
DECLARE pset_pnumber INTEGER DEFAULT 0;
DECLARE ptoday_pnumber INTEGER DEFAULT 0;
DECLARE pmediaid INTEGER DEFAULT 0;
DECLARE puserid INTEGER DEFAULT 0;
DECLARE pfound INT DEFAULT FALSE;
DECLARE pcursor CURSOR FOR SELECT DISTINCT a.user_id 
                             FROM tab_media a,
                                  tab_user b
                            WHERE a.user_id = b.id AND
                                  create_time > CURDATE() -INTERVAL 6 DAY AND
                                  create_time < CURDATE() AND a.status = 1 AND b.checkFresh = 0;
DECLARE pcursor1 CURSOR FOR SELECT  a.user_id,a.id
                             FROM tab_media a
                            WHERE create_time > CURDATE() -INTERVAL 6 DAY AND
                                  create_time < CURDATE() AND a.status = 1  AND a.checkPraiseFresh = 0 ;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = TRUE;
#刷播放，无设定值
   UPDATE tab_media 
      SET bnumber = bnumber + 1,
          total_bnumber = total_bnumber + 1,
          today_bnumber = today_bnumber + 1
    WHERE create_time < CURDATE() AND 
          create_time > CURDATE() -INTERVAL 6 DAY  AND 
          set_bnumber=0 AND today_bnumber <=  ROUND(300 + RAND()*500) AND status = 1 AND checkVideoFresh=0;
#刷播放，有设定值
   UPDATE tab_media 
      SET bnumber = bnumber + 1,
          total_bnumber = total_bnumber + 1,
          today_bnumber = today_bnumber + 1
    WHERE create_time < CURDATE() AND 
          create_time > CURDATE() -INTERVAL 6 DAY  AND 
          set_bnumber > 0 AND today_bnumber <= ceil(POWER((0.15+RAND()*0.15),DATEDIFF(CURDATE(),create_time))*set_bnumber) AND status = 1 AND checkVideoFresh=0; 
#刷赞，无设定值
/*
IF (TIME_TO_SEC(NOW())%3 = 0) THEN
  OPEN pcursor1;
  A0:LOOP
    FETCH pcursor1 INTO puserid,pmediaid;
    IF pfound THEN
       LEAVE A0;
    END IF; 
    SELECT set_pnumber INTO spnumber FROM tab_media WHERE id = pmediaid;
    IF spnumber = 0 THEN
      UPDATE tab_media SET set_pnumber = 10 + ROUND(10*RAND()) WHERE id = pmediaid;
    END IF;

    SELECT set_pnumber,today_pnumber INTO pset_pnumber,ptoday_pnumber from tab_media where id = pmediaid;
    IF ptoday_pnumber < pset_pnumber THEN
      SET p_rand = ceil(21905 * RAND());
      SELECT id INTO puid FROM tab_virtual_user WHERE pid = p_rand;
      IF puid NOT IN (SELECT auser_id FROM tab_media_support WHERE buser_id = puserid) THEN
         UPDATE tab_media 
            SET pnumber = pnumber + 1,
                today_pnumber = today_pnumber + 1, 
                total_pnumber = total_pnumber + 1 
          WHERE id = pmediaid AND today_pnumber <= ceil(POWER((0.15+RAND()*0.15),DATEDIFF(CURDATE(),create_time))*set_pnumber);
         INSERT INTO tab_media_support(media_id,auser_id,buser_id,status,create_time) VALUES(pmediaid,puid,puserid,0,now());
       END IF;
    END IF;
  END LOOP;
  CLOSE  pcursor1;
END IF;

  OPEN pcursor;
  A1:LOOP
    FETCH pcursor INTO p_userid;
    IF pfound THEN
       LEAVE A1;
    END IF; 
    SELECT set_fnumber INTO sfnumber FROM tab_user WHERE id = p_userid;
    IF sfnumber = 0 THEN
      UPDATE tab_user SET set_fnumber = 2 + ROUND(3*RAND()) WHERE id = p_userid;
    END IF;

    SELECT set_fnumber,today_fnumber INTO pset_fnumber,ptoday_fnumber from tab_user where id = p_userid;
    IF ptoday_fnumber < ceil(POWER(0.1,(floor(1+6*rand())))*set_fnumber) THEN
      SET p_rand = ceil(21905 * RAND());
      SELECT id INTO puid FROM tab_virtual_user WHERE pid = p_rand;
      IF puid NOT IN (SELECT auser_id FROM tab_user_attention WHERE buser_id = p_userid) THEN
       UPDATE tab_user 
          SET fnumber = fnumber + 1,
              today_fnumber = today_fnumber + 1 
        WHERE id = p_userid AND 
              today_fnumber <= ceil(POWER((0.15+RAND()*0.15),(floor(1+6*rand())))*set_fnumber);
         INSERT INTO tab_user_attention(auser_id,buser_id,create_time,status) VALUES(puid,p_userid,now(),0);
       END IF;
    END IF;

  END LOOP;
  CLOSE  pcursor;         
*/
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_show
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_show`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_show`(p_in_matchid INTEGER)
    COMMENT '赛事刷票主程序'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :赛事刷票主程序
   */
   DECLARE p_inner_found  TINYINT DEFAULT FALSE;   #游标状态
   DECLARE p_cur_uid      INTEGER DEFAULT 0;
   DECLARE p_cur_mediaid  INTEGER DEFAULT 0;
   DECLARE p_cur_stage    CHAR(1);
   DECLARE p_inner_rand   INTEGER DEFAULT 0;
   DECLARE p1             INTEGER DEFAULT 0;
   DECLARE p2             INTEGER DEFAULT 0;    #设置set_votenum
   DECLARE i              INTEGER DEFAULT 0;
   DECLARE p_inner_cursor CURSOR FOR SELECT uid,media_id,stage,set_votenum FROM tab_sub_match_media where set_votenum > 0  AND state = 1 AND sub_match_id in
(
SELECT id FROM tab_sub_match where id = p_in_matchid AND status not in (2,4)
);
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET p_inner_found = TRUE;

   IF ((CURDATE() BETWEEN '11:01:01' AND '13:00:00') OR (CURDATE() BETWEEN '20:01:01' AND '23:00:00')) THEN     #繁忙时段刷票
OPEN p_inner_cursor;
A1:LOOP
       FETCH p_inner_cursor INTO p_cur_uid,p_cur_mediaid,p_cur_stage,p2;
       IF p_inner_found THEN
          LEAVE A1;
       END IF;
       SET i = 0;
       IF     p_cur_stage = 'A' THEN
         SET p_inner_rand =  CEIL(30 * RAND());
       ELSEIF p_cur_stage = 'B' THEN
         SET p_inner_rand = FLOOR(20 * RAND());
       ELSEIF p_cur_stage = 'C' THEN
         SET p_inner_rand = FLOOR(10 * RAND());
       ELSEIF p_cur_stage = 'D' THEN
         SET p_inner_rand = FLOOR(5 * RAND());  
       ELSE
         SET p_inner_rand = FLOOR(3 * RAND());
       END IF;     
-- 插入投票明细
       WHILE i < p_inner_rand AND p2 - i > 0 DO
       INSERT INTO tab_vote_detail(uid,media_id,create_time) SELECT id,p_cur_mediaid,NOW()  FROM tab_virtual_user LIMIT 1;
       UPDATE tab_sub_match_media  #刷票主业务
          SET vote_num =  vote_num + 1,
              today_votenum = today_votenum + 1,
              total_votenum = total_votenum + 1,
              set_votenum_mid = set_votenum_mid + 1, 
              set_votenum = set_votenum - 1
        WHERE media_id = p_cur_mediaid ;
       SET i = i + 1;
      -- SELECT SLEEP(0.01);
       END WHILE;
-- 判断投票是否超限
        SELECT set_votenum INTO p1  FROM tab_sub_match_media WHERE media_id = p_cur_mediaid;
        IF p1 <= 0 THEN
           UPDATE tab_sub_match_media set state = 0,set_votenum = 0,set_votenum_mid = 0 WHERE media_id = p_cur_mediaid;
        END IF;
 
END LOOP;
  CLOSE p_inner_cursor;

  ELSEIF ((CURDATE() BETWEEN '09:00:00' AND '11:00:00') OR (CURDATE() BETWEEN '13:00:00' AND '20:00:00')) THEN     #相对繁忙时段刷票
OPEN p_inner_cursor;
A1:LOOP
       FETCH p_inner_cursor INTO p_cur_uid,p_cur_mediaid,p_cur_stage,p2;
       IF p_inner_found THEN
          LEAVE A1;
       END IF;
       SET i = 0;
       IF      p_cur_stage = 'A' THEN
         SET p_inner_rand =  CEIL(7 * RAND());
       ELSEIF  p_cur_stage = 'B' THEN
         SET p_inner_rand =  ROUND(4 * RAND());
       ELSE
         SET p_inner_rand = ROUND(2 * RAND());
       END IF;     
-- 插入投票明细
       WHILE i < p_inner_rand AND p2 - i > 0 DO
       INSERT INTO tab_vote_detail(uid,media_id,create_time) SELECT id,p_cur_mediaid,NOW()  FROM tab_virtual_user  LIMIT 1;
       UPDATE tab_sub_match_media  #刷票主业务
          SET vote_num =  vote_num + 1,
              today_votenum = today_votenum + 1,
              total_votenum = total_votenum + 1,
              set_votenum_mid = set_votenum_mid + 1,
              set_votenum = set_votenum - 1
        WHERE media_id = p_cur_mediaid ;
       UPDATE tab_media 
          SET bnumber = bnumber + 1,
              today_bnumber = today_bnumber + 1,
              total_bnumber = total_bnumber + 1 
        WHERE id = p_cur_mediaid;
       SET i = i + 1;
     --  SELECT SLEEP(0.03);
       END WHILE; 
-- 判断投票是否超限
        SELECT set_votenum INTO p1  FROM tab_sub_match_media WHERE media_id = p_cur_mediaid;
        IF p1 <= 0 THEN
           UPDATE tab_sub_match_media set state = 0,set_votenum = 0,set_votenum_mid = 0 WHERE media_id = p_cur_mediaid;
        END IF;
 
END LOOP;
  CLOSE p_inner_cursor;
   ELSE                                                                              # 凌晨零星刷票
OPEN p_inner_cursor;
A1:LOOP
       FETCH p_inner_cursor INTO p_cur_uid,p_cur_mediaid,p_cur_stage,p2;
       IF p_inner_found THEN
          LEAVE A1;
       END IF;
       SET p_inner_rand = ROUND(RAND() * 0.8);
-- 插入投票明细
       WHILE i < p_inner_rand AND p2 - i > 0 DO
       INSERT INTO tab_vote_detail(uid,media_id,create_time) SELECT id,p_cur_mediaid,NOW()  FROM tab_virtual_user  LIMIT 1;
       UPDATE tab_sub_match_media  #刷票主业务
          SET vote_num =  vote_num + 1,
              today_votenum = today_votenum + 1,
              total_votenum = total_votenum + 1,
              set_votenum_mid = set_votenum_mid + 1,
              set_votenum = set_votenum - 1
        WHERE media_id = p_cur_mediaid ;
       UPDATE tab_media 
          SET bnumber = bnumber + 1,
              today_bnumber = today_bnumber + 1,
              total_bnumber = total_bnumber + 1 
        WHERE id = p_cur_mediaid;
       SET i = i + 1;
#       SELECT SLEEP(10);
       END WHILE;
-- 判断投票是否超限
        SELECT set_votenum INTO p1  FROM tab_sub_match_media WHERE media_id = p_cur_mediaid;
        IF p1 <= 0 THEN
           UPDATE tab_sub_match_media set state = 0,set_votenum = 0,set_votenum_mid = 0 WHERE media_id = p_cur_mediaid;
        END IF;
END LOOP;                                                  #空闲时段刷票
  CLOSE p_inner_cursor;
   END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_special_comment
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_special_comment`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_special_comment`()
    COMMENT '设置指定评论的刷票量'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :设置指定评论的刷票量
   */
   DECLARE pfound    INT DEFAULT FALSE;
   DECLARE pmediaid INTEGER DEFAULT 0;
   DECLARE pcontent VARCHAR(1000) DEFAULT '';
   DECLARE pcreate_time datetime;
   DECLARE pcount   INTEGER DEFAULT 0;
   DECLARE p_rand   INTEGER DEFAULT 0;
   DECLARE puid     INTEGER DEFAULT 0;
   DECLARE pbuserid INTEGER DEFAULT 0;
   DECLARE pid      INTEGER DEFAULT 0;
   DECLARE p1       INTEGER DEFAULT 0;
   DECLARE pjudge   INTEGER DEFAULT 0;
   DECLARE pcursor1 CURSOR FOR SELECT media_id,
                                      CAST(create_time as DATE) create_time,
                                      count(*) countx 
                                 FROM tab_media_comment_add  WHERE STATUS = 0  AND create_time > CURDATE() -INTERVAL 2 DAY AND
                                      media_id not in (SELECT DISTINCT media_id FROM tab_media_comment_add WHERE update_time>CURDATE() OR state =1)
                             group by media_id,CAST(create_time as DATE) UNION
                               SELECT b.media_id,CURDATE(),b.pcount
                                 FROM 
                                      (select media_id,count(*) pcount from tab_media_comment_add where create_time > CURDATE() group by media_id) b,
                                      (select media_id,count(*) pcount from tab_media_comment_add where create_time > CURDATE() AND state = 0 group by media_id) c
                                 WHERE b.media_id = c.media_id AND b.pcount = c.pcount AND b.pcount >0;


/*SELECT media_id,CAST(create_time as DATE) create_time,count(*) countx FROM tab_media_comment_add  WHERE STATUS = 0  AND create_time > CURDATE() -INTERVAL 2 DAY AND
                              media_id not in (SELECT DISTINCT media_id FROM tab_media_comment_add WHERE update_time>CURDATE() OR state =1)
                group by media_id,CAST(create_time as DATE);*/
#准备工作
OPEN pcursor1;
A1:LOOP
      FETCH pcursor1 INTO pmediaid,pcreate_time,pcount;
     # SELECT SLEEP(100*RAND());
      IF pfound = TRUE THEN
         LEAVE A1;
      END IF;
      SET pjudge = TIMESTAMPDIFF(day,pcreate_time,CURDATE());
      IF pjudge = 0 THEN
-- 当天刷一个视频评论的70%
        SET p1 = CEIL(pcount*0.7);
        UPDATE tab_media_comment_add 
           SET state = 1 
         WHERE media_id = pmediaid AND 
               cast(create_time as date) = pcreate_time AND 
               state = 0 LIMIT p1;
      ELSEIF pjudge = 1 THEN
-- 刷剩下评论的2/3
        SET p1 = CEIL(pcount*2/3);
        UPDATE tab_media_comment_add SET state = 1 WHERE media_id = pmediaid AND cast(create_time as date) = pcreate_time AND state = 0  LIMIT p1;        
      ELSE
-- 刷余下的评论
        UPDATE tab_media_comment_add SET state = 1 WHERE media_id = pmediaid AND cast(create_time as date) = pcreate_time AND state = 0; 
      END IF; 
     # SELECT SLEEP(100*RAND());
   END LOOP;
CLOSE pcursor1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_special_comment_inner
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_special_comment_inner`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_special_comment_inner`()
    COMMENT '刷评论主线程'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :刷评论主线程
   */
   DECLARE done          INT DEFAULT 0;
   DECLARE pmediaid      INTEGER DEFAULT 0;
   DECLARE pcontent      VARCHAR(300) DEFAULT '';
   DECLARE px            INTEGER DEFAULT 0;
   DECLARE pxx           INTEGER DEFAULT 0;
   DECLARE puid          INTEGER DEFAULT 0;
   DECLARE pbuserid      INTEGER DEFAULT 0;
   DECLARE p_inner_count INTEGER DEFAULT 0;
   DECLARE pid1          INTEGER DEFAULT 0;
   DECLARE pcount        INTEGER DEFAULT 0;
   DECLARE p_nickname    VARCHAR(60);
   DECLARE plen          INTEGER DEFAULT 0; #取字符串长度
   DECLARE pcursor CURSOR FOR SELECT id,
                                     media_id,
                                     content
                                    FROM tab_media_comment_add  WHERE STATUS = 0 AND state = 1 AND create_time > CURDATE() -INTERVAL 2 DAY 
                            group by media_id ;

   DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
OPEN pcursor;
A1:LOOP
   #   SELECT SLEEP(80*RAND());
      FETCH pcursor INTO pid1,pmediaid,pcontent;
      IF done = 1 THEN
         LEAVE A1;
      END IF;
-- 根据视频取userid
      SELECT user_id INTO pbuserid FROM tab_media WHERE id = pmediaid;
-- 有多少用户关注了这个用户
      select count(*) into pcount from tab_user_attention where buser_id = pbuserid;
-- 取随机数，如果<0.3并且超过5个用户关注了她，从中取一个真实用户去评论
IF RAND() < 0.3 AND pcount > 5 THEN
      select b.nick_name,b.id into p_nickname,puid from tab_user_attention a,tab_user b where a.auser_id = b.id and buser_id = pbuserid AND b.is_moke=1 order by RAND() limit 1;
ELSE
-- 取虚拟用户
      SET px = ceil(21905*RAND());
      SELECT px INTO pxx;
      SELECT id,nick_name into puid,p_nickname FROM tab_virtual_user WHERE pid = pxx;
END IF;

-- 插入视频评论明细表
           INSERT INTO tab_media_comment(media_id,auser_id,buser_id,type,status,content,create_time) /*VALUES(pmediaid,puid,pbuserid,0,0,pcontent,now());  */ 
-- 取未刷的视频评论
           SELECT media_id,puid,pbuserid,0,0,content,NOW() FROM tab_media_comment_add WHERE id = pid1 AND STATUS = 0 AND state = 1;  
-- 更新票数
            UPDATE tab_media a 
               SET cnumber = (select count(*) from tab_media_comment b WHERE a.id = b.media_id AND b.status = 0)
            WHERE EXISTS
                 (
                   select 1 from tab_media_comment b WHERE a.id = b.media_id AND b.status = 0
                  ) AND id = pmediaid ;#更新评论
-- 设置此评论已被刷状态
           UPDATE tab_media_comment_add SET state = 2,STATUS = 1,update_time = NOW() WHERE id = pid1;
-- 插入短消息表   
           INSERT INTO sys_notice(auser_id,buser_id,content,media_id,type,status,create_time) 
                values(puid,pbuserid,pcontent,pmediaid,3,0,NOW());
    #  SELECT SLEEP(50*RAND());
END LOOP;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_special_fans0126
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_special_fans0126`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_special_fans0126`()
    COMMENT '刷粉丝主程序'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :刷粉丝主程序
   */
  DECLARE puserid  INTEGER DEFAULT 0;
  DECLARE pset_fnumber INTEGER DEFAULT 0;
  DECLARE p_rand INTEGER DEFAULT 0;
  DECLARE ptoday_fnumber INTEGER DEFAULT 0;
  DECLARE puid INTEGER DEFAULT 0;
  DECLARE p_aname VARCHAR(60);
  DECLARE p_bname VARCHAR(60);
  DECLARE pjudge   INTEGER DEFAULT -1;
  DECLARE pfound   INT DEFAULT FALSE;
  DECLARE pcursor CURSOR FOR SELECT DISTINCT id from tab_user a  WHERE a.checkFresh = 1 AND  a.today_fnumber <= a.set_fnumber; 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = TRUE;
  OPEN pcursor;
A1: LOOP
  FETCH pcursor INTO puserid;
  -- SELECT SLEEP(60*RAND());
-- 判断是否刷完
  SELECT today_fnumber-set_fnumber INTO pjudge FROM tab_user WHERE id = puserid;
  IF pjudge = 0 THEN
-- 设置停刷状态
    UPDATE tab_user SET checkFresh = 0 WHERE id = puserid;
  END IF;
  IF pfound = TRUE THEN
    LEAVE A1;
  END IF;
  SELECT set_fnumber,today_fnumber,nick_name INTO pset_fnumber,ptoday_fnumber,p_bname from tab_user where id = puserid;
-- 未刷完
    IF ptoday_fnumber < pset_fnumber THEN
      SET p_rand = ceil(21905 * RAND());
-- 取虚拟用户
      SELECT id,nick_name INTO puid,p_aname FROM tab_virtual_user WHERE pid = p_rand;
      IF puid NOT IN (SELECT auser_id FROM tab_user_attention WHERE buser_id = puserid) THEN
-- 粉丝数相关参数加1
-- 插入关注明细表
    INSERT INTO tab_user_attention(auser_id,buser_id,create_time,status) VALUES(puid,puserid,now(),0);
    UPDATE tab_user a 
       SET fnumber = (SELECT count(*) FROM tab_user_attention b WHERE a.id = b.buser_id AND b.status =0),
           today_fnumber = today_fnumber + 1,
           total_fnumber = total_fnumber + 1
     WHERE EXISTS
          (
             SELECT 1 FROM tab_user_attention b WHERE a.id = b.buser_id AND b.status =0
          ) and id = puserid  AND today_fnumber < set_fnumber;

-- 插入短消息表
       INSERT INTO sys_notice(auser_id,buser_id,content,type,status,create_time) VALUES(puid,puserid,CONCAT(p_aname,'关注了你'),2,0,NOW());
       END IF;
    END IF;
   -- SELECT SLEEP(8*RAND());
END LOOP;
  CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_special_play0126
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_special_play0126`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_special_play0126`()
    COMMENT '刷播放主程序'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :刷播放主程序
   */
  DECLARE puserid  INTEGER DEFAULT 0;
  DECLARE pmediaid INTEGER DEFAULT 0;
  DECLARE pset_bnumber INTEGER DEFAULT 0;
  DECLARE p_rand INTEGER DEFAULT 0;
  DECLARE ptoday_bnumber INTEGER DEFAULT 0;
  DECLARE puid INTEGER DEFAULT 0;
  DECLARE pjudge   INTEGER DEFAULT -1;
  DECLARE pfound   INT DEFAULT FALSE;
  DECLARE pcursor CURSOR FOR SELECT user_id,id from tab_media a  WHERE a.checkVideoFresh = 1 AND  a.today_bnumber <= a.set_bnumber AND a.status = 1; 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = TRUE;
  OPEN pcursor;
A1: LOOP
  FETCH pcursor INTO puserid,pmediaid;
-- 判断是否已经刷完
  SELECT today_bnumber-set_bnumber INTO pjudge FROM tab_media WHERE id = pmediaid;
  IF pjudge = 0 THEN
-- 设置停刷状态
    UPDATE tab_media SET checkVideoFresh = 0 WHERE id = pmediaid;
  END IF;
  IF pfound = TRUE THEN
    LEAVE A1;
  END IF;
-- 播放量相关参数加1
  UPDATE tab_media 
     SET bnumber = bnumber + 1,
         today_bnumber = today_bnumber + 1,
         total_bnumber = total_bnumber + 1 
   WHERE id = pmediaid;
END LOOP;
  CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_special_support0126
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_special_support0126`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_special_support0126`()
    COMMENT '刷赞主程序'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :刷赞主程序
   */
  DECLARE puserid      INTEGER DEFAULT 0;
  DECLARE pmediaid     INTEGER DEFAULT 0;
  DECLARE pset_pnumber INTEGER DEFAULT 0;
  DECLARE p_rand       INTEGER DEFAULT 0;
  DECLARE p_tagid      INTEGER DEFAULT 0;
  DECLARE p_nickname   VARCHAR(60);
  DECLARE ptoday_pnumber INTEGER DEFAULT 0;
  DECLARE puid         INTEGER DEFAULT 0;
  DECLARE pjudge       INTEGER DEFAULT -1;
  DECLARE pfound       INT DEFAULT FALSE;
  DECLARE pcursor CURSOR FOR SELECT user_id,id from tab_media a  WHERE a.checkPraiseFresh = 1 AND  a.today_pnumber <= a.set_pnumber and a.status = 1; 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = TRUE;
  OPEN pcursor;
A1: LOOP
  FETCH pcursor INTO puserid,pmediaid;
  -- SELECT SLEEP(20*RAND());
-- 判断是否刷完
  SELECT today_pnumber-set_pnumber INTO pjudge FROM tab_media WHERE id = pmediaid;
  IF pjudge = 0 THEN
-- 设置停刷状态
    UPDATE tab_media SET checkPraiseFresh = 0 WHERE id = pmediaid;
  END IF;
  IF pfound = TRUE THEN
    LEAVE A1;
  END IF;
  SELECT set_pnumber,today_pnumber,IFNULL(tag_id,0) INTO pset_pnumber,ptoday_pnumber,p_tagid from tab_media where id = pmediaid;
  IF ptoday_pnumber < pset_pnumber THEN
-- 取虚拟用户
     SET p_rand = ceil(21905 * RAND());
     SELECT id,nick_name INTO puid,p_nickname FROM tab_virtual_user WHERE pid = p_rand;
     IF puid NOT IN (SELECT auser_id FROM tab_media_support WHERE media_id = pmediaid) THEN
-- 点赞数相关参数加1
        UPDATE tab_media 
           SET pnumber = pnumber + 1,
               today_pnumber = today_pnumber + 1,
               total_pnumber =  total_pnumber + 1,
               bnumber = bnumber + 1,
               today_bnumber = today_bnumber + 1,
               total_bnumber = total_bnumber + 1 
         WHERE id = pmediaid AND today_pnumber < set_pnumber;
-- 插入点赞明细表
        INSERT INTO tab_media_support(media_id,auser_id,buser_id,status,create_time) VALUES(pmediaid,puid,puserid,0,now());
-- 插入短消息表
        INSERT INTO sys_notice(auser_id,buser_id,content,media_id,type,status,create_time) values(puid,puserid,CONCAT(p_nickname,'喜欢了你的作品'),pmediaid,4,1,NOW());
-- 如果属于圈子，插入圈子表
        IF p_tagid > 0 THEN
           INSERT INTO tab_quan_rank(uid,tag_id,pnumber,create_time) VALUES(puserid,p_tagid,1,NOW()) ON DUPLICATE KEY UPDATE pnumber = pnumber + 1 ;
        END IF;
       END IF;
  END IF;
  -- SELECT SLEEP(6*RAND());
END LOOP;
  CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_topic_reply
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_topic_reply`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_topic_reply`()
    COMMENT '设置话题刷票量（停用）'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :设置话题刷票量
   */
   DECLARE pfound    INT DEFAULT FALSE;
   DECLARE ptopicid INTEGER DEFAULT 0;
   DECLARE pcontent VARCHAR(1000) DEFAULT '';
   DECLARE pcreate_time datetime;
   DECLARE pcount   INTEGER DEFAULT 0;
   DECLARE p_rand   INTEGER DEFAULT 0;
   DECLARE puid     INTEGER DEFAULT 0;
   DECLARE pbuserid INTEGER DEFAULT 0;
   DECLARE pid      INTEGER DEFAULT 0;
   DECLARE p1       INTEGER DEFAULT 0;
   DECLARE pjudge   INTEGER DEFAULT 0;
   DECLARE pcursor1 CURSOR FOR SELECT topic_id,CAST(create_time as DATE) create_time,count(*) countx FROM tab_topic_reply_add  WHERE STATUS = 0  AND create_time > CURDATE() -INTERVAL 2 DAY AND
                              topic_id not in (SELECT DISTINCT topic_id FROM tab_topic_reply_add WHERE update_time>CURDATE() OR state =1)
                group by topic_id,CAST(create_time as DATE);
#准备工作
OPEN pcursor1;
A1:LOOP
      FETCH pcursor1 INTO ptopicid,pcreate_time,pcount;
      SELECT SLEEP(100*RAND());
      IF pfound = TRUE THEN
         LEAVE A1;
      END IF;
      SET pjudge = TIMESTAMPDIFF(day,pcreate_time,CURDATE());
      IF pjudge = 0 THEN
        SET p1 = CEIL(pcount*0.7);
        UPDATE tab_topic_reply_add 
           SET state = 1 
         WHERE topic_id = ptopicid AND 
               cast(create_time as date) = pcreate_time AND 
               state = 0 LIMIT p1;
      ELSEIF pjudge = 1 THEN
        SET p1 = CEIL(pcount*2/3);
        UPDATE tab_topic_reply_add SET state = 1 WHERE topic_id = ptopicid AND cast(create_time as date) = pcreate_time AND state = 0  LIMIT p1;        
      ELSE
        UPDATE tab_topic_reply_add SET state = 1 WHERE topic_id = ptopicid AND cast(create_time as date) = pcreate_time AND state = 0; 
      END IF; 
      SELECT SLEEP(100*RAND());
   END LOOP;
CLOSE pcursor1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_fresh_topic_reply_inner
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_fresh_topic_reply_inner`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_fresh_topic_reply_inner`()
    COMMENT '刷话题主线程（停用）'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/0725
   Description  :
   */
   DECLARE done         INT DEFAULT 0;
   DECLARE ptopicid     INTEGER DEFAULT 0;
   DECLARE pcontent     VARCHAR(1000) DEFAULT '';
   DECLARE px           INTEGER DEFAULT 0;
   DECLARE pxx          INTEGER DEFAULT 0;
   DECLARE puid         INTEGER DEFAULT 0;
   DECLARE pnick_name   VARCHAR(100);
   DECLARE pavatars_url VARCHAR(200);
   DECLARE pavatars_url1 VARCHAR(200);
   DECLARE pid1         INTEGER DEFAULT 0;
   DECLARE pcursor CURSOR FOR SELECT id,
                                     topic_id,
                                     content
                                    FROM tab_topic_reply_add  WHERE STATUS = 0 AND state = 1 AND create_time > CURDATE() -INTERVAL 2 DAY 
                            group by topic_id ;
  # DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
OPEN pcursor;
A1:LOOP
      SELECT SLEEP(20*RAND());
      FETCH pcursor INTO pid1,ptopicid,pcontent;
      IF done = 1 THEN
         LEAVE A1;
      END IF;
      SET px = ceil(21905*RAND());
      SELECT px INTO pxx;
      SELECT id,
             nick_name,
             CASE WHEN SUBSTR(avatars_url,1,4) = 'http' THEN  avatars_url
                 ELSE CONCAT('http://ossqn.hfbufu.com/',avatars_url)
             END 
        into puid,
             pnick_name,
             pavatars_url FROM tab_virtual_user WHERE pid = pxx;
      IF puid NOT IN (SELECT uid FROM tab_topic_comment WHERE topic_id = ptopicid) THEN
        INSERT INTO tab_topic_comment(topic_id,uid,uname,headimg,content,floor_num,create_time) VALUES(ptopicid,puid,pnick_name,pavatars_url,pcontent,_next_floor_num(ptopicid),now());
        UPDATE tab_topic SET view_count = view_count + 1,comment_count = comment_count + 1 WHERE id = ptopicid;
        UPDATE tab_topic_reply_add SET state = 2,STATUS = 1,update_time = NOW() WHERE id = pid1;
      END IF;
      SELECT SLEEP(10*RAND());
END LOOP;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_insert_app_coin
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_insert_app_coin`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_insert_app_coin`(p_uid int,                   -- 用户id   
                                     p_price_coin decimal(18,2),  -- 资金变动
                                     p_coin_change decimal(18,2), -- 不服币变动
                                     p_change_text varchar(200),  -- 变动说明
                                     p_status TINYINT,            -- 状态
                                     p_type TINYINT,              -- 类型
                                     p_from varchar(255),         -- 1:微信 2:支付宝 3:appstrone 4:福卡
                                     p_order_no varchar(20),      -- 订单号
                                     p_transaction_id varchar(30),-- 购买时，记录微信支付的transaction_id
                                     p_buyer_account varchar(256),-- 购买者的三方账号
                                     p_exchange_type TINYINT)
    COMMENT '不服平台充值消费记录'
BEGIN
  DECLARE p_id INT DEFAULT 0;
	DECLARE appCoin INTEGER DEFAULT 0;
	SELECT
			   IFNULL(max(app_coin),0) INTO appCoin
	  FROM
	    	 tab_coin_exchange_cfg   -- 不服币种兑换表
	 WHERE
		   	 price_coin = p_price_coin AND 
         exchange_type = 1
		ORDER BY app_coin DESC
    LIMIT 1;
  SELECT id INTO p_id 
    FROM tab_coin_exchange_cfg 
   WHERE exchange_type = p_exchange_type AND 
         price_coin = p_price_coin AND status = 1;
-- IF p_uid = 851182 THEN
IF p_uid in (SELECT user_id FROM tab_sr_user_xuni WHERE user_ident = 0) THEN
  insert into tab_app_coin_xuni(uid,
                           price_coin,
                           coin_change,
                           change_text,
                           change_time,
                           `status`,
                           type,
                           `from`,
                           order_no,
                           transaction_id,
                           buyer_account,
                           related_no
                           )
                   SELECT  p_uid,
                           p_price_coin,
                       --  p_price_coin*100,
                           p_price_coin*90,
                           p_change_text,
                           NOW(),
                           p_status,
                           p_type,
                           p_from,
                           p_order_no,
                           p_transaction_id,
                           p_buyer_account,
                           p_id ;
ELSEIF p_uid in (SELECT user_id FROM tab_sr_user_xuni_1 WHERE user_ident = 0) THEN
  insert into tab_app_coin_xuni(uid,
                           price_coin,
                           coin_change,
                           change_text,
                           change_time,
                           `status`,
                           type,
                           `from`,
                           order_no,
                           transaction_id,
                           buyer_account,
                           related_no
                           )
                   SELECT  p_uid,
                           p_price_coin,
                       --  p_price_coin*100,
                           p_price_coin*250,
                           p_change_text,
                           NOW(),
                           p_status,
                           p_type,
                           p_from,
                           p_order_no,
                           p_transaction_id,
                           p_buyer_account,
                           p_id ;
ELSE
  insert into tab_app_coin(uid,
                           price_coin,
                           coin_change,
                           change_text,
                           change_time,
                           `status`,
                           type,
                           `from`,
                           order_no,
                           transaction_id,
                           buyer_account,
                           related_no
                           )
                   SELECT  p_uid,
                           p_price_coin,
                           appCoin,
                           p_change_text,
                           NOW(),
                           p_status,
                           p_type,
                           p_from,
                           p_order_no,
                           p_transaction_id,
                           p_buyer_account,
                           p_id ;
END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_judge_pk_integration
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_judge_pk_integration`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_judge_pk_integration`(p_live_id INT,p_uid INT)
    COMMENT 'pk直播积分分配情况'
BEGIN
  DECLARE winner             INT DEFAULT 0;
  DECLARE winner_integration INT DEFAULT 0;
  DECLARE p_wlight           TINYINT default 0;  --  赢方爆灯数
  DECLARE p_1                INT DEFAULT 0;
  DECLARE loser              INT DEFAULT 0;
  DECLARE loser_integration  INT DEFAULT 0;       --  输方爆灯数
  DECLARE p_llight           TINYINT default 0;
  DECLARE p_2                INT DEFAULT 0;
  DECLARE p_midd             INT DEFAULT 0; -- 输赢比率          
  IF p_uid IS NULL THEN
-- winner
      SELECT to_uid,SUM(fu_card) 
        INTO winner,winner_integration
        FROM tab_gift_record WHERE live_id = p_live_id GROUP BY to_uid ORDER BY 2 DESC LIMIT 1;
-- loser
      SELECT to_uid,SUM(fu_card) 
        INTO loser,loser_integration
        FROM tab_gift_record WHERE live_id = p_live_id GROUP BY to_uid ORDER BY 2 ASC LIMIT 1;
-- light
      SELECT CASE WHEN pk_uid = winner THEN b_light ELSE a_light END ,
             CASE WHEN pk_uid = winner THEN a_light ELSE b_light END 
        INTO p_wlight,p_llight FROM tab_live_pk WHERE live_id = p_live_id;
-- total
      SET p_midd = ROUND(loser_integration / 2);
      SET p_1  = winner_integration + p_midd + IFNULL(p_wlight,0) * 1000;
      SET p_2  = loser_integration  - p_midd + IFNULL(p_llight,0) * 1000;
-- insert
      REPLACE INTO tab_live_integration(live_id,uid,user_integration)
         SELECT p_live_id,winner,p_1;
      REPLACE INTO tab_live_integration(live_id,uid,user_integration)
         SELECT p_live_id,loser,p_2;
  ELSE
-- winer
      SELECT to_uid,SUM(fu_card) 
        INTO winner,winner_integration
        FROM tab_gift_record WHERE live_id = p_live_id AND to_uid <> p_uid;
-- loser
      SELECT to_uid,SUM(fu_card) 
        INTO loser,loser_integration
        FROM tab_gift_record WHERE live_id = p_live_id AND to_uid = p_uid;
-- light
      SELECT CASE WHEN pk_uid = winner THEN b_light ELSE a_light END ,
             CASE WHEN pk_uid = winner THEN a_light ELSE b_light END 
        INTO p_wlight,p_llight FROM tab_live_pk WHERE live_id = p_live_id;
-- total
      SET p_midd = ROUND(loser_integration / 2);
      SET p_1 = winner_integration + p_midd + IFNULL(p_wlight,0) * 1000;
      SET p_2 = loser_integration  - p_midd + IFNULL(p_llight,0) * 1000;
-- insert
      REPLACE INTO tab_live_integration(live_id,uid,user_integration)
         SELECT p_live_id,winner,p_1;
      REPLACE INTO tab_live_integration(live_id,uid,user_integration)
         SELECT p_live_id,loser,p_2;

  END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_live_send_gift
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_live_send_gift`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_live_send_gift`(IN `p_live_id` integer,IN `p_gift_id` integer,IN `s_user` integer,IN `r_user` integer,OUT `out_err` tinyint,IN `p_count` smallint,IN `p_pk_id` integer,OUT `ret_` tinyint)
    COMMENT '送出礼物后，s经验及r福卡数变化过程'
BEGIN
	/*
   Create_time:2016-08-03
   Description:主要用来完成直播送礼物的整个消费过程
               返回值 1表示失败回滚，0表示成功提交,2表示余额不足
               新增用户积分头像判断
   */
  DECLARE p_app_coin         INTEGER DEFAULT 0;
  DECLARE p_sid              INTEGER DEFAULT 0; -- tab_app_coin对应送礼物人的记录id，非用户id
  DECLARE p_r_id             INTEGER DEFAULT 0; -- tab_app_coin对应收礼物人的记录id，非用户id
  DECLARE p_fu_num           INTEGER DEFAULT 0;
  DECLARE p_auth             INTEGER DEFAULT 0; -- 判断用户是否是普通用户还是+V用户
  DECLARE before_level       INTEGER DEFAULT 0;
  DECLARE after_level        INTEGER DEFAULT 0;
  DECLARE p_scoin_after      INTEGER DEFAULT 0;
  DECLARE p_rcoin_after      INTEGER DEFAULT 0;
  DECLARE p_r_fu_after       INTEGER DEFAULT 0;
  DECLARE p_experience       INTEGER DEFAULT 0;
	DECLARE p_pk_uid       		 INTEGER DEFAULT 0; -- 副主播的用户id
  DECLARE t_error            INTEGER DEFAULT 0;
  DECLARE p1                 INTEGER DEFAULT 0;
  DECLARE p2                 INTEGER DEFAULT 0;
  DECLARE i                  INTEGER DEFAULT 0;
  DECLARE j                  INTEGER DEFAULT 0;
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error = 1;
  START TRANSACTION;
  -- 查询礼物信息 
  SELECT app_coin,experience,fu_num INTO p_app_coin,   -- 礼物对应价值
                                         p_experience, -- 礼物对应经验
                                         p_fu_num      -- 礼物对应福卡
                                    FROM tab_gift WHERE id = p_gift_id;
  -- 礼物存不存在，暂时不做判断
  SELECT MAX(id) INTO p_sid FROM tab_app_coin WHERE uid = s_user; -- tab_app_coin表里是否存在用户记录
  
  SELECT SUM(coin_change) INTO p_scoin_after FROM tab_app_coin WHERE uid = s_user AND status = 1 FOR UPDATE;
  IF ifnull(p_sid,0) = 0 OR (ifnull(p_scoin_after,0) < p_app_coin * p_count) THEN
     SET t_error = 2; -- 用户没有充值记录，也就没有足够支付这个礼物的钱
  ELSE

-- 成功送出后，更新送出者的经验及等级
  SELECT level,
         auth_type 
    INTO before_level,
         p_auth 
    FROM tab_user 
   WHERE id =  s_user;
  UPDATE tab_user 
     SET experience = experience + p_experience * p_count,
         level = func_live_get_level(experience)
   WHERE id =  s_user;
     SELECT level 
       INTO after_level 
       FROM tab_user 
      WHERE id =  s_user;
     SET ret_ = after_level;        -- 返回等级
  IF p_auth = 0 THEN
     SET p1 = floor((before_level-1)/10);
     SET p2 = floor((after_level-1)/10);
     IF ( p2 > p1) THEN
        UPDATE tab_user SET auth_image = (SELECT level_image FROM tab_level_area WHERE id = p2 + 1)
                WHERE id =  s_user;
     END IF;
  END IF;
-- 插入送出着的消费明细
-- 礼物明细
  INSERT INTO tab_gift_record(live_id,gift_id,from_uid,to_uid,createtime,fu_card,pk_id,gift_num)
                    SELECT p_live_id,
                           p_gift_id,
                           s_user,
                           r_user,
                           NOW(),
                           p_fu_num * p_count,
                           p_pk_id,
                           p_count;

  INSERT INTO tab_app_coin(uid, coin_before, coin_change, coin_after, change_text, change_time, related_no, type, STATUS,`from`,gift_num)  
                    SELECT s_user,
                           p_scoin_after,
                           0 - p_app_coin * p_count, 
                           0,
                           '送出礼物', 
                           NOW(),
                           p_gift_id,
                           0,
                           1,
                           6,
                           p_count;

-- 插入接受者的消费明细

  IF p_pk_id>0 THEN
	  SELECT pk_uid INTO p_pk_uid from tab_live_pk WHERE id = p_pk_id;
	  IF p_pk_uid=r_user THEN
		   update tab_live_pk SET b_fu_card = b_fu_card + p_fu_num * p_count WHERE id = p_pk_id;
	  ELSE
			 update tab_live_pk SET a_fu_card = a_fu_card + p_fu_num * p_count WHERE id = p_pk_id;
	  END IF;
  ELSE
       SELECT max(id) INTO p_r_id FROM tab_coin WHERE uid = r_user;  
       SELECT fu_after INTO p_r_fu_after FROM tab_coin WHERE id = p_r_id;
             INSERT INTO tab_coin(uid, change_text, status,change_time,send_time, type, fu_before, fu_change, fu_after,related_id,related_type,`from`,gift_num)  
                    SELECT r_user,
                           '收到礼物',
                           1, 
                           NOW(),
                           NOW(),
                           1,
                           ifnull(p_r_fu_after,0),
                           p_fu_num * p_count,
                           ifnull(p_r_fu_after,0) + p_fu_num * p_count,
                           p_live_id,
                           1,
                           1,
                           p_count;
    
  END IF;

END IF;

  IF t_error = 1 THEN
    ROLLBACK;
  ELSE 
    COMMIT;
  END IF; 
  select t_error INTO out_err;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_match_media_isrecom
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_match_media_isrecom`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_match_media_isrecom`()
    COMMENT '设置精选视频'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :设置精选视频
   */
update tab_sub_match_media 
   set is_recom=1 
 where is_recom=3 and 
       sub_match_id in (select sub_match_id 
                          from tab_sub_match 
                         where status=4 and 
                               type=4
                       );

update tab_sub_match_media join(
         select * from (
               select id,sub_match_id,vote_num,rank from (
                       select b.id,
                              b.sub_match_id,
                              b.vote_num,
                              @rownum:=@rownum+1 ,
                              if(@pdept=b.sub_match_id,@rank:=@rank+1,@rank:=1) as rank,
                              @pdept:=b.sub_match_id
                        from (
                              select id,sub_match_id,vote_num 
                                from tab_sub_match_media 
                               where is_recom<>2  and sub_match_id in (
                                                                        select id 
                                                                          from tab_sub_match 
                                                                         where status=4 and type=4
                                                                      )  
                            order by sub_match_id 
                             ) b ,
                       (select @rownum :=0 , @pdept := null ,@rank:=0) c ) result
                        having rank <10 order by rand()) a group by sub_match_id) b
   on tab_sub_match_media.id=b.id   set tab_sub_match_media.is_recom=3;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_move_passed_media
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_move_passed_media`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_move_passed_media`(IN `p_media_id` int)
    COMMENT '视频审核通过后，将存在临时表中的“单个”赛事视频移动到tab_media表中'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :视频审核通过后，将存在临时表中的“单个”赛事视频移动到tab_media表中
   */

DECLARE v_uid int(11) DEFAULT NULL;

-- 将视频从tab_media_temp表移入tab_media表
INSERT INTO tab_media
		  (id,title,user_id,status,create_time,media_url,size,width,height,cnumber,pnumber,bnumber,rnumber,content,media_duration,
		   is_moke,match_hot,hot,hot_img,tag_id,images_url,isdeal,activity_id,back_color,match_id,checkNew,ifcheck,set_pnumber,total_pnumber,today_pnumber,
		   set_bnumber,total_bnumber,today_bnumber,support_download
      ) 
SELECT id,title,user_id,1,create_time,media_url,size,width,height,cnumber,pnumber,bnumber,rnumber,content,media_duration,
		   is_moke,match_hot,hot,hot_img,tag_id,images_url,isdeal,activity_id,back_color,match_id,checkNew,ifcheck,set_pnumber,total_pnumber,today_pnumber,
		   set_bnumber,total_bnumber,today_bnumber,support_download
FROM tab_media_temp WHERE id = p_media_id;


-- 修正用户视频数和赛事视频数
select user_id into v_uid from tab_media WHERE id = p_media_id;

UPDATE tab_user a 
			SET 
					a.match_number = (select count(*) from tab_media  b where b.user_id = v_uid AND b.status<>2 AND b.match_id is NOT NULL)  ,
					a.mnumber = (select count(*) from tab_media  b where b.user_id = v_uid AND b.status<>2)
WHERE a.id = v_uid;


-- 删除临时视频
update tab_media_temp SET status = 2,check_refuse=NULL WHERE id = p_media_id;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_move_temp_media
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_move_temp_media`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_move_temp_media`(IN `p_match_id` int)
    COMMENT '将存在临时表中的赛事视频移动到tab_media表中'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :将存在临时表中的赛事视频移动到tab_media表中
   */

		-- 第一步，将临时视频放入视频表中
		INSERT INTO tab_media
				(id,title,user_id,status,create_time,media_url,size,width,height,cnumber,pnumber,bnumber,rnumber,content,media_duration,
				is_moke,match_hot,hot,hot_img,tag_id,images_url,isdeal,activity_id,back_color,match_id,checkNew,ifcheck,set_pnumber,total_pnumber,today_pnumber,
				set_bnumber,total_bnumber,today_bnumber,checkVideoFresh,checkPraiseFresh) 
		SELECT id,title,user_id,status,create_time,media_url,size,width,height,cnumber,pnumber,bnumber,rnumber,content,media_duration,
				is_moke,match_hot,hot,hot_img,tag_id,images_url,isdeal,activity_id,back_color,match_id,checkNew,ifcheck,set_pnumber,total_pnumber,today_pnumber,
				set_bnumber,total_bnumber,today_bnumber,checkVideoFresh,checkPraiseFresh 
		FROM tab_media_temp WHERE match_id = p_match_id AND status<>-1 AND status<>2;



		-- 第二步，修正用户视频数和赛事视频数
		UPDATE tab_user a 
						SET 
								match_number = match_number + (select count(*) from tab_media_temp  b where match_id = p_match_id and a.id = b.user_id AND b.status<>2 group by b.user_id )  ,
                mnumber = mnumber + (select count(*) from tab_media_temp  b where match_id = p_match_id and a.id = b.user_id AND b.status<>2 group by b.user_id )
		where EXISTS
		(
		select 1 from tab_media_temp b where match_id = p_match_id and a.id = b.user_id AND b.status<>2 group by b.user_id
		);


		-- 第二步，删除赛事视频
		update tab_media_temp SET status = 2 WHERE match_id = p_match_id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_operation_kpi
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_operation_kpi`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_operation_kpi`()
    COMMENT '运营员工日考核'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :运营员工日考核
   */
REPLACE INTO tab_operation_kpi(create_time,user_id,truth_name,new_media,new_user,uncomment,unattention,upload_media)
SELECT CURDATE(),
       x.type user_id,
       x.truth_name,
       (SELECT count(*) new_media FROM tab_media a, tab_user b WHERE a.user_id = b.id AND create_time >= CURDATE() AND create_time < CURDATE() + INTERVAL 1 DAY AND a.status = 1 AND b.is_moke = 0) new_media,
       (select count(DISTINCT c.id) from tab_user c,tab_media x where c.id = x.user_id AND c.register_time > CURDATE() AND c.is_moke = 0) new_user,
       ifnull(a.commented,0) commented,
       (select count(DISTINCT c.id) from tab_user c,tab_media x where c.id = x.user_id AND c.register_time > CURDATE() AND c.is_moke = 0) - ifnull(b.attention,0) unattention,
       ifnull(c.upload_media,0) upload_media
  FROM tab_employee x LEFT JOIN
       (SELECT truth_name,
               type,
               count(*) commented
FROM
(
       SELECT  DISTINCT
               c.id,
               d.truth_name,
               d.type
          FROM tab_media a,
               tab_user b,
               tab_media_comment c,
               tab_employee d
         WHERE a.user_id = b.id AND 
               a.id = c.media_id AND
               c.auser_id = d.user_id AND
           --    a.create_time >= CURDATE() AND a.create_time < CURDATE() + INTERVAL 1 DAY AND
               c.create_time >= CURDATE() AND c.create_time < CURDATE() + INTERVAL 1 DAY AND
               a.status = 1 -- AND 
            --   b.is_moke = 0
) x   group by truth_name,type
        ) a ON x.truth_name = a.truth_name AND x.type = a.type
   LEFT JOIN
       (SELECT truth_name,
               type,
               count(*) attention
          FROM
        (
        select DISTINCT
               f.truth_name,
               f.type,
               c.id 
          from tab_user c,
               tab_media x,
               tab_user_attention d,
               tab_employee f
         where c.id = x.user_id AND 
               c.id = d.buser_id AND
               d.auser_id = f.user_id AND 
               d.status = 0 AND
               c.register_time > CURDATE() AND 
               c.is_moke = 0
) x group by truth_name,type
         ) b ON  x.truth_name = b.truth_name AND x.type = b.type
LEFT JOIN
       (SELECT b.truth_name,
               b.type,
               count(a.id) upload_media
          FROM tab_media a 
    RIGHT JOIN tab_employee b 
          ON a.user_id = b.user_id AND create_time >= CURDATE() AND create_time < CURDATE() + INTERVAL 1 DAY AND a.status = 1
     group by  b.truth_name,b.type) c
ON x.truth_name = c.truth_name AND x.type = c.type;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_operation_kpi_week
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_operation_kpi_week`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_operation_kpi_week`()
    COMMENT '运营考核--按周'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :运营员工日考核
   */
INSERT INTO tab_operation_kpi(create_time,user_id,truth_name,new_media,new_user,uncomment,unattention,upload_media,state)
SELECT CURDATE(),
       x.type user_id,
       x.truth_name,
       (SELECT count(*) new_media FROM tab_media a, tab_user b WHERE a.user_id = b.id AND create_time >= CURDATE() - interval 1 week AND create_time < CURDATE() AND a.status = 1 AND b.is_moke = 0) new_media,
       (select count(DISTINCT c.id) from tab_user c,tab_media x where c.id = x.user_id AND c.register_time >= CURDATE() - interval 1 week AND c.register_time < CURDATE() AND c.is_moke = 0) new_user,
       ifnull(a.commented,0) commented,
       (select count(DISTINCT c.id) from tab_user c,tab_media x where c.id = x.user_id AND c.register_time >= CURDATE() - interval 1 week AND c.register_time < CURDATE() AND c.is_moke = 0) - ifnull(b.attention,0) unattention,
       ifnull(c.upload_media,0) upload_media,
       1 state
  FROM tab_employee x LEFT JOIN
       (SELECT truth_name,
               type,
               count(*) commented
FROM
(
       SELECT  DISTINCT
               c.id,
               d.truth_name,
               d.type
          FROM tab_media a,
               tab_user b,
               tab_media_comment c,
               tab_employee d
         WHERE a.user_id = b.id AND 
               a.id = c.media_id AND
               c.auser_id = d.user_id AND
           --    a.create_time >= CURDATE() - interval 1 week AND a.create_time < CURDATE() + INTERVAL 1 DAY AND
               c.create_time >= CURDATE() - interval 1 week AND c.create_time < CURDATE() AND
               a.status = 1 -- AND 
            --   b.is_moke = 0
) x   group by truth_name,type
        ) a ON x.truth_name = a.truth_name AND x.type = a.type
   LEFT JOIN
       (SELECT truth_name,
               type,
               count(*) attention
          FROM
        (
        select DISTINCT
               f.truth_name,
               f.type,
               c.id 
          from tab_user c,
               tab_media x,
               tab_user_attention d,
               tab_employee f
         where c.id = x.user_id AND 
               c.id = d.buser_id AND
               d.auser_id = f.user_id AND 
               d.status = 0 AND
               c.register_time  >= CURDATE() - interval 1 week AND c.register_time < CURDATE() AND 
               c.is_moke = 0
) x group by truth_name,type
         ) b ON  x.truth_name = b.truth_name AND x.type = b.type
LEFT JOIN
       (SELECT b.truth_name,
               b.type,
               count(a.id) upload_media
          FROM tab_media a 
    RIGHT JOIN tab_employee b 
          ON a.user_id = b.user_id AND create_time >= CURDATE() - interval 1 week AND create_time < CURDATE() AND a.status = 1
     group by  b.truth_name,b.type
       ) c
ON x.truth_name = c.truth_name AND x.type = c.type;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_pay_action
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_pay_action`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_pay_action`(s_user INT,p_app_id INT,OUT out_err TINYINT)
    COMMENT '平台非送礼行为消费'
BEGIN
	/*
   Create_time:2016-11-24
   Description:app平台虚拟产品消费活动。
   out_err: 0,成功；1,失败;2,余额不足
   */
  DECLARE p_scoin_after         INTEGER DEFAULT 0; 
  DECLARE p_sid                 INTEGER DEFAULT 0; -- tab_app_coin是否有行为
  DECLARE p_pay_coin            INTEGER DEFAULT 0; -- 消费活动对应的不服币
  DECLARE p_sale_type           TINYINT DEFAULT 8; -- 消费类型：默认8'
  DECLARE t_error               TINYINT DEFAULT 0;
  DECLARE p_change_text         VARCHAR(60);       -- 消息类型
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error = 1;
  START TRANSACTION;

  SELECT MAX(id)  INTO p_sid FROM tab_app_coin WHERE uid = s_user; -- tab_app_coin是否有行为
  SELECT pay_coin,sale_type,description INTO p_pay_coin,p_sale_type,p_change_text FROM tab_app_action WHERE id = p_app_id;
  SELECT SUM(coin_change) INTO p_scoin_after FROM tab_app_coin WHERE uid = s_user AND status = 1 FOR UPDATE;
  IF ifnull(p_sid,0) = 0 OR (ifnull(p_scoin_after,0) < p_pay_coin) THEN
     SET t_error = 2; -- 用户没有充值记录或余额不足以支付该消费活动
  ELSE
/*
  INSERT INTO tab_gift_record(live_id,gift_id,from_uid,to_uid,createtime,fu_card,pk_id,gift_num)
                    SELECT -1,
                           -1,
                           s_user,
                           -1,
                           NOW(),
                           p_pay_coin,
                           -1,
                           1;
*/

  INSERT INTO tab_app_coin(uid, coin_change, change_text, change_time, related_no, type, STATUS,`from`,gift_num)  
                    SELECT s_user,
                           0 - p_pay_coin, 
                           p_change_text, 
                           NOW(),
                           -1,
                           0,
                           1,
                           p_sale_type,
                           1;
 END IF;

  IF t_error = 1 THEN
    ROLLBACK;
  ELSE 
    COMMIT;
  END IF; 
  SELECT t_error INTO out_err;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_person_attention_pki_3
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_person_attention_pki_3`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_person_attention_pki_3`()
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/0725
   Description  :
   */
  DECLARE pfound TINYINT DEFAULT 0;
  DECLARE p_userid INTEGER DEFAULT 0;
  DECLARE pcursor CURSOR FOR SELECT DISTINCT a.id FROM tab_user a,tab_media b  WHERE a.id = b.user_id AND a.is_moke = 0 AND register_time > CURDATE() AND 
a.id not in 
(
SELECT DISTINCT buser_id FROM tab_user_attention WHERE auser_id = 528543
);
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
  OPEN pcursor;
A1:LOOP
    FETCH pcursor INTO p_userid;
    IF pfound = 1 THEN
      LEAVE A1;
    END IF;
    SELECT SLEEP(3*RAND());
    UPDATE tab_user SET fnumber = fnumber + 1 WHERE id = p_userid;
    INSERT INTO tab_user_attention(auser_id,buser_id,create_time,STATUS) VALUES (528543,p_userid,NOW(),0); 
  END LOOP;
  CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_person_comment_pki_2
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_person_comment_pki_2`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_person_comment_pki_2`()
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/0725
   Description  :
   */
  DECLARE pfound TINYINT DEFAULT 0;
  DECLARE p_mediaid INTEGER DEFAULT 0; 
  DECLARE p_buserid INTEGER DEFAULT 0;
  DECLARE p_date datetime;
  DECLARE pcursor CURSOR FOR SELECT DISTINCT a.id,a.user_id FROM tab_media a LEFT JOIN tab_media_comment b ON a.id = b.media_id WHERE a.create_time > CURDATE() AND
                             a.id not in
                                          (
                                            select DISTINCT media_id FROM tab_media_comment c WHERE auser_id = 528543 AND c.create_time > CURDATE()
                                          ) AND a.user_id in (SELECT id FROM tab_user WHERE is_moke = 0) AND a.status<>2 ;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
  OPEN pcursor;
A1:LOOP
    FETCH pcursor INTO p_mediaid,p_buserid;
    IF pfound = 1 THEN 
      LEAVE A1;
    END IF;
    SELECT create_time INTO p_date FROM tab_media_support WHERE media_id = p_mediaid AND auser_id = 528543;
    IF p_date IS NULL THEN
      SET p_date = NOW();
    END IF;
    UPDATE tab_media SET cnumber = cnumber + 1 WHERE id = p_mediaid;
    INSERT INTO tab_media_comment(media_id,auser_id,buser_id,status,content,CREATE_time)
    SELECT p_mediaid,528543,p_buserid,0,comment,p_date+INTERVAL 3*RAND() SECOND FROM tab_comment_content order by RAND() LIMIT 1;
END LOOP;
  CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_person_support_pki_1
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_person_support_pki_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_person_support_pki_1`()
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/0725
   Description  :
   */
  DECLARE pfound TINYINT DEFAULT 0;
  DECLARE p_mediaid INTEGER DEFAULT 0; 
  DECLARE p_buserid INTEGER DEFAULT 0;
  DECLARE pcursor CURSOR FOR SELECT DISTINCT a.id,a.user_id FROM tab_media a,tab_media_support b WHERE a.id = b.media_id AND a.create_time > CURDATE() AND
                             a.id not in
                                          (
                                            select DISTINCT media_id FROM tab_media_support c WHERE auser_id = 528543 AND c.create_time > CURDATE()
                                          ) AND a.user_id in (select id from tab_user where is_moke = 0 );
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
  OPEN pcursor;
A1:LOOP
    FETCH pcursor INTO p_mediaid,p_buserid;
    IF pfound = 1 THEN
      LEAVE A1;
    END IF;
    SELECT SLEEP(3*RAND());
    INSERT INTO tab_media_record(auser_id,buser_id,media_id,into_time) values(528543,p_buserid,p_mediaid,NOW());
    UPDATE tab_media SET bnumber = bnumber + 1 WHERE id = p_mediaid;
    UPDATE tab_media SET pnumber = pnumber + 1 WHERE id = p_mediaid;
    INSERT INTO tab_media_support(media_id,auser_id,buser_id,status,create_time) VALUES (p_mediaid,528543,p_buserid,0,NOW()); 
  END LOOP;
  CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_pk_result_deal
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_pk_result_deal`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_pk_result_deal`(p_live_id INT,p_uid INT)
    COMMENT 'PK后，输的一方将自己的70%送给赢的一方'
A1:BEGIN
   DECLARE p_start_time datetime;         -- pk开始时间
   DECLARE pk_id      INT DEFAULT -1;     -- pk表的id
   DECLARE p_percent  TINYINT DEFAULT 0;  -- pk输赢赌注比率
   DECLARE winner     INT DEFAULT -1;     -- 赢方
   DECLARE winner_fu  INT DEFAULT 0;      -- 赢方pk期间获得不服票
   DECLARE loser      INT DEFAULT -1;     -- 输方
   DECLARE loser_fu   INT DEFAULT 0;      -- 输方pk期间获得不服票
   DECLARE deduction  INT DEFAULT 0;      -- 扣除值
   SELECT id,start_time,percent INTO pk_id,p_start_time,p_percent FROM tab_live_pk where live_id = p_live_id;
-- 赢方
  IF p_uid IS NULL THEN
   SELECT to_uid,SUM(fu_card) INTO winner,winner_fu FROM tab_gift_record WHERE live_id = p_live_id AND createtime >= p_start_time GROUP BY to_uid ORDER BY 2 DESC LIMIT 1;
   SELECT to_uid,SUM(fu_card) INTO loser,loser_fu   FROM tab_gift_record WHERE live_id = p_live_id AND createtime >= p_start_time GROUP BY to_uid ORDER BY 2 ASC  LIMIT 1;
      IF  loser_fu = 0 THEN
         LEAVE A1;
      END IF;
   SET deduction = ROUND(loser_fu * p_percent / 100);  -- 按比率扣除
   INSERT INTO `tab_gift_record` (
	                `gift_id`,
	                `live_id`,
	                `from_uid`,
	                `to_uid`,
	                `createtime`,
	                `fu_card`,
	                `pk_id`,
	                `gift_num`
	                )
	                VALUES
		                (
			                -2,
		                	p_live_id,
		                	loser,
		                	winner,
		                	NOW(),
		                	deduction,
		                	pk_id,
		                	1
		                );
-- loser
   INSERT INTO `tab_gift_record` (
	                `gift_id`,
	                `live_id`,
	                `from_uid`,
	                `to_uid`,
	                `createtime`,
	                `fu_card`,
	                `pk_id`,
	                `gift_num`
	                )
	                VALUES
		                (
			                -3,
		                	p_live_id,
		                	loser,
		                	loser,
		                	NOW(),
		                	0 - deduction,
		                	pk_id,
		                	1
		                );
-- 增加记录
INSERT INTO  `tab_coin` (
	                  `uid`,
		                `change_text`,
		                `coin_change`,
		                `change_time`,
		                `status`,
	                	`send_time`,
	                	`type`,
	                	`fu_change`,
	                	`coin_type`,
	                	`from`,
	                	`gift_num`
                     )
                   VALUES
	                  (
	                   winner,
 	                  'pk赛赢方',
	                   0.00,
 	                  NOW(),
 	                  1,
 	                  NOW(),
	                   1,
	                   deduction,
 	                  0,
 	                  1,
 	                  1  
		                );
-- 扣除记录
INSERT INTO  `tab_coin` (
	                	`uid`,
	                	`change_text`,
	                	`coin_change`,
	                	`change_time`,
	                	`status`,
	                	`send_time`,
	                	`type`,
	                	`fu_change`,
	                	`coin_type`,
	                	`from`,
		                `gift_num`
	                )
VALUES
	               (
 	                  loser,
 	                  'pk赛输方',
 	                  0.00,
 	                  NOW(),
 	                  1,
 	                  NOW(),
	                  1,
	                  0 - deduction,
 	                  0,
  	                1,
  	                1  
		                );
ELSE
   SELECT to_uid,SUM(fu_card) INTO winner,winner_fu FROM tab_gift_record WHERE live_id = p_live_id AND createtime >= p_start_time AND to_uid <> p_uid GROUP BY to_uid ;
   SELECT to_uid,SUM(fu_card) INTO loser,loser_fu   FROM tab_gift_record WHERE live_id = p_live_id AND createtime >= p_start_time AND to_uid = p_uid GROUP BY to_uid;
      IF  loser_fu = 0 THEN
         LEAVE A1;
      END IF;
   SET deduction = ROUND(loser_fu * p_percent / 100); 
   INSERT INTO `tab_gift_record` (
	                `gift_id`,
	                `live_id`,
	                `from_uid`,
	                `to_uid`,
	                `createtime`,
	                `fu_card`,
	                `pk_id`,
	                `gift_num`
	                )
	                VALUES
		                (
			                -2,
		                	p_live_id,
		                	loser,
		                	winner,
		                	NOW(),
		                	deduction,
		                	pk_id,
		                	1
		                );
-- loser
   INSERT INTO `tab_gift_record` (
	                `gift_id`,
	                `live_id`,
	                `from_uid`,
	                `to_uid`,
	                `createtime`,
	                `fu_card`,
	                `pk_id`,
	                `gift_num`
	                )
	                VALUES
		                (
			                -3,
		                	p_live_id,
		                	loser,
		                	loser,
		                	NOW(),
		                	0 - deduction,
		                	pk_id,
		                	1
		                );
-- 增加记录
INSERT INTO  `tab_coin` (
	                `uid`,
		                `change_text`,
		                `coin_change`,
		                `change_time`,
		                `status`,
	                	`send_time`,
	                	`type`,
	                	`fu_change`,
	                	`coin_type`,
	                	`from`,
	                	`gift_num`
)
VALUES
	(
	                   winner,
 	                  'pk赛赢方',
	                   0.00,
 	                  NOW(),
 	                  1,
 	                  NOW(),
	                  1,
	                  deduction,
 	                  0,
 	                  1,
 	                  1  
		                );
-- 扣除记录
INSERT INTO  `tab_coin` (
	                	`uid`,
	                	`change_text`,
	                	`coin_change`,
	                	`change_time`,
	                	`status`,
	                	`send_time`,
	                	`type`,
	                	`fu_change`,
	                	`coin_type`,
	                	`from`,
		                `gift_num`
	                )
          VALUES
	               (
 	                  loser,
 	                  'pk赛输方',
 	                  0.00,
 	                  NOW(),
 	                  1,
 	                  NOW(),
	                  1,
	                  0 - deduction,
 	                  0,
  	                1,
  	                1  
		                );
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_recharge_action
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_recharge_action`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_recharge_action`(p_uid INT)
    COMMENT '首充送礼'
BEGIN
  DECLARE p_recharge_time SMALLINT DEFAULT 0;
  DECLARE p_recharge_time_total SMALLINT DEFAULT 0;
  SELECT SUM(CASE WHEN STATUS = 1 THEN 1 ELSE 0 END),
         COUNT(*) 
    INTO p_recharge_time,p_recharge_time_total 
    FROM tab_app_coin 
   WHERE uid = p_uid AND `from` in (1,2,3) AND `status` = 1 AND change_time >= CURDATE() AND change_time < CURDATE() + INTERVAL 1 DAY;
  IF p_recharge_time = 1 AND p_recharge_time_total = 1 THEN
     INSERT INTO tab_app_coin(uid,coin_change,change_text,change_time,`status`,type,`from`,price_coin)
                      VALUES (p_uid, 200, '每日首冲', NOW(), 1, 1, 7,0);
     INSERT INTO sys_notice(auser_id,buser_id,content,type,type2,status,create_time)
                      VALUES (1, p_uid, '首冲奖励,不服送你200不服币', 1, 5, 0, now());
   END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_refresh_action
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_refresh_action`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_refresh_action`()
    COMMENT '刷各个活动的页面浏览量'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :刷h5页面浏览量
   */
   DECLARE p_1 INTEGER DEFAULT 0; #赛事ID
   DECLARE p_2 INTEGER DEFAULT 0; #赛事状态
   DECLARE p_rand1 INTEGER DEFAULT 0; #随机数
   DECLARE p_found INT DEFAULT FALSE;
   DECLARE p_cursor CURSOR FOR SELECT id,status FROM tab_sub_match WHERE STATUS <> 2;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET p_found = TRUE;
OPEN p_cursor;
A1:LOOP
   FETCH p_cursor INTO p_1,p_2;
   IF p_found = TRUE THEN
      LEAVE A1;
   END IF;
   IF p_2 = 4 THEN
      SET p_rand1 = round(3 * RAND());
   ELSE
      SET p_rand1 = CEIL(5 * RAND());
   END IF;
   UPDATE tab_sub_match SET view_count   = view_count   + p_rand1 WHERE id = p_1     AND STATUS <> 0;
   UPDATE tab_tmp_count SET manual_count = manual_count + p_rand1 WHERE act_id = p_1 AND STATUS <> 0;
   UPDATE tab_sub_match SET view_count   = view_count   + p_rand1 WHERE id = p_1     AND STATUS = 1 AND type = 4;
   UPDATE tab_tmp_count SET manual_count = manual_count + p_rand1 WHERE act_id = p_1 AND STATUS = 1;
END LOOP;
CLOSE p_cursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_stat_cms_association_task_kpi_month
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_stat_cms_association_task_kpi_month`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_stat_cms_association_task_kpi_month`()
    COMMENT '统计工会任务，反更新签约主播的工会任务id'
BEGIN
-- 生成工会任务清单
  INSERT INTO cms_association_task
       (association_id,
        create_time,
        coin,
        task_total_salary
        )
SELECT c.id,
       NOW(),
       SUM(a.fu_card) coin,
       IFNULL((SELECT 
        SUM(CASE WHEN cstatus = 1 THEN task_basic_salary ELSE 0 END) 
   FROM cms_anchor_task f
  WHERE f.association_id = c.id AND f.create_time > CURDATE() - INTERVAL DAYOFMONTH(CURDATE())-1 DAY),0)  task_total_salary
FROM tab_gift_record a,
     cms_sign_anchor b,
     cms_association c
WHERE
     a.to_uid = b.uid AND
     c.id = b.association_id AND
     a.createtime >= CURDATE() - INTERVAL DAYOFMONTH(CURDATE())-1 DAY - INTERVAL 1 MONTH AND
     a.createtime < CURDATE() - INTERVAL DAYOFMONTH(CURDATE())-1 DAY
GROUP BY c.id ;

-- 反更新签约主播的工会任务id
 update cms_anchor_task a 
    SET association_task_id = (SELECT id FROM cms_association_task b WHERE a.association_id = b.association_id AND b.create_time > CURDATE())
  WHERE create_time > CURDATE() AND 
        association_id is not NULL AND 
        cstatus = 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_stat_sign_anchor_kpi_month
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_stat_sign_anchor_kpi_month`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_stat_sign_anchor_kpi_month`()
    COMMENT '按月统计主播的绩效'
BEGIN
  DECLARE p1                   INTEGER DEFAULT 0; -- 主播直播总时长
  DECLARE p2                   INTEGER DEFAULT 0; -- 主播直播总次数 
  DECLARE p11                  INTEGER DEFAULT 0; -- 上上月跨月时长（假设当前为9月1日,2016-07-31 23:00:00 - 2016-08-01 01:00:00,只取00:00:00-01:00:00）
  DECLARE p12                  INTEGER DEFAULT 0; -- 上上月跨月次数
  DECLARE p13                  INTEGER DEFAULT 0; -- 上月直播时长
  DECLARE p21                  INTEGER DEFAULT 0; -- 上月直播次数
  DECLARE p22                  INTEGER DEFAULT 0; -- 上月跨月直播时长（假设当前为9月1日,2016-08-31 23:00:00 - 2016-09-01 01:00:00，只取23:00:00-23:59:59）
  DECLARE p23                  INTEGER DEFAULT 0; -- 上月跨月直播次数
  DECLARE p31                  INTEGER DEFAULT 0; -- 上上月跨月时长（假设当前为9月1日,2016-07-31 23:00:00 - 2016-08-01 01:00:00,只取00:00:00-01:00:00）
  DECLARE p32                  INTEGER DEFAULT 0; -- 上上月跨月次数
  DECLARE p33                  INTEGER DEFAULT 0; -- 上月pk副直播时长
  DECLARE p41                  INTEGER DEFAULT 0; -- 上月pk副直播次数
  DECLARE p42                  INTEGER DEFAULT 0; -- 上月跨月直播时长（假设当前为9月1日,2016-08-31 23:00:00 - 2016-09-01 01:00:00，只取23:00:00-23:59:59）
  DECLARE p43                  INTEGER DEFAULT 0; -- 上月跨月直播次数
  DECLARE p_id                 INTEGER DEFAULT 0; -- 直播、pk副主播id
  DECLARE p_uid                INTEGER DEFAULT 0; -- 直播用户id
  DECLARE p_ghid               INTEGER DEFAULT 0; -- 工会id
  DECLARE p_sign_start_time    DATETIME;          -- 签约开始时间 
  DECLARE p_sign_end_time      DATETIME;          -- 签约结束时间
  DECLARE p_basic_salary       INTEGER DEFAULT 0; -- 签约主播底薪
  DECLARE p_coefficient        DECIMAL(3,2) DEFAULT 0.00; --  签约主播系数
  DECLARE p_plan_live_times    INTEGER DEFAULT 0; -- 目标次数
  DECLARE p_plan_live_duration INTEGER DEFAULT 0; -- 目标时长
  DECLARE p_fu_card            INTEGER DEFAULT 0; -- 总福卡数
  DECLARE p_cstatus            INTEGER DEFAULT 0; -- 主播授权状态
  DECLARE p_judge              INTEGER DEFAULT 0; -- 是否完成考核任务
  DECLARE pfound               INT     DEFAULT 0; -- 游标转台
  DECLARE p_cursor CURSOR FOR SELECT  id,                 
                                      uid,                
                                      sign_start_time,    
                                      sign_end_time,      
                                      basic_salary,       
                                      coefficient,        
                                      plan_live_times,    
                                      plan_live_duration,
                                      association_id,
                                      cstatus  
                                FROM cms_sign_anchor 
                          WHERE sign_start_time <= CURDATE() - INTERVAL DAYOFMONTH(CURDATE())-1 DAY - INTERVAL 1 SECOND AND 
                                (sign_end_time >=  CURDATE() - INTERVAL DAYOFMONTH(CURDATE())-1 DAY - INTERVAL 1 MONTH OR sign_end_time IS NULL)  AND 
                                status <> 2; 
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
OPEN p_cursor;
A1:LOOP
    FETCH p_cursor INTO p_id,
                        p_uid,
                        p_sign_start_time,
                        p_sign_end_time,
                        p_basic_salary,
                        p_coefficient,
                        p_plan_live_times,
                        p_plan_live_duration,
                        p_ghid,
                        p_cstatus;
    IF pfound = 1 THEN
       LEAVE A1;
    END IF;
-- ------------------------------------------------主播为正主播----------------------------------------------------------------
-- 跨上上个月
    CALL pro_anchor_valid_day(CURDATE() - INTERVAL DAYOFMONTH(CURDATE())-1 DAY - INTERVAL 1 MONTH,p_uid,@p1,@p2);
    SELECT IFNULL(@p1,0),IFNULL(@p2,0) INTO p2, p1;
-- 插入签约主播考核明细
     SELECT sum(fu_card) 
       INTO p_fu_card 
       FROM tab_gift_record 
      WHERE to_uid = p_uid AND createtime >= CURDATE() - INTERVAL DAYOFMONTH(CURDATE())-1 DAY - INTERVAL 1 MONTH  AND 
            createtime <= CURDATE() - INTERVAL DAYOFMONTH(CURDATE())-1 DAY - INTERVAL 1 SECOND;
   INSERT INTO cms_anchor_task( anchor_id,
                                uid,
                                start_time,
                                end_time,
                                task_basic_salary,
                                task_coefficient,
                                plan_live_times,
                                plan_live_duration,
                                real_plan_live_times,
                                real_plan_live_duration,
                                task_status,
                                coin,
                                create_time,
                                association_id,
                                cstatus
                              )
   values(p_id,
          p_uid,
          p_sign_start_time,
          p_sign_end_time,
          p_basic_salary,
          p_coefficient,
          p_plan_live_times,
          p_plan_live_duration,
          p2,    -- 次数
          p1,    -- 时长
          p_judge,
          IFNULL(p_fu_card,0),
          NOW(),
          p_ghid,
          p_cstatus);
   END LOOP; 
CLOSE p_cursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_supplement_alive
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_supplement_alive`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_supplement_alive`(p_in_start date,p_in_stop date)
    COMMENT '循环补充存货量（开始时间、结束时间）'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :循环补充存货量（开始时间、结束时间）
   */
DECLARE p_subdate INTEGER DEFAULT 0;
DECLARE i         INTEGER DEFAULT 0;
SET p_subdate = TIMESTAMPDIFF(DAY,p_in_start,p_in_stop);
  WHILE i < p_subdate DO
     CALL pro_total_alive(p_in_start + INTERVAL i DAY);
     SET i = i + 1;
  END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_support_zhangw
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_support_zhangw`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_support_zhangw`()
    COMMENT '每日取真实视频的用户行为（供张伟分析使用）'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :每日取真实视频的用户行为,供张伟分析使用
   */
INSERT INTO tab_support_zhangw(sdate,media_id,title,tag_name,user_type,play_num,support_num,comment_num)
SELECT cast(a.create_time as date),
       a.id,
       a.title,
       ifnull(m.title,'无圈子'),
       CASE WHEN d.is_moke = 0 THEN '真实用户' ELSE '虚拟用户' end,
       min(a.bnumber) - min(a.total_bnumber),
       count(distinct c.id),
       count(distinct g.id)
   FROM tab_tag m RIGHT JOIN 
        tab_media a ON a.tag_id = m.id LEFT JOIN
        tab_user d  ON a.user_id = d.id LEFT JOIN
        tab_media_support b ON a.id = b.media_id AND b.status <> 1 LEFT JOIN
        tab_user c ON b.auser_id = c.id AND c.is_moke = 0 LEFT JOIN
        tab_media_comment f ON a.id = f.media_id LEFT JOIN
        tab_user g ON f.auser_id = g.id AND g.is_moke = 0 
         
  WHERE a.create_time BETWEEN CURDATE() - INTERVAL 1 DAY AND CURDATE() AND a.status<>2 AND a.tag_id is NOT NULL
group by 
       a.id,
       a.title,
       m.title,
       CASE WHEN d.is_moke = 0 THEN 'true' ELSE 'virt' end
order by 3,4;
INSERT INTO tab_support_zhangw(sdate,media_id,title,tag_name,user_type,play_num,support_num,comment_num)
 SELECT sdate,count(*),concat(' ----',ifnull(tag_name,'无圈子'),'分类'),tag_name,user_type,sum(play_num),sum(support_num),sum(comment_num) FROM tab_support_zhangw
 WHERE sdate = CAST(CURDATE() - INTERVAL 1 DAY AS DATE)
group by sdate,concat(' ----',ifnull(tag_name,'无圈子'),'分类'),tag_name,user_type;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_taste
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_taste`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_taste`()
BEGIN
   DECLARE i SMALLINT DEFAULT 1;
   A1: LOOP
     IF i > 100 THEN
       LEAVE A1;
     END IF;
      insert INTO tab_taste_user(mobile,ident_code) SELECT '18888888000'+i,SUBSTRING(RAND(),3,4);
      SET i = i + 1;
   END loop;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_test
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_test`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_test`(p_date date)
BEGIN
  DECLARE pfound TINYINT DEFAULT 0;
  DECLARE p_liveid INT DEFAULT 0;
  DECLARE p_duration_time INT DEFAULT 0;
  DECLARE p_val INT DEFAULT 0;
  DECLARE pcursor CURSOR FOR SELECT id,duration_time FROM tab_live_ugc WHERE start_time >  p_date AND start_time <  p_date + INTERVAL 1 DAY AND `status` = 4;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
OPEN pcursor;
  A1:LOOP
     FETCH pcursor INTO p_liveid,p_duration_time;
     IF pfound = 1 THEN
        LEAVE A1;
     END IF;
     IF p_duration_time <= 50 THEN
              SET p_val = 0;
     ELSEIF p_duration_time > 50 AND p_duration_time <= 200 THEN
              SET p_val = FLOOR(RAND() * 3);
     ELSEIF p_duration_time > 200 AND p_duration_time <= 1000 THEN
              SET p_val = FLOOR(RAND() * 10);
     ELSEIF p_duration_time > 1000 AND p_duration_time <= 1800 THEN
              SET p_val = 15 + FLOOR(RAND() * 10);
     ELSEIF p_duration_time > 1800 AND p_duration_time <= 3600 THEN
              SET p_val = 30 + FLOOR(RAND() * 15);
     ELSEIF p_duration_time > 3600 AND p_duration_time <= 5400 THEN
              SET p_val = 60 + FLOOR(RAND() * 25);
     ELSEIF p_duration_time > 5400 AND p_duration_time <= 7200 THEN
              SET p_val = 90 + FLOOR(RAND() * 35);
     ELSEIF p_duration_time > 7200 THEN
              SET p_val = 120 + FLOOR(RAND() * 20);
     ELSE 
              SELECT 1;
     END IF;
     INSERT INTO tab_live_ugc_visitor(live_id,auid,buid,create_time,is_moke)
        SELECT  id,
                user_id,
                uid,
                start_time + INTERVAL IFNULL(RAND()*duration_time,1) SECOND,
                0
           FROM tab_live_ugc a RIGHT JOIN
        (SELECT DISTINCT user_id FROM log_user_device a WHERE a.create_time >  p_date AND create_time < p_date + INTERVAL 1 DAY AND user_id > 0 ORDER BY RAND() LIMIT p_val) b
        ON 1=1
        WHERE id = p_liveid;
   END loop;
CLOSE pcursor;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_tmp_stat_test_kpi
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_tmp_stat_test_kpi`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_tmp_stat_test_kpi`(p_start datetime,p_end datetime,bufu_no varchar(8),out p10 INTEGER,out p12 INTEGER,out p14 INTEGER,out p15 INTEGER,out p18 INTEGER,out p19 INTEGER)
    COMMENT '主要用于外部测试人员测试工作的考核'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :外部测试人员kpi
   p11 =1 开启pk 
   p12 =1 开启定位
   p13 =1 接受pk
   p14 =1 送大礼物给主播
   p15 =1 送小礼物给主播
   p16 =1 同时送礼物给pk中的两主播
   p17 =1 充值
   p18 =1 提现
   */
 DECLARE p_uid INTEGER;
 DECLARE p0 INTEGER DEFAULT 0;
 -- DECLARE p1 INTEGER DEFAULT 0;
 DECLARE p2 INTEGER DEFAULT 0;
 -- DECLARE p3 INTEGER DEFAULT 0;
 DECLARE p4 INTEGER DEFAULT 0;
 DECLARE p5 INTEGER DEFAULT 0;
 -- DECLARE p6 INTEGER DEFAULT 0;
 -- DECLARE p7 INTEGER DEFAULT 0;
 DECLARE p8 INTEGER DEFAULT 0;
 DECLARE p9 INTEGER DEFAULT 0;
/*
 DECLARE p10 INTEGER DEFAULT 0;
 DECLARE p12 INTEGER DEFAULT 0;
 DECLARE p14 INTEGER DEFAULT 0;
 DECLARE p15 INTEGER DEFAULT 0;
 DECLARE p18 INTEGER DEFAULT 0;
 DECLARE p19 INTEGER DEFAULT 0;
*/
 SELECT id INTO p_uid 
   FROM tab_user
  WHERE disagree_no = bufu_no;
-- 是否开启过直播
 SELECT count(*) INTO p0
   FROM tab_live_ugc
  WHERE start_time >= p_start AND
        end_time < p_end AND
        uid = p_uid;
  IF p0 > 0 THEN
     SET p10 = 1;
   ELSE
     SET p10 = 0; 
  END IF;
/*
-- 开启pk
 SELECT count(*) INTO p1                       
   FROM tab_live_ugc 
  WHERE start_time >= p_start AND 
        start_time <= p_end AND 
        pk_status=1 AND 
        uid = p_uid; 
  IF p1 > 0 THEN
     SET p11 = 1;
   ELSE
     SET p11 = 0; 
  END IF; 
*/ 
-- 开启定位
 SELECT count(*) INTO p2
   FROM tab_live_ugc 
  WHERE start_time >= p_start AND 
        end_time < p_end AND 
        (length(lon) >0 AND length(lat)>0) AND 
        uid = p_uid;
  IF p2 > 0 THEN
     SET p12 = 1;
   ELSE
     SET p12 = 0; 
  END IF;
/* 
-- 接受pk
 SELECT count(*) INTO p3                            
   FROM tab_live_ugc  
  WHERE start_time >= p_start AND 
        start_time < p_end AND 
        accept_pk=1 AND 
        uid = p_uid;
  IF p3 > 0 THEN
     SET p13 = 1;
   ELSE
     SET p13 = 0; 
  END IF; 
*/
-- 是否送大礼物给主播
 SELECT count(*) INTO p4
   FROM tab_gift_record a,tab_gift b 
  WHERE a.gift_id = b.id AND b.gift_type = 1 AND createtime >= p_start AND createtime < p_end AND a.from_uid = p_uid;
  IF p4 > 0 THEN
     SET p14 = 1;
   ELSE
     SET p14 = 0; 
  END IF; 
-- 是否送小礼物给主播
 SELECT count(*) INTO p5
   FROM tab_gift_record a,tab_gift b 
  WHERE a.gift_id = b.id AND b.gift_type = 0 AND createtime >= p_start AND createtime < p_end AND a.from_uid = p_uid;
  IF p5 > 0 THEN
     SET p15 = 1;
   ELSE
     SET p15 = 0; 
  END IF; 
/*
-- 是否同时送给pk两主播
 SELECT count(*) INTO p6
   FROM tab_gift_record a,
        tab_gift_record b 
  WHERE a.live_id = b.live_id AND 
        a.from_uid = b.from_uid AND 
        a.to_uid <> b.to_uid AND
        a.createtime >= p_start AND b.createtime < p_end AND
        a.from_uid = p_uid;
  IF p6 > 0 THEN
     SET p16 = 1;
   ELSE
     SET p16 = 0; 
  END IF; 
-- 是否充值
  SELECT count(*) INTO p7
    FROM tab_app_coin 
   WHERE coin_change > 0 AND
         change_time >= p_start AND change_time < p_end AND
         uid = p_uid;
  IF p7 > 0 THEN
     SET p17 = 1;
   ELSE
     SET p17 = 0; 
  END IF;  
*/
-- 是否申请提现
  SELECT count(*) INTO p8
    FROM tab_coin 
   WHERE coin_change < 0 AND
         change_time >= p_start AND change_time < p_end AND
         uid = p_uid;  
  IF p8 > 0 THEN
     SET p18 = 1;
   ELSE
     SET p18 = 0; 
  END IF; 
-- 是否观看过别人直播
  SELECT count(*) INTO p9
    FROM tab_live_ugc_visitor
   WHERE create_time >= p_start AND
         create_time < p_end AND
         auid = p_uid;
  IF p9 > 0 THEN
     SET p19 = 1;
   ELSE
     SET p19 = 0; 
  END IF; 

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_topic_floor_deal
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_topic_floor_deal`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_topic_floor_deal`()
    COMMENT '评论楼层处理（已不用）'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :评论楼层处理
   */
   DECLARE ptopic_id INTEGER DEFAULT 0;
   DECLARE p1 INTEGER DEFAULT 0;
   DECLARE pfound INT DEFAULT FALSE;
   DECLARE pcursor CURSOR FOR SELECT DISTINCT topic_id FROM tab_topic_comment;
   DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = true;
   SELECT count(*) INTO p1 from information_schema.TABLES WHERE TABLE_SCHEMA = 'disagree_online' AND table_name = 't_tmp_floor_1';
   IF p1 > 0 THEN
     DROP TABLE t_tmp_floor_1;
   END IF;
   CREATE TABLE t_tmp_floor_1 as select a.* FROM tab_topic_comment a where 1<0;
OPEN pcursor;
A1:LOOP
     FETCH pcursor INTO ptopic_id;
     IF pfound = TRUE THEN
       LEAVE A1;
     END IF;
     INSERT INTO t_tmp_floor_1 select id,topic_id,atid,uid,uname,headimg,content,image,media_id,status,@x:=ifnull(@x+1,0) floor_num,create_time,type from tab_topic_comment a,(select @x:=1) b WHERE topic_id = ptopic_id order by id,create_time desc;
   END LOOP;   
CLOSE pcursor; 
     TRUNCATE TABLE tab_topic_comment;
     INSERT INTO tab_topic_comment SELECT * FROM  t_tmp_floor_1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_total_alive
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_total_alive`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_total_alive`(p_in_date date)
    COMMENT '待指定日期统计留存'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :待指定日期统计留存
   */
REPLACE INTO t_total_alive(create_time,channel_name,total_alive,total_register,exchangerate,nextalive,weekalive,monthalive,type,recharge_money)
SELECT 
        a.create_time,
        a.channel_name,
        ifnull(a.csum,0) zc,
        ifnull(b.zsum,0) jh,
        CASE WHEN ifnull(b.zsum,0) = 0 THEN 0
           ELSE round(ifnull(b.zsum,0)/ifnull(a.csum,0),2)
        END as 'exchangerate',
        CASE WHEN ifnull(c.nextalive,0) = 0 THEN 0
           ELSE round(ifnull(c.nextalive,0)/ifnull(a.csum,0),2)
        END as 'nextalive',
        CASE WHEN ifnull(d.weekalive,0) = 0 THEN 0
           ELSE round(ifnull(d.weekalive,0)/ifnull(a.csum,0),2)
        END as 'weekalive',
        CASE WHEN ifnull(e.monthalive,0) = 0 THEN 0
           ELSE round(ifnull(e.monthalive,0)/ifnull(a.csum,0),2)
        END as 'monthalive',
        1 type,
        sum_money
  FROM
(   #当日激活
select 
       CAST(create_time as DATE) create_time,
       channel_name,
       count(distinct imei) csum
  from log_user_device_first 
 where record_type in (4,7) and create_time >= p_in_date and create_time < p_in_date + INTERVAL 1 DAY 
GROUP BY CAST(create_time as DATE),channel_name
) a
LEFT JOIN
(   #当日注册
select 
       CAST(create_time as DATE) create_time,
       channel_name,
       count(distinct imei) zsum
  from log_user_device_first 
 where record_type in(1,3) and create_time >= p_in_date and create_time < p_in_date + INTERVAL 1 DAY
GROUP BY CAST(create_time as DATE),channel_name
) b on a.channel_name = b.channel_name
LEFT JOIN
(   #次日留存
select CAST(create_time - INTERVAL 1 DAY as DATE) create_time,
       channel_name,
       count(DISTINCT imei) nextalive
from log_user_device 
where create_time >= p_in_date + INTERVAL 1 DAY and create_time < p_in_date + INTERVAL 2 DAY and
 imei in (select imei from log_user_device_first 
 where create_time >= p_in_date and create_time < p_in_date + INTERVAL 1 DAY and record_type in (4,7))
group by CAST(create_time - INTERVAL 1 DAY as DATE),channel_name 
) c on a.channel_name = c.channel_name
LEFT JOIN
(  #周留存
select CAST(create_time as DATE) create_time,
       channel_name,
       count(DISTINCT imei) weekalive
from log_user_device 
where create_time >= p_in_date + INTERVAL 7 DAY and create_time < p_in_date + INTERVAL 8 DAY and
 imei in (select imei from log_user_device_first 
where create_time >= p_in_date and create_time < p_in_date + INTERVAL 1 DAY  and record_type in (4,7)) 
group by CAST(create_time as DATE),channel_name
) d on a.channel_name = d.channel_name
LEFT JOIN
( #月留存
select CAST(create_time as DATE) create_time,
       channel_name,
       count(DISTINCT imei) monthalive
from log_user_device 
where create_time >= p_in_date + INTERVAL 1 MONTH - INTERVAL 1 DAY and create_time < p_in_date + INTERVAL 1 MONTH and
 imei in (select imei from log_user_device_first 
where create_time >= p_in_date and create_time < p_in_date + INTERVAL 1 DAY  and record_type in (4,7)) 
group by CAST(create_time as DATE),channel_name
) e on a.channel_name = e.channel_name
LEFT JOIN
(
SELECT b.channel_name,SUM(a.price_coin) sum_money FROM tab_app_coin a,log_user_device_first  b  WHERE b.record_type in (1,3) AND b.channel_name <> '' AND a.uid = b.ud_id AND
  a.change_time >= p_in_date AND a.change_time < p_in_date + INTERVAL 1 DAY AND
a.type = 1 AND a.`from` in (1,2,3) AND `status` = 1
GROUP BY b.channel_name 
) f ON a.channel_name = f.channel_name;

REPLACE INTO t_total_alive(create_time,channel_name,total_alive,total_register,exchangerate,nextalive,weekalive,monthalive,type,recharge_money)
SELECT 
        a.create_time,
        '不服全渠道' channel_name,
        ifnull(a.csum,0) zc,
        ifnull(b.zsum,0) jh,
        CASE WHEN ifnull(b.zsum,0) = 0 THEN 0
           ELSE round(ifnull(b.zsum,0)/ifnull(a.csum,0),2)
        END as 'exchangerate',
        CASE WHEN ifnull(c.nextalive,0) = 0 THEN 0
           ELSE round(ifnull(c.nextalive,0)/ifnull(a.csum,0),2)
        END as 'nextalive',
        CASE WHEN ifnull(d.weekalive,0) = 0 THEN 0
           ELSE round(ifnull(d.weekalive,0)/ifnull(a.csum,0),2)
        END as 'weekalive',
        CASE WHEN ifnull(e.monthalive,0) = 0 THEN 0
           ELSE round(ifnull(e.monthalive,0)/ifnull(a.csum,0),2)
        END as 'monthalive',
        2 type,
        (SELECT SUM(price_coin) FROM tab_app_coin WHERE STATUS = 1 AND `from` in (1,2,3) AND type =1 AND change_time >= p_in_date AND change_time < p_in_date + interval 1 DAY)
  FROM
(   #当日激活
select 
       CAST(create_time as DATE) create_time,
       count(distinct imei) csum
  from log_user_device_first 
 where record_type in (4,7) and create_time >= p_in_date and create_time < p_in_date + INTERVAL 1 DAY
GROUP BY CAST(create_time as DATE)
) a
LEFT JOIN
(   #当日注册
select 
       CAST(create_time as DATE) create_time,
       count(distinct imei) zsum
  from log_user_device_first 
 where record_type in(1,3) and create_time >= p_in_date and create_time < p_in_date + INTERVAL 1 DAY
GROUP BY CAST(create_time as DATE)
) b on a.create_time = b.create_time
LEFT JOIN
(   #次日留存
select CAST(create_time - INTERVAL 1 DAY as DATE) create_time,
       count(DISTINCT imei) nextalive
from log_user_device 
where create_time >= p_in_date + INTERVAL 1 DAY and create_time < p_in_date + INTERVAL 2 DAY and
 imei in (select imei from log_user_device_first 
where create_time >= p_in_date and create_time < p_in_date + INTERVAL 1 DAY
 and record_type in (4,7))
group by CAST(create_time - INTERVAL 1 DAY as DATE)
) c on a.create_time = c.create_time
LEFT JOIN
(  #周留存
select CAST(create_time - INTERVAL 7 DAY as DATE) create_time,
       count(DISTINCT imei) weekalive
from log_user_device where 
create_time >= p_in_date + INTERVAL 7 DAY and create_time < p_in_date + INTERVAL 8 DAY and
 imei in (select imei from log_user_device_first 
where create_time >= p_in_date and create_time < p_in_date + INTERVAL 1 DAY  and record_type in (4,7))
group by CAST(create_time - INTERVAL 7 DAY as DATE)
) d on a.create_time = d.create_time
LEFT JOIN
( #月留存
select CAST(create_time - INTERVAL 1 MONTH as DATE) create_time,
       count(DISTINCT imei) monthalive
from log_user_device 
where create_time >= p_in_date + INTERVAL 1 MONTH - INTERVAL 1 DAY and create_time < p_in_date + INTERVAL 1 MONTH and
 imei in (select imei from log_user_device_first 
where create_time >= p_in_date and create_time < p_in_date + INTERVAL 1 DAY  and record_type in (4,7)) 
group by CAST(create_time - INTERVAL 1 MONTH  as DATE)
) e on a.create_time = e.create_time;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_total_today_alive
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_total_today_alive`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_total_today_alive`()
    COMMENT '每日统计留存'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :每日统计留存
   */
REPLACE INTO t_total_alive(create_time,channel_name,total_alive,total_register,exchangerate,nextalive,weekalive,monthalive,type,recharge_money)
SELECT 
        a.create_time,
        a.channel_name,
        ifnull(a.csum,0) zc,
        ifnull(b.zsum,0) jh,
        CASE WHEN ifnull(b.zsum,0) = 0 THEN 0
           ELSE round(ifnull(b.zsum,0)/ifnull(a.csum,0),2)
        END as 'exchangerate',
        0,
        0,
        0,
        1 type,
        IFNULL(sum_money,0)
  FROM
(   #当日激活
select 
       CAST(create_time as DATE) create_time,
       channel_name,
       count(id) csum
  from log_user_device_first 
 where record_type in (4,7) and create_time >= CURDATE() 
GROUP BY CAST(create_time as DATE),channel_name
) a
LEFT JOIN
(   #当日注册
select 
       CAST(create_time as DATE) create_time,
       channel_name,
       count(id) zsum
  from log_user_device_first 
 where record_type in(1,3) and create_time >= CURDATE() 
GROUP BY CAST(create_time as DATE),channel_name
) b on a.channel_name = b.channel_name
LEFT JOIN
(
SELECT b.channel_name,SUM(a.price_coin) sum_money FROM tab_app_coin a,log_user_device_first  b  WHERE b.record_type in (1,3) AND b.channel_name <> '' AND a.uid = b.ud_id AND
  a.change_time > CURDATE() AND a.change_time < CURDATE() + INTERVAL 1 DAY AND
a.type = 1 AND a.`from` in (1,2,3) AND `status` = 1
GROUP BY b.channel_name 
) f ON a.channel_name = f.channel_name;

REPLACE INTO t_total_alive(create_time,channel_name,total_alive,total_register,exchangerate,nextalive,weekalive,monthalive,type,recharge_money)
SELECT 
        a.create_time,
        '不服全渠道' channel_name,
        ifnull(a.csum,0) zc,
        ifnull(b.zsum,0) jh,
        CASE WHEN ifnull(b.zsum,0) = 0 THEN 0
           ELSE round(ifnull(b.zsum,0)/ifnull(a.csum,0),2)
        END as 'exchangerate',
        0,
        0,
        0,
        2 type,
       (SELECT SUM(price_coin) FROM tab_app_coin WHERE STATUS = 1 AND `from` in (1,2,3) AND type =1 AND change_time >= CURDATE() AND change_time < CURDATE() + interval 1 DAY)
  FROM
(   #当日激活
select 
       CAST(create_time as DATE) create_time,
       count(id) csum
  from log_user_device_first 
 where record_type in (4,7) and create_time >= CURDATE() 
GROUP BY CAST(create_time as DATE)
) a
LEFT JOIN
(   #当日注册
select 
       CAST(create_time as DATE) create_time,
       count(id) zsum
  from log_user_device_first 
 where record_type in(1,3) and create_time >= CURDATE() 
GROUP BY CAST(create_time as DATE)
) b on a.create_time = b.create_time;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_update_media
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_update_media`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_update_media`()
    COMMENT '每日更新常规数据（评论数、视频数等等）'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :定期更新用户视频数和赛事视频数
   */

UPDATE tab_user a 
   SET mnumber = (SELECT count(*) FROM tab_media b WHERE a.id = b.user_id AND b.status = 1)
 WHERE EXISTS
(
SELECT 1 FROM tab_media b WHERE a.id = b.user_id AND b.status = 1 
);#更新视频
UPDATE tab_user a 
   SET match_number = (SELECT count(*) FROM tab_media b WHERE a.id = b.user_id AND b.status = 1 AND match_id IS NOT NULL)
 WHERE EXISTS
(
SELECT 1 FROM tab_media b WHERE a.id = b.user_id AND b.status = 1 AND match_id IS NOT NULL
);#更新赛事视频

UPDATE tab_user a SET fnumber = (SELECT count(*) FROM tab_user_attention b WHERE a.id = b.buser_id AND b.status =0)
WHERE EXISTS
(
SELECT 1 FROM tab_user_attention b WHERE a.id = b.buser_id AND b.status =0
); #更新粉丝
UPDATE tab_user a SET anumber = (SELECT count(*) FROM tab_user_attention b WHERE a.id = b.auser_id AND b.status =0)
WHERE EXISTS
(
SELECT 1 FROM tab_user_attention b WHERE a.id = b.auser_id AND b.status =0
);#更新关注数

UPDATE tab_media a SET cnumber = (select count(*) from tab_media_comment b WHERE a.id = b.media_id AND b.status = 0)
WHERE EXISTS
(
select 1 from tab_media_comment b WHERE a.id = b.media_id AND b.status = 0
);#更新评论


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_vip_cashing
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_vip_cashing`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_vip_cashing`(       p_uid int,                   -- 用户id   
			 		p_app_coin int,       -- 消费数量
					p_related_no varchar(32), -- 购买的产品id
					p_month int,		-- vip时长
					p_order_no varchar(32)  -- 流水id			
                                  )
    COMMENT 'vip会员兑换表'
BEGIN
   DECLARE p_time datetime;
   SELECT MAX(end_time) INTO p_time FROM tab_vip_record WHERE user_id = p_uid;

-- 没有该会员记录或者会员已过期
   IF p_time IS NULL OR p_time < NOW() THEN
      INSERT INTO tab_vip_record(user_id,related_no,start_time,end_time,order_no,create_time,price)
                  SELECT  p_uid,p_related_no,NOW(),NOW() + INTERVAL  p_month MONTH,p_order_no,NOW(),p_app_coin;
   ELSE
      INSERT INTO tab_vip_record(user_id,related_no,start_time,end_time,order_no,create_time,price)
                  SELECT  p_uid,p_related_no,p_time,p_time + INTERVAL p_month MONTH,p_order_no,NOW(),p_app_coin;
   END IF;
      
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_vip_payment
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_vip_payment`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_vip_payment`(p_uid int,                   -- 用户id   
                                   p_price_coin SMALLINT,       -- 充值金额
                                   p_order_no varchar(32),      -- 订单号
                                   p_transaction_id varchar(32),-- 不是会员时候的类型
                                   p_buyer_account varchar(255) -- 不是会员时候的认证角标
                                  )
    COMMENT 'vip会员记录表'
BEGIN
   DECLARE p_month TINYINT DEFAULT 0;
   DECLARE p_time datetime;
   DECLARE p_related_no INT;     -- 关联的商品id
   SELECT months,id INTO p_month,p_related_no FROM tab_coin_exchange_cfg WHERE exchange_type = 4 AND price_coin = p_price_coin;
   SELECT MAX(end_time) INTO p_time FROM tab_vip_record WHERE user_id = p_uid;
-- 没有该会员记录或者会员已过期
   IF p_time IS NULL OR p_time < NOW() THEN
      INSERT INTO tab_vip_record(user_id,related_no,start_time,end_time,order_no,transaction_id,buyer_account,create_time)
                  SELECT  p_uid,p_related_no,NOW(),NOW() + INTERVAL  p_month MONTH,p_order_no,p_transaction_id,p_buyer_account,NOW();
   ELSE
      INSERT INTO tab_vip_record(user_id,related_no,start_time,end_time,order_no,transaction_id,buyer_account,create_time)
                  SELECT  p_uid,p_related_no,p_time,p_time + INTERVAL p_month MONTH,p_order_no,p_transaction_id,p_buyer_account,NOW();
   END IF;
      
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_weekstar_gift_rank
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_weekstar_gift_rank`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_weekstar_gift_rank`()
    COMMENT '周星礼物排行'
BEGIN
  DECLARE pfound TINYINT DEFAULT 0;          -- 游标状态
  DECLARE p_id SMALLINT DEFAULT 0;           -- tab_gift_activity主键
  DECLARE p_gift_id TINYINT DEFAULT 0;       -- 礼物id
  DECLARE p_1 INT DEFAULT -1;                -- 送礼物用户id
  DECLARE p_2 INT DEFAULT 0;                 -- 送礼个数
  DECLARE pcur CURSOR FOR SELECT id,gift_id 
                            FROM tab_gift_activity 
                           WHERE activity_name='周星' AND 
                                 start_time >= CURDATE() - INTERVAL DAYOFWEEK(CURDATE()) + 5 DAY AND 
                                 start_time < CURDATE() - INTERVAL DAYOFWEEK(CURDATE()) - 2 DAY;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET pfound = 1;
OPEN pcur;
  A1:LOOP
    FETCH pcur INTO p_id,p_gift_id;
  IF pfound =1 THEN
     LEAVE A1;
  END IF;
       SELECT to_uid,
              SUM(gift_num) 
         INTO p_1,p_2 
         FROM tab_gift_record tg
        WHERE 
              createtime < CURDATE() - INTERVAL DAYOFWEEK(CURDATE()) - 2 DAY AND 
              createtime >   CURDATE() - INTERVAL DAYOFWEEK(CURDATE()) + 5 DAY AND
              tg.gift_id = p_gift_id
     GROUP BY to_uid ORDER BY 2 DESC LIMIT 1;
   IF  p_2 > 0 THEN
     UPDATE tab_gift_activity SET uid = p_1 WHERE id = p_id;
   ELSE 
     UPDATE tab_gift_activity SET uid = NULL WHERE id = p_id;
   END IF;
 END LOOP;
CLOSE pcur;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_xuni_
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_xuni_`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pro_xuni_`()
    COMMENT '虚拟充值处理总过程'
BEGIN
-- 【开启直播】
CALL p_xuni_live_new_1();

-- 【送礼物】
CALL p_xuni_send_gift_new_1();

-- 【提现】
CALL p_xuni_apply_withdraw(CURDATE());

-- 【更新微信账号】
CALL  p_xuni_update_weixin_number();



-- ---------------------------------------------------------------------------

CALL p_xuni_live_new();

-- 【送礼物】
CALL p_xuni_send_gift_new();

-- 【提现】
CALL p_xuni_apply_withdraw_new();


-- 【更新公会信息】
CALL p_xuni_assign_association();

-- 【工会提现】
INSERT INTO cms_coin_xuni (
	`coin`,
	`change_text`,
	`change_time`,
	`status`,
	`cms_id`,
	`association_id`,
	`coin_type`
)

SELECT sum(coin_change),
       CONCAT('提现',-sum(coin_change),'元'),
       MAX(change_time)+ INTERVAL 3600 * RAND() SECOND,
       5,
       (SELECT SUBSTRING_INDEX(SUBSTRING_INDEX('3;4;9;18;20;22;24;48;50;52;54',';',ceil(RAND()*10)),';',-1)),
       a.belong_association,
       1
       FROM tab_sr_user_xuni a, tab_coin_xuni b where a.user_id = b.uid AND 
b.change_text = '用户申请微信提现' AND change_time > CURDATE() AND change_time < CURDATE() + INTERVAL 1 DAY
GROUP BY belong_association;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for start_Match
-- ----------------------------
DROP PROCEDURE IF EXISTS `start_Match`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `start_Match`(IN mid int)
    COMMENT '海选赛开始,临时表中的赛事视频移动到tab_media表'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :海选赛开始,临时表中的赛事视频移动到tab_media表
   */
	-- 海选赛开始 --
	UPDATE tab_sub_match SET status=1 where id=mid ;
	CALL pro_move_temp_media(mid);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for startBoxingMatch
-- ----------------------------
DROP PROCEDURE IF EXISTS `startBoxingMatch`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `startBoxingMatch`(IN mid int, IN  tent varchar(512))
    COMMENT '海选赛开始'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :海选赛开始
   */
	-- 海选赛开始 --
	UPDATE tab_sub_match SET status=1 where id=mid ;
/*	
  INSERT INTO tab_publish_message (	
			content,			
			type,
			create_time,
			related_id,
			message_type
		)VALUES(
			tent,
			1,
			NOW(),
			mid,
			10
		)
		;
*/
  SELECT tent;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for update_MatchGroup
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_MatchGroup`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `update_MatchGroup`(IN groupId int, IN num int)
    COMMENT '争夺赛分组结束更新前几名为晋级'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :争夺赛分组结束更新前几名为晋级
   */

	UPDATE tab_sub_match_player smp
	SET STATUS = 1
	WHERE
		group_id = groupId
	AND EXISTS (
		SELECT
			id
		FROM
			(
				SELECT
					*
				FROM
					v_tab_sub_match_media
				WHERE
					group_id = groupId
				LIMIT num
			) AS v_smm
		WHERE
			v_smm.uid = smp.uid
	);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for _nextval
-- ----------------------------
DROP FUNCTION IF EXISTS `_nextval`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `_nextval`(n varchar(50)) RETURNS int(11)
    COMMENT '取序列'
begin  
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/0725
   Description  :
   */
declare _cur int;  
set _cur=(select current_value from tb_sequence where name= n);  -- 去对应表的当前值
update tb_sequence  
 set current_value = _cur + _increment  
 where name=n ;  -- 按梯度增加当前值
return _cur;  
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for f_get_uid
-- ----------------------------
DROP FUNCTION IF EXISTS `f_get_uid`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `f_get_uid`(p_disagree_no VARCHAR(8)) RETURNS int(11)
    COMMENT '不服号返回用户id'
BEGIN
   DECLARE uid INT DEFAULT -1;
   SELECT id INTO uid FROM tab_user WHERE disagree_no = CONVERT(p_disagree_no USING utf8);
   RETURN uid;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fun_compare_version
-- ----------------------------
DROP FUNCTION IF EXISTS `fun_compare_version`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `fun_compare_version`(sversion VARCHAR(10),dversion VARCHAR(10)) RETURNS int(11)
    COMMENT '判断版本大小'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/0725
   Description  :判断版本大小，sversion>dversion返回1，否则返回0
   */
   DECLARE p1 INTEGER;
   DECLARE p11 INTEGER;
   DECLARE p2 INTEGER;
   DECLARE p21 INTEGER;
   DECLARE p3 INTEGER;
   DECLARE p31 INTEGER;
   DECLARE v_ret INTEGER;
   SET p1 =  substring_index(sversion,'.',1);
   SET p11 = substring_index(dversion,'.',1);
   SET p2 =  substring_index(substring_index(sversion,'.',2),'.',-1);
   SET p21 = substring_index(substring_index(dversion,'.',2),'.',-1);
   SET p3 =  substring_index(sversion,'.',-1);
   SET p31 = substring_index(dversion,'.',-1);  
   IF p1 > p11 THEN      -- 第一位数字判断
     SET v_ret = 1;
   ELSEIF p1 < p11 THEN
     SET v_ret = 0;
   ELSE
     IF p2 > p21 THEN    -- 第二位数字判断
       SET v_ret = 1;
     ELSEIF p2 < p21 THEN
       SET v_ret = 0;
     ELSE
        IF p3 > p31 THEN -- 第三位数字判断
           SET v_ret = 1;
       ELSEIF p3 < p31 THEN
           SET v_ret = 0;
       ELSE
           SET v_ret = 1;  
       END IF;
    END IF;
END IF;
   RETURN   v_ret;  
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_activity_name
-- ----------------------------
DROP FUNCTION IF EXISTS `func_activity_name`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_activity_name`(pid INTEGER) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
    COMMENT '根据赛事id取赛事名'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :
   */
   DECLARE pname VARCHAR(100);
   SELECT name INTO pname FROM tab_activity WHERE id = pid; -- 根据赛事id取赛事名
   RETURN pname;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_anchor_valid_day
-- ----------------------------
DROP FUNCTION IF EXISTS `func_anchor_valid_day`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_anchor_valid_day`(p_uid int,start_date date) RETURNS tinyint(4)
    COMMENT '返回主播有效天数'
BEGIN
   DECLARE p_valid_day TINYINT DEFAULT 0;
   SELECT COUNT(1)  INTO p_valid_day FROM (
SELECT start_time, count(pcount) pc, sum(ptime) pt FROM (SELECT count(DISTINCT xx) pcount,sum(duration_time) ptime,start_time FROM(
SELECT duration_time,start_time, CASE WHEN x > 0 THEN @max_sal:=x ELSE @max_sal end xx FROM
(
select 
   id, 
   uid,
   DATE(start_time) start_time,
   duration_time,
   case WHEN TIMESTAMPDIFF(SECOND,a,start_time) <= 300 THEN 0 ELSE c end x
FROM
(
select id,
       uid,
       start_time,
       end_time,
       TIMESTAMPDIFF(day,date(start_time),date(end_time)),
       duration_time,
       cast(@rownum as datetime) a ,
       (@rownum:=end_time) b,
       @rn:=@rn+1 c
 FROM (
select 
id,
uid,
start_time,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
end_time 
ELSE
DATE(start_time) + INTERVAL 86399 SECOND
END end_time,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
TIMESTAMPDIFF(SECOND,start_time,end_time) 
ELSE
TIMESTAMPDIFF(SECOND,start_time,DATE(start_time) + INTERVAL 86399 SECOND)
END duration_time
FROM (SELECT id,uid,start_time,end_time,duration_time,share_times,support_num,comment_times,status FROM tab_live_ugc 
    UNION ALL
    SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time,a.share_times,a.support_num,a.comment_times,a.status FROM tab_live_ugc a,tab_live_pk b WHERE a.id = b.live_id)l 
where start_time>=start_date AND start_time<=start_date + INTERVAL 1 MONTH - INTERVAL 1 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) > 0 AND uid = p_uid
UNION ALL
select 
id,
uid,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
start_time 
ELSE
DATE(end_time)
END start_time,
end_time,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
TIMESTAMPDIFF(SECOND,start_time,end_time) 
ELSE
TIMESTAMPDIFF(SECOND,DATE(end_time),end_time)
END duration_time
FROM (SELECT id,uid,start_time,end_time,duration_time,share_times,support_num,comment_times,status FROM tab_live_ugc 
    UNION ALL
    SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time,a.share_times,a.support_num,a.comment_times,a.status FROM tab_live_ugc a,tab_live_pk b WHERE a.id = b.live_id)l  
where start_time>=start_date AND start_time<=start_date + INTERVAL 1 MONTH - INTERVAL 1 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) > 0 AND uid = p_uid 
UNION ALL
SELECT 
id,
uid,
start_time,
end_time,
duration_time
FROM (SELECT id,uid,start_time,end_time,duration_time,share_times,support_num,comment_times,status FROM tab_live_ugc 
    UNION ALL
    SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time,a.share_times,a.support_num,a.comment_times,a.status FROM tab_live_ugc a,tab_live_pk b WHERE a.id = b.live_id)l  
where start_time>=start_date AND start_time<=start_date + INTERVAL 1 MONTH - INTERVAL 1 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 AND uid = p_uid

) a,(SELECT @rownum:='') b, (SELECT @rn:=0) c   order by id
) c
) g
) mm group by xx,start_time HAVING sum(duration_time)>=1800 
) xx group by pcount,start_time HAVING sum(ptime) >= 7200
)t;
  RETURN p_valid_day;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_anchor_valid_duration
-- ----------------------------
DROP FUNCTION IF EXISTS `func_anchor_valid_duration`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_anchor_valid_duration`(p_uid int,start_date date) RETURNS int(11)
    COMMENT '返回主播直播时长'
BEGIN
   DECLARE p_valid_duration INT DEFAULT 0;
   SELECT sum(pt)  INTO p_valid_duration FROM (
SELECT start_time, count(pcount) pc, sum(ptime) pt FROM (SELECT count(DISTINCT xx) pcount,sum(duration_time) ptime,start_time FROM(
SELECT duration_time,start_time, CASE WHEN x > 0 THEN @max_sal:=x ELSE @max_sal end xx FROM
(
select 
   id, 
   uid,
   DATE(start_time) start_time,
   duration_time,
   case WHEN TIMESTAMPDIFF(SECOND,a,start_time) <= 300 THEN 0 ELSE c end x
FROM
(
select id,
       uid,
       start_time,
       end_time,
       TIMESTAMPDIFF(day,date(start_time),date(end_time)),
       duration_time,
       cast(@rownum as datetime) a ,
       (@rownum:=end_time) b,
       @rn:=@rn+1 c
 FROM (
select 
id,
uid,
start_time,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
end_time 
ELSE
DATE(start_time) + INTERVAL 86399 SECOND
END end_time,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
TIMESTAMPDIFF(SECOND,start_time,end_time) 
ELSE
TIMESTAMPDIFF(SECOND,start_time,DATE(start_time) + INTERVAL 86399 SECOND)
END duration_time
FROM (SELECT id,uid,start_time,end_time,duration_time,share_times,support_num,comment_times,status FROM tab_live_ugc 
    UNION ALL
    SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time,a.share_times,a.support_num,a.comment_times,a.status FROM tab_live_ugc a,tab_live_pk b WHERE a.id = b.live_id)l 
where start_time>=start_date AND start_time<=start_date + INTERVAL 1 MONTH - INTERVAL 1 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) > 0 AND uid = p_uid
UNION ALL
select 
id,
uid,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
start_time 
ELSE
DATE(end_time)
END start_time,
end_time,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
TIMESTAMPDIFF(SECOND,start_time,end_time) 
ELSE
TIMESTAMPDIFF(SECOND,DATE(end_time),end_time)
END duration_time
FROM (SELECT id,uid,start_time,end_time,duration_time,share_times,support_num,comment_times,status FROM tab_live_ugc 
    UNION ALL
    SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time,a.share_times,a.support_num,a.comment_times,a.status FROM tab_live_ugc a,tab_live_pk b WHERE a.id = b.live_id)l  
where start_time>=start_date AND start_time<=start_date + INTERVAL 1 MONTH - INTERVAL 1 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) > 0 AND uid = p_uid 
UNION ALL
SELECT 
id,
uid,
start_time,
end_time,
duration_time
FROM (SELECT id,uid,start_time,end_time,duration_time,share_times,support_num,comment_times,status FROM tab_live_ugc 
    UNION ALL
    SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time,a.share_times,a.support_num,a.comment_times,a.status FROM tab_live_ugc a,tab_live_pk b WHERE a.id = b.live_id)l  
where start_time>=start_date AND start_time<=start_date + INTERVAL 1 MONTH - INTERVAL 1 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 AND uid = p_uid

) a,(SELECT @rownum:='') b, (SELECT @rn:=0) c   order by id
) c
) g
) mm group by xx,start_time HAVING sum(duration_time)>=1800 
) xx group by pcount,start_time
)t;
  RETURN p_valid_duration;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_anchor_valid_duration_1
-- ----------------------------
DROP FUNCTION IF EXISTS `func_anchor_valid_duration_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_anchor_valid_duration_1`(p_uid int,start_date date,end_start DATE) RETURNS int(11)
    COMMENT '返回主播直播时长'
BEGIN
   DECLARE p_valid_duration INT DEFAULT 0;
   SELECT sum(pt)  INTO p_valid_duration FROM (
SELECT start_time, count(pcount) pc, sum(ptime) pt FROM (SELECT count(DISTINCT xx) pcount,sum(duration_time) ptime,start_time FROM(
SELECT duration_time,start_time, CASE WHEN x > 0 THEN @max_sal:=x ELSE @max_sal end xx FROM
(
select 
   id, 
   uid,
   DATE(start_time) start_time,
   duration_time,
   case WHEN TIMESTAMPDIFF(SECOND,a,start_time) <= 300 THEN 0 ELSE c end x
FROM
(
select id,
       uid,
       start_time,
       end_time,
       TIMESTAMPDIFF(day,date(start_time),date(end_time)),
       duration_time,
       cast(@rownum as datetime) a ,
       (@rownum:=end_time) b,
       @rn:=@rn+1 c
 FROM (
select 
id,
uid,
start_time,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
end_time 
ELSE
DATE(start_time) + INTERVAL 86399 SECOND
END end_time,
CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
TIMESTAMPDIFF(SECOND,start_time,end_time) 
ELSE
TIMESTAMPDIFF(SECOND,start_time,DATE(start_time) + INTERVAL 86399 SECOND)
END duration_time
FROM (SELECT id,uid,start_time,end_time,duration_time,share_times,support_num,comment_times,status FROM tab_live_ugc 
    UNION ALL
    SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time,a.share_times,a.support_num,a.comment_times,a.status 
      FROM tab_live_ugc a,tab_live_pk b WHERE a.id = b.live_id)l 
     where start_time>=start_date AND start_time<=end_start + INTERVAL 86399 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) > 0 AND uid = p_uid
UNION ALL
    select 
    id,
    uid,
    CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
              start_time 
    ELSE
              DATE(end_time)
    END start_time,
    end_time,
    CASE WHEN TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 THEN
              TIMESTAMPDIFF(SECOND,start_time,end_time) 
    ELSE
              TIMESTAMPDIFF(SECOND,DATE(end_time),end_time)
    END duration_time
  FROM (SELECT id,uid,start_time,end_time,duration_time,share_times,support_num,comment_times,status FROM tab_live_ugc 
     UNION ALL
      SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time,a.share_times,a.support_num,a.comment_times,a.status FROM tab_live_ugc a,tab_live_pk b 
       WHERE a.id = b.live_id)l  
       where start_time>=start_date AND start_time<=end_start + INTERVAL 86399 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) > 0 AND uid = p_uid 
UNION ALL
    SELECT 
    id,
    uid,
    start_time,
    end_time,
    duration_time
FROM (SELECT id,uid,start_time,end_time,duration_time,share_times,support_num,comment_times,status FROM tab_live_ugc 
    UNION ALL
    SELECT a.id,b.pk_uid,a.start_time,a.end_time,duration_time,a.share_times,a.support_num,a.comment_times,a.status FROM tab_live_ugc a,tab_live_pk b WHERE a.id = b.live_id)l  
     where start_time>=start_date AND start_time<=end_start + INTERVAL 86399 SECOND AND TIMESTAMPDIFF(DAY,DATE(start_time),DATE(end_time)) = 0 AND uid = p_uid

) a,(SELECT @rownum:='') b, (SELECT @rn:=0) c   order by id
) c
) g
) mm group by xx,start_time HAVING sum(duration_time)>=1800 
) xx group by pcount,start_time
)t;
  RETURN p_valid_duration;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_appversion_char_to_int
-- ----------------------------
DROP FUNCTION IF EXISTS `func_appversion_char_to_int`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_appversion_char_to_int`(p_val VARCHAR(20)) RETURNS int(11)
    COMMENT '查sys_app_version_convert表，由字符串版本号得到对应的数字'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/0725
   Description  :字符串版本转换成数字版本
   */
   DECLARE ret_ INTEGER DEFAULT 2130;
  -- SELECT id INTO ret_ FROM sys_app_version_convert WHERE app_version = convert(p_val using utf8);
   RETURN ret_;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_appversion_int_to_char
-- ----------------------------
DROP FUNCTION IF EXISTS `func_appversion_int_to_char`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_appversion_int_to_char`(p_val MEDIUMINT) RETURNS varchar(10) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
    COMMENT '查sys_app_version_convert表，由得到的数字对应字符串版本号'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :数字版本转换成字符串版本
   */
   DECLARE ret_ VARCHAR(6) DEFAULT '3.1.2';
  -- SELECT app_version INTO ret_ FROM sys_app_version_convert WHERE id = p_val;
   RETURN ret_;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_fetch_userid
-- ----------------------------
DROP FUNCTION IF EXISTS `func_fetch_userid`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_fetch_userid`() RETURNS int(11)
    COMMENT '取不服号'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :为新用户生成不服号
   */
  DECLARE p_inner_var VARCHAR(8); -- 返回不服号
  DECLARE p_inner_count TINYINT DEFAULT 0; -- 判断随机取出的8位数字，在用户表是不是存在
  A1:LOOP
    SELECT substr(RAND(),-8) INTO p_inner_var; -- 先取rand()函数的前八位
    IF substr(p_inner_var,1,1) = '0' THEN      -- 如果第一位为0，则用1替换
       SET p_inner_var = CONCAT('1',SUBSTR(p_inner_var,-7));
    END IF;
    SELECT count(*) INTO p_inner_count FROM tab_user WHERE disagree_no = convert(p_inner_var using utf8mb4); -- 判断生成的不服号是不是存在
    IF p_inner_count = 0 THEN
      LEAVE A1;
    END IF;
  END LOOP;
    RETURN p_inner_var;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_fetch_username
-- ----------------------------
DROP FUNCTION IF EXISTS `func_fetch_username`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_fetch_username`(pname varchar(128)) RETURNS varchar(128) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
    COMMENT '如果新用户无昵称，则为新用户新生成昵称'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :如果传入的昵称是否存在，则为新用户新生成昵称
   */
  DECLARE p_judge INTEGER DEFAULT 0;
  DECLARE p_username varchar(128);
  SELECT count(*) INTO p_judge FROM tab_user WHERE nick_name = CONVERT(pname USING utf8mb4);  -- 判断传入的昵称是否存在

  IF p_judge > 0 THEN  -- 如果昵称存在，则新生成一个
    SET p_judge = 0;
    A1:LOOP
       SET p_username = CONCAT('不服',SUBSTR(RAND(),-8));
       SELECT count(*) INTO p_judge FROM tab_user WHERE nick_name = CONVERT(p_username USING utf8mb4); -- 生成“不服”+8位数字的昵称
       IF p_judge = 0 THEN
          LEAVE A1;
       END IF;
    END LOOP;
   ELSE
    SET p_username = CONVERT(pname USING utf8mb4);
  END IF; 
  RETURN p_username;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_get_appCoin
-- ----------------------------
DROP FUNCTION IF EXISTS `func_get_appCoin`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_get_appCoin`(p_in_coin decimal(6,2)) RETURNS int(18)
    COMMENT '根据消耗的钱币，取得最大的不服显示钱币'
BEGIN	
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :根据消耗的钱币，取得最大的不服显示钱币
   */
		DECLARE appCoin INTEGER DEFAULT 0;
		SELECT
			IFNULL(max(app_coin),0) INTO appCoin
		FROM
			tab_coin_exchange_cfg   -- 不服币种兑换表
		WHERE
			price_coin = p_in_coin 
		AND exchange_type = 1
		ORDER BY
			app_coin DESC
    LIMIT 1;
		RETURN appCoin;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_get_before_version
-- ----------------------------
DROP FUNCTION IF EXISTS `func_get_before_version`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_get_before_version`(p_imei varchar(64),p_app_version varchar(10)) RETURNS int(11)
    COMMENT '返回当前版本的前一个版本'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :返回当前版本的前一个版本
   */
	DECLARE ret_ INTEGER DEFAULT 0;
  IF p_imei = 'null' THEN
  SET p_imei = '0.0.0';
  END IF;
/*
	SELECT
			max(b.id) INTO ret_
		FROM
			log_user_device a,
			sys_app_version_convert b
		WHERE
			a.app_version  = convert(b.app_version using utf8)
		AND a.imei = convert(p_imei using utf8)
		AND convert(b.app_version using utf8) <> p_app_version;
*/
  SET ret_ = '';
	RETURN ret_;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_get_media_bnumber
-- ----------------------------
DROP FUNCTION IF EXISTS `func_get_media_bnumber`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_get_media_bnumber`(p_media_id int) RETURNS int(11)
    COMMENT '播放量页面显示量'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :传入视频id，输出视频的虚拟播放量。
   */
		

	DECLARE p_media_bnumber INT(11);					-- 增量
	DECLARE p_media_bnumber_real INT(11);			-- 真实量
	-- func_get_media_pnumber
  DECLARE p_date datetime;
-- 保留之前的播放数据
SELECT create_time INTO p_date FROM tab_media WHERE id = p_media_id;

IF p_date < '2016-12-23' THEN

		SELECT
			CASE WHEN quality_level='D' OR quality_level IS NULL THEN
					bnumber
			WHEN  tminute<=1500 THEN -- 第1天,10倍
					          tminute * 10 * tag * 10
			WHEN tminute> 1500 and tminute<=3000 THEN -- 第2天,8倍
					(15000 + (tminute-1500)*8) * tag * 10
			WHEN tminute> 3000 and tminute<=4500 THEN -- 第3天,6倍
					(27000 + (tminute-3000)*6) * tag * 10
			WHEN tminute> 4500 and tminute<=6000 THEN -- 第4天,4倍
					(36000 + (tminute-4500)*4) * tag * 10
			WHEN tminute> 6000 and tminute<=7500 THEN -- 第5天,2倍
					(42000 + (tminute-6000)*2) * tag * 10
			WHEN tminute> 7500 and tminute<=9000 THEN -- 第6天,1倍
					(45000 + (tminute-7500)*1) * tag * 10
			ELSE	-- 其他的，其实不存在这种情况
					46500 * tag * 10
			END AS 
					media_bnumber,
			    bnumber 
     INTO p_media_bnumber,p_media_bnumber_real
		FROM
			(
				SELECT
				TIMESTAMPDIFF(minute, create_time, now()) AS tminute,
				CASE
				WHEN id % 12 = 0  AND quality_level='S' THEN 0.35
				WHEN id % 12 = 1  AND quality_level='S' THEN 0.34
				WHEN id % 12 = 2  AND quality_level='S' THEN 0.33
				WHEN id % 12 = 3  AND quality_level='S' THEN 0.32
				WHEN id % 12 = 4  AND quality_level='S' THEN 0.31
				WHEN id % 12 = 5  AND quality_level='S' THEN 0.30
				WHEN id % 12 = 6  AND quality_level='S' THEN 0.29
				WHEN id % 12 = 7  AND quality_level='S' THEN 0.28
				WHEN id % 12 = 8  AND quality_level='S' THEN 0.27
				WHEN id % 12 = 9  AND quality_level='S' THEN 0.26
				WHEN id % 12 = 10 AND quality_level='S' THEN 0.25
				WHEN id % 12 = 11 AND quality_level='S' THEN 0.24

				WHEN id % 12 = 0  AND quality_level='A' THEN 0.35
				WHEN id % 12 = 1  AND quality_level='A' THEN 0.34
				WHEN id % 12 = 2  AND quality_level='A' THEN 0.33
				WHEN id % 12 = 3  AND quality_level='A' THEN 0.32
				WHEN id % 12 = 4  AND quality_level='A' THEN 0.31
				WHEN id % 12 = 5  AND quality_level='A' THEN 0.30
				WHEN id % 12 = 6  AND quality_level='A' THEN 0.29
				WHEN id % 12 = 7  AND quality_level='A' THEN 0.28
				WHEN id % 12 = 8  AND quality_level='A' THEN 0.27
				WHEN id % 12 = 9  AND quality_level='A' THEN 0.26
				WHEN id % 12 = 10 AND quality_level='A' THEN 0.25
				WHEN id % 12 = 11 AND quality_level='A' THEN 0.24

				WHEN id % 12 = 0  AND quality_level='B' THEN 0.23	
				WHEN id % 12 = 1  AND quality_level='B' THEN 0.22
				WHEN id % 12 = 2  AND quality_level='B' THEN 0.21
				WHEN id % 12 = 3  AND quality_level='B' THEN 0.20
				WHEN id % 12 = 4  AND quality_level='B' THEN 0.19
				WHEN id % 12 = 5  AND quality_level='B' THEN 0.18
				WHEN id % 12 = 6  AND quality_level='B' THEN 0.17
				WHEN id % 12 = 7  AND quality_level='B' THEN 0.16
				WHEN id % 12 = 8  AND quality_level='B' THEN 0.15
				WHEN id % 12 = 9  AND quality_level='B' THEN 0.14
				WHEN id % 12 = 10 AND quality_level='B' THEN 0.13
				WHEN id % 12 = 11 AND quality_level='B' THEN 0.12

				WHEN id % 12 = 0  AND quality_level='C' THEN 0.12	
				WHEN id % 12 = 1  AND quality_level='C' THEN 0.11
				WHEN id % 12 = 2  AND quality_level='C' THEN 0.10
				WHEN id % 12 = 3  AND quality_level='C' THEN 0.09
				WHEN id % 12 = 4  AND quality_level='C' THEN 0.08
				WHEN id % 12 = 5  AND quality_level='C' THEN 0.07
				WHEN id % 12 = 6  AND quality_level='C' THEN 0.06
				WHEN id % 12 = 7  AND quality_level='C' THEN 0.05
				WHEN id % 12 = 8  AND quality_level='C' THEN 0.04
				WHEN id % 12 = 9  AND quality_level='C' THEN 0.03
				WHEN id % 12 = 10 AND quality_level='C' THEN 0.02
				WHEN id % 12 = 11 AND quality_level='C' THEN 0.01
				ELSE 0.19
				END AS tag,
				create_time,
        bnumber,
        quality_level
		FROM
			tab_media
		WHERE id = p_media_id	) a;

ELSE

		SELECT
					FLOOR(media_bnumber),
			    bnumber 
     INTO p_media_bnumber,
          p_media_bnumber_real
		FROM
			(
				SELECT
				CASE
				WHEN id % 12 = 0  AND quality_level='D' THEN 0.140*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 1  AND quality_level='D' THEN 0.127*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 2  AND quality_level='D' THEN 0.122*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 3  AND quality_level='D' THEN 0.139*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 4  AND quality_level='D' THEN 0.138*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 5  AND quality_level='D' THEN 0.137*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 6  AND quality_level='D' THEN 0.135*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 7  AND quality_level='D' THEN 0.132*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 8  AND quality_level='D' THEN 0.129*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 9  AND quality_level='D' THEN 0.126*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 10 AND quality_level='D' THEN 0.123*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 11 AND quality_level='D' THEN 0.120*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))

				WHEN id % 12 = 0  AND quality_level in ('A','S') THEN 1.35*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))
				WHEN id % 12 = 1  AND quality_level in ('A','S') THEN 1.33*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))
				WHEN id % 12 = 2  AND quality_level in ('A','S') THEN 1.32*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))
				WHEN id % 12 = 3  AND quality_level in ('A','S') THEN 1.31*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))
				WHEN id % 12 = 4  AND quality_level in ('A','S') THEN 1.29*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))
				WHEN id % 12 = 5  AND quality_level in ('A','S') THEN 1.28*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))
				WHEN id % 12 = 6  AND quality_level in ('A','S') THEN 1.27*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))
				WHEN id % 12 = 7  AND quality_level in ('A','S') THEN 1.26*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))
				WHEN id % 12 = 8  AND quality_level in ('A','S') THEN 1.25*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))
				WHEN id % 12 = 9  AND quality_level in ('A','S') THEN 1.24*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))
				WHEN id % 12 = 10 AND quality_level in ('A','S') THEN 1.22*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))
				WHEN id % 12 = 11 AND quality_level in ('A','S') THEN 1.20*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))

				WHEN id % 12 = 0  AND quality_level='B' THEN 0.77*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))
				WHEN id % 12 = 1  AND quality_level='B' THEN 0.75*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))
				WHEN id % 12 = 2  AND quality_level='B' THEN 0.73*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))
				WHEN id % 12 = 3  AND quality_level='B' THEN 0.71*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))
				WHEN id % 12 = 4  AND quality_level='B' THEN 0.69*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))
				WHEN id % 12 = 5  AND quality_level='B' THEN 0.67*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))
				WHEN id % 12 = 6  AND quality_level='B' THEN 0.65*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))
				WHEN id % 12 = 7  AND quality_level='B' THEN 0.63*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))
				WHEN id % 12 = 8  AND quality_level='B' THEN 0.61*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))
				WHEN id % 12 = 9  AND quality_level='B' THEN 0.59*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))
				WHEN id % 12 = 10 AND quality_level='B' THEN 0.57*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))
				WHEN id % 12 = 11 AND quality_level='B' THEN 0.55*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))

				WHEN id % 12 = 0  AND quality_level='C' THEN 1.14*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 1  AND quality_level='C' THEN 1.12*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 2  AND quality_level='C' THEN 1.10*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 3  AND quality_level='C' THEN 1.08*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 4  AND quality_level='C' THEN 1.04*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 5  AND quality_level='C' THEN 1.00*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 6  AND quality_level='C' THEN 0.95*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 7  AND quality_level='C' THEN 0.90*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 8  AND quality_level='C' THEN 0.85*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 9  AND quality_level='C' THEN 0.80*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 10 AND quality_level='C' THEN 0.75*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))
				WHEN id % 12 = 11 AND quality_level='C' THEN 0.70*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))

				WHEN id % 12 = 0  AND (quality_level='E' OR quality_level IS NULL) THEN 0.16*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))
				WHEN id % 12 = 1  AND (quality_level='E' OR quality_level IS NULL) THEN 0.15*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))
				WHEN id % 12 = 2  AND (quality_level='E' OR quality_level IS NULL) THEN 0.14*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))
				WHEN id % 12 = 3  AND (quality_level='E' OR quality_level IS NULL) THEN 0.13*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))
				WHEN id % 12 = 4  AND (quality_level='E' OR quality_level IS NULL) THEN 0.12*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))
				WHEN id % 12 = 5  AND (quality_level='E' OR quality_level IS NULL) THEN 0.11*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))
				WHEN id % 12 = 6  AND (quality_level='E' OR quality_level IS NULL) THEN 0.10*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))
				WHEN id % 12 = 7  AND (quality_level='E' OR quality_level IS NULL) THEN 0.09*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))
				WHEN id % 12 = 8  AND (quality_level='E' OR quality_level IS NULL) THEN 0.08*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))
				WHEN id % 12 = 9  AND (quality_level='E' OR quality_level IS NULL) THEN 0.07*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))
				WHEN id % 12 = 10 AND (quality_level='E' OR quality_level IS NULL) THEN 0.06*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))
				WHEN id % 12 = 11 AND (quality_level='E' OR quality_level IS NULL) THEN 0.05*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))
				END AS media_bnumber,
        bnumber
		FROM
			tab_media
		WHERE id = p_media_id	) a;
      
END IF;


		RETURN p_media_bnumber + p_media_bnumber_real;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_get_media_pnumber
-- ----------------------------
DROP FUNCTION IF EXISTS `func_get_media_pnumber`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_get_media_pnumber`(`p_media_id` int) RETURNS int(11)
    COMMENT '点赞量页面显示量'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :传入视频id，输出视频的虚拟点赞量。
   */
		
	DECLARE p_media_pnumber INT(11);					-- 增量
	DECLARE p_media_pnumber_real INT(11);			-- 真实量
	-- func_get_media_pnumber
  DECLARE p_date datetime;
-- 保留之前的播放数据
  SELECT create_time INTO p_date FROM tab_media WHERE id = p_media_id;

IF p_date < '2016-12-23' THEN
		SELECT

			CASE WHEN quality_level='D' OR quality_level IS NULL THEN
					pnumber
			WHEN  tminute<=1500 THEN -- 第1天,10倍
					(tminute) * 10 * tag
			WHEN tminute> 1500 and tminute<=3000 THEN -- 第2天,8倍
					(15000 + (tminute-1500)*8) * tag
			WHEN tminute> 3000 and tminute<=4500 THEN -- 第3天,6倍
					(27000 + (tminute-3000)*6) * tag
			WHEN tminute> 4500 and tminute<=6000 THEN -- 第4天,4倍
					(36000 + (tminute-4500)*4) * tag
			WHEN tminute> 6000 and tminute<=7500 THEN -- 第5天,2倍
					(42000 + (tminute-6000)*2) * tag
			WHEN tminute> 7500 and tminute<=9000 THEN -- 第6天,1倍
					(45000 + (tminute-7500)*1) * tag
			ELSE	-- 其他的，其实不存在这种情况
					46500 * tag
			END AS 
					media_pnumber,
			    pnumber 
			INTO p_media_pnumber,
           p_media_pnumber_real
		FROM
			(
				SELECT
				TIMESTAMPDIFF(minute, create_time, now()) AS tminute,
				CASE
				WHEN id % 12 = 0  AND quality_level='S' THEN 0.35
				WHEN id % 12 = 1  AND quality_level='S' THEN 0.34
				WHEN id % 12 = 2  AND quality_level='S' THEN 0.33
				WHEN id % 12 = 3  AND quality_level='S' THEN 0.32
				WHEN id % 12 = 4  AND quality_level='S' THEN 0.31
				WHEN id % 12 = 5  AND quality_level='S' THEN 0.30
				WHEN id % 12 = 6  AND quality_level='S' THEN 0.29
				WHEN id % 12 = 7  AND quality_level='S' THEN 0.28
				WHEN id % 12 = 8  AND quality_level='S' THEN 0.27
				WHEN id % 12 = 9  AND quality_level='S' THEN 0.26
				WHEN id % 12 = 10 AND quality_level='S' THEN 0.25
				WHEN id % 12 = 11 AND quality_level='S' THEN 0.24

				WHEN id % 12 = 0  AND quality_level='A' THEN 0.35
				WHEN id % 12 = 1  AND quality_level='A' THEN 0.34
				WHEN id % 12 = 2  AND quality_level='A' THEN 0.33
				WHEN id % 12 = 3  AND quality_level='A' THEN 0.32
				WHEN id % 12 = 4  AND quality_level='A' THEN 0.31
				WHEN id % 12 = 5  AND quality_level='A' THEN 0.30
				WHEN id % 12 = 6  AND quality_level='A' THEN 0.29
				WHEN id % 12 = 7  AND quality_level='A' THEN 0.28
				WHEN id % 12 = 8  AND quality_level='A' THEN 0.27
				WHEN id % 12 = 9  AND quality_level='A' THEN 0.26
				WHEN id % 12 = 10 AND quality_level='A' THEN 0.25
				WHEN id % 12 = 11 AND quality_level='A' THEN 0.24

				WHEN id % 12 = 0  AND quality_level='B' THEN 0.23	
				WHEN id % 12 = 1  AND quality_level='B' THEN 0.22
				WHEN id % 12 = 2  AND quality_level='B' THEN 0.21
				WHEN id % 12 = 3  AND quality_level='B' THEN 0.20
				WHEN id % 12 = 4  AND quality_level='B' THEN 0.19
				WHEN id % 12 = 5  AND quality_level='B' THEN 0.18
				WHEN id % 12 = 6  AND quality_level='B' THEN 0.17
				WHEN id % 12 = 7  AND quality_level='B' THEN 0.16
				WHEN id % 12 = 8  AND quality_level='B' THEN 0.15
				WHEN id % 12 = 9  AND quality_level='B' THEN 0.14
				WHEN id % 12 = 10 AND quality_level='B' THEN 0.13
				WHEN id % 12 = 11 AND quality_level='B' THEN 0.12

				WHEN id % 12 = 0  AND quality_level='C' THEN 0.12	
				WHEN id % 12 = 1  AND quality_level='C' THEN 0.11
				WHEN id % 12 = 2  AND quality_level='C' THEN 0.10
				WHEN id % 12 = 3  AND quality_level='C' THEN 0.09
				WHEN id % 12 = 4  AND quality_level='C' THEN 0.08
				WHEN id % 12 = 5  AND quality_level='C' THEN 0.07
				WHEN id % 12 = 6  AND quality_level='C' THEN 0.06
				WHEN id % 12 = 7  AND quality_level='C' THEN 0.05
				WHEN id % 12 = 8  AND quality_level='C' THEN 0.04
				WHEN id % 12 = 9  AND quality_level='C' THEN 0.03
				WHEN id % 12 = 10 AND quality_level='C' THEN 0.02
				WHEN id % 12 = 11 AND quality_level='C' THEN 0.01
				ELSE 0.1
				END AS tag,
				create_time,
        pnumber,quality_level
		FROM
			tab_media
		WHERE id = p_media_id	) a;

ELSE

		SELECT
					FLOOR(media_pnumber),
			    pnumber 
     INTO p_media_pnumber,
          p_media_pnumber_real
		FROM
			(
				SELECT
				CASE
				WHEN id % 12 = 0  AND quality_level='D' THEN 0.140*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 1  AND quality_level='D' THEN 0.127*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 2  AND quality_level='D' THEN 0.122*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 3  AND quality_level='D' THEN 0.139*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 4  AND quality_level='D' THEN 0.138*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 5  AND quality_level='D' THEN 0.137*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 6  AND quality_level='D' THEN 0.135*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 7  AND quality_level='D' THEN 0.132*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 8  AND quality_level='D' THEN 0.129*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 9  AND quality_level='D' THEN 0.126*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 10 AND quality_level='D' THEN 0.123*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 11 AND quality_level='D' THEN 0.120*(4400 - IF(TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(minute,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))

				WHEN id % 12 = 0  AND quality_level in ('A','S') THEN 1.35*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 1  AND quality_level in ('A','S') THEN 1.33*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 2  AND quality_level in ('A','S') THEN 1.32*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 3  AND quality_level in ('A','S') THEN 1.31*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 4  AND quality_level in ('A','S') THEN 1.29*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 5  AND quality_level in ('A','S') THEN 1.28*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 6  AND quality_level in ('A','S') THEN 1.27*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 7  AND quality_level in ('A','S') THEN 1.26*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 8  AND quality_level in ('A','S') THEN 1.25*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 9  AND quality_level in ('A','S') THEN 1.24*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 10 AND quality_level in ('A','S') THEN 1.22*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 11 AND quality_level in ('A','S') THEN 1.20*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 5 DAY)))/(20+MOD(id,30))

				WHEN id % 12 = 0  AND quality_level='B' THEN 0.77*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 1  AND quality_level='B' THEN 0.75*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 2  AND quality_level='B' THEN 0.73*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 3  AND quality_level='B' THEN 0.71*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 4  AND quality_level='B' THEN 0.69*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 5  AND quality_level='B' THEN 0.67*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 6  AND quality_level='B' THEN 0.65*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 7  AND quality_level='B' THEN 0.63*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 8  AND quality_level='B' THEN 0.61*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 9  AND quality_level='B' THEN 0.59*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 10 AND quality_level='B' THEN 0.57*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 11 AND quality_level='B' THEN 0.55*(80000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 6 DAY)))/(20+MOD(id,30))

				WHEN id % 12 = 0  AND quality_level='C' THEN 1.14*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 1  AND quality_level='C' THEN 1.12*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 2  AND quality_level='C' THEN 1.10*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 3  AND quality_level='C' THEN 1.08*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 4  AND quality_level='C' THEN 1.04*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 5  AND quality_level='C' THEN 1.00*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 6  AND quality_level='C' THEN 0.95*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 7  AND quality_level='C' THEN 0.90*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 8  AND quality_level='C' THEN 0.85*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 9  AND quality_level='C' THEN 0.80*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 10 AND quality_level='C' THEN 0.75*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 11 AND quality_level='C' THEN 0.70*(5000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 3 DAY)))/(20+MOD(id,30))

				WHEN id % 12 = 0  AND (quality_level='E' OR quality_level IS NULL) THEN 0.16*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 1  AND (quality_level='E' OR quality_level IS NULL) THEN 0.15*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 2  AND (quality_level='E' OR quality_level IS NULL) THEN 0.14*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 3  AND (quality_level='E' OR quality_level IS NULL) THEN 0.13*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 4  AND (quality_level='E' OR quality_level IS NULL) THEN 0.12*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 5  AND (quality_level='E' OR quality_level IS NULL) THEN 0.11*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 6  AND (quality_level='E' OR quality_level IS NULL) THEN 0.10*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 7  AND (quality_level='E' OR quality_level IS NULL) THEN 0.09*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 8  AND (quality_level='E' OR quality_level IS NULL) THEN 0.08*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 9  AND (quality_level='E' OR quality_level IS NULL) THEN 0.07*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 10 AND (quality_level='E' OR quality_level IS NULL) THEN 0.06*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))/(20+MOD(id,30))
				WHEN id % 12 = 11 AND (quality_level='E' OR quality_level IS NULL) THEN 0.05*(2000 - IF(TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)<0,0,TIMESTAMPDIFF(MINUTE,NOW(),date(create_time)+INTERVAL 1 DAY)))/(20+MOD(id,30))
				END AS media_pnumber,
        pnumber
		FROM
			tab_media
		WHERE id = p_media_id	) a;
      
END IF;

		RETURN p_media_pnumber + p_media_pnumber_real;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_inter_judge_version
-- ----------------------------
DROP FUNCTION IF EXISTS `func_inter_judge_version`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_inter_judge_version`(p_user_id INTEGER) RETURNS tinyint(4)
    COMMENT '判断APP是否升级'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :判断APP是否升级
   */
  DECLARE app_version_1 INT;
  DECLARE app_version_2 INT;
  DECLARE p_judge INTEGER DEFAULT 0; -- =1升级，=0未升级
  SELECT version_id v1,
         (SELECT version_id FROM log_user_device b WHERE b.create_time < a.create_time AND b.user_id = a.user_id ORDER BY create_time desc LIMIT 1) v2
         INTO app_version_1,app_version_2
  FROM log_user_device a 
 where user_id = p_user_id order by create_time desc  limit 1;
 IF app_version_1 >  app_version_2 AND app_version_2 > 0 THEN
   SET p_judge = 1 ;
 ELSE 
   SET p_judge = 0 ;
 END IF;
 RETURN p_judge;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_live_get_level
-- ----------------------------
DROP FUNCTION IF EXISTS `func_live_get_level`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_live_get_level`(p_experience INTEGER) RETURNS tinyint(4)
    COMMENT '直播：经验对应的等级'
BEGIN
    /*
   Author     :Tig
   Create_time:2016/03/22
   description:购买礼物，增加经验后对应的等级
   */
  DECLARE p_level TINYINT DEFAULT 0;
SET  p_level =
  CASE WHEN p_experience <  30                         THEN 1
       WHEN p_experience >= 30 AND p_experience < 60   THEN 2
       WHEN p_experience >= 60 AND p_experience < 120  THEN 3
       WHEN p_experience >= 120 AND p_experience < 240 THEN 4
       WHEN p_experience >= 240 AND p_experience < 480 THEN 5
       WHEN p_experience >= 480 AND p_experience < 960 THEN 6
       WHEN p_experience >= 960 AND p_experience < 1920 THEN 7
       WHEN p_experience >= 1920 AND p_experience < 3840 THEN 8
       WHEN p_experience >= 3840 AND p_experience < 7680 THEN 9
       WHEN p_experience >= 7680 AND p_experience < 15360 THEN 10
       WHEN p_experience >= 15360 AND p_experience < 30000 THEN 11
       WHEN p_experience >= 30000 AND p_experience < 60000 THEN 12
       WHEN p_experience >= 60000 AND p_experience < 90000 THEN 13
       WHEN p_experience >= 90000 AND p_experience < 120000 THEN 14
       WHEN p_experience >= 120000 AND p_experience < 150000 THEN 15
       WHEN p_experience >= 150000 AND p_experience < 180000 THEN 16
       WHEN p_experience >= 180000 AND p_experience < 210000 THEN 17
       WHEN p_experience >= 210000 AND p_experience < 240000 THEN 18
       WHEN p_experience >= 240000 AND p_experience < 270000 THEN 19
       WHEN p_experience >= 270000 AND p_experience < 300000 THEN 20
       WHEN p_experience >= 300000 AND p_experience < 600000 THEN 21
       WHEN p_experience >= 600000 AND p_experience < 900000 THEN 22
       WHEN p_experience >= 900000 AND p_experience < 1200000 THEN 23
       WHEN p_experience >= 1200000 AND p_experience < 1500000 THEN 24
       WHEN p_experience >= 1500000 AND p_experience < 1800000 THEN 25
       WHEN p_experience >= 1800000 AND p_experience < 2100000 THEN 26
       WHEN p_experience >= 2100000 AND p_experience < 2400000 THEN 27
       WHEN p_experience >= 2400000 AND p_experience < 2700000 THEN 28
       WHEN p_experience >= 2700000 AND p_experience < 3000000 THEN 29
       WHEN p_experience >= 3000000 AND p_experience < 3300000 THEN 30
       WHEN p_experience >= 3300000 AND p_experience < 3600000 THEN 31
       WHEN p_experience >= 3600000 AND p_experience < 3900000 THEN 32
       WHEN p_experience >= 3900000 AND p_experience < 4200000 THEN 33
       WHEN p_experience >= 4200000 AND p_experience < 4500000 THEN 34
       WHEN p_experience >= 4500000 AND p_experience < 4800000 THEN 35
       WHEN p_experience >= 4800000 AND p_experience < 5100000 THEN 36
       WHEN p_experience >= 5100000 AND p_experience < 5400000 THEN 37
       WHEN p_experience >= 5400000 AND p_experience < 5700000 THEN 38
       WHEN p_experience >= 5700000 AND p_experience < 6000000 THEN 39
       WHEN p_experience >= 6000000 AND p_experience < 6300000 THEN 40
       WHEN p_experience >= 6300000 AND p_experience < 6600000 THEN 41
       WHEN p_experience >= 6600000 AND p_experience < 6900000 THEN 42
       WHEN p_experience >= 6900000 AND p_experience < 7200000 THEN 43
       WHEN p_experience >= 7200000 AND p_experience < 7500000 THEN 44
       WHEN p_experience >= 7500000 AND p_experience < 7800000 THEN 45
       WHEN p_experience >= 7800000 AND p_experience < 8100000 THEN 46
       WHEN p_experience >= 8100000 AND p_experience < 8400000 THEN 47
       WHEN p_experience >= 8400000 AND p_experience < 8700000 THEN 48
       WHEN p_experience >= 8700000 AND p_experience < 9000000 THEN 49
       WHEN p_experience >= 9000000                            THEN 50
       end;
RETURN p_level;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_match_user_rank
-- ----------------------------
DROP FUNCTION IF EXISTS `func_match_user_rank`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_match_user_rank`(uid1 integer,sub_match_id1 INTEGER) RETURNS smallint(6)
    COMMENT '赛事中用户排名'
A1:BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/0725
   Description  :返回赛事排名
   */
  DECLARE paim SMALLINT DEFAULT 0; -- 名次
    select rank 
      into paim 
      from 
           (
           SELECT
	                 `a`.`uid` AS `uid`,
	                 `a`.`media_id` AS `media_id`,
	                 `a`.`vote_num` AS `vote_num`,
	                 `a`.`sub_match_id` AS `sub_match_id`,
	                  @x:=ifnull(@x,0)+1 AS `rank`         -- 名次
             FROM
	             
(
select uid,
       media_id,
       vote_num,
       sub_match_id FROM
(
select uid,
       media_id,
       vote_num,
       sub_match_id 
  from tab_sub_match_media 
 where sub_match_id = sub_match_id1 AND 
       status <> 2 
order by vote_num desc, media_id     -- 先按照票数和视频降序排序
) a
group by uid                         -- 按照用户分组
order by vote_num desc, media_id     -- 再按照票数和视频降序排序
)
 `a`,(select @x := 0) b
              where sub_match_id = sub_match_id1
              order by 3 desc,media_id
           ) x
     where uid = uid1;  #传入用户ID

  RETURN paim;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_rank_assign_amount
-- ----------------------------
DROP FUNCTION IF EXISTS `func_rank_assign_amount`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_rank_assign_amount`(uid1 integer,sub_match_id1 INTEGER) RETURNS decimal(9,2)
    COMMENT '用户排名对应的奖金'
A1:BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :用户排名对应的奖金
   */
  DECLARE paim INTEGER DEFAULT 0;            -- 名次
  DECLARE ret_v  DECIMAL(9,2) DEFAULT 0.00;  -- 取得奖金数

    select rank 
      into paim 
      from 
           (
           SELECT
	                 `a`.`uid` AS `uid`,
	                 `a`.`media_id` AS `media_id`,
	                 `a`.`vote_num` AS `vote_num`,
	                 `a`.`sub_match_id` AS `sub_match_id`,
	                  @x:=ifnull(@x,0)+1 AS `rank`
             FROM
	             
(
select uid,media_id,vote_num,sub_match_id FROM
(
-- select uid,media_id,vote_num,sub_match_id from tab_sub_match_media where sub_match_id = sub_match_id1 AND status <> 2 order by vote_num desc, media_id
select a.uid,a.media_id,vote_num,a.sub_match_id 
    from tab_sub_match_media a,
         tab_sub_match_player b 
   where  a.uid = b.uid AND
          b.rise_type IS NULL AND
          a.sub_match_id = sub_match_id1 AND a.status <> 2 order by vote_num desc, media_id
) a
group by uid 
order by vote_num desc, media_id
)
 `a`,(select @x := 0) b
              where sub_match_id = sub_match_id1
              order by 3 desc,media_id
           ) x
     where uid = uid1;  #传入用户ID
  SELECT price INTO ret_v FROM tab_sub_match_coin2 b WHERE b.rankid =  paim AND sub_match_id = sub_match_id1; -- 根据名次，取得奖金数
  RETURN ret_v;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_rank_assign_amount_new
-- ----------------------------
DROP FUNCTION IF EXISTS `func_rank_assign_amount_new`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_rank_assign_amount_new`(uid1 integer,sub_match_id1 INTEGER) RETURNS decimal(9,2)
    COMMENT '返回用户排名'
A1:BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :用户排名对应的奖金
   */
  DECLARE paim INTEGER DEFAULT 0;
  DECLARE ret_v  DECIMAL(9,2) DEFAULT 0.00;

    select rank 
      into paim 
      from 
           (
           SELECT
	                 `a`.`uid` AS `uid`,
	                 `a`.`vote_num` AS `vote_num`,
	                 `a`.`sub_match_id` AS `sub_match_id`,
	                  @x:=ifnull(@x,0)+1 AS `rank`
             FROM
	             
(
select uid,sum(vote_num) vote_num,sub_match_id from tab_sub_match_media where sub_match_id = sub_match_id1 AND status <> 2 group by uid,sub_match_id
order by vote_num desc,media_id asc
)
 `a`,(select @x := 0) b
              where sub_match_id = sub_match_id1
          order by 4
           ) x
     where uid = uid1;  #传入用户ID

  SELECT price INTO ret_v FROM tab_sub_match_coin2 b WHERE sub_match_id = sub_match_id1 AND b.rankid =  paim; -- 根据名次，取得奖金数
  RETURN ret_v;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_sub_match_name
-- ----------------------------
DROP FUNCTION IF EXISTS `func_sub_match_name`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_sub_match_name`(pid INTEGER) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
    COMMENT '根据赛事id，返回赛事名称'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/07/25
   Description  :根据赛事id，返回赛事名称
   */
   DECLARE pname VARCHAR(100);
   SELECT name INTO pname FROM tab_sub_match WHERE id = pid; -- 根据赛事id，返回赛事名称
   RETURN pname;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_sub_match_tagid
-- ----------------------------
DROP FUNCTION IF EXISTS `func_sub_match_tagid`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_sub_match_tagid`(p_in_matchid INTEGER) RETURNS int(11)
    COMMENT '根据赛事id，返回圈子id'
BEGIN
  /*
   Author       :Tig
   Create_time  :2016/03/23
   Modified_time:2016/0725
   Description  :根据赛事id，返回圈子名称
   */
   DECLARE pid INTEGER;
   SELECT tag_id into pid from tab_sub_match where id = p_in_matchid; -- 根据赛事id，返回圈子名称
   RETURN pid;
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_vip_status
-- ----------------------------
DROP FUNCTION IF EXISTS `func_vip_status`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_vip_status`(p_user_id INT) RETURNS tinyint(4)
    COMMENT '返回是否会员:-1否;8是'
BEGIN
  DECLARE p_status TINYINT DEFAULT 0;
  DECLARE p_end_time datetime;
  SELECT MAX(end_time) INTO p_end_time FROM tab_vip_record WHERE user_id = p_user_id;
  IF p_end_time >= NOW() THEN
     SET p_status = 8;
  ELSE
     SET p_status = -1;
  END IF;
  RETURN p_status;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_vip_surplus_day
-- ----------------------------
DROP FUNCTION IF EXISTS `func_vip_surplus_day`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `func_vip_surplus_day`(p_user_id INT) RETURNS smallint(6)
    COMMENT '返回会员剩余有效天数:非会员或者过期会员返回-1'
BEGIN
  DECLARE p_surplus_day INTEGER DEFAULT 0;
  DECLARE p_end_time datetime;
  SELECT MAX(end_time) INTO p_end_time FROM tab_vip_record WHERE user_id = p_user_id;
  IF p_end_time >= NOW() THEN
     SET p_surplus_day = TIMESTAMPDIFF(DAY,NOW(),p_end_time);
  ELSE
     SET p_surplus_day = -1;
  END IF;
  RETURN p_surplus_day;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_vip_url
-- ----------------------------
DROP FUNCTION IF EXISTS `func_vip_url`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` FUNCTION `func_vip_url`(p_user_id INT) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
    DETERMINISTIC
    COMMENT '返回会员/非会员角标'
BEGIN
  DECLARE p_url VARCHAR(100);
  DECLARE p_end_time datetime;
  SELECT MAX(end_time) INTO p_end_time FROM tab_vip_record WHERE user_id = p_user_id;
  IF p_end_time >= NOW() THEN
     SET p_url = 'http://ossqn.hfbufu.com/image/auth_vip.png';
  ELSE
     SELECT auth_image INTO p_url FROM tab_user WHERE id = p_user_id;
  END IF;
  RETURN p_url;
END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev__bg_basic_quota_today
-- ----------------------------
DROP EVENT IF EXISTS `ev__bg_basic_quota_today`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev__bg_basic_quota_today` ON SCHEDULE EVERY 5 MINUTE STARTS '2016-05-19 00:25:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_bg_basic_quota_today()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_analyze_anchor_1
-- ----------------------------
DROP EVENT IF EXISTS `ev_analyze_anchor_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_analyze_anchor_1` ON SCHEDULE EVERY 1 DAY STARTS '2017-02-07 01:05:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_analyze_anchor(CURDATE() - INTERVAL 1 DAY)
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_analyze_anchor_live_1
-- ----------------------------
DROP EVENT IF EXISTS `ev_analyze_anchor_live_1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_analyze_anchor_live_1` ON SCHEDULE EVERY 1 DAY STARTS '2017-02-07 00:05:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_analyze_anchor_live(CURDATE() - INTERVAL 1 DAY)
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_bg_basic_quota_yesterday
-- ----------------------------
DROP EVENT IF EXISTS `ev_bg_basic_quota_yesterday`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_bg_basic_quota_yesterday` ON SCHEDULE EVERY 1 DAY STARTS '2016-05-19 05:00:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_bg_basic_quota_yesterday()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_daily_fresh_play
-- ----------------------------
DROP EVENT IF EXISTS `ev_daily_fresh_play`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_daily_fresh_play` ON SCHEDULE EVERY 1 MINUTE STARTS '2016-08-04 14:23:02' ON COMPLETION PRESERVE ENABLE DO CALL pro_daily_fresh_play()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_daily_fresh_playAsupportAfans
-- ----------------------------
DROP EVENT IF EXISTS `ev_daily_fresh_playAsupportAfans`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_daily_fresh_playAsupportAfans` ON SCHEDULE EVERY 10 SECOND STARTS '2016-05-19 00:24:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_daily_fresh_playAsupportAfans()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_daily_fresh_support
-- ----------------------------
DROP EVENT IF EXISTS `ev_daily_fresh_support`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_daily_fresh_support` ON SCHEDULE EVERY 4 MINUTE STARTS '2016-08-04 14:22:26' ON COMPLETION PRESERVE ENABLE DO CALL pro_daily_fresh_support()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_deal_show_kongfu
-- ----------------------------
DROP EVENT IF EXISTS `ev_deal_show_kongfu`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_deal_show_kongfu` ON SCHEDULE EVERY 1 DAY STARTS '2016-08-16 07:30:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_deal_show(93)
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_deal_zhutui
-- ----------------------------
DROP EVENT IF EXISTS `ev_deal_zhutui`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_deal_zhutui` ON SCHEDULE EVERY 1 MINUTE STARTS '2016-05-19 00:25:00' ON COMPLETION PRESERVE ENABLE DO CALL  pro_deal_zhutui()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_del_planAfansAsupport
-- ----------------------------
DROP EVENT IF EXISTS `ev_del_planAfansAsupport`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_del_planAfansAsupport` ON SCHEDULE EVERY 1 DAY STARTS '2016-05-19 01:00:00' ON COMPLETION PRESERVE ENABLE DO CALL  pro_del_planAfansAsupport()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_del_user_attention
-- ----------------------------
DROP EVENT IF EXISTS `ev_del_user_attention`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_del_user_attention` ON SCHEDULE EVERY 1 DAY STARTS '2016-05-19 04:00:00' ON COMPLETION PRESERVE ENABLE DO call pro_deal_user_attention()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_delete_advert
-- ----------------------------
DROP EVENT IF EXISTS `ev_delete_advert`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_delete_advert` ON SCHEDULE EVERY 1 DAY STARTS '2016-05-19 05:00:00' ON COMPLETION PRESERVE ENABLE DO UPDATE tab_topic_comment
SET STATUS = 2
WHERE
	content REGEXP (
		SELECT
			CONCAT(
				'''',
				REPLACE (
					GROUP_CONCAT(keywords, '|'),
					',',
					''
				),
				''''
			)
		FROM
			tab_advert_keyword
	)
AND DATE(create_time) = CURRENT_DATE - 1
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_delete_finance_status1
-- ----------------------------
DROP EVENT IF EXISTS `ev_delete_finance_status1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_delete_finance_status1` ON SCHEDULE EVERY 1 DAY STARTS '2016-11-17 00:40:00' ON COMPLETION PRESERVE ENABLE COMMENT '删除前天的实时数据，status = 1' DO DELETE FROM tab_finance_balance WHERE STATUS = 1 AND create_date = CURDATE() - INTERVAL 1 DAY
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_36
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_36`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_36` ON SCHEDULE AT '2016-05-27 09:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(36,'', '花式吃美式已经结束，下次客官可要请早！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_39
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_39`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_39` ON SCHEDULE AT '2016-06-02 09:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(39,'', 'GY舞蹈比赛已经结束，下次客官可要请早！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_43
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_43`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_43` ON SCHEDULE AT '2016-06-08 09:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(43,'', '唱儿歌活动已经结束，下次客官可要请早！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_48
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_48`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_48` ON SCHEDULE AT '2016-06-15 09:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(48,'', '我眼中的端午已经结束，下次客官可要请早！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_49
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_49`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_49` ON SCHEDULE AT '2016-06-24 09:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(49,'', '我真的有很认真唱歌活动已经结束，下次客官可要请早！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_50
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_50`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_50` ON SCHEDULE AT '2016-07-01 09:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(50,'', '余罪模仿大赛活动已经结束，下次客官可要请早！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_51
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_51`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_51` ON SCHEDULE AT '2016-07-04 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(51,'', '第一期笑傲江湖线上海选活动已经结束，敬请期待第二期！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_52
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_52`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_52` ON SCHEDULE AT '2016-07-11 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(52,'第二期笑傲江湖已经结束，快来看看晋级名单吧！', '第二期笑傲江湖线上海选活动已经结束，敬请期待第三期！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_53
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_53`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_53` ON SCHEDULE AT '2016-07-18 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(53,'第三期笑傲江湖浙江线上海选已经结束，快来看看晋级名单吧！', '第三期笑傲江湖浙江线上海选活动已经结束，敬请期待第四期！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_54
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_54`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_54` ON SCHEDULE AT '2016-07-25 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(54,'第四期笑傲江湖浙江赛区选手推选已经结束，快来看看晋级名单吧！', '第四期笑傲江湖浙江赛区选手推选活动已经结束，敬请期待下一期吧！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_55
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_55`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_55` ON SCHEDULE AT '2016-08-01 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(55,'第五期笑傲江湖浙江赛区选手推选已经结束，快来看看晋级名单吧！', '第五期笑傲江湖浙江赛区选手推选活动已经结束，敬请期待下一期吧！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_56
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_56`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_56` ON SCHEDULE AT '2016-08-08 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(56,'《1+1=爱》电影选角已结束，快来看看晋级名单吧！', '《1+1=爱》电影选角已结束，敬请期待电影上映！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_57
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_57`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_57` ON SCHEDULE AT '2016-08-16 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(57,'奥运健儿表情包模仿大赛已经结束，快来看看你逗逼的小伙伴吧~', '不服表情库，他们用绳命在模仿！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_59
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_59`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_59` ON SCHEDULE AT '2016-08-22 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(59,'功夫王线上演员海选已经结束，快来看看明日之星吧~', '期待功夫王微电影吧！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_67
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_67`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_67` ON SCHEDULE AT '2016-08-31 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(67,'不服晒颜值活动已经结束，快来看看你美丽的小伙伴吧~', '不服最美丽的人儿都在这呢~')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_69
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_69`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_69` ON SCHEDULE AT '2016-09-26 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(69,'每人一首经典歌曲，你都会唱吗？', '这些都是陪我度过寂寞深夜的歌曲')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_71
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_71`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_71` ON SCHEDULE AT '2016-10-08 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(71,'快来看看大家如何欢度国庆的吧~', '16年国庆，我和不服小伙伴一起度过~')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_73
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_73`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_73` ON SCHEDULE AT '2016-10-17 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(73,'谁是不服律动之王，快来领走你的不服币吧~', '跟着音乐律动起来')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_77
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_77`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_77` ON SCHEDULE AT '2016-10-24 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(77,'快来领取不服币', 'TA是不服手指最灵活的可人儿')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_79
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_79`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_79` ON SCHEDULE AT '2016-10-28 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(79,'活动结束啦，快去个人账户查看你收益的不服币吧~', '十秒必笑大赛，进来就笑！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_81
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_81`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_81` ON SCHEDULE AT '2016-10-31 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(81,'活动结束啦，快去个人账户查看你收益的不服币吧~', '长大后妈妈会把我嫁给你~')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_83
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_83`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_83` ON SCHEDULE AT '2016-11-11 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(83,'人间胸器活动结束啦~快去账户查看获取的奖金~', '一乳不聚何以聚人心。')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_85
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_85`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_endBoxingMatch_85` ON SCHEDULE AT '2016-11-21 11:00:00' ON COMPLETION PRESERVE DISABLE ON SLAVE COMMENT '结束不服来战' DO call end_boxingMatch(85,'不穿秋裤活动结束啦~快去账户查看获取的奖金~', '不穿秋裤晒美腿')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_87
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_87`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_87` ON SCHEDULE AT '2016-11-30 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(87,'你那下雪了吗？活动结束啦~快去账户查看获取的奖金~', '下雪啦~')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_89
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_89`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_89` ON SCHEDULE AT '2016-12-09 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(89,'可爱颂2 活动结束啦~快去账户查看获取的奖金~', '可爱颂2卖萌大合集')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_91
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_91`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_91` ON SCHEDULE AT '2016-12-19 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(91,'我们都是木头人活动结束啦~快去账户查看获取的奖金~', '我们都是木头人，不许说话不许动。')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endBoxingMatch_93
-- ----------------------------
DROP EVENT IF EXISTS `ev_endBoxingMatch_93`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endBoxingMatch_93` ON SCHEDULE AT '2016-12-23 00:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '结束不服来战' DO call end_boxingMatch(93,'《不一样的锦衣卫》电影选角已结束，快来看看晋级名单吧！', '《不一样的锦衣卫》电影选角已结束，敬请期待电影上映！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_53
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_53`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_53` ON SCHEDULE AT '2016-07-18 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=53 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_54
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_54`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_54` ON SCHEDULE AT '2016-07-25 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=54 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_55
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_55`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_55` ON SCHEDULE AT '2016-08-01 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=55 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_56
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_56`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_56` ON SCHEDULE AT '2016-08-08 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=56 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_57
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_57`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_57` ON SCHEDULE AT '2016-08-16 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=57 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_59
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_59`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_59` ON SCHEDULE AT '2016-08-22 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=59 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_67
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_67`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_67` ON SCHEDULE AT '2016-08-31 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=67 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_69
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_69`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_69` ON SCHEDULE AT '2016-09-26 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=69 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_71
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_71`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_71` ON SCHEDULE AT '2016-10-08 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=71 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_73
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_73`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_73` ON SCHEDULE AT '2016-10-17 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=73 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_75
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_75`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_75` ON SCHEDULE AT '2016-10-21 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=75 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_77
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_77`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_77` ON SCHEDULE AT '2016-10-24 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=77 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_79
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_79`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_79` ON SCHEDULE AT '2016-10-28 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=79 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_81
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_81`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_81` ON SCHEDULE AT '2016-10-31 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=81 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_83
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_83`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_83` ON SCHEDULE AT '2016-11-11 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=83 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_85
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_85`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_endSpecial_85` ON SCHEDULE AT '2016-11-21 11:00:00' ON COMPLETION PRESERVE DISABLE ON SLAVE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=85 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_87
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_87`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_87` ON SCHEDULE AT '2016-11-30 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=87 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_89
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_89`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_89` ON SCHEDULE AT '2016-12-09 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=89 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_91
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_91`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_91` ON SCHEDULE AT '2016-12-19 11:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=91 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_endSpecial_93
-- ----------------------------
DROP EVENT IF EXISTS `ev_endSpecial_93`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_endSpecial_93` ON SCHEDULE AT '2016-12-23 00:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '关闭封面卡片' DO UPDATE special_activity_and_group SET `status`=0,match_status=4 WHERE related_id=93 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_fetch_unique_log_device
-- ----------------------------
DROP EVENT IF EXISTS `ev_fetch_unique_log_device`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_fetch_unique_log_device` ON SCHEDULE EVERY 30 MINUTE STARTS '2016-05-19 17:30:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_fetch_unique_log_device()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_fetch_unique_log_device_yesterday
-- ----------------------------
DROP EVENT IF EXISTS `ev_fetch_unique_log_device_yesterday`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_fetch_unique_log_device_yesterday` ON SCHEDULE EVERY 1 DAY STARTS '2016-05-20 02:00:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_fetch_unique_log_device_yesterday()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_finance_history
-- ----------------------------
DROP EVENT IF EXISTS `ev_finance_history`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_finance_history` ON SCHEDULE EVERY 1 DAY STARTS '2016-11-23 01:00:00' ON COMPLETION PRESERVE ENABLE COMMENT '每日刷新前日财务数据' DO CALL  pro_finance_balance_history()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_finance_today
-- ----------------------------
DROP EVENT IF EXISTS `ev_finance_today`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_finance_today` ON SCHEDULE EVERY 30 MINUTE STARTS '2016-11-22 17:35:00' ON COMPLETION PRESERVE ENABLE COMMENT '刷新当天财务平衡数据' DO CALL  pro_finance_balance_today()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_flush_media_rand
-- ----------------------------
DROP EVENT IF EXISTS `ev_flush_media_rand`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_flush_media_rand` ON SCHEDULE EVERY 1 DAY STARTS '2016-05-19 07:26:24' ON COMPLETION PRESERVE ENABLE DO UPDATE tab_fetch_rand a SET a.field_max = (SELECT max(id) FROM tab_media) WHERE id = 0
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_fresh_6day_fans
-- ----------------------------
DROP EVENT IF EXISTS `ev_fresh_6day_fans`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_fresh_6day_fans` ON SCHEDULE EVERY 1 DAY STARTS '2016-05-19 05:30:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_fresh_6day_fans()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_fresh_6day_play
-- ----------------------------
DROP EVENT IF EXISTS `ev_fresh_6day_play`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_fresh_6day_play` ON SCHEDULE EVERY 1 DAY STARTS '2019-05-19 04:40:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_fresh_6day_play()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_fresh_6day_support
-- ----------------------------
DROP EVENT IF EXISTS `ev_fresh_6day_support`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_fresh_6day_support` ON SCHEDULE EVERY 1 DAY STARTS '2019-05-19 05:00:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_fresh_6day_support()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_fresh_common_comment
-- ----------------------------
DROP EVENT IF EXISTS `ev_fresh_common_comment`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_fresh_common_comment` ON SCHEDULE EVERY 6 HOUR STARTS '2016-05-19 09:10:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_fresh_common_comment()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_fresh_show_kongfu
-- ----------------------------
DROP EVENT IF EXISTS `ev_fresh_show_kongfu`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_fresh_show_kongfu` ON SCHEDULE EVERY 10 SECOND STARTS '2016-10-09 17:35:37' ON COMPLETION PRESERVE ENABLE DO CALL pro_fresh_show(93)
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_fresh_special_comment
-- ----------------------------
DROP EVENT IF EXISTS `ev_fresh_special_comment`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_fresh_special_comment` ON SCHEDULE EVERY 30 MINUTE STARTS '2017-02-15 15:08:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_fresh_special_comment()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_fresh_special_comment_inner
-- ----------------------------
DROP EVENT IF EXISTS `ev_fresh_special_comment_inner`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_fresh_special_comment_inner` ON SCHEDULE EVERY 10 MINUTE STARTS '2019-02-09 15:09:00' ON COMPLETION PRESERVE ENABLE DO CALL  pro_fresh_special_comment_inner()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_fresh_special_fans0126
-- ----------------------------
DROP EVENT IF EXISTS `ev_fresh_special_fans0126`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_fresh_special_fans0126` ON SCHEDULE EVERY 10 MINUTE STARTS '2016-05-19 00:29:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_fresh_special_fans0126()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_fresh_special_play0126
-- ----------------------------
DROP EVENT IF EXISTS `ev_fresh_special_play0126`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_fresh_special_play0126` ON SCHEDULE EVERY 15 SECOND STARTS '2019-08-09 16:15:23' ON COMPLETION PRESERVE ENABLE DO CALL pro_fresh_special_play0126()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_fresh_special_support0126
-- ----------------------------
DROP EVENT IF EXISTS `ev_fresh_special_support0126`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_fresh_special_support0126` ON SCHEDULE EVERY 6 MINUTE STARTS '2019-05-19 00:29:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_fresh_special_support0126()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_match_media_isrecom
-- ----------------------------
DROP EVENT IF EXISTS `ev_match_media_isrecom`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_match_media_isrecom` ON SCHEDULE EVERY 1 DAY STARTS '2016-05-30 20:00:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_match_media_isrecom
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_operation_kpi
-- ----------------------------
DROP EVENT IF EXISTS `ev_operation_kpi`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_operation_kpi` ON SCHEDULE EVERY 1 HOUR STARTS '2016-05-19 00:29:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_operation_kpi()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_operation_kpi_week
-- ----------------------------
DROP EVENT IF EXISTS `ev_operation_kpi_week`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_operation_kpi_week` ON SCHEDULE EVERY 1 WEEK STARTS '2016-05-23 12:00:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_operation_kpi_week()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_pro_del_qqopen
-- ----------------------------
DROP EVENT IF EXISTS `ev_pro_del_qqopen`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_pro_del_qqopen` ON SCHEDULE EVERY 20 MINUTE STARTS '2016-07-12 10:00:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_del_qqopen()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_refresh_action
-- ----------------------------
DROP EVENT IF EXISTS `ev_refresh_action`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_refresh_action` ON SCHEDULE EVERY 6 SECOND STARTS '2016-05-19 00:29:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_refresh_action
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_sign_anchor
-- ----------------------------
DROP EVENT IF EXISTS `ev_sign_anchor`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_sign_anchor` ON SCHEDULE EVERY 1 MONTH STARTS '2016-10-01 01:00:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_stat_sign_anchor_kpi_month()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_sign_association_task
-- ----------------------------
DROP EVENT IF EXISTS `ev_sign_association_task`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_sign_association_task` ON SCHEDULE EVERY 1 MONTH STARTS '2016-10-01 01:30:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_stat_cms_association_task_kpi_month()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_36
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_36`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_36` ON SCHEDULE AT '2016-05-20 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(36,'我是这样吃美食的，你敢吗！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_39
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_39`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_39` ON SCHEDULE AT '2016-05-26 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(39,'这里有着世界最全的舞种，不服？来战！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_43
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_43`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_43` ON SCHEDULE AT '2016-06-01 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(43,'【不服来战】最新一期儿歌比赛开始啦！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_48
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_48`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_48` ON SCHEDULE AT '2016-06-08 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(48,'快将你眼中的端午拍成视频参赛吧，还能拿奖金呢！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_49
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_49`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_49` ON SCHEDULE AT '2016-06-17 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(49,'在浴室房间声嘶力竭的唱歌，真的有想象中那么好听吗？Exm？？？')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_50
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_50`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_50` ON SCHEDULE AT '2016-06-24 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(50,'余罪模仿大赛，可配音，可飚演技，可混剪，带着余罪high翻双休！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_51
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_51`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_51` ON SCHEDULE AT '2016-06-27 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(51,'不要')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_52
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_52`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_52` ON SCHEDULE AT '2016-07-04 18:10:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(52,'第二期笑傲江湖正式开启，不服？等你来战！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_53
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_53`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_53` ON SCHEDULE AT '2016-07-11 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(53,'第三期笑傲江湖浙江线上海选正式开启，不服？等你来战！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_54
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_54`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_54` ON SCHEDULE AT '2016-07-18 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(54,'第四期笑傲江湖浙江赛区选手推选正式开启，不服？等你来战！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_55
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_55`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_55` ON SCHEDULE AT '2016-07-25 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(55,'第五期笑傲江湖浙江赛区选手推选正式开启，不服？等你来战！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_56
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_56`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_56` ON SCHEDULE AT '2016-07-29 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(56,'《1+1=爱》电影选角，你离成名只差一个参赛！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_57
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_57`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_57` ON SCHEDULE AT '2016-08-12 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(57,'奥运健儿都是大写网红，不服？用表情打败他们！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_59
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_59`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_59` ON SCHEDULE AT '2016-08-15 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(59,'  ')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_67
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_67`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_67` ON SCHEDULE AT '2016-08-25 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(67,'不服最美丽的人儿都在这呢~')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_69
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_69`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_69` ON SCHEDULE AT '2016-09-19 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(69,'这是大家公认的经典歌曲，你赞同吗？')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_71
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_71`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_71` ON SCHEDULE AT '2016-09-29 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(71,'无论你是葛优瘫、看人浪、聚会趴，都可以在不服晒出你的黄金假期，还能赢取不服币哟')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_73
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_73`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_73` ON SCHEDULE AT '2016-10-09 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(73,'不会唱歌，不会跳舞，只要有音乐，我就能释放身体，律动起来~')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_75
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_75`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_75` ON SCHEDULE AT '2016-10-17 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(75,'他们说这是最适合妹纸卖萌的舞蹈')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_77
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_77`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_77` ON SCHEDULE AT '2016-10-18 17:30:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(77,'动动手指就能赢取不服币')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_79
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_79`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_79` ON SCHEDULE AT '2016-10-26 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(79,'十秒逗笑你，不服来战！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_81
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_81`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_81` ON SCHEDULE AT '2016-10-27 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(81,'感觉自己萌萌哒，一大群阿拉蕾来袭！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_83
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_83`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_83` ON SCHEDULE AT '2016-11-03 17:30:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(83,'一胸不平何以平天下，一乳不聚何以聚人心，进来投票选出你最满意的视频吧~')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_87
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_87`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_87` ON SCHEDULE AT '2016-11-23 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(87,'票圈下起了大雪，快晒出你窗外的天气吧~')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_89
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_89`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_89` ON SCHEDULE AT '2016-12-02 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(89,'快来模仿可爱颂2，还能赢取不服币！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_91
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_91`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startBoxingMatch_91` ON SCHEDULE AT '2016-12-14 17:30:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(91,'我们都是木头人，不许说话不许动。')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startBoxingMatch_93
-- ----------------------------
DROP EVENT IF EXISTS `ev_startBoxingMatch_93`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_startBoxingMatch_93` ON SCHEDULE AT '2016-12-19 10:42:00' ON COMPLETION PRESERVE DISABLE COMMENT '开始不服来战' DO call startBoxingMatch(93,'《不一样的锦衣卫》电影选角，明星给你跑龙套！')
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_36
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_36`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_36` ON SCHEDULE AT '2016-05-20 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=36 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_39
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_39`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_39` ON SCHEDULE AT '2016-05-26 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=39 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_43
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_43`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_43` ON SCHEDULE AT '2016-06-01 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=43 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_48
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_48`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_48` ON SCHEDULE AT '2016-06-08 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=48 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_49
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_49`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_49` ON SCHEDULE AT '2016-06-17 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=49 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_50
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_50`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_50` ON SCHEDULE AT '2016-06-24 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=50 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_51
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_51`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_51` ON SCHEDULE AT '2016-06-27 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=51 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_52
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_52`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_52` ON SCHEDULE AT '2016-07-04 18:10:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=52 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_53
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_53`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_53` ON SCHEDULE AT '2016-07-11 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=53 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_54
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_54`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_54` ON SCHEDULE AT '2016-07-18 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=54 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_55
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_55`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_55` ON SCHEDULE AT '2016-07-25 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=55 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_56
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_56`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_56` ON SCHEDULE AT '2016-07-29 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=56 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_57
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_57`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_57` ON SCHEDULE AT '2016-08-12 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=57 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_59
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_59`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_59` ON SCHEDULE AT '2016-08-15 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=59 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_67
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_67`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_67` ON SCHEDULE AT '2016-08-25 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=67 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_69
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_69`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_69` ON SCHEDULE AT '2016-09-19 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=69 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_71
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_71`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_71` ON SCHEDULE AT '2016-09-29 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=71 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_73
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_73`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_73` ON SCHEDULE AT '2016-10-09 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=73 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_75
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_75`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_75` ON SCHEDULE AT '2016-10-17 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=75 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_77
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_77`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_77` ON SCHEDULE AT '2016-10-18 17:30:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=77 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_79
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_79`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_79` ON SCHEDULE AT '2016-10-26 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=79 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_81
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_81`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_81` ON SCHEDULE AT '2016-10-27 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=81 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_83
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_83`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_83` ON SCHEDULE AT '2016-11-03 17:30:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=83 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_85
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_85`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_85` ON SCHEDULE AT '2016-11-14 15:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=85 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_87
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_87`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_87` ON SCHEDULE AT '2016-11-23 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=87 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_89
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_89`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_89` ON SCHEDULE AT '2016-12-02 17:00:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=89 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_91
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_91`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_91` ON SCHEDULE AT '2016-12-14 17:30:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=91 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_startSpecial_93
-- ----------------------------
DROP EVENT IF EXISTS `ev_startSpecial_93`;
DELIMITER ;;
CREATE DEFINER=`xykj2016`@`%` EVENT `ev_startSpecial_93` ON SCHEDULE AT '2016-12-19 10:30:00' ON COMPLETION PRESERVE DISABLE COMMENT '开启封面卡片' DO UPDATE special_activity_and_group SET `status`=1,match_status=1 WHERE related_id=93 and type=4
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_supplement_total_data
-- ----------------------------
DROP EVENT IF EXISTS `ev_supplement_total_data`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_supplement_total_data` ON SCHEDULE EVERY 1 DAY STARTS '2016-05-19 04:00:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_supplement_alive(CURDATE() - INTERVAL 33 DAY ,CURDATE())
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_support_zhangw
-- ----------------------------
DROP EVENT IF EXISTS `ev_support_zhangw`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_support_zhangw` ON SCHEDULE EVERY 1 DAY STARTS '2016-05-19 06:00:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_support_zhangw()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_total_today_alive
-- ----------------------------
DROP EVENT IF EXISTS `ev_total_today_alive`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_total_today_alive` ON SCHEDULE EVERY 32 MINUTE STARTS '2016-05-19 00:31:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_total_today_alive()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_trunc_reckon_repeat
-- ----------------------------
DROP EVENT IF EXISTS `ev_trunc_reckon_repeat`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_trunc_reckon_repeat` ON SCHEDULE EVERY 1 DAY STARTS '2016-12-13 00:00:01' ON COMPLETION PRESERVE ENABLE DO truncate table tab_reckon_repeat
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_update_comment_count
-- ----------------------------
DROP EVENT IF EXISTS `ev_update_comment_count`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_update_comment_count` ON SCHEDULE EVERY 1 DAY STARTS '2016-08-01 04:29:00' ON COMPLETION PRESERVE ENABLE DO UPDATE tab_media a SET cnumber = (select count(*) from tab_media_comment b WHERE a.id = b.media_id AND b.status = 0)
WHERE EXISTS
(
select 1 from tab_media_comment b WHERE a.id = b.media_id AND b.status = 0
)
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_update_media
-- ----------------------------
DROP EVENT IF EXISTS `ev_update_media`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_update_media` ON SCHEDULE EVERY 1 DAY STARTS '2016-12-16 06:00:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_update_media()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_update_quan_rank
-- ----------------------------
DROP EVENT IF EXISTS `ev_update_quan_rank`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_update_quan_rank` ON SCHEDULE EVERY 1 WEEK STARTS '2016-04-25 01:00:00' ON COMPLETION PRESERVE ENABLE DO UPDATE tab_quan_rank
        SET hisnumber = hisnumber + pnumber,
         pnumber = 0
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_update_user_pcount
-- ----------------------------
DROP EVENT IF EXISTS `ev_update_user_pcount`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_update_user_pcount` ON SCHEDULE EVERY 1 DAY STARTS '2016-08-01 04:10:00' ON COMPLETION PRESERVE ENABLE DO update tab_user a set fnumber=(select count(*) from tab_user_attention b where a.id=b.buser_id)
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_weekstar_gift_rank
-- ----------------------------
DROP EVENT IF EXISTS `ev_weekstar_gift_rank`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_weekstar_gift_rank` ON SCHEDULE EVERY 1 WEEK STARTS '2016-11-28 00:00:05' ON COMPLETION PRESERVE ENABLE COMMENT '周星礼物排行' DO CALL pro_weekstar_gift_rank()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for ev_xuni_
-- ----------------------------
DROP EVENT IF EXISTS `ev_xuni_`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `ev_xuni_` ON SCHEDULE EVERY 1 DAY STARTS '2016-12-09 02:00:00' ON COMPLETION PRESERVE ENABLE DO CALL pro_xuni_()
;;
DELIMITER ;
