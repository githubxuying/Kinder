/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : kindergarten

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-08-03 16:25:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `custom_list`
-- ----------------------------
DROP TABLE IF EXISTS `custom_list`;
CREATE TABLE `custom_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reward` varchar(255) DEFAULT NULL,
  `reward_item` varchar(255) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `low_score` int(3) DEFAULT NULL,
  `high_score` int(3) DEFAULT NULL,
  `custom_status` varchar(255) DEFAULT NULL,
  `add_user` varchar(255) DEFAULT NULL,
  `add_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom_list
-- ----------------------------
INSERT INTO `custom_list` VALUES ('1', '奖项', '招生亲子体验活动', '双休时间积极参加幼儿园招生亲子体验活动', '20', '0', '使用', '王秀红', '2017-07-31');
INSERT INTO `custom_list` VALUES ('2', '扣项', '不参与园所组织的各项培训', '不参与园所组织的各项培训半天扣5分、一天扣10分、一天半扣20分、两天扣30分', '-5', '0', '使用', '王秀红', '2017-07-31');
INSERT INTO `custom_list` VALUES ('3', '扣项', '上课时间吃饭', '上课吃饭一次扣1分', '-1', '-10', '使用', null, null);
INSERT INTO `custom_list` VALUES ('4', '扣项', '班级卫生不合格', '班级卫生不合格每次扣1分', '-1', '-10', '使用', null, null);
INSERT INTO `custom_list` VALUES ('5', '扣项', '小朋友上课吃东西', '小朋友上课吃东西每次扣2分', '-5', '-10', '使用', null, '2017-07-31');
INSERT INTO `custom_list` VALUES ('6', '奖项', '测试数据呀', '测试数据', '1', '0', '使用', null, '2017-08-22');

-- ----------------------------
-- Table structure for `de_custom_list`
-- ----------------------------
DROP TABLE IF EXISTS `de_custom_list`;
CREATE TABLE `de_custom_list` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `reward` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `sort_id` int(5) DEFAULT NULL,
  `reward_item` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `custom_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of de_custom_list
