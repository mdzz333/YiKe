﻿# Host: localhost  (Version: 5.0.96-community-nt)
# Date: 2014-09-21 17:11:26
# Generator: MySQL-Front 5.3  (Build 4.118)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "checktable"
#

CREATE TABLE `checktable` (
  `num` int(11) default NULL,
  `flag` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "checktable"
#


#
# Structure for table "employees"
#

CREATE TABLE `employees` (
  `Id` int(11) NOT NULL auto_increment,
  `name` varchar(24) default NULL,
  `sex` char(1) default '',
  `age` int(11) default '0',
  `nation` varchar(50) default NULL,
  `idNumber` varchar(100) default NULL,
  `degree` varchar(50) default NULL,
  `position` varchar(50) default NULL,
  `wages` int(7) default '0',
  `telephone` varchar(15) default NULL,
  `date` date default NULL,
  `remark` varchar(200) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

#
# Data for table "employees"
#

INSERT INTO `employees` VALUES (1,'张强','男',21,'汉族','651235489632147520','本科','厨师',4000,'15863225668','2002-03-25','表现很好'),(2,'李天一','男',36,'满族','564123544863259852','专科','厨师',4500,'15862454596','2001-04-05','表现一般'),(3,'王天籁','男',25,'回族','651235499870251563','硕士','经理',6500,'15632569852','2004-12-07','表现努力'),(4,'赵天天','男',22,'汉族','563215466194523642','本科','服务员',3000,'15632562336','2119-02-06','表现出色'),(5,'李小红','女',21,'汉族','563213021569525156','本科','传菜员',3500,'15632456852','2009-08-09','表现出色'),(6,'张小强','男',25,'回族','651235489632562546','专科','传菜员',3500,'15963256221','2010-05-02','表现很好'),(7,'刘东阳','女',22,'汉族','652315478962352658','本科','大堂经理',2500,'18325662362','2014-02-25','表现一般'),(8,'韩乐喜','女',20,'满族','632156231020548521','博士','服务员',1800,'15632564122','2014-02-05','表现出色'),(10,'李晓华','女',23,'回族','965325156325232104','本科','副经理',5500,'15632563248','2013-09-25','表现很差'),(11,'曹格','男',22,'汉族','632654125896325871','博士','传菜员',3600,'12569874526','2014-06-07','表现努力'),(14,'武超','男',21,'汉族','362321546985632568','博士','主厨',8000,'12564257896','1998-08-25','表现很好'),(24,'李小莫','女',17,'汉族','523214563259874589','本科','服务员',3500,'12356998562','2014-06-02','表现努力'),(25,'杨鹏飞','男',23,'汉族','214569874586325624','本科','厨师',3500,'16576889096','2014-06-02','表现很差');

#
# Structure for table "feedbacktbl"
#

CREATE TABLE `feedbacktbl` (
  `Id` int(11) NOT NULL auto_increment,
  `mark1` varchar(255) default NULL,
  `mark2` varchar(255) default NULL,
  `mark3` varchar(255) default NULL,
  `mark4` varchar(255) default NULL,
  `feedback` varchar(255) default NULL,
  `orderId` int(11) default NULL,
  `userId` int(11) default NULL,
  `orderTime` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "feedbacktbl"
#

INSERT INTO `feedbacktbl` VALUES (1,'一般','一般','一般','一般','uhgfckh7fzg/oaydiz6y4*te#ixtciruxdr',27,1,'14-09-16 09:07'),(2,'非常满意','非常满意','非常满意','非常满意','',27,1,'14-09-16 09:08'),(3,'非常满意','非常满意','非常满意','非常满意','ffffffgf',27,1,'14-09-16 09:08'),(4,'一般','一般','一般','一般',';:？',27,1,'14-09-19 10:06'),(5,'非常满意','非常满意','非常满意','非常满意',';:？',27,1,'14-09-19 10:06'),(6,'较满意','较满意','非常满意','非常满意','',29,1,'14-09-19 10:23'),(7,'一般','一般','一般','一般','好吃',32,1,'14-09-21 01:23'),(8,'一般','一般','一般','一般','',32,1,'14-09-21 01:31'),(9,'一般','一般','一般','一般','',140921001,1,'14-09-21 02:37'),(10,'一般','一般','一般','一般','嘘嘘',140921001,1,'14-09-21 02:38'),(11,'一般','一般','一般','一般','计算机协会大喊大叫',46,1,'14-09-21 03:25'),(12,'一般','一般','一般','一般','',52,1,'14-09-21 03:56'),(13,'一般','一般','一般','一般','记得记得记得记得就到家',53,1,'14-09-21 03:58'),(14,'一般','一般','一般','一般','u你参加你猜机身内存那吃不吃努',53,1,'14-09-21 03:58'),(15,'一般','一般','一般','一般','欢哥$几个$骨头-',64,1,'14-09-21 05:05');

#
# Structure for table "menutbl"
#

CREATE TABLE `menutbl` (
  `id` int(11) NOT NULL auto_increment,
  `filename` varchar(5000) default NULL,
  `fileExt` varchar(100) default NULL,
  `filePath` varchar(255) default NULL,
  `price` int(11) default NULL,
  `typename` varchar(500) default NULL,
  `remark` varchar(1000) default NULL,
  `typeId` int(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `typeId` (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

#
# Data for table "menutbl"
#

INSERT INTO `menutbl` VALUES (1,'馋嘴鲟鱼','png','/upload/20140604062641.png',35,'今日推荐','肉质细嫩，口感醇厚，香辣味浓。',1),(2,'茶树菇炒牛肉','png','/upload/20140604062942.png',33,'今日推荐','香辣 午餐 夏季 炒锅',1),(3,'茶皇乳鸽','png','/upload/20140604063040.png',22,'今日推荐','美味佳肴、口齿留香、珍馐佳肴',1),(4,'沾汁驴肉','png','/upload/20140604063239.png',34,'今日推荐','秀色可餐、饕餮大餐、回味无穷',1),(5,'夫妻肺片','png','/upload/20140604064153.png',12,'今日推荐','色味俱佳、垂涎欲滴、其味无穷',1),(6,'棕香排骨','png','/upload/20140604064241.png',21,'今日推荐','冰盘落玉  入眼胜画  巧夺天工',1),(7,'桂花糯米藕','png','/upload/20140604064403.png',34,'今日推荐','惟妙惟肖  小巧玲珑晶莹剔透',1),(8,'荷塘秀色','png','/upload/20140604064523.png',33,'今日推荐','玉盘珍馐 秀色可餐 饕餮大餐',1),(9,'海蜇','png','/upload/20140604064613.png',45,'今日推荐','凤髓龙肝 回味无穷 唇齿留香',1),(10,'杭州牛柳','png','/upload/20140604064702.png',29,'今日推荐','爽滑酥嫩 肉汁四溢 口感饱满',1),(11,'贵妃鸡翅','png','/upload/20140604064905.png',25,'今日推荐','回味悠长 软嫩滑爽 入口即溶 酥脆香口',1),(12,'阿香婆局子排','png','/upload/20140604065054.png',35,'今日推荐','肉质细嫩，口感醇厚，香辣味浓。',1),(13,'百花鱼子豆腐','png','/upload/20140604065209.png',21,'今日推荐','美味佳肴、口齿留香、珍馐佳肴',1),(14,'剁子羊肉','png','/upload/20140604065940.png',23,'凉菜','爽滑酥嫩 肉汁四溢 口感饱满',2),(15,'鹅肝鲍鱼菇','png','/upload/20140604070102.png',18,'凉菜','回味悠长 软嫩滑爽 入口即溶 酥脆香口 ',2),(16,'风沙大雁脯','png','/upload/20140604070220.png',17,'凉菜','色味俱佳 垂涎欲滴 八珍玉食 其味无穷',2),(17,'四喜拼盘','png','/upload/20140604070757.png',13,'凉菜','秀色可餐、饕餮大餐、回味无穷',2),(18,'盐水鸡','png','/upload/20140604071112.png',35,'凉菜','肉质细嫩，口感醇厚，香辣味浓。',2),(19,'羊键','png','/upload/20140604071211.png',19,'凉菜','色味俱佳、垂涎欲滴、其味无穷',2),(20,'养生杏果炒虾片','png','/upload/20140604074745.png',24,'凉菜','玉盘珍馐 秀色可餐 饕餮大餐',2),(21,'养生香菇','png','/upload/20140604074851.png',26,'凉菜','肉质细嫩，口感醇厚，香辣味浓。',2),(22,'养生四宝','png','/upload/20140604075003.png',23,'凉菜','爽滑酥嫩 肉汁四溢 口感饱满',2),(23,'养颜双味木瓜','png','/upload/20140604075137.png',22,'凉菜','惟妙惟肖  小巧玲珑晶莹剔透',2),(24,'绝白白菜','png','/upload/20140604075227.png',12,'凉菜','肉质细嫩，口感醇厚，香辣味浓。',2),(25,'品佛爷斋','png','/upload/20140604075310.png',26,'凉菜','百吃不厌 百味调和 百味之主',2),(26,'脆皮金瓜','png','/upload/20140604075742.png',13,'水果拼盘','臭不可闻 除腥解腻 垂涎三尺 垂涎欲滴 粗茶淡饭 ',7),(27,'干红雪梨','png','/upload/20140604075836.png',11,'水果拼盘','脆嫩著称 村酒野蔬 箪食壶酒 弹性稍差',7),(28,'豆鼓圆椒','png','/upload/20140604075959.png',17,'水果拼盘','淡而不薄 饭香扑鼻',7),(29,'火龙双脆','png','/upload/20140604080117.png',19,'水果拼盘','肉质细嫩，口感醇厚，香辣味浓。',7),(30,'黄桃芦荟','png','/upload/20140604080408.png',21,'水果拼盘','芳香四溢 风味独特 风味小吃 ',7),(31,'橙汁蜜汁山药','png','/upload/20140604080538.png',23,'水果拼盘','肉质细嫩，口感醇厚，香辣味浓。',7),(32,'排骨焖茄花','png','/upload/20140604081059.png',23,'热菜','浓而不腻、淡而不薄，酥烂脱骨，滑嫩爽脆',3),(33,'刨花羊肉','png','/upload/20140604081152.png',25,'热菜','凤髓龙肝 甘旨肥浓 瓜果梨桃',3),(34,'茶香鸭脯','png','/upload/20140604081241.png',26,'热菜','肉质细嫩，口感醇厚，香辣味浓。',3),(35,'皮蛋豆腐','png','/upload/20140604081329.png',26,'热菜','肉质细嫩，口感醇厚，香辣味浓。',3),(36,'宫廷糟鱼','png','/upload/20140604081446.png',36,'热菜','惟妙惟肖  小巧玲珑晶莹剔透',3),(37,'狗肉豆腐干白菜','png','/upload/20140604081702.png',29,'热菜','肉质细嫩，口感醇厚，香辣味浓。',3),(38,'贡鹅烧鳝段','png','/upload/20140604081810.png',38,'热菜','佳肴美味 浆酒藿肉 匠心独运',3),(39,'菇香羊菌肚','png','/upload/20140604082109.png',23,'热菜','肉质细嫩，口感醇厚，香辣味浓。',3),(40,'菇香肉','png','/upload/20140604082215.png',33,'热菜','酒足饭饱 酒醉饭饱 口齿留香',3),(41,'古法巡累鸡','png','/upload/20140604082345.png',57,'热菜','口感饱满 口感滑爽 口感爽滑',3),(42,'古法蒸甲鱼','png','/upload/20140604082436.png',45,'热菜','脍炙人口 麟肝凤髓 令人掩鼻 ',3),(43,'宫廷养生豆腐','png','/upload/20140604082556.png',26,'热菜','令人作呕 美酒佳肴 美味佳肴',3),(44,'宫廷一品多','png','/upload/20140604082644.png',24,'热菜','美味可口 难以下咽 浓而不腻 ',3),(45,'宫廷粉浆鱼肚','png','/upload/20140604083020.png',26,'甜品','酥肉嫩 其味无穷 沁人心脾',5),(46,'宫廷红薯糕','png','/upload/20140604083052.png',23,'甜品','肉质细嫩，口感醇厚，香辣味浓。',5),(47,'故乡蒸饺','png','/upload/20140604083231.png',11,'主食','肉质细嫩，口感醇厚，香辣味浓。',4),(48,'瓜仁香芋饼','png','/upload/20140604083354.png',22,'甜品','肉质细嫩，口感醇厚，香辣味浓。',5),(49,'瓜仁芋香枣','png','/upload/20140604083445.png',23,'甜品','酒酣耳熟 酒后茶馀 酒囊饭袋',5),(50,'宫廷鸡丁饭','png','/upload/20140604083655.png',8,'主食','金谷酒数 晶莹剔透 酒菜满席',4),(51,'宫爆清河虾','png','/upload/20140604083810.png',23,'甜品','肉质细嫩，口感醇厚，香辣味浓。',5),(52,'官府豆捞','png','/upload/20140604085005.png',35,'汤','惟妙惟肖  小巧玲珑晶莹剔透',6),(53,'官府炖辽参','png','/upload/20140604085023.png',55,'汤','肉质细嫩，口感醇厚，香辣味浓。',6),(54,'官府黄焖鱼翅','png','/upload/20140604085142.png',56,'汤','冰盘落玉  入眼胜画  巧夺天工',6),(55,'宫爆虾仁','png','/upload/20140604090648.png',44,'汤',' 惟妙惟肖  小巧玲珑   晶莹剔透',6),(56,'功夫五味鱼','png','/upload/20140604090818.png',45,'汤','爽滑酥嫩 肉汁四溢 口感饱满',6),(57,'功夫小壶汤','png','/upload/20140604090908.png',23,'汤','肉质细嫩，口感醇厚，香辣味浓。',6),(58,'官府鱼翅羹','png','/upload/20140604091046.png',32,'汤','回味悠长 软嫩滑爽 酥脆香口 ',6),(59,'灌汤包子','png','/upload/20140604091602.png',13,'主食','浓而不淡 淡而不薄 酥烂脱骨 ',4),(60,'灌汤金冠球','png','/upload/20140604091656.png',22,'主食','色彩鲜明 飘香四溢 闻之垂涎',4),(61,'功夫刀削面','png','/upload/20140604091816.png',5,'主食',' 八珍玉食 把酒持螯 百吃不厌 百味调和 百味之主',4),(62,'灌汤鱼丸','png','/upload/20140604091948.png',33,'汤',' 鲍鱼之肆 别出心裁 不咸不淡 菜香四溢',6),(63,'功夫菌皇汤','png','/upload/20140604092116.png',34,'汤','茶余酒后 柴米油盐 吃糠咽菜',6),(64,'光华大包子','png','/upload/20140604092241.png',12,'主食','齿颊留香 臭不可闻 除腥解腻 垂涎三尺',4),(65,'疙瘩面','png','/upload/20140604092322.png',23,'汤','垂涎欲滴 粗茶淡饭 脆嫩著称 村酒野蔬',6),(66,'哥顿金','png','/upload/20140604092409.png',39,'酒水饮料','芳香四溢 风味独特 风味小吃 凤髓龙肝 ',8),(67,'鸽汤清汤面','png','/upload/20140604092456.png',12,'主食','肉质细嫩，口感醇厚，香辣味浓。',4),(68,'疙瘩南瓜汤','png','/upload/20140604092925.png',23,'汤','甘旨肥浓 瓜果梨桃 滑润适口 回味无穷',6),(69,'冰花官燕','png','/upload/20140604093152.png',29,'甜品','肉质细嫩，口感醇厚，香辣味浓。',5),(70,'阁锅面','png','/upload/20140604093315.png',13,'主食','回味悠长 佳肴美味 浆酒藿肉 匠心独运',4),(71,'格林汉堡','png','/upload/20140604093418.png',15,'主食','惟妙惟肖  小巧玲珑晶莹剔透',4),(72,'高炉小烧饼','png','/upload/20140604093541.png',22,'主食','肉质细嫩，口感醇厚，香辣味浓。',4),(73,'高山药','png','/upload/20140604093652.png',12,'甜品','金谷酒数 晶莹剔透 酒菜满席 酒酣耳熟 ',5),(74,'冰花素蒸饺','png','/upload/20140604093743.png',12,'主食','肉质细嫩，口感醇厚，香辣味浓。',4),(75,'冰咖啡','png','/upload/20140604093851.png',16,'酒水饮料','酒后茶馀 酒囊饭袋 酒足饭饱 酒醉饭饱',8),(76,'冰梅圣女果','png','/upload/20140604094002.png',18,'甜品','肉质细嫩，口感醇厚，香辣味浓。',5),(77,'高炉烧饼','png','/upload/20140604094044.png',13,'主食','口齿留香 口感饱满 口感滑爽 口感爽滑',4),(78,'扁豆焖面','png','/upload/20140604094250.png',12,'主食','脍炙人口 麟肝凤髓 令人掩鼻 令人作呕',4),(79,'港式奶茶','png','/upload/20140604094401.png',10,'酒水饮料','肉质细嫩，口感醇厚，香辣味浓。',8),(80,'卤水核桃','png','/upload/20140604094551.png',12,'甜品','肉质细嫩，口感醇厚，香辣味浓。',5),(81,'港式云汤面','png','/upload/20140604094705.png',8,'主食','酒后茶馀 酒囊饭袋 酒足饭饱 酒醉饭饱',4),(82,'北京果木烤鸭','png','/upload/20140604095507.png',33,'今日推荐','肉质细嫩，口感醇厚，香辣味浓。',1),(83,'干笋炖老鸭','png','/upload/20140604095708.png',23,'汤','浓而不腻 皮酥肉嫩 其味无穷 沁人心脾',6),(84,'比利时皇家咖啡','png','/upload/20140604095944.png',23,'酒水饮料','肉质细嫩，口感醇厚，香辣味浓。',8),(85,'碧绿牛宝','png','/upload/20140604100040.png',23,'酒水饮料',' 甜橙对半剖开，在盘中竖立围成一寿桃形',8),(86,'鲍汁海参丸子','png','/upload/20140604100740.png',18,'甜品','肉质细嫩，口感醇厚，香辣味浓。',5),(87,'菠萝山药','png','/upload/20140604100913.png',13,'甜品','用红樱桃雕装成天鹅的眼睛',5),(88,'菠萝素荔枝肉','png','/upload/20140604100940.png',20,'甜品','肉质细嫩，口感醇厚，香辣味浓。',5),(89,'醋泡心灵美','png','/upload/20140604101951.png',13,'水果拼盘','组饰好的天鹅摆于寿桃尾部',7),(90,'醋泡双脆','png','/upload/20140604102601.png',23,'水果拼盘',' 甜橙对半剖开，在盘中竖立围成一寿桃形',7),(91,'鲍汁四宝蔬','png','/upload/20140604102822.png',35,'水果拼盘','肉质细嫩，口感醇厚，香辣味浓。',7),(92,'粗粮杂果汤','png','/upload/20140604105245.png',23,'汤',' 甜橙中间装上草莓，即成“天鹅回首',6),(93,'北极贝刺身','png','/upload/20140604110039.png',23,'水果拼盘','肉质细嫩，口感醇厚，香辣味浓。',7),(94,'鲍鱼捞饭','png','/upload/20140604110238.png',25,'甜品','美酒佳肴 美味佳肴 美味可口 难以下咽 ',5),(95,'葱香地参','png','/upload/20140604110848.png',27,'水果拼盘','芳香四溢 风味独特 风味小吃 凤髓龙肝 ',7),(96,'葱烧元宝参','png','/upload/20140604111055.png',29,'水果拼盘','芳香四溢 风味独特 风味小吃 凤髓龙肝 ',7),(97,'草莓饮料','png','/upload/20140604112107.png',21,'酒水饮料','肉质细嫩，口感醇厚，香辣味浓。',8);

#
# Structure for table "menutypetbl"
#

CREATE TABLE `menutypetbl` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "menutypetbl"
#

INSERT INTO `menutypetbl` VALUES (1,'今日推荐'),(2,'凉菜'),(3,'热菜'),(4,'主食'),(5,'甜品'),(6,'汤'),(7,'水果拼盘'),(8,'酒水饮料');

#
# Structure for table "orderdetailtbl"
#

CREATE TABLE `orderdetailtbl` (
  `id` int(11) NOT NULL auto_increment,
  `orderId` int(11) default NULL,
  `menuId` int(11) default NULL,
  `num` int(11) default NULL,
  `remark` varchar(200) default NULL,
  PRIMARY KEY  (`id`),
  KEY `orderId` (`orderId`),
  KEY `menuId` (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

#
# Data for table "orderdetailtbl"
#

INSERT INTO `orderdetailtbl` VALUES (1,18,1,1,'nothing'),(2,21,1,1,'nothing'),(3,21,1,1,'nothing'),(4,21,2,1,'nothing'),(5,21,1,1,'浣纱峪'),(6,21,1,1,'浣纱峪'),(7,21,2,1,'浣纱峪'),(8,21,1,1,'浣纱峪'),(9,21,2,3,'浣纱峪'),(10,21,3,3,'浣纱峪'),(11,21,4,2,'浣纱峪'),(12,21,5,2,'浣纱峪'),(13,21,1,1,'浣纱峪'),(14,21,2,1,'浣纱峪'),(15,21,1,1,'浣纱峪'),(16,21,2,1,'浣纱峪'),(17,21,1,1,'浣纱峪'),(18,21,2,1,'浣纱峪'),(19,21,1,1,'浣纱峪'),(20,21,2,1,'浣纱峪'),(21,21,3,1,'浣纱峪'),(22,21,2,1,'浣纱峪'),(23,21,3,1,'浣纱峪'),(24,21,2,1,'浣纱峪'),(25,21,3,1,'浣纱峪'),(26,21,1,1,'浣纱峪'),(27,21,1,1,'浣纱峪'),(28,21,1,1,'浣纱峪'),(29,21,1,1,'浣纱峪'),(30,21,2,1,'浣纱峪'),(31,21,3,1,'浣纱峪'),(32,21,1,1,'浣纱峪'),(33,21,9,1,'浣纱峪'),(34,21,2,1,'浣纱峪'),(35,21,75,1,'浣纱峪'),(36,21,3,1,'浣纱峪'),(37,21,9,1,'浣纱峪'),(38,21,75,1,'浣纱峪'),(39,21,2,1,'浣纱峪'),(40,21,3,1,'浣纱峪'),(41,21,1,1,'浣纱峪'),(42,21,4,1,'浣纱峪'),(43,21,12,1,'浣纱峪'),(44,21,11,1,'浣纱峪'),(45,22,1,1,'浣纱峪'),(46,22,54,3,'浣纱峪'),(47,22,56,3,'浣纱峪'),(48,22,83,3,'浣纱峪'),(49,22,75,3,'浣纱峪'),(50,24,1,1,'浣纱峪'),(51,24,54,1,'浣纱峪'),(52,24,66,1,'浣纱峪'),(53,24,79,1,'浣纱峪'),(54,24,46,1,'浣纱峪'),(55,25,1,1,'浣纱峪'),(56,26,1,1,'浣纱峪'),(57,27,1,1,'浣纱峪'),(58,27,2,3,'浣纱峪'),(59,27,3,5,'浣纱峪'),(60,27,1,1,'浣纱峪'),(61,27,15,1,'浣纱峪'),(62,27,1,1,'浣纱峪'),(63,27,12,1,'浣纱峪'),(64,27,12,1,'浣纱峪'),(65,27,1,2,'浣纱峪'),(66,27,1,3,'浣纱峪'),(67,27,2,1,'浣纱峪'),(68,27,3,1,'浣纱峪'),(69,27,5,1,'浣纱峪'),(70,27,6,1,'浣纱峪'),(71,27,4,1,'浣纱峪'),(72,27,1,2,'浣纱峪'),(73,28,61,3,'浣纱峪'),(74,28,60,1,'浣纱峪'),(75,29,2,1,'浣纱峪'),(76,28,2,1,'岳阳楼'),(77,28,1,1,'岳阳楼'),(78,29,3,1,'稼轩营'),(79,29,3,1,'稼轩营'),(80,28,5,1,'岳阳楼'),(81,30,2,1,'稼轩营'),(82,30,1,1,'稼轩营'),(83,31,3,1,'稼轩营'),(84,31,11,1,'稼轩营'),(85,30,13,2,'浣纱峪'),(86,30,2,4,'浣纱峪'),(87,32,1,1,'浣纱峪'),(88,32,2,1,'浣纱峪'),(89,33,2,1,'岳阳楼'),(90,33,1,1,'岳阳楼'),(91,32,3,1,'浣纱峪'),(92,33,2,1,'岳阳楼'),(93,32,1,1,'浣纱峪'),(94,32,1,1,'浣纱峪'),(95,32,2,1,'浣纱峪'),(96,32,1,1,'浣纱峪'),(97,32,2,1,'浣纱峪'),(98,32,2,2,'浣纱峪'),(99,32,1,1,'浣纱峪'),(100,32,2,1,'浣纱峪'),(101,32,2,1,'浣纱峪'),(102,140921001,1,1,'浣纱峪'),(103,46,1,1,'聚贤斋'),(104,46,1,1,'聚贤斋'),(105,46,2,1,'聚贤斋'),(106,46,3,1,'聚贤斋'),(107,52,1,1,'浣纱峪'),(108,52,1,2,'浣纱峪'),(109,53,1,1,'浣纱峪'),(110,53,2,1,'浣纱峪'),(111,53,3,1,'浣纱峪'),(112,54,3,2,'岳阳楼'),(113,53,5,1,'浣纱峪'),(114,53,4,1,'浣纱峪'),(115,55,3,1,'浣纱峪'),(116,56,2,1,'岳阳楼'),(117,55,2,2,'浣纱峪'),(118,55,3,2,'浣纱峪'),(119,55,2,16,'浣纱峪'),(120,57,2,1,'浣纱峪'),(121,57,3,1,'浣纱峪'),(122,56,3,2,'岳阳楼'),(123,56,3,2,'岳阳楼'),(124,56,1,1,'岳阳楼'),(125,56,6,1,'岳阳楼'),(126,56,7,1,'岳阳楼'),(127,57,6,1,'浣纱峪'),(128,57,5,1,'浣纱峪'),(129,57,4,1,'浣纱峪'),(130,61,1,1,'61'),(131,63,2,2,'岳阳楼'),(132,63,3,1,'岳阳楼'),(133,62,1,1,'浣纱峪'),(134,64,1,1,'浣纱峪'),(135,64,2,1,'浣纱峪'),(136,64,3,1,'浣纱峪'),(137,64,4,1,'浣纱峪'),(138,64,5,5,'浣纱峪'),(139,64,6,1,'浣纱峪'),(140,65,1,1,'岳阳楼'),(141,65,14,1,'岳阳楼'),(142,65,15,1,'岳阳楼'),(143,65,16,1,'岳阳楼'),(144,65,2,1,'岳阳楼'),(145,65,3,1,'岳阳楼'),(146,65,1,1,'岳阳楼');

#
# Structure for table "queryorder"
#

CREATE TABLE `queryorder` (
  `orderTime` varchar(30) default NULL,
  `name` varchar(40) default NULL,
  `personNum` int(11) default NULL,
  `tableId` int(11) default NULL,
  KEY `tableId` (`tableId`),
  CONSTRAINT `queryorder_ibfk_1` FOREIGN KEY (`tableId`) REFERENCES `menutypetbl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "queryorder"
#


#
# Structure for table "queryorderdetail"
#

CREATE TABLE `queryorderdetail` (
  `name` varchar(40) default NULL,
  `price` int(11) default NULL,
  `num` int(11) default NULL,
  `total` int(11) default NULL,
  `remark` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "queryorderdetail"
#


#
# Structure for table "tabletbl"
#

CREATE TABLE `tabletbl` (
  `id` int(11) NOT NULL auto_increment,
  `num` int(11) default NULL,
  `flag` int(11) default NULL,
  `description` varchar(100) default NULL,
  `orderId` int(50) default NULL,
  `longid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

#
# Data for table "tabletbl"
#

INSERT INTO `tabletbl` VALUES (1,0,1,'浣纱峪',64,140921011),(2,0,0,'岳阳楼',NULL,140921012),(3,3,1,'稼轩营',66,140921013),(4,0,0,'聚贤斋',NULL,140921014),(5,0,0,'紫云轩',NULL,NULL),(6,0,0,'快活林',NULL,NULL),(7,0,0,'逍遥阁',NULL,NULL),(8,0,0,'桃花源',NULL,NULL),(9,0,0,'明月间',NULL,NULL),(10,0,0,'杏花居',NULL,NULL),(11,0,0,'忘忧坊',NULL,NULL),(12,0,0,'玉堂阁',NULL,NULL),(13,0,0,'状元阁',NULL,NULL),(14,0,0,'墨子斋',NULL,NULL),(15,0,0,'愚公村',NULL,NULL),(16,0,0,'大禹屋',NULL,NULL),(17,0,0,'诸葛庐',NULL,NULL),(18,0,0,'伯牙居',NULL,NULL),(19,0,0,'桃园东',NULL,NULL),(20,0,0,'子期亭',NULL,NULL),(21,0,0,'常山坊',NULL,NULL),(22,0,0,'木兰祠',NULL,NULL),(23,0,0,'靛青坊',NULL,NULL),(24,0,0,'醉翁亭',NULL,NULL),(25,0,0,'荆楚乡',NULL,NULL),(26,0,0,'扁鹊堂',NULL,NULL),(27,0,0,'孔府邻',NULL,NULL),(28,0,0,'云水阁',NULL,NULL);

#
# Structure for table "ordertbl"
#

CREATE TABLE `ordertbl` (
  `id` int(11) NOT NULL auto_increment,
  `orderTime` varchar(100) default NULL,
  `userId` int(11) default NULL,
  `tableId` int(11) default NULL,
  `personNum` int(11) default NULL,
  `isPay` int(11) default NULL,
  `orderId` bigint(11) NOT NULL default '0',
  `remark` varchar(200) default NULL,
  PRIMARY KEY  (`id`),
  KEY `userId` (`userId`),
  KEY `tableId` (`tableId`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `ordertbl_ibfk_2` FOREIGN KEY (`tableId`) REFERENCES `tabletbl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

#
# Data for table "ordertbl"
#

INSERT INTO `ordertbl` VALUES (1,'12:30:11 04:06',1,4,3,1,0,'现金支付'),(2,'12:37:11 06:06',1,5,8,1,0,'现金支付'),(3,'12:07:11 07:06',1,6,2,0,0,'划卡支付'),(4,'12-06-11 07:53',1,7,7,1,0,'划卡支付'),(5,'14-07-04 06:44',1,8,3,1,0,'划卡支付'),(6,'14-07-04 06:59',1,9,2,1,0,'划卡支付'),(7,'14-07-04 07:11',1,10,2,1,0,'现金支付'),(8,'14-07-04 07:15',1,1,12,1,0,'现金支付'),(9,'14-07-11 09:44',1,2,2,1,0,'现金支付'),(10,'14-07-11 09:52',1,11,3,1,0,'划卡支付'),(11,'14-07-11 09:55',1,12,5,1,0,'划卡支付'),(12,'14-07-11 10:10',1,3,3,1,0,'现金支付'),(13,NULL,0,13,9,1,0,'现金支付'),(14,'14-09-11 10:50',1,1,0,1,0,NULL),(15,'14-09-11 10:50',1,2,0,1,0,NULL),(16,'14-09-11 10:50',1,3,2,1,0,NULL),(17,'14-09-11 10:50',1,4,0,1,0,NULL),(18,'14-09-11 10:51',1,18,3,1,0,NULL),(19,'14-09-11 11:00',1,1,0,1,0,NULL),(20,'14-09-11 11:16',1,1,6,1,0,NULL),(21,'14-09-14 03:11',1,1,0,1,0,NULL),(22,'14-09-14 05:35',1,1,6,1,0,NULL),(23,'14-09-14 05:39',1,1,0,1,0,NULL),(24,'14-09-14 05:39',1,1,3,1,0,NULL),(25,'14-09-14 05:41',1,1,4,1,0,NULL),(26,'14-09-14 06:01',1,1,0,1,0,NULL),(27,'14-09-15 07:58',1,1,3,1,0,NULL),(28,'14-09-19 10:09',1,2,2,1,0,NULL),(29,'14-09-19 10:14',1,3,3,1,0,NULL),(30,'14-09-19 11:40',1,1,3,1,0,NULL),(31,'14-09-19 11:40',1,2,4,1,0,NULL),(32,'14-09-20 09:24',1,1,0,1,0,NULL),(33,'14-09-20 09:24',1,2,0,1,0,NULL),(34,'14-09-21 02:16',1,4,0,1,0,NULL),(35,'14-09-21 02:16',1,5,0,1,0,NULL),(36,'14-09-21 02:19',1,6,0,1,0,NULL),(37,'14-09-21 02:20',1,6,0,1,0,NULL),(38,'14-09-21 02:23',1,7,0,1,0,NULL),(39,'14-09-21 02:23',1,8,0,1,0,NULL),(40,'14-09-21 02:23',1,9,0,1,0,NULL),(41,'14-09-21 02:23',1,10,0,1,0,NULL),(42,'14-09-21 02:24',1,27,0,1,0,NULL),(43,'14-09-21 02:25',1,1,0,0,0,NULL),(44,'14-09-21 02:26',1,2,0,0,140921002,NULL),(45,'14-09-21 02:32',1,3,0,0,140921003,NULL),(46,'14-09-21 03:24',1,4,0,1,0,NULL),(47,'14-09-21 03:29',1,1,0,0,0,NULL),(48,'14-09-21 03:30',1,2,0,0,140921004,NULL),(49,'14-09-21 03:35',1,3,2,0,140921005,NULL),(50,'14-09-21 03:36',1,4,4,0,140921006,NULL),(51,'14-09-21 03:44',1,5,0,0,140921007,NULL),(52,'14-09-21 03:55',1,1,3,1,0,NULL),(53,'14-09-21 03:56',1,1,0,1,0,NULL),(54,'14-09-21 03:57',1,2,0,1,0,NULL),(55,'14-09-21 03:59',1,1,0,1,0,NULL),(56,'14-09-21 03:59',1,2,0,1,0,NULL),(57,'14-09-21 04:01',1,1,0,1,0,NULL),(58,'14-09-21 04:04',1,1,0,NULL,0,NULL),(59,'14-09-21 04:04',1,2,0,NULL,0,NULL),(60,'14-09-21 04:04',1,3,0,NULL,0,NULL),(61,'14-09-21 04:55',1,1,0,1,140921008,NULL),(62,'14-09-21 04:55',1,1,3,1,140921009,NULL),(63,'14-09-21 04:58',1,2,3,1,140921010,NULL),(64,'14-09-21 05:00',1,1,0,0,140921011,NULL),(65,'14-09-21 05:02',1,2,5,1,140921012,NULL),(66,'14-09-21 05:06',1,3,3,0,140921013,NULL),(67,'14-09-21 05:07',1,4,6,1,140921014,NULL);

#
# Structure for table "upload"
#

CREATE TABLE `upload` (
  `Id` int(11) NOT NULL auto_increment,
  `filename` varchar(13) default NULL,
  `fileExt` varchar(20) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "upload"
#


#
# Structure for table "usertbl"
#

CREATE TABLE `usertbl` (
  `id` int(11) NOT NULL auto_increment,
  `account` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `name` varchar(30) default NULL,
  `gender` char(1) default '男',
  `permission` int(11) default NULL,
  `remark` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "usertbl"
#

INSERT INTO `usertbl` VALUES (1,'admin','123','马云','男',2,'good'),(2,'lihuan','0727','lihuan','女',2,'good');