-- ----------------------------
INSERT INTO `de_custom_list` VALUES ('1', '扣分', '工作类', '4', '旷工一次', '-100', '使用');
INSERT INTO `de_custom_list` VALUES ('2', '扣分', '工作类', '4', '迟到/早退', '-10,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('3', '扣分', '工作类', '4', '事假/病假', '-10,-20,-30', '使用');
INSERT INTO `de_custom_list` VALUES ('4', '扣分', '工作类', '4', '擅自串岗/离岗', '-20,-30,-40,-50', '使用');
INSERT INTO `de_custom_list` VALUES ('5', '扣分', '工作类', '4', '代签或找人代签考勤', '-30', '使用');
INSERT INTO `de_custom_list` VALUES ('6', '扣分', '工作类', '4', '不参加\"月末欢乐汇\"活动', '-50', '使用');
INSERT INTO `de_custom_list` VALUES ('7', '扣分', '工作类', '4', '请假时间已满，不续假或续假未经批准，未到岗', '-100', '使用');
INSERT INTO `de_custom_list` VALUES ('8', '扣分', '工作类', '4', '上班吃东西(幼儿，自带)', '-20', '使用');
INSERT INTO `de_custom_list` VALUES ('9', '扣分', '工作类', '4', '带着情绪工作(对幼儿、同事)', '-50', '使用');
INSERT INTO `de_custom_list` VALUES ('10', '扣分', '工作类', '4', '收受家长礼物', '-10,-20,-30,-40,-50', '使用');
INSERT INTO `de_custom_list` VALUES ('11', '扣分', '工作类', '4', '园所内出现体罚或变相体罚幼儿的事件', '-50,-60,-70,-80,-90,-100,-110,-120,-130,-140,-150,-160,-170,-180,-190,-200', '使用');
INSERT INTO `de_custom_list` VALUES ('12', '扣分', '工作类', '4', '上班期间玩手机，接打与工作无关的电话', '-20', '使用');
INSERT INTO `de_custom_list` VALUES ('13', '扣分', '个人类', '5', '上班时间妆容不雅（穿着不符合标准，浓妆艳抹等）', '-1,-2,-3,-4,-5,-6,-7,-8,-9,-10', '使用');
INSERT INTO `de_custom_list` VALUES ('14', '扣分', '个人类', '5', '上班期间喝酒，园内抽烟', '-20', '使用');
INSERT INTO `de_custom_list` VALUES ('15', '扣分', '个人类', '5', '在园内参与打架斗殴事件', '-50,-60,-70,-80,-90,-100,-110,-120,-130,-140,-150,-160,-170,-180,-190,-200', '使用');
INSERT INTO `de_custom_list` VALUES ('16', '扣分', '个人类', '5', '破坏团队团结的行为，视情况严重性酌情扣分', '-20,-30,-40,-50,-60,-70,-80,-90,-100', '使用');
INSERT INTO `de_custom_list` VALUES ('17', '扣分', '个人类', '5', '不服从领导安排', '-20,-30,-40,-50', '使用');
INSERT INTO `de_custom_list` VALUES ('18', '扣分', '个人类', '5', '破坏公物', '-10,-20,-30,-40,-50', '使用');
INSERT INTO `de_custom_list` VALUES ('19', '扣分', '个人类', '5', '发生欺上瞒下事件', '-20,-30,-40,-50,-60,-70,-80,-90,-100', '使用');
INSERT INTO `de_custom_list` VALUES ('20', '扣分', '专业', '6', '每月未能按时完成环境创设工作', '-10,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('21', '扣分', '专业', '6', '每周未按时完成本岗位工作任务', '-10,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('22', '扣分', '专业', '6', '各项检查评比工作不符合工作要求（卫生评比、环创评比、教学评比、自制玩教具评比等）', '-10,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('23', '扣分', '专业', '6', '因个人失误或误判影响工作质量或活动质量', '-5,-10,-15,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('24', '扣分', '专业', '6', '不参加园所组织的各项学习培训', '-10', '使用');
INSERT INTO `de_custom_list` VALUES ('25', '扣分', '技能', '7', '未能按时按质完成领导布置的临时性工作', '-5,-10,-15,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('26', '扣分', '技能', '7', '未能按时按质完成园所大型活动', '-5,-10,-15,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('27', '扣分', '技能', '7', '未能按时按质完成观摩活动', '-5,-10,-15,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('28', '扣分', '硬件设施', '8', '本岗位管辖范围内硬件设施有损坏', '-5,-10,-15,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('29', '扣分', '硬件设施', '8', '本岗位管辖范围内硬件设施有丢失', '-5,-10,-15,-20,-25,-30,-35,-40,-45,-50', '使用');
INSERT INTO `de_custom_list` VALUES ('30', '扣分', '硬件设施', '8', '本岗位管辖范围内硬件设施摆放不符合园所标准', '-5,-10,-15,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('31', '扣分', '清洁卫生', '9', '本岗位管辖范围内物品有污渍、有垃圾', '-5,-10', '使用');
INSERT INTO `de_custom_list` VALUES ('32', '扣分', '清洁卫生', '9', '未按时按质认真完成卫生消毒工作', '-5,-10', '使用');
INSERT INTO `de_custom_list` VALUES ('33', '扣分', '清洁卫生', '9', '本岗位管辖范围内的地面有水渍、污渍', '-1,-2,-3,-4,-5,-6,-7,-8,-9,-10', '使用');
INSERT INTO `de_custom_list` VALUES ('34', '扣分', '清洁卫生', '9', '本岗位管辖范围内有卫生死角', '-5,-10,-15,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('35', '扣分', '清洁卫生', '9', '卫生评比最后一名', '-10', '使用');
INSERT INTO `de_custom_list` VALUES ('36', '扣分', '服务质量', '10', '被家长投诉', '-10,-20,-30,-40,-50', '使用');
INSERT INTO `de_custom_list` VALUES ('37', '扣分', '服务质量', '10', '学期末家长满意度低于85%（以家长满意度调查问卷为准）', '-10,-20,-30', '使用');
INSERT INTO `de_custom_list` VALUES ('38', '扣分', '服务质量', '10', '每学期未完成班级招生目标', '-10,-20,-30,-40,-50', '使用');
INSERT INTO `de_custom_list` VALUES ('39', '扣分', '服务质量', '10', '每学期班级保生率低于85%', '-10,-20,-30', '使用');
INSERT INTO `de_custom_list` VALUES ('40', '扣分', '服务质量', '10', '出现安全事故', '-20,-30,-40,-50,-60,-70,-80,-90,-100,-110,-120,-130,-140,-150,-160,-170,-180,-190,-200', '使用');
INSERT INTO `de_custom_list` VALUES ('41', '扣分', '服务质量', '10', '每月班级幼儿出勤率低于80%', '-10,-20,-30,-40,-50', '使用');
INSERT INTO `de_custom_list` VALUES ('42', '扣分', '基础管理', '11', '违反园所规章制度', '-5,-10,-15,-20,-25,-30', '使用');
INSERT INTO `de_custom_list` VALUES ('43', '扣分', '基础管理', '11', '本岗位各项文本记录不清晰、内容不完整、有破损', '-5,-10,-15,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('44', '扣分', '基础管理', '11', '班组成员出现矛盾', '-10,-20,-30', '使用');
INSERT INTO `de_custom_list` VALUES ('45', '扣分', '基础管理', '11', '所辖工作区域范围内乱贴乱画', '-5,-10,-15,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('46', '扣分', '保教工作', '12', '未按时提交各类文案', '-5,-10,-15,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('47', '扣分', '保教工作', '12', '未按时按质完成工作计划', '-10,-20,-30', '使用');
INSERT INTO `de_custom_list` VALUES ('48', '扣分', '保教工作', '12', '未按时组织月末展示活动', '-5,-10,-15,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('49', '扣分', '保教工作', '12', '未按时按质开展户外活动', '-5,-10,-15,-20', '使用');
INSERT INTO `de_custom_list` VALUES ('50', '奖分', '工作类', '4', '每学期满勤', '100', '使用');
INSERT INTO `de_custom_list` VALUES ('51', '奖分', '工作类', '4', '当月工作时间满勤', '30', '使用');
INSERT INTO `de_custom_list` VALUES ('52', '奖分', '工作类', '4', '每月无体罚或变相体罚幼儿的行为', '20', '使用');
INSERT INTO `de_custom_list` VALUES ('53', '奖分', '工作类', '4', '同事间互帮互助', '1,2,3,4,5,6,7,8,9,10', '使用');
INSERT INTO `de_custom_list` VALUES ('54', '奖分', '工作类', '4', '好人好事', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20', '使用');
INSERT INTO `de_custom_list` VALUES ('55', '奖分', '工作类', '4', '家长送礼主动上交', '5,10,15,20', '使用');
INSERT INTO `de_custom_list` VALUES ('56', '奖分', '个人类', '5', '每月阅读一本书籍', '5,10', '使用');
INSERT INTO `de_custom_list` VALUES ('57', '奖分', '个人类', '5', '积极参加继续教育类培训', '5,10,15,20', '使用');
INSERT INTO `de_custom_list` VALUES ('58', '奖分', '个人类', '5', '父母过生日或春节给父母买礼物', '10', '使用');
INSERT INTO `de_custom_list` VALUES ('59', '奖分', '个人类', '5', '通过自身努力，为幼儿园做出贡献', '50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,210,220,230,240,250,260,270,280,290,300', '使用');
INSERT INTO `de_custom_list` VALUES ('60', '奖分', '专业', '6', '每月积极为幼儿创设适宜的班级生活、学习环境 （由上级统一加分）', '5,10,15,20', '使用');
INSERT INTO `de_custom_list` VALUES ('61', '奖分', '专业', '6', '每周按时完成本岗工作任务（由上级统一加分）', '5,10,15,20', '使用');
INSERT INTO `de_custom_list` VALUES ('62', '奖分', '专业', '6', '各项检查评比工作符合工作要求（如卫生评比等，由上级统一加分）', '5,10,15,20', '使用');
INSERT INTO `de_custom_list` VALUES ('63', '奖分', '专业', '6', '为本岗位人员分享有价值的工作方法', '5,10,15,20', '使用');
INSERT INTO `de_custom_list` VALUES ('64', '奖分', '专业', '6', '率先解决工作中的难题', '10,20,30', '使用');
INSERT INTO `de_custom_list` VALUES ('65', '奖分', '专业', '6', '为幼儿园提出合理化建议并采纳', '5,10,15,20,25,30,35,40,45,50', '使用');
INSERT INTO `de_custom_list` VALUES ('66', '奖分', '专业', '6', '获得荣誉级别（按在本园工作期间内为准）', '30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200', '使用');
INSERT INTO `de_custom_list` VALUES ('67', '奖分', '技能', '7', '承担大型活动组织工作', '10,20', '使用');
INSERT INTO `de_custom_list` VALUES ('68', '奖分', '技能', '7', '得到园领导认可的创新工作', '10,20', '使用');
INSERT INTO `de_custom_list` VALUES ('69', '奖分', '技能', '7', '积极参与“月末欢乐汇”节目', '5,10,15,20,25,30', '使用');
INSERT INTO `de_custom_list` VALUES ('70', '奖分', '技能', '7', '承担观摩活动', '10,20,30', '使用');
INSERT INTO `de_custom_list` VALUES ('71', '奖分', '技能', '7', '代表园所参加园外活动', '10,20', '使用');
INSERT INTO `de_custom_list` VALUES ('72', '奖分', '技能', '7', '完成领导临时性工作安排一次', '5,10,15', '使用');
INSERT INTO `de_custom_list` VALUES ('73', '奖分', '硬件设置', '8', '每月本岗位管辖范围内硬件设施无损坏', '10', '使用');
INSERT INTO `de_custom_list` VALUES ('74', '奖分', '硬件设置', '8', '每月本岗位管辖范围内硬件设施无丢失', '10', '使用');
INSERT INTO `de_custom_list` VALUES ('75', '奖分', '硬件设置', '8', '每周本岗位管辖范围内硬件设施摆放符合园所标准', '5', '使用');
INSERT INTO `de_custom_list` VALUES ('76', '奖分', '清洁卫生', '9', '每周本岗位管辖范围内物品干净清洁、无污渍、无垃圾', '10', '使用');
INSERT INTO `de_custom_list` VALUES ('77', '奖分', '清洁卫生', '9', '每周本岗位管辖范围按时按质认真完成卫生消毒工作', '10', '使用');
INSERT INTO `de_custom_list` VALUES ('78', '奖分', '清洁卫生', '9', '每周本岗位管辖范围内的地面保持清洁、干爽', '10', '使用');
INSERT INTO `de_custom_list` VALUES ('79', '奖分', '清洁卫生', '9', '每月本岗位管辖范围内无卫生死角', '10', '使用');
INSERT INTO `de_custom_list` VALUES ('80', '奖分', '清洁卫生', '9', '每周卫生评比集体第一名', '10', '使用');
INSERT INTO `de_custom_list` VALUES ('81', '奖分', '服务质量', '10', '服务工作得到家长认可，获得表扬（口头表扬除外）', '10,20', '使用');
INSERT INTO `de_custom_list` VALUES ('82', '奖分', '服务质量', '10', '学期末家长满意度达95%以上（以家长满意度调查问卷为准）', '30', '使用');
INSERT INTO `de_custom_list` VALUES ('83', '奖分', '服务质量', '10', '每学期积极完成班级招生目标', '30', '使用');
INSERT INTO `de_custom_list` VALUES ('84', '奖分', '服务质量', '10', '每学期班级保生率达95%以上', '30', '使用');
INSERT INTO `de_custom_list` VALUES ('85', '奖分', '服务质量', '10', '每学期班级无安全事故', '50', '使用');
INSERT INTO `de_custom_list` VALUES ('86', '奖分', '服务质量', '10', '每月班级无安全事故', '30', '使用');
INSERT INTO `de_custom_list` VALUES ('87', '奖分', '服务质量', '10', '每月班级幼儿出勤率达90%以上', '30', '使用');
INSERT INTO `de_custom_list` VALUES ('88', '奖分', '基础管理', '11', '为园所成功推荐1名优秀人才', '20', '使用');
INSERT INTO `de_custom_list` VALUES ('89', '奖分', '基础管理', '11', '每月无违反园所规章制度的行为', '10', '使用');
INSERT INTO `de_custom_list` VALUES ('90', '奖分', '基础管理', '11', '本岗位各项文本记录清晰、内容完整、无破损', '10', '使用');
INSERT INTO `de_custom_list` VALUES ('91', '奖分', '基础管理', '11', '每月班组成员配合默契，无矛盾现象发生', '5', '使用');
INSERT INTO `de_custom_list` VALUES ('92', '奖分', '基础管理', '11', '所辖工作区域范围内无乱贴纸张现象', '5', '使用');
INSERT INTO `de_custom_list` VALUES ('93', '奖分', '保教工作', '12', '每周按时提交各类文案', '5', '使用');
INSERT INTO `de_custom_list` VALUES ('94', '奖分', '保教工作', '12', '每周按时按质完成工作计划', '10', '使用');
INSERT INTO `de_custom_list` VALUES ('95', '奖分', '保教工作', '12', '每月按时组织月末展示活动', '5,10,15', '使用');
INSERT INTO `de_custom_list` VALUES ('96', '奖分', '保教工作', '12', '每周按时按质开展户外活动', '5,10,15', '使用');
INSERT INTO `de_custom_list` VALUES ('97', '奖分', '保教工作', '12', '按时按质完成园所大型活动', '5,10,15', '使用');

-- ----------------------------
-- Table structure for `reward_list`
-- ----------------------------
DROP TABLE IF EXISTS `reward_list`;
CREATE TABLE `reward_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reward_object` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `be_app_id` int(11) DEFAULT NULL,
  `app_user` varchar(255) DEFAULT NULL,
  `be_app_user` varchar(255) DEFAULT NULL,
  `app_item` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `face` varchar(255) DEFAULT NULL,
  `app_time` varchar(255) DEFAULT NULL,
  `review_user` varchar(255) DEFAULT NULL,
  `review_time` varchar(255) DEFAULT NULL,
  `reject_user` varchar(255) DEFAULT NULL,
  `reject_explain` varchar(255) DEFAULT NULL,
  `reject_time` varchar(255) DEFAULT NULL,
  `reward_status` varchar(255) DEFAULT NULL,
  `apply_release` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reward_list
-- ----------------------------
INSERT INTO `reward_list` VALUES ('46', null, '奖分', '17', '17', '何红', '何红', '家长送礼主动上交', '表现这么好，给分吧', '5', 'haixiu.gif', '2017-09-23 15:28', '李丽', '2017-08-24 13:45', '', '', '', '审核', '申请');
INSERT INTO `reward_list` VALUES ('47', null, '扣分', '5', '3', '李丽', '刘娜', '园所内出现体罚或变相体罚幼儿的事件', '固定项扣分', '-50', 'liulei.gif', '2017-09-23 17:13', '李丽', '2017-08-24 15:56', null, null, null, '审核', '申请');
INSERT INTO `reward_list` VALUES ('48', null, '奖分', '5', '17', '李丽', '何红', '每学期满勤', '继续努力哟！', '100', 'yaobai.gif', '2017-09-24 15:48', '李丽', '2017-08-25 11:07', null, null, null, '审核', '申请');
INSERT INTO `reward_list` VALUES ('52', null, '扣项', null, '19', '李丽', '王雷文', '小朋友上课吃东西', '下次要注意了呀', '-5', 'no.gif', '2017-09-24 16:24', null, '2017-08-25 11:08', null, null, null, '审核', '下达');
INSERT INTO `reward_list` VALUES ('53', null, '扣项', null, '3', '李丽', '刘娜', '小朋友上课吃东西', '注意了呀', '0', 'haixiu.gif', '2017-09-24 16:25', null, '2017-08-25 11:08', null, null, null, '审核', '下达');
INSERT INTO `reward_list` VALUES ('54', null, '扣项', null, '18', '李丽', '何红红', '上课时间吃饭', '下次注意', '-10', 'jingya.gif', '2017-09-24 16:38', null, '2017-08-26 10:42', null, null, null, '审核', '下达');
INSERT INTO `reward_list` VALUES ('55', null, '扣分', null, '18', '李丽', '何红红', '迟到/早退', '打的费', '-10', 'jingya.gif', '2017-09-24 16:39', null, '2017-08-26 10:13', null, null, null, '审核', '下达');
INSERT INTO `reward_list` VALUES ('56', null, '扣项', null, '18', '李丽', '何红红', '班级卫生不合格', '好好检讨一下', '-10', 'jingya.gif', '2017-09-24 16:51', null, null, '李丽', '不扣了，下次注意吧', '2017-08-25 10:47', '驳回', '下达');
INSERT INTO `reward_list` VALUES ('57', null, '扣项', null, '18', '李丽', '何红红', '不参与园所组织的各项培训', '对方答复的', '-1', 'no.gif', '2017-09-24 16:52', null, '2017-08-26 10:00', null, null, null, '审核', '下达');
INSERT INTO `reward_list` VALUES ('64', null, '扣项', null, '18', '李丽', '何红红', '不参与园所组织的各项培训', '测试', '-1', 'no.gif', '2017-09-25 08:18', null, '2017-08-26 09:33', null, null, null, '审核', '下达');
INSERT INTO `reward_list` VALUES ('65', null, '扣项', null, '19', '李丽', '王雷文', '不参与园所组织的各项培训', 'ddd', '222', 'yaobai.gif', '2017-09-25 08:56', '李丽', '2017-08-26 08:46', null, null, null, '审核', '下达');
INSERT INTO `reward_list` VALUES ('67', null, '奖分', '19', '19', '王雷文', '王雷文', '好人好事', 'dfdc', '1', 'haixiu.gif', '2017-09-27 08:23', null, null, '李丽', '亲，求你了，别再一直重复了！', '2017-08-27 08:24', '驳回', '申请');
INSERT INTO `reward_list` VALUES ('68', null, null, null, '20', '系统', '张丽丽', '【学历】中专及以下', null, '20', null, null, null, null, null, null, null, null, null);
INSERT INTO `reward_list` VALUES ('69', null, null, null, '18', '系统', '何红红', '【学历】本科', '固定积分', '40', 'guzhang.gif', '2017-09-07 14:13', '系统', '2017-09-07 14:13', null, null, null, '审核', '下达');

-- ----------------------------
-- Table structure for `sort_list`
-- ----------------------------
DROP TABLE IF EXISTS `sort_list`;
CREATE TABLE `sort_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sort_list
-- ----------------------------
INSERT INTO `sort_list` VALUES ('1', '职业素养', '0', '0', '1');
INSERT INTO `sort_list` VALUES ('2', '业务能力', '0', '0', '1');
INSERT INTO `sort_list` VALUES ('3', '工作质量', '0', '0', '1');
INSERT INTO `sort_list` VALUES ('4', '工作类', '1', '1,4', '2');
INSERT INTO `sort_list` VALUES ('5', '个人类', '1', '1,5', '2');
INSERT INTO `sort_list` VALUES ('6', '专业', '2', '2,6', '2');
INSERT INTO `sort_list` VALUES ('7', '技能', '2', '2,7', '2');
INSERT INTO `sort_list` VALUES ('8', '硬件设施', '3', '3,8', '2');
INSERT INTO `sort_list` VALUES ('9', '清洁卫生', '3', '3,9', '2');
INSERT INTO `sort_list` VALUES ('10', '服务质量', '3', '3,10', '2');
INSERT INTO `sort_list` VALUES ('11', '基础管理', '3', '3,11', '2');
INSERT INTO `sort_list` VALUES ('12', '保教工作', '3', '3,12', '2');

-- ----------------------------
-- Table structure for `team_list`
-- ----------------------------
DROP TABLE IF EXISTS `team_list`;
CREATE TABLE `team_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `team_score` int(11) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team_list
-- ----------------------------
INSERT INTO `team_list` VALUES ('1', '德育班', null, '小二班');
INSERT INTO `team_list` VALUES ('2', '德贤班', null, '小一班');

-- ----------------------------
-- Table structure for `user_list`
-- ----------------------------
DROP TABLE IF EXISTS `user_list`;
CREATE TABLE `user_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `marriage` varchar(4) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `entry_time` date DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `total_score` int(10) DEFAULT NULL,
  `leader` varchar(255) DEFAULT NULL,
  `user_status` varchar(255) DEFAULT NULL,
  `mod_time` varchar(255) DEFAULT NULL,
  `team` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `check` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_list
-- ----------------------------
INSERT INTO `user_list` VALUES ('3', '15176622198', '', '刘娜', '男', '中专及以下', '未婚', '资格证', '员工', '2017-08-20', '15176622198', '2017-07-27', null, null, '2', '班级主管', '0', '2017-08-23 ', '2', '', 'yes');
INSERT INTO `user_list` VALUES ('5', '15176622197', '', '李丽', '女', '中专及以下', '未婚', '资格证', '班级主管', '2017-07-10', '15176622197', '2017-07-27', null, null, '10', '班级主管', '0', '2017-08-23', '2', '等等', 'yes');
INSERT INTO `user_list` VALUES ('6', '15176622196', '', '张妍', '女', '中专及以下', '未婚', '教师资格证', '园长', '2017-07-03', '13566696969', '2017-07-18', null, '书法', '3', '', '0', '2017-07-17 ', '2', '测试数据', 'yes');
INSERT INTO `user_list` VALUES ('17', '13566696969', null, '何红', '女', '中专及以下', '未婚', '厨师资格证', '员工', '2017-07-10', '13566696969', '2017-08-07', null, null, '20', '', '0', '2017-08-22 ', '1', '冬冬', 'yes');
INSERT INTO `user_list` VALUES ('18', '15176622199', null, '何红红', '女', '0', '未婚', '0', '员工', '2017-08-23', '15176622199', '2017-08-22', null, null, '-51', '', '0', '2017-08-23 ', '1', '', 'yes');
INSERT INTO `user_list` VALUES ('19', '15176622299', null, '王雷文', '女', '0', '未婚', '0', '员工', '2017-08-08', '15176622299', '2017-08-07', null, null, '1', '', '0', '2017-08-23 ', '1', '', 'yes');
INSERT INTO `user_list` VALUES ('20', '15176622566', null, '冯艳艳', '女', '大专', '未婚', '教师资格证', '员工', '2017-08-21', '15176622566', '2017-08-30', null, null, '1', '', '0', '2017-08-28', null, '', 'no');
INSERT INTO `user_list` VALUES ('21', '15176666666', null, '张丽丽', '女', '中专及以下', '未婚', '0', '员工', '2017-08-13', '15176666666', '2017-09-03', null, null, null, '', '0', '2017-09-03', null, '', 'no');
INSERT INTO `user_list` VALUES ('24', '15176696933', null, '张冬雪', '女', '本科', '未婚', '教师资格证', '员工', '2017-08-06', '15176696933', '2017-09-04', null, null, null, '班级主管', '0', '2017-09-07', null, '', 'no');
