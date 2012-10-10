/*
MySQL Data Transfer
Source Host: localhost
Source Database: apps_db
Target Host: localhost
Target Database: apps_db
Date: 10/10/2012 12:59:49 
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `route` varchar(100) DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL,
  `permissionID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for usr_account
-- ----------------------------
CREATE TABLE `usr_account` (
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `username` char(22) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `password` char(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `cardID` char(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `openID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`usrID`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;

-- ----------------------------
-- Table structure for usr_activity
-- ----------------------------
CREATE TABLE `usr_activity` (
  `intID` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`intID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_affiliate
-- ----------------------------
CREATE TABLE `usr_affiliate` (
  `aflID` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `name` varchar(60) NOT NULL,
  `location` varchar(40) NOT NULL,
  `position` varchar(40) NOT NULL,
  `since` smallint(1) unsigned NOT NULL,
  `until` smallint(1) unsigned NOT NULL,
  PRIMARY KEY (`aflID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_album
-- ----------------------------
CREATE TABLE `usr_album` (
  `albID` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `name` varchar(50) NOT NULL,
  `path` varchar(7) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `policy` int(1) NOT NULL,
  PRIMARY KEY (`albID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_artent
-- ----------------------------
CREATE TABLE `usr_artent` (
  `artID` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`artID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_cards
-- ----------------------------
CREATE TABLE `usr_cards` (
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `cardID` char(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for usr_contact
-- ----------------------------
CREATE TABLE `usr_contact` (
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `email` varchar(60) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `phone` varchar(18) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`usrID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_contacts
-- ----------------------------
CREATE TABLE `usr_contacts` (
  `cntID` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `type` tinyint(1) NOT NULL,
  `relation` int(1) unsigned NOT NULL DEFAULT '0',
  `contact` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`cntID`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_education
-- ----------------------------
CREATE TABLE `usr_education` (
  `eduID` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `name` varchar(60) NOT NULL,
  `major` varchar(20) NOT NULL,
  `since` smallint(1) unsigned NOT NULL,
  `until` smallint(1) unsigned NOT NULL,
  PRIMARY KEY (`eduID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_friend
-- ----------------------------
CREATE TABLE `usr_friend` (
  `n` int(1) NOT NULL AUTO_INCREMENT,
  `usrID1` char(20) COLLATE ascii_bin NOT NULL,
  `usrID2` char(20) COLLATE ascii_bin NOT NULL,
  `relation` int(1) unsigned NOT NULL,
  `become` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`n`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- ----------------------------
-- Table structure for usr_interest
-- ----------------------------
CREATE TABLE `usr_interest` (
  `intID` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`intID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_link
-- ----------------------------
CREATE TABLE `usr_link` (
  `lnkID` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `usrID` char(20) COLLATE ascii_bin NOT NULL,
  `type` varchar(20) COLLATE ascii_bin NOT NULL,
  `account` varchar(20) COLLATE ascii_bin NOT NULL,
  `action` int(1) NOT NULL,
  PRIMARY KEY (`lnkID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- ----------------------------
-- Table structure for usr_philosophy
-- ----------------------------
CREATE TABLE `usr_philosophy` (
  `phlID` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`phlID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_picture
-- ----------------------------
CREATE TABLE `usr_picture` (
  `picID` bigint(1) unsigned NOT NULL AUTO_INCREMENT,
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `albID` int(1) unsigned NOT NULL,
  `time` int(1) unsigned NOT NULL,
  `filename` varchar(50) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `policy` int(1) NOT NULL,
  `text` varchar(512) NOT NULL,
  PRIMARY KEY (`picID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_post
-- ----------------------------
CREATE TABLE `usr_post` (
  `pstID` bigint(1) unsigned NOT NULL AUTO_INCREMENT,
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `time` int(1) unsigned DEFAULT NULL,
  `category` varchar(4) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `body` varchar(512) NOT NULL,
  `receiver` varchar(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `attachment` varchar(50) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  PRIMARY KEY (`pstID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_previlege
-- ----------------------------
CREATE TABLE `usr_previlege` (
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fullname` tinyint(1) unsigned NOT NULL,
  `birthday` tinyint(1) unsigned NOT NULL,
  `email` tinyint(1) unsigned NOT NULL,
  `phone` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`usrID`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;

-- ----------------------------
-- Table structure for usr_private
-- ----------------------------
CREATE TABLE `usr_private` (
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `birthdate` tinyint(1) unsigned NOT NULL,
  `birthmonth` tinyint(1) unsigned NOT NULL,
  `birthyear` smallint(1) unsigned NOT NULL,
  `birthplace` varchar(25) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usrID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_public
-- ----------------------------
CREATE TABLE `usr_public` (
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `imguser` varchar(50) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `gender` binary(1) NOT NULL,
  `score` int(1) NOT NULL DEFAULT '0',
  `nation` char(2) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `hometown` varchar(25) NOT NULL DEFAULT '',
  `domicile` varchar(25) NOT NULL DEFAULT '',
  `about` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`usrID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_sport
-- ----------------------------
CREATE TABLE `usr_sport` (
  `sptID` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`sptID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- ----------------------------
-- Table structure for usr_verify
-- ----------------------------
CREATE TABLE `usr_verify` (
  `usrID` char(20) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `count` int(1) NOT NULL,
  PRIMARY KEY (`usrID`)
) ENGINE=InnoDB DEFAULT CHARSET=binary;

-- ----------------------------
-- Table structure for wns_deal_detail
-- ----------------------------
CREATE TABLE `wns_deal_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hightlight` text,
  `profile` text,
  `terms_condition` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for wns_deals
-- ----------------------------
CREATE TABLE `wns_deals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `discount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `expired_date` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', 'Home', '', null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', 'Deals', '', null, null);
INSERT INTO `admin_menu` VALUES ('3', '0', 'Shops', '', null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', 'Manage', 'admin/deal_manage', null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', 'Add', 'admin/deal_add', null, null);
INSERT INTO `admin_menu` VALUES ('6', '0', 'Statistic', '', null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', 'Categories', 'admin/deal_category', null, null);
INSERT INTO `ci_sessions` VALUES ('ac2d91b0b4c14f1845d897ec17ab775b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.92 Safari/537.4', '1349848167', 'a:4:{s:9:\"user_data\";s:0:\"\";s:6:\"userID\";s:20:\"505e8ee1be8a74eb59a7\";s:8:\"fullname\";s:12:\"Ryan Permana\";s:12:\"is_logged_in\";b:1;}');
INSERT INTO `ci_sessions` VALUES ('fc8bb55b1c2e57964f74db77bbbf6d0e', '192.168.10.19', 'Mozilla/5.0 (Windows NT 5.1; rv:15.0) Gecko/20100101 Firefox/15.0.1', '1349842218', 'a:4:{s:9:\"user_data\";s:0:\"\";s:6:\"userID\";s:20:\"505e8ee1be8a74eb59a7\";s:8:\"fullname\";s:12:\"Ryan Permana\";s:12:\"is_logged_in\";b:1;}');
INSERT INTO `usr_account` VALUES ('00ec615bfb3d01428224', '.67aac71caa90a889480', 'aeb28a8f385beda7caaf3e689c0c594c', 'WBCINA0000078', '');
INSERT INTO `usr_account` VALUES ('010e5a0c42c4477e4a62', '.5f9802a8710dc86b9d8', '7409d3214246f637ec2d669453cf236d', '', '');
INSERT INTO `usr_account` VALUES ('011e710a82e5a9be8d44', '.21778f9a7f27a2968ec', '4f3d8c8542309de9f5d5357fa6facd88', '', '');
INSERT INTO `usr_account` VALUES ('017138a99b78ddf7a2ea', '.8bfab6f9b9452f26cf6', '585b712cdb73061232384031bcde46a5', '', '');
INSERT INTO `usr_account` VALUES ('033459aac55e938f2b76', '.118c4c4a70b9ca53cb0', 'ded216b1b29291181dce606f9187ab8b', 'WBCINA0000121', '');
INSERT INTO `usr_account` VALUES ('04665e09048582c105d0', '.f57388e6a1c5d6b22fb', '142422b4378640c445ef84d9689e4985', 'WBCINA0000265', '');
INSERT INTO `usr_account` VALUES ('049f6e85c80e89f2a5bd', '.923f365dcaa76eea67c', '1b3cf6c9d5d9dab4bf5a9b6ef12827e9', '', '');
INSERT INTO `usr_account` VALUES ('04c9003bf96e4ec643d4', '.dbfb17254a5877dde83', 'ba09ab421d390e21e5895d25c0fa90f6', '', '');
INSERT INTO `usr_account` VALUES ('0615ab93644fa4a30a86', '.89457da9c9d4a75228b', '77dfbe938c8990fd0d1cbf0b6f6d1e92', 'WBCINA0000172', '');
INSERT INTO `usr_account` VALUES ('07d7c47e8ae7422ab1c5', '.f6c123264c21bc8e478', '3f2e8514a7547d5c37295e7c33ffb95b', '', '');
INSERT INTO `usr_account` VALUES ('08531e385bc7e0e7e68d', '.eeecfa135530938f6a8', 'a3c04a0ea6b4404b9b84b6947e8c18ec', 'WBCINA0000022', '');
INSERT INTO `usr_account` VALUES ('0995a136dd251f3eb432', '.07c180357a744bd451c', '6f8951eba59e72a0f0a998ccc8996e68', '', '');
INSERT INTO `usr_account` VALUES ('09bab40d632707359ecb', '.622d72cc8b655b7f3e5', '515fd6f280de9258e1a3acb781819d66', '', '');
INSERT INTO `usr_account` VALUES ('0abc6169ae7fdff2baf0', '.471dcf1d926b84a1917', '615a49aaabe67eee4a4e7bf815373052', 'WBCINA0000030', '');
INSERT INTO `usr_account` VALUES ('0ac60f79989361d49616', '.85ea59fa1c1db0a7253', '934b3858ee4ecc59970eabd9a7a0b318', '', '');
INSERT INTO `usr_account` VALUES ('0bfcb9d4b08401855162', '.68b0bd2aa331202eb28', '52f0e583a6ebbdadacd7acc867c9ff67', 'WBCINA0000045', '');
INSERT INTO `usr_account` VALUES ('0c2dd323098e73a2cd84', '.b173a28fdbef865797e', 'b40d9bd3c2528343b7b11706744bd7b6', '', '');
INSERT INTO `usr_account` VALUES ('0ccc8bafca0f6aed8b5c', '.b95618d5e4dff676cfa', 'cd3720dc361c97caac3f9971f5b43b31', 'WBCINA0000134', '');
INSERT INTO `usr_account` VALUES ('0cd019921f3bfceabf1f', '.347b02532eb41e33413', 'e216e27b1db898f76c2f1297558b52b3', 'WBCINA0000108', '');
INSERT INTO `usr_account` VALUES ('0cdf86847cb58037442f', '.b9079a039015cab61b3', 'e277d1820ae9b6890c5206952824cd48', '', '');
INSERT INTO `usr_account` VALUES ('0d48dbd80cc627727ff6', '.47cf45f4d1bf10bc741', 'fe475bf14cbfb10abe660fac45ff594e', 'WBCINA0000021', '');
INSERT INTO `usr_account` VALUES ('0dcc1d0019d9ed89678a', '.d561b6e0394b245f056', 'aeecca79ac07e6027f9faac6c44d5cd1', '', '');
INSERT INTO `usr_account` VALUES ('0f8fcf37e9defb0ba0a4', '.3b9ac9bfc08ac07a5e1', '6a6d97700d4eb54a49676e59f0d3ce82', 'WBCINA0000216', '');
INSERT INTO `usr_account` VALUES ('0fcd93abfc590bde2a2e', '.eae6f6a6f1d2b85d8c7', 'a0a2c8d2a1936ea67d510b4dafeab718', 'WBCINA0000023', '');
INSERT INTO `usr_account` VALUES ('10e1b90f4c732c69211b', '.cdf3dac299dfd5da202', 'bc4e0e0e1e54c5e29fe2e5b569542be3', '', '');
INSERT INTO `usr_account` VALUES ('11df886a817bb8e3e83d', '.43deb959c2cdab7e5bd', 'e51feec23ca3189a0395b6a1f5d57142', '', '');
INSERT INTO `usr_account` VALUES ('11ee38ef38b350ec3982', '.9b0c8313a383f9c8247', '12afc3e730c93e000cdfb99bda41cbef', 'WBCINA0000046', '');
INSERT INTO `usr_account` VALUES ('125b998be5073167791c', '.da9cae0e59971c35428', 'a4b0b7e841b5a71e77b5660ba94709fc', 'WBCINA0000007', '');
INSERT INTO `usr_account` VALUES ('12630b93463a05e7b790', '.667ef031309df8a9139', '84dec6c4274d271f65abd05cd9867b74', 'WBCINA0000188', '');
INSERT INTO `usr_account` VALUES ('13ce9958e882fc7a9e8d', '.5ddd8a14073e2bd3e86', 'e388f02f750e65ebba95ab9493cda01e', '', '');
INSERT INTO `usr_account` VALUES ('14be327e1cf17e1ad5c2', '.02286342ea9e44ec7ac', '59484be292c80438db3658036242904a', 'WBCINA0000018', '');
INSERT INTO `usr_account` VALUES ('15f9362907d5c77bf516', '.a783084afe779937e31', '1dbebf55be4ca8d74409a107f6fa86ec', '', '');
INSERT INTO `usr_account` VALUES ('160adc82dc7e99e5007e', '.e6a2ffc82d30d40738a', '633909d04c743c3bb38a1f76bb0024d0', 'WBC0000000001', '');
INSERT INTO `usr_account` VALUES ('16ce5b78b438eb1a6ba4', '.7b8e4ce1844e5bc6abd', '2d7183254f1f52f5b7dad90b1448822c', 'WBCINA0000213', '');
INSERT INTO `usr_account` VALUES ('16f9d5a86585813e3c52', '.4355a3f9bd9c6cceca4', '40e43e002fd786435e6b209297d202f3', '', '');
INSERT INTO `usr_account` VALUES ('1729da1b2df980734b5b', '.9c9d804d8cef56c099e', '02380484a30937a8f1e1d1b045b05853', 'WBCINA0000150', '');
INSERT INTO `usr_account` VALUES ('17bddea44d9aa89f71d9', '.aa1ac839fe7bdd40e4a', '6e423803a48e9b84798bd353816bcd09', 'WBCINA0000094', '');
INSERT INTO `usr_account` VALUES ('19ccfd1af6bea4bd5a64', '.cd7c0251edeb8227c43', '37da9047d4df6b95c121ca820d7f66b5', 'WBCINA0000015', '');
INSERT INTO `usr_account` VALUES ('1a1daf34dcac774f5c71', '.608572f15cc5c1af08f', 'f635bca1221262818438db5b74dcb46e', 'WBCINA0000105', '');
INSERT INTO `usr_account` VALUES ('1af80cc78ecb48c02e72', '.91cf0bbd4a3d7e881c6', 'cace03676bb3331cea8ec7057bf6e25a', '', '');
INSERT INTO `usr_account` VALUES ('1bb8514a20e38049ce9b', '.9ee8be2c556985b0890', '1813194ae0e917431c8af4a1d623c8e4', 'WBCINA0000038', '');
INSERT INTO `usr_account` VALUES ('1cd543585d9e9ce5bbf0', '.dfa6cdb1cb8d1f5527d', '8fd63f564738b54dbc517e2b962aee14', 'WBCINA0000036', '');
INSERT INTO `usr_account` VALUES ('1d94697e70e79e8a1191', '.1ec1f9cc7c5e10648f6', '24f6140c799fd1e07aeeca8c7607f5f0', '', '');
INSERT INTO `usr_account` VALUES ('1e76a35559c647468a5b', '.db764337a68c5974ee2', '5153d26830cb60177f1e90167c2da378', 'WBCINA0000006', '');
INSERT INTO `usr_account` VALUES ('1eee1356f1a334eb3b88', '.46c0c808293f312d8a0', '544130249558c36c9e925387cd870862', 'WBCINA0000111', '');
INSERT INTO `usr_account` VALUES ('1f8d931db87147a29be9', '.8cebece109491ce2199', '1630b9ea0b2cd4cfa068f66c60618328', 'WBCINA0000201', '');
INSERT INTO `usr_account` VALUES ('1fcafe0a583ee2fbe101', '.2ebcb9a877a1d90fc31', '29deffa84e17e9e196beec9e8982ac53', 'WBCINA0000202', '');
INSERT INTO `usr_account` VALUES ('212fcca820a80d33a66c', '.8bf47db36eb585e5a9f', 'e4274343a8daf4821fb8b8cccb95363c', 'WBCINA0000031', '');
INSERT INTO `usr_account` VALUES ('218b105309005d8f32de', '.5578eb41456f206f3b0', '92f2acca0d06efeeab81363a31b41afe', 'WBCINA0000052', '');
INSERT INTO `usr_account` VALUES ('21b8c6e241c8bf290334', '.522601ee75c82d70aed', '98bb6e47e17f3f917b6f54d24920d724', 'WBCINA0000286', '');
INSERT INTO `usr_account` VALUES ('220a3b2021cde4f7a5c2', '.a28339df1abdc963419', '08a113a59f49c634cb4376d6a7ade68c', 'WBCINA0000109', '');
INSERT INTO `usr_account` VALUES ('232d5f6016275b46c80a', '.fac172eb1e62e9649c1', 'b4010eb75177462d7995277f4d3046b2', 'WBCINA0000182', '');
INSERT INTO `usr_account` VALUES ('25d1aa539b02ee9dac1f', '.ed897dbc855c30f1af8', '6858503be06c33013c1c325915a2da5c', '', '');
INSERT INTO `usr_account` VALUES ('2615b183ac0828ca55cf', '.c66543df0494bc54384', '5761ad8e46e236a95e29a97ceab7420c', 'WBCINA0000095', '');
INSERT INTO `usr_account` VALUES ('261dcc62ed8490aebfca', '.2a524779c41f8c09ed4', 'aa441a71174f104c0b3b8191b72f2b2a', '', '');
INSERT INTO `usr_account` VALUES ('27a29ac87a1461b7c88e', '.d3f62b49f6aaa084ea5', '4fdb1ed79225e52fdece15f1532011ef', 'WBC0000000033', '');
INSERT INTO `usr_account` VALUES ('285541c1d3527d364258', '.fa5cc8779a01624519f', 'd00f852d8ce0e4710b1edcecad384693', '', '');
INSERT INTO `usr_account` VALUES ('296676ae4e62ebcfe22b', '.2206d7896afec9e52a2', 'b2d71206227f06c0a21f9563f686902c', '', '');
INSERT INTO `usr_account` VALUES ('2a4819d69ebd7971fc8d', '.10e055909e7b2c3b71d', '51a4836f41f3f015c9f6d01af8392009', 'WBCINA0000049', '');
INSERT INTO `usr_account` VALUES ('2b765a1bdb0b9ff89568', '.9bf4f8e16c6d9687af5', '9ca7e2d131779a0e2961fb19d275866c', 'WBCINA0000244', '');
INSERT INTO `usr_account` VALUES ('2c157e10220bf7a82cce', '.ecdebadd3c43ae681d2', 'b965dbf47117bfc7b53087ffc3f1a296', '', '');
INSERT INTO `usr_account` VALUES ('2c525238bcaa32d4b13f', '.03ac4d88b44518674b9', '6e3771cb512f49584331724aee4123ce', 'WBCINA0000072', '');
INSERT INTO `usr_account` VALUES ('2d8c94b5fecf3a164247', '.1eb1af65942d310b2d7', 'a20158258a360ca56eee10f65d40fdf7', 'WBCINA0000169', '');
INSERT INTO `usr_account` VALUES ('2e50c71578011822fc1d', '.a4e83b807be86a29c2f', 'd986d469d77c821559d48911a0bb74ee', 'WBCINA0000089', '');
INSERT INTO `usr_account` VALUES ('2e9de7eedb8a17dddd77', '.dbf433e334f1d5eda2c', 'd046cb940eec35c43e9c6ec9cf9000ae', 'WBCINA0000123', '');
INSERT INTO `usr_account` VALUES ('2f0d5bea6650dff37f57', '.4119b0f2ba04302ccc6', '8e1fb3f9869c4e74ca8219847c3dcc82', 'WBCINA0000032', '');
INSERT INTO `usr_account` VALUES ('2ff5c4efa52ce9515d75', '.db263142277343114ae', '23160f4e8964dd1faf5ae67a9b239102', 'WBCINA0000039', '');
INSERT INTO `usr_account` VALUES ('30d349d6040edc8baf1c', '.5b240ec690f400a880d', '39ce62bd4424c6369999aa862ad9ec67', '', '');
INSERT INTO `usr_account` VALUES ('3272d6803fe17d67c777', '.81838104280579a4993', 'a5f6e34e1603091940f782db8d01165d', 'WBCINA0000007', '');
INSERT INTO `usr_account` VALUES ('33331c85609587e6a725', '.55b2d033025de7e7256', 'a95767f93a32bff9649ec09fe0cfef35', '', '');
INSERT INTO `usr_account` VALUES ('33d0ed22cf94c7d9b381', '.a1773e53f3bd1f52eec', '658afd02c6cfb522e1a2ba0b64ddbaef', 'WBCINA0000238', '');
INSERT INTO `usr_account` VALUES ('33d5f8f654542c10cff5', '.a3c8d42f75f611aa930', '55bcd7bf88af9b829245c5be4910ef22', '', '');
INSERT INTO `usr_account` VALUES ('34e0a333d76e7a3b92ff', '.f4ca4eb28fe2769e43e', '783baadf962ad42ff7e11256f7ed9285', 'WBCINA0000207', '');
INSERT INTO `usr_account` VALUES ('3539aece62d8210ff1e1', '.b98867044835a26e5e1', 'f9e853c15dbcba865ec16384c6cf344b', '', '');
INSERT INTO `usr_account` VALUES ('3661d1af9aa20354edf6', '.1d5d18a0a7b76eafc64', 'a614a16278f18d7a9a816567c2f6dce5', 'WBCINA0000205', '');
INSERT INTO `usr_account` VALUES ('37ea7eb59dac7a0350ef', '.4ea7e685e42545fbba3', 'e19a202c0f8695f30a2ca5a05a194070', 'WBCINA0000057', '');
INSERT INTO `usr_account` VALUES ('381964dd3467c6e5a644', '.8a232f7ee79e8ab08d5', '8f039443534f9cebdba1ee9cf28f7472', '', '');
INSERT INTO `usr_account` VALUES ('3995af1ff80f4bf55158', '.6a3115946c20f247c06', 'cbe81b36e06dc141958342df4a5e5ec3', '', '');
INSERT INTO `usr_account` VALUES ('3aed76b9b2ea280be0c1', '.723b1af66a619b15d33', 'fe15fb9349d58fffca39d3d2fd8372f2', '', '');
INSERT INTO `usr_account` VALUES ('3b1d6fbefba78e988e10', '.ac9a8786f8c0051ff81', '6e329c6a83467f8bca12f91019285c81', 'WBCINA0000115', '');
INSERT INTO `usr_account` VALUES ('3c9cf04753e2268e34a1', '.8eb8fbfb2600004934b', 'b5c174d83e83cbc13d8e16eefda67d33', 'WBCINA0000152', '');
INSERT INTO `usr_account` VALUES ('3d3e856e4c63310bf4fe', '.5c8c8652ef451f5fb4f', '2cdca35a83eec6dcc2ecd722e297e973', 'WBCINA0000084', '');
INSERT INTO `usr_account` VALUES ('3e5852cc8b8bf19f33be', '.5d70788c4170b90ce00', '9e916c5a450d92fb8b8ba0cb45dbeb56', 'WBCINA0000206', '');
INSERT INTO `usr_account` VALUES ('3e6ad7ffeb77cbfbdc28', '.893f72536275c89a897', 'aa64948b95a71035347049ef6d2f6d4c', '', '');
INSERT INTO `usr_account` VALUES ('406922207a5789b5051b', '.3d9e7a6e61560583abd', '0ce877b309e1e9346f22f06feedf02b4', 'WBCINA0000092', '');
INSERT INTO `usr_account` VALUES ('42a93add5b94d0ee96e7', '.4c04cef0be5075067a7', '551c440909dc54af1d1530b1421ef509', 'WBCINA0000181', '');
INSERT INTO `usr_account` VALUES ('42e89cf82cc164f54d52', '.e8670bea9e4e99a5d4b', 'dba5cfb56538179412097c6023f61fad', 'WBCINA0000112', '');
INSERT INTO `usr_account` VALUES ('434a4447e817c82a1df7', '.8377eae7a0be185b72b', '46c00de56f3ee076f42a04e23d5cfbbe', 'WBCINA0000001', '');
INSERT INTO `usr_account` VALUES ('4446210ec49d91650c1e', '.48ec5f8f9bc93c53de8', 'e388f02f750e65ebba95ab9493cda01e', '', '');
INSERT INTO `usr_account` VALUES ('447366436ff2fb4ee928', '.7c4b896ef79b3d8cf6a', '3b1e099fe9b883ff18470dca4b63ac2d', 'WBCINA0000050', '');
INSERT INTO `usr_account` VALUES ('44df0b64d03529c80ede', '.a0b62ade284a15973c8', 'e8b1aec33effaecb9ccff9e65a9a0ef5', '', '');
INSERT INTO `usr_account` VALUES ('44f8ea2cae316846418c', '.05e80290a01d5abbe7c', '289bc242386c7ef409e6d7d2535f60ff', 'WBCINA0000249', '');
INSERT INTO `usr_account` VALUES ('45f71263311645806aba', '.35adec847d5d9793c22', 'ed7b85fb48b84aafb5f8bd1441494709', 'WBCINA0000127', '');
INSERT INTO `usr_account` VALUES ('470fc76f53105118176b', '.0d57bfe7f29c7024e27', '20ca885b2a368dd0d8ed84ff89703dde', 'WBCINA0000053', '');
INSERT INTO `usr_account` VALUES ('47592a72175242546c72', '.6be89b5efab491fc6ce', '1fb460017b9b47f03e9e73906352a664', 'WBCINA0000013', '');
INSERT INTO `usr_account` VALUES ('4812f6425ac30b35034a', '.7467165c7f5eef2bdd1', '41749fad40c53fe922b124a45117b9da', 'WBCINA0000040', '');
INSERT INTO `usr_account` VALUES ('48412d551c8dda2e595c', '.3d8dd34d1df2e74d41e', '0682494d106ca173027c685beed7fcb0', 'WBCINA0000037', '');
INSERT INTO `usr_account` VALUES ('4957f4ad6ddfe9a9e425', '.0d67c63d382d5e65392', '63b8ccac75275cbdc48d4d82677f7b4a', '', '');
INSERT INTO `usr_account` VALUES ('49daf62c9c570edb129c', '.10d2b974f5468218899', '37c494c9d7f05c7b09e5fc06aa769982', 'WBCINA0000140', '');
INSERT INTO `usr_account` VALUES ('4bbdaced692b41330d55', '.59580a997a7711006cb', 'f458e68ec643ca09c86347cccd0f247d', 'WBCINA0000186', '');
INSERT INTO `usr_account` VALUES ('4bde50ac83823879d271', '.79ec098bce644dd12fb', '0e2b25025ff9e80a9a8ec77d9e65f1e2', 'WBCINA0000063', '');
INSERT INTO `usr_account` VALUES ('4d8e87110f099dcf3661', '.c2690b2b7377165893c', '7fb2fe717e7ef7ad471014a3c8ac1aa6', 'WBCINA0000184', '');
INSERT INTO `usr_account` VALUES ('4df33e629a21183f9973', '.3508a8a3ae8abefbbb4', '60c354edf726f19e0f92c76e340699b8', '', '');
INSERT INTO `usr_account` VALUES ('4e0498f663d4ad767035', '.105cb2cff6265c780e0', '79992ec2cdf07b8aa0997dfaf37288ad', '', '');
INSERT INTO `usr_account` VALUES ('4e1bd8e972572d5bc1c1', '.d8d9fc1e807243b50d0', '3b44d1092c6392af2b79ab94d5abace6', '', '');
INSERT INTO `usr_account` VALUES ('4e2f9a5f1b287d39bdca', '.29cba4a91d48284e2a8', '39a42b57ae02e77ff555213870da68fe', '', '');
INSERT INTO `usr_account` VALUES ('4e9adf7229729c45118e', '.60067b76402ad4cf238', '9b10d072feefdc84b0ef23d846757a94', 'WBCINA0000165', '');
INSERT INTO `usr_account` VALUES ('4f2d6e3ad6e3af36a4e7', '.997347f3376cca60b04', '80de9563d0fdc8cbfdf182ba25829862', '', '');
INSERT INTO `usr_account` VALUES ('5009e8dc99f688e7b7a4', '.bf6cd464b435f081536', 'babd9ee40a7d6e68b6d098cca5b51c31', 'WBCINA0000157', '');
INSERT INTO `usr_account` VALUES ('505e8ee1be8a74eb59a7', '.e7cb4f5af1ddc9013f0', 'c33367701511b4f6020ec61ded352059', 'wbc0000000031', '');
INSERT INTO `usr_account` VALUES ('53b61a4a3f74f364a80e', '.11c5d523787dcbb0583', 'dbfaee3859107c86545c09ccdb12ed0d', 'WBCINA0000226', '');
INSERT INTO `usr_account` VALUES ('53f862e0d63dac24ed79', '.b2d7fec8b306dba836e', '8fc7b89715619a7580b9480afae844b7', 'WBCINA0000210', '');
INSERT INTO `usr_account` VALUES ('545022a623699d1b0fb3', '.b5488f158d401d245c5', 'ed7aa222660786116b3492cb313ae861', '', '');
INSERT INTO `usr_account` VALUES ('54b1b1eb96d61f65fd16', '.9c0c187ec664775d50c', '1d8c8af1ed6ba19d6356c20005598d09', '', '');
INSERT INTO `usr_account` VALUES ('55dca73c5804d8663351', '.dca6aa0eb73c0a45adc', 'a60bd6e9a309b1f629a57f628d01b13e', 'WBCINA0000136', '');
INSERT INTO `usr_account` VALUES ('56a559a8d6e469558853', '.97204282dab943b4a9b', 'afd3787179dd355e659b69631cd3b918', 'WBCINA0000247', '');
INSERT INTO `usr_account` VALUES ('5731d07f79debda21be2', '.fc64e6b6a68b6409fef', '2d7b5ed11156324f7b7a8b4ef9a16997', '', '');
INSERT INTO `usr_account` VALUES ('58e51a6cc129e2bcfab2', '.e9df5b4072aa1af5dc2', '5829e1be86007ed73e9cabfd99c939b1', 'WBCINA0000195', '');
INSERT INTO `usr_account` VALUES ('591af565b5a378c5d0f3', '.d4381323f0585a63c1e', 'c792fa61563a5764b2762229011c4ee4', 'WBCINA0000231', '');
INSERT INTO `usr_account` VALUES ('5bf99c5ea311b5ae57bf', '.4d05776b10a5054c42f', '6bde9dcc4a6efd02a5fabb1488e38b29', 'WBCINA0000212', '');
INSERT INTO `usr_account` VALUES ('5f8461ca33617f6c69d7', '.9ec368807cae660e4ad', '055d2d11531a59c4de89c363a2e294c7', '', '');
INSERT INTO `usr_account` VALUES ('5fb4a6db719f5b061ab6', '.93a0e80b7e83094aadd', 'd8186e287b88b646df2863f4463e1349', '', '');
INSERT INTO `usr_account` VALUES ('603921338cfa9ffbaa35', '.8278fe6b81d39b2532a', '671cbe96854c9359eed678609b957ab5', '', '');
INSERT INTO `usr_account` VALUES ('608e23715ab3a46bdd80', '.e0a40be37891c0ffd53', '1d7edc603f9c8a2ce1689ce8cf8b28e8', 'WBCINA0000223', '');
INSERT INTO `usr_account` VALUES ('60bca865f0ed6f808885', '.5d67aa3a825774c36c7', '223a6bd1169b59340d7640c399e1910b', 'WBCINA0000054', '');
INSERT INTO `usr_account` VALUES ('6250b1230140fa6f3544', '.6391842e086e002f72a', '3f558fd0322afef58006937c929a892b', 'WBCINA0000214', '');
INSERT INTO `usr_account` VALUES ('628cf06e80d59a0c418b', '.8605f3da6067ed2d032', '3ae7f0b383d51c9f86aa3608802d3ff9', '', '');
INSERT INTO `usr_account` VALUES ('6390f06600ed47b57e90', '.de5a16dfbfbded45303', '278f7b2aeaf965cbc9b556737befcfcd', '', '');
INSERT INTO `usr_account` VALUES ('63f2fe715446cba6e132', '.de5d4e91cf1c4544f93', '045bb062663b8da8a522b1199e591fb8', 'WBCINA0000153', '');
INSERT INTO `usr_account` VALUES ('64b6e6634f8fade06cc9', '.82a65af94689c4598aa', '429f556858ec4295a04b00ad238a3ed0', 'WBCINA0000067', '');
INSERT INTO `usr_account` VALUES ('64b954da0c730727b741', '.0f3efc24f4dfcead665', '5b01f3bf7083f6ce999dcd72cbd260bc', 'WBCINA0000096', '');
INSERT INTO `usr_account` VALUES ('664aa999d5403d36588f', '.ecd0176cb5089ddf182', 'f51b195ce4e11d208a5d01e45cbad432', '', '');
INSERT INTO `usr_account` VALUES ('664e92087fd3382c02bd', '.e8150bd1b4606018cbc', '3fa7a5cd46bf16b80a25e89741d5b99d', 'WBCINA0000196', '');
INSERT INTO `usr_account` VALUES ('6806a2b7b123a0a82e31', '.552c2a64963ccf07fce', '7a0faea502f7f68cbe375f9e01a0fe0b', 'WBCINA0000082', '');
INSERT INTO `usr_account` VALUES ('6ad3e9b154a0bf49900f', '.4294aa09daa8feee424', '391c6ac01e881bf0ea9e55222da42667', '', '');
INSERT INTO `usr_account` VALUES ('6ad56584d2d36b6d0e93', '.dd2d831d36bf82df387', '9343387c68de5d570e8eedb3e7e09979', 'WBCINA0000090', '');
INSERT INTO `usr_account` VALUES ('6b74c8796548003fae22', '.b25728d097157725453', 'e1dfd2bae06b9bd4989f53e90e5b9504', 'WBCINA0000041', '');
INSERT INTO `usr_account` VALUES ('6d9d822ba9c5b6701bae', '.8293f1e98b13f359e9d', 'c26ebed90c18d985ad9e66a2b933e210', 'WBCINA0000149', '');
INSERT INTO `usr_account` VALUES ('6dc41e10bb12e91b375b', '.9a59fd842243f2d801d', 'fe8452e80f17e7d5757385f793a7b42d', 'WBCINA0000087', '');
INSERT INTO `usr_account` VALUES ('6e02c4ccf9991b9eea8f', '.80126f8dcd6c0b455fd', 'fa3cc87aa6f0036b210d833c4eb91ca5', 'WBCINA0000066', '');
INSERT INTO `usr_account` VALUES ('6ec91627886839dff4a7', '.a2509340052632cd3e1', '952311d5aa807a36054473499282a106', '', '');
INSERT INTO `usr_account` VALUES ('6f170d18f8e9bda8dfff', '.16f3c84930ae42e35df', 'a1b1f3ece0cb06f9517ea436bb780f60', 'WBCINA0000101', '');
INSERT INTO `usr_account` VALUES ('6fb2038d36a0633fada2', '.6de354afe1d8faac6a5', '3932a53124cde58a47b12efa047fec1e', 'WBCINA0000002', '');
INSERT INTO `usr_account` VALUES ('711cca1ca075eced492f', '.a9a92b36994d191735b', '102095967859afa78c6f1900bdd184b1', 'WBCINA0000029', '');
INSERT INTO `usr_account` VALUES ('717c754daf29ae8c7872', '.3428dcc97164cac0ead', '3259da5267163ca54de44e77d6441723', 'WBCINA0000132', '');
INSERT INTO `usr_account` VALUES ('71d90b9fba71f265497b', '.9cdddb8ad6c385d521a', '32b87e849f9a80701d847af65c7ba400', 'WBCINA0000102', '');
INSERT INTO `usr_account` VALUES ('727930fb01fe005de25d', '.eb1541c522a3c8d69f5', 'e388f02f750e65ebba95ab9493cda01e', '', '');
INSERT INTO `usr_account` VALUES ('7310148804bba9c4c755', '.92f3a6e7c82ed9385cc', '48d09a4cd140e88cc73bba61d62a2099', 'WBC0000000400', '');
INSERT INTO `usr_account` VALUES ('739fbadd91a8dbe06efb', '.df7aebe3674ff458a7a', 'e618bdd8e87a9350a3f223dbb5c261de', 'WBCINA0000176', '');
INSERT INTO `usr_account` VALUES ('76ab07071ab7b94d591d', '.7b24dfcb8338b2c55d6', 'e6185c498c27cb09a16ddc776b3f749a', '', '');
INSERT INTO `usr_account` VALUES ('76f341ae9b1ef60af70d', '.c05b124b197e570172f', '664eeb631f03ad65070322398c397749', 'WBCINA0000128', '');
INSERT INTO `usr_account` VALUES ('79b19eae951eb3f56466', '.1a538ead85716cb04ec', 'be298494322d1bf713479057b3141755', '', '');
INSERT INTO `usr_account` VALUES ('7a30792824f1f1f5c6c6', '.82fbf1abda52114c1c2', 'ca2a8242b457e1127f1345e4c3da9bbd', '', '');
INSERT INTO `usr_account` VALUES ('7a92f7ced45096e08214', '.9561fd31cc1f3659685', 'c87e14cc40540fa2a1622e2366fa7f1b', '', '');
INSERT INTO `usr_account` VALUES ('7c1c0fc6e5a1ee3aaa6a', '.1bf8e52a21c4b930d6b', 'f8e221cef13a7187c120d27abc99e673', 'WBCINA0000170', '');
INSERT INTO `usr_account` VALUES ('7e67fed150b8b30d9df2', '.7b5c8095dbe25a123a7', 'a9b6a8d001c0bb676d3a198c87983891', 'WBCINA0000024', '');
INSERT INTO `usr_account` VALUES ('7ebc9f54a85fd2687c57', '.ec8a42e460f45202c42', 'c8a050f23e2ebe3d28bec2ff6658d146', 'WBCINA0000208', '');
INSERT INTO `usr_account` VALUES ('7eef31dffd85b2ab7c57', '.7e3407be264679e950f', '6704816847cd880c21eefff2d92892a2', 'WBCINA0000097', '');
INSERT INTO `usr_account` VALUES ('7ef24b858bdfa6e19ce8', '.2ceb989a6a688317ab5', '70762f5bfa1f5c08743716dad616c773', 'WBCINA0000217', '');
INSERT INTO `usr_account` VALUES ('7f6350838f956d64176e', '.1437a3fb0b425658744', '15cf41f1b58af8158be3019a4584d137', 'WBCINA0000107', '');
INSERT INTO `usr_account` VALUES ('7f64e471d7088f10106b', '.8f960d8e40fc8b7bb91', '7085002a8e33008b8f46464e535e59a8', '', '');
INSERT INTO `usr_account` VALUES ('7fc6653525bf2848a468', '.24983bed8198401c8e1', '4d9d881ce9f604ed2aba04c59c62defc', 'WBCINA0000173', '');
INSERT INTO `usr_account` VALUES ('7fe7c6376eebc744e5b7', '.943c93ea4c35ebed3f1', '15d9f93ff203ff985fbf5034dc1a83d4', '', '');
INSERT INTO `usr_account` VALUES ('80fab60c5bf667dde4cd', '.20196f6b367964e0824', '87857e959ae9ea4ab13f46f5c970c0aa', '', '');
INSERT INTO `usr_account` VALUES ('822253b91c028b2fab17', '.1fd601e9eb87a47ba6d', 'fce85de2741c785247b0c761e117148d', '', '');
INSERT INTO `usr_account` VALUES ('8239739aa11fc08a1f62', '.1c4b575c86aa3a081a7', 'ebacd20093dbd356a7e2af3ea2ca5d33', '', '');
INSERT INTO `usr_account` VALUES ('8316638c2225ff8ba6c4', '.ecc83ffc0a78a683298', '5df3b8d806aaee7919ffb83b94eb629b', 'WBC0000000032', '');
INSERT INTO `usr_account` VALUES ('84dcffe6bb6c9e5a6d40', '.1bcaf12d394c368073d', '375df3f762dec459a40c0f9315554e6d', '', '');
INSERT INTO `usr_account` VALUES ('8532fad51d628f1c9696', '.137b86394b8161beace', '834eb76ebd8e331d2a4e1d483d4eae8a', '', '');
INSERT INTO `usr_account` VALUES ('8972417a1225beb95737', '.9fec7134bf41e8e254f', 'ebd71090261c6f3e83d7d588d83d100e', 'WBCINA0000171', '');
INSERT INTO `usr_account` VALUES ('8a1367b867e960954066', '.70ee4c6018e86ed6c87', '33291c1697c29db7d5efc09fd2bb6b6d', 'WBCINA0000080', '');
INSERT INTO `usr_account` VALUES ('8a5804e184b8f6a7a786', '.cc8aef4d69eb57e70e0', '8a397c0621e5c4975796f28f10f7b6ec', 'WBCINA0000142', '');
INSERT INTO `usr_account` VALUES ('8b1175fe5720ed122d4b', '.cfe0f1fcf743cc2de2f', '6a202b080ba19b982506a783ff4262df', 'WBCINA0000199', '');
INSERT INTO `usr_account` VALUES ('8b574a1b6be60d2f9c12', '.f37adcbf92ebf3acf41', '0696c5c6bce98a1554d835d10221f37f', 'WBCINA0000117', '');
INSERT INTO `usr_account` VALUES ('8bb0b43f6ac92833153f', '.3a167b1b12789daf9aa', '7f5bca80122a5c1946249604400e88cb', 'WBCINA0000151', '');
INSERT INTO `usr_account` VALUES ('8c1dcdb78d078ac81e22', '.7ad8fb5febcbc2fd6b2', '388ce3ccdafdaf76392eec2d04ebab30', '', '');
INSERT INTO `usr_account` VALUES ('8e3e85bd92aaca6203fb', '.44716d78859a2bf3076', '8a26e3bff287ba5a212c013ac443d166', '', '');
INSERT INTO `usr_account` VALUES ('8f21c73bd16b954bf70a', '.35aa9b70b73487cfe5e', '797c975f3433d78106c4fb76963ecc20', 'WBCINA0000086', '');
INSERT INTO `usr_account` VALUES ('8f4a05a9a3e0fe1acc6d', '.130684e74be88848a6a', 'c3b63bb4318fa4adf19dcdacb3eba634', '', '');
INSERT INTO `usr_account` VALUES ('8f8ee6591e85c28706fd', '.6c081ff884971b9a075', 'f9ca30d0a90eb2d9ee5dec0fd17dfea7', 'WBCINA0000219', '');
INSERT INTO `usr_account` VALUES ('90223a099e566b7745fa', '.b3c55beffeedeb0978a', '1de4e09daed93986a140920aeb6a34b6', 'WBCINA0000211', '');
INSERT INTO `usr_account` VALUES ('9081e65e05792979650e', '.d363445fd177811dbdd', '95e768987fe5e23f235caba2f7fe0536', 'WBCINA0000009', '');
INSERT INTO `usr_account` VALUES ('9086fd28f48abf565b8e', '.1558d75c61748a18092', '0e74a2a43b127cd23591bd63655b0706', 'WBCINA0000103', '');
INSERT INTO `usr_account` VALUES ('90aa09f90bd0bbe0230e', '.08f2266be8c8d99637c', '6b083fc6c6dd0d73a8108c1617bda227', 'WBCINA0000014', '');
INSERT INTO `usr_account` VALUES ('90f107f3d51838a37b61', '.5c932c119a663321aa1', 'ba37439d7127676f30e265836cecf92b', 'WBCINA0000118', '');
INSERT INTO `usr_account` VALUES ('9114fdff19a3cac9219f', '.9dd79f4abe68719ca72', '2a10e4fef32cfafd389fe7759a6b309c', 'WBCINA0000069', '');
INSERT INTO `usr_account` VALUES ('914f69b1f9c47daa6876', '.99c022cff653ed768cc', 'af620072d8af1121c82a315f4702d309', '', '');
INSERT INTO `usr_account` VALUES ('91c65844c1727ac33beb', '.9e6251aa4904b149a2a', 'f883dcfc99a5ee6a71df78d830dbaa63', 'WBCINA0000033', '');
INSERT INTO `usr_account` VALUES ('920d271f5a56e45471a2', '.45116eb1e63ee47a7b2', '16de40e723b80e36d10aa422014d0c80', 'WBCINA0000019', '');
INSERT INTO `usr_account` VALUES ('922ffdc42e5a95c70b6f', '.677a3bf4e9e2c5eb306', '10ba057dd1542ea70451df2b36ef63c8', 'WBCINA0000099', '');
INSERT INTO `usr_account` VALUES ('92392066623b2b60daf4', '.086cbf9fb7a68731f67', 'b227a20472237c5189641c03be918f64', 'WBCINA0000104', '');
INSERT INTO `usr_account` VALUES ('9245232d54b182f04dae', '.5a712868324a471d7f8', 'd3fb25c8830aa5410800d3a621f40f62', 'WBCINA0000007', '');
INSERT INTO `usr_account` VALUES ('9269a85a3094e548ff52', '.8b055ca2e79a6ce7956', 'c203344f6ffba568673d17824469f854', 'WBCINA0000043', '');
INSERT INTO `usr_account` VALUES ('926abe25100df96bcbd0', '.1943d6024650b2d6837', '94d271be756ed43d31e3e5dc6a772087', 'WBCINA0000005', '');
INSERT INTO `usr_account` VALUES ('926e26c41b00b4393c89', '.5106883be7139b7b857', 'd1c36c0e5a8f900158f5e1c7e32cc320', 'WBCINA0000012', '');
INSERT INTO `usr_account` VALUES ('92b2175ad00f1a463069', '.64fc8d1be40897716d9', '991a29870cbe76a316f2b1b2bb400820', '', '');
INSERT INTO `usr_account` VALUES ('94187fce4a2e3dd6e689', '.7af20dfe369068acccd', 'd2c67c9f3bdd31faf565f0ac70ab82c5', 'WBCINA0000114', '');
INSERT INTO `usr_account` VALUES ('95664d37b15c059676d8', '.0e2f44ba5dd6e634919', '66962895b64f0eec806e3c377819e94c', 'WBCINA0000098', '');
INSERT INTO `usr_account` VALUES ('95b3c1a68aabdc741229', '.d303ecd8c2f257a3359', '41aa28563a16e920156920e0052755a5', 'WBCINA0000154', '');
INSERT INTO `usr_account` VALUES ('95fbe336f671ec87a7d1', '.1acebc145b1acf40b0c', '301dbd0ecc811f2719da2d45c7c7bb6b', '', '');
INSERT INTO `usr_account` VALUES ('9743ee5090b76c8e9666', '.d2a93c82d0dd680760a', '1778da15079f20f0bd229fd40a709c51', '', '');
INSERT INTO `usr_account` VALUES ('9746056cc1022050c070', '.75b63d91c217b5697ea', '28c3c63490396ca348cedb96dc7c43c6', 'WBCINA0000058', '');
INSERT INTO `usr_account` VALUES ('97475427155a7d66ebd7', '.9e76f187fc6fd9c1892', '46d5f9c017bedaf46c497ac1d8f175e8', '', '');
INSERT INTO `usr_account` VALUES ('9877c3e3cc5392928ba5', '.33f3a74bece0ef0c1e9', 'e5cd6f4a3ab74502772c545d64e15751', '', '');
INSERT INTO `usr_account` VALUES ('98cc30e1368c91ccb5ff', '.a228a04ea254eea29f5', '5787e7780ca32660d4690b2f14019062', '', '');
INSERT INTO `usr_account` VALUES ('996fbc37291a7bd2c669', '.4b4bd694820417224ac', 'b588fa4cb801c4789315413525eb73ef', 'WBCINA0000183', '');
INSERT INTO `usr_account` VALUES ('9ab4429e4e563dba0e49', '.aa29593870f6da66a11', '4f338727943dd92deef60cf2c5a594d5', 'WBCINA0000070', '');
INSERT INTO `usr_account` VALUES ('9b2c7b2e253ba81623f0', '.1f2e9f575bed2be3388', '7000aac966d0d969d1b7b87f14f0b26a', 'WBCINA0000025', '');
INSERT INTO `usr_account` VALUES ('9b98fdc3ff9a96f853b3', '.3dcbb092c4fd45cefcb', 'cde4713309c08d7b6153540b773e5df2', 'WBCINA0000191', '');
INSERT INTO `usr_account` VALUES ('9bbb95d1f24edcd08b3d', '.3770be520b9cb96bfb8', '637699ffbd0dca9f10deb5694bd9332f', 'WBCINA0000035', '');
INSERT INTO `usr_account` VALUES ('9d1a767618fefeafcf40', '.7b715bc3385556305ec', '457bc798c73476c552d0dcac5f6714b0', 'WBCINA0000189', '');
INSERT INTO `usr_account` VALUES ('9da3c48fac7dbf13c668', '.6fd14157ba260eacdff', '94789b73d692d3f67c6469c24806eea3', '', '');
INSERT INTO `usr_account` VALUES ('9dde060be2e1669e1d80', '.5e60d4146c852f9225e', '53d6511ab67e3c6305e0887d3c942d32', 'WBCINA0000135', '');
INSERT INTO `usr_account` VALUES ('9e7247458e598260d58a', '.639a6c330ec66ebe534', '52a4eb1a480ffc33dc58ea72f0115a2a', '', '');
INSERT INTO `usr_account` VALUES ('9ea852b592ae8d4b6d85', '.b7948bffead82676602', '3b6a17f26648f8147dfc3f70037491a7', 'WBCINA0000139', '');
INSERT INTO `usr_account` VALUES ('9ed93322b9d6fc2349fb', '.6fde28ac7397eb96f2b', '5220acb55630805d4c88b55e279f01e9', '', '');
INSERT INTO `usr_account` VALUES ('a022f85d265da1173559', '.2e1ecdd0ee028d91446', '65e0280472e2ae6c36baddfead88ec4d', 'WBCINA0000011', '');
INSERT INTO `usr_account` VALUES ('a0b105f8a9261e43369d', '.6e2d3695c0460434d0d', 'e156f12f8af465213f6ce8b40c7f81b9', 'WBCINA0000100', '');
INSERT INTO `usr_account` VALUES ('a1440bd13ceb58243c0d', '.6f6fec2db84b4e97a39', 'c49666824ef39f40b05b4389c1f3ec6c', 'WBCINA0000222', '');
INSERT INTO `usr_account` VALUES ('a3103e57293ccb1edb02', '.2562ca365ed2292cbbb', '8e8ba2567ea9376818e9934df3612601', 'WBCINA0000028', '');
INSERT INTO `usr_account` VALUES ('a394ea0ac2054f5faa91', '.7ec32c256cffa292ef7', '2d24f5437befc60e45ea05ca6262a6dd', 'WBCINA0000079', '');
INSERT INTO `usr_account` VALUES ('a570b5e81b18f7cd82a3', '.c50c05766ce2972f415', 'e8dad4ba140cb46df73a48294e49730b', 'WBCINA0000106', '');
INSERT INTO `usr_account` VALUES ('a57336627e24ae14e3aa', '.c13860e8e7a6a207031', '20ac316192e84bcc4a9a5cb995b92efa', 'WBCINA0000122', '');
INSERT INTO `usr_account` VALUES ('a595fb078ae2338e5a25', '.5f042cafb20b7354186', '18db2812ad4bee91720365d7ab0bf1c0', 'WBCINA0000008', '');
INSERT INTO `usr_account` VALUES ('a614b4475a8b59be3ea2', '.beb7b635aca3f2f8f4f', '53c7773c29d6d8a9ed456a660f94ad63', 'WBCINA0000220', '');
INSERT INTO `usr_account` VALUES ('a763fbc6c9f9cc1f1ff9', '.8fb7b23be3a70250a47', '62751b0cb8ff1d86b4b1e9cb51b96875', 'WBCINA0000129', '');
INSERT INTO `usr_account` VALUES ('a8961c0af4d700d90399', '.d8f308cada54a287097', 'c38939330f3f925abad13882b23825c0', '', '');
INSERT INTO `usr_account` VALUES ('a97c6029cca89f39b9bb', '.e04661e504fc5f57e0f', '3498b1cc87500f5ec7bece92a72fb31d', 'WBCINA0000041', '');
INSERT INTO `usr_account` VALUES ('ab97f983e899e77068ec', '.108c004ff6a3e11bc12', 'd1ec4da52be3edad1c1a65a6e7a3d640', 'WBCINA0000120', '');
INSERT INTO `usr_account` VALUES ('ad03384610ffb68f0a8c', '.5aa6aa06b8d3a84d223', '191060eddb41e4ce2c33774488ba3105', 'WBCINA0000060', '');
INSERT INTO `usr_account` VALUES ('ad3cb48981d4db6bc1b8', '.73206662abf9804e3bb', 'ac61f5c5b30faf82ceb280de26979ddc', 'WBCINA0000144', '');
INSERT INTO `usr_account` VALUES ('ade53457b2e69229c071', '.40a5e12f4f648f13f46', '0baffc7da8a1dc82d1d0188c698be240', 'WBCINA0000124', '');
INSERT INTO `usr_account` VALUES ('adfce6c1d151965f2911', '.8094f350987b7f1955e', '2636a5301a77c8bdf5d5f48c34720046', 'WBCINA0000061', '');
INSERT INTO `usr_account` VALUES ('ae1aa80997053166a382', '.5177983c3db375cf21e', '9fb73a235f5f933d852760a72b7b81ad', '', '');
INSERT INTO `usr_account` VALUES ('ae23f1528a98d12f7fc9', '.4b6100dac9c071c5e4a', '76e2574f8443b8017e6844ab203d4050', 'WBCINA0000194', '');
INSERT INTO `usr_account` VALUES ('af6d806064f74870ec97', '.d5e54d57d9ac6bfd5ff', '05dc9bb49a6cd1a09a73bcad218dd58e', 'WBCINA0000081', '');
INSERT INTO `usr_account` VALUES ('b2ac101d2b1faba0caa3', '.d08ccdd5aad2592e3cd', '0c86e6944f52655085a1ce1e4bd25db8', 'WBCINA0000059', '');
INSERT INTO `usr_account` VALUES ('b3d80280ed4688e56918', '.45ea607df59f5c5ceb3', '04dcc06db6d8232c25c710f1fb89b00d', '', '');
INSERT INTO `usr_account` VALUES ('b3fca2a1e0f2e780b215', '.3e52d8d2baa4c322b73', '202c9797197814518fbf5f7e2e531768', 'WBCINA0000204', '');
INSERT INTO `usr_account` VALUES ('b40337980dab09cf96b8', '.1783442e628fd4b9fff', 'a53296b526d85acc3096e406469ff52f', 'WBCINA0000271', '');
INSERT INTO `usr_account` VALUES ('b47708d5c88af35f40c5', '.9f8df3f70d7fc15df0d', 'ad57c5f822c43b4e6180849fa00f1300', '', '');
INSERT INTO `usr_account` VALUES ('b4b0dac2d2f7a55899ac', '.fd380e2036c642b7746', '62650085911711ff56052fb81aa6d66b', 'WBCINA0000215', '');
INSERT INTO `usr_account` VALUES ('b6d066260960ee9d4c51', '.b3998b74cc39bba9150', '21aeec4652c5258be12dae673f64b6b4', 'WBCINA0000174', '');
INSERT INTO `usr_account` VALUES ('b7546ea5d4715b3f099e', '.a0af753b7709b8ec341', 'ada12efc8b0e54faea628aa969e3269d', 'WBCINA0000143', '');
INSERT INTO `usr_account` VALUES ('ba98c8fa53cb19027fdf', '.64030775e13402fd00a', '1324bb60e27688700b1f0217dfacdcc7', 'WBCINA0000162', '');
INSERT INTO `usr_account` VALUES ('bc3fb7f8e6d43bfc8b7c', '.8ab72d53ccc82c1d3c2', '5037fc9fea78518984e947e6353f18ed', '', '');
INSERT INTO `usr_account` VALUES ('bc614b22d8df830fd230', '.39bc6733694b77f395a', 'fdf5df4a782c0aee65dfbb831ac12fb6', 'WBCINA0000160', '');
INSERT INTO `usr_account` VALUES ('bce76ecdbac2a5d8e36e', '.df11818838946409ec1', '1778e388eb423e9b420ee3dfd2ee8058', 'WBCINA0000163', '');
INSERT INTO `usr_account` VALUES ('bd3646e9903ded19fc8d', '.75db22129894060af1d', 'ff07c1c5c2fc08890dc4d800091402db', 'WBCINA0000230', '');
INSERT INTO `usr_account` VALUES ('be19191192bd6aed68a0', '.e93d627c812d5799a2f', '7a80e4818cd07bf1dc3d1f4045f7c122', 'WBCINA0000085', '');
INSERT INTO `usr_account` VALUES ('be42347a753591727e9e', '.ddfeac1fdf90d87f5af', '1da9a666b7448aaef3fa47a2bc50a85d', 'WBCINA0000062', '');
INSERT INTO `usr_account` VALUES ('bf31a9f99aed5e225e4f', '.e61f332aa2b390261bc', '66eea9abc3cdc818846fbb70bf28fb02', 'WBCINA0000034', '');
INSERT INTO `usr_account` VALUES ('bf4a939ec900a44f2374', '.ca12e67b4c1af4ca385', '1815a67d6ac472686a430bcc66782609', '', '');
INSERT INTO `usr_account` VALUES ('bf8aed2a8691e4029961', '.ce0d35b8689f2388932', 'cb908d2d60308a382763644a78bbb58c', '', '');
INSERT INTO `usr_account` VALUES ('c0e9fa6eea99f57f1641', '.0e55fb81fd215a11251', 'f97b79e5bba14ec78fb0ab4b8675aa9a', 'WBCINA0000125', '');
INSERT INTO `usr_account` VALUES ('c15930c3e2657f11b78b', '.ce6532c5ef8fa61bdb1', '6be91b11704bf271978afca5ac0556dc', '', '');
INSERT INTO `usr_account` VALUES ('c1c3d2c40b2dcc1e5714', '.36dbd651f58c4196630', 'f32306c9f40b6b6a5766311b6e7e7263', '', '');
INSERT INTO `usr_account` VALUES ('c21d1d04f936e3e522d6', '.809bfaac344d83ba178', '816136b987a2205091777f0a66f2ede7', 'WBCINA0000047', '');
INSERT INTO `usr_account` VALUES ('c2f10dcd4a6dc55fec57', '.16369d8f2ed8bde4c2b', '5006fc7cd89607a257901173b5d25f48', 'WBCINA0000044', '');
INSERT INTO `usr_account` VALUES ('c3b1455d93aca66e6836', '.7cae4b4e788eb003704', 'ea6b28e5a60e198e96024bd04ace1ea8', '', '');
INSERT INTO `usr_account` VALUES ('c3b9f756a65d3bae9ade', '.638152a28367cdd8487', '3b61131bb1880875a63b5ae19fd6ded3', 'WBCINA0000233', '');
INSERT INTO `usr_account` VALUES ('c4428aafe89bd6c7e111', '.05fc0b1d76c8d65eae2', '00ca12996c4ae3ced9a1ebb68267d5f1', '', '');
INSERT INTO `usr_account` VALUES ('c49b84579ebd389b5f82', '.1a4b1ee0497cb5e9454', '3bd95cfcff3fcff3772afe44a6fa99b2', 'WBCINA0000146', '');
INSERT INTO `usr_account` VALUES ('c4bbfaf9f058c98e13cd', '.39b1027a25fec509d76', 'e6ad5f552e2e9cfa1a93800173ac7a46', 'WBCINA0000232', '');
INSERT INTO `usr_account` VALUES ('c4c9875904542ce929f7', '.c2aed61c737f5c3cf1c', '4dc26a77cc8b0b91aecd92f38e909450', '', '');
INSERT INTO `usr_account` VALUES ('c4cbf2ebd389aa212e53', '.611ed8045f643ba7d19', '2ef0d28662b851ce99e99430300163a7', '', '');
INSERT INTO `usr_account` VALUES ('c5420c6630974c7e5a5c', '.1a6fb493129758d3657', '16be4d288493fe1315accd4a9293042d', 'WBCINA0000126', '');
INSERT INTO `usr_account` VALUES ('ca872ed0b4791dce3f7f', '.aa1aec2d4efeb8e4ac2', 'afc9adcb6ec44f8eccc9bd3fc724dce9', '', '');
INSERT INTO `usr_account` VALUES ('cedbb4a7446a43b3a449', '.c221f200e4cbbd75b4a', '6a503d3ff3f2dc4e4f5f1f5f171c7c21', 'WBCINA0000175', '');
INSERT INTO `usr_account` VALUES ('cf94ad1716f7f644d470', '.38c2cadd2e61510a9df', 'b40ae58620bbaa335fb1182332a9d1c0', 'WBCINA0000167', '');
INSERT INTO `usr_account` VALUES ('d0611a4e4d70b8bf716e', '.a1e6af566fa21e7f85b', '51f327105e6658e81420006a3fc23ac5', '', '');
INSERT INTO `usr_account` VALUES ('d106b8c79ad511d6c859', '.6f291e0ad32a0e5ea3f', '3dae157cdf140623b017df81a1de5a28', 'WBCINA0000145', '');
INSERT INTO `usr_account` VALUES ('d19d96fb8ed17fba1cbb', '.9d36d21e23afdec5f20', 'c783d72d2bebe0449212487b49f828fd', 'WBCINA0000064', '');
INSERT INTO `usr_account` VALUES ('d3485bdb411860ae8c19', '.03599437b0d64eb6ec3', '6698277655fddc3e58daf2019126cf22', '', '');
INSERT INTO `usr_account` VALUES ('d3c8cdb9a39e514d6b97', '.872bda5020860e684c6', '3642e69e75f4d39ff96c28f375ab3c59', 'WBCINA0000010', '');
INSERT INTO `usr_account` VALUES ('d512bea1518671c879f3', '.d6ab3d85f8ad0d30885', '7db1538f38f21d718c773854e983ec2f', 'WBCINA0000020', '');
INSERT INTO `usr_account` VALUES ('d5b23ab05974874eab17', '.e18bd5250aa0cb28ee6', '8436b52419948050e4148a7f676ea79e', 'WBCINA0000088', '');
INSERT INTO `usr_account` VALUES ('d72d58bcc924352a7f58', '.81c457653745ea78ff5', '9308a0ba4a93348b1346a992d41d045e', '', '');
INSERT INTO `usr_account` VALUES ('db25f7c50412bfd7f92c', '.e91ff98541b12c99e82', '4fecc1e8654ff9ec9bf89b75f33ae181', 'WBCINA0000056', '');
INSERT INTO `usr_account` VALUES ('db90baf4d45ea571b9e1', '.96161012f413323c182', 'bbae833891f4e7ef864774458654f461', 'WBCINA0000156', '');
INSERT INTO `usr_account` VALUES ('dcaa7f08d787ca1d7905', '.7987e8121e8c9c8e2fe', '15008d4f171e705c7c34b8cd192e45bd', 'WBC0000000002', '');
INSERT INTO `usr_account` VALUES ('dd1d8180034abeaa15ec', '.68df58c77cd76d7213f', '8d72c83c50909cb5e67d97581a64a659', '', '');
INSERT INTO `usr_account` VALUES ('ddc364537c89859fe75f', '.71695a5d809396257aa', '15673c8ec00ab30d8673cdc2e56441e4', 'WBCINA0000179', '');
INSERT INTO `usr_account` VALUES ('ddcaecb5c8440b266b67', '.316b1f74423fea5cd7d', '545bf9f6f51041a3fceedc5859ebaa61', '', '');
INSERT INTO `usr_account` VALUES ('de4e03e64d033e60acce', '.6caa2f8d8f64076a276', 'f8378a8fbd68cb644266f95b1c89c82c', 'WBCINA0000252', '');
INSERT INTO `usr_account` VALUES ('decc7fd8eb49031eff6f', '.04844fb0a9667cb0044', '65bd78b6db3f4e4ff3cc81f5794b0759', 'WBCINA0000026', '');
INSERT INTO `usr_account` VALUES ('df2a280b7c2eeab904aa', '.9b8e5fbc7ef0926ebcb', 'b253846cff502aa003594d9cb1ae463c', '', '');
INSERT INTO `usr_account` VALUES ('e14af235b73646e11e23', '.d56aa722252e7641109', '0ad967ecb36fd446be9af6f27ac1a3c7', 'WBCINA0000178', '');
INSERT INTO `usr_account` VALUES ('e27f729a4d26d6c080cf', '.b6b14640c4434750a83', '7abcdffdf4384b0f3daf8f1c651e853f', 'WBCINA0000016', '');
INSERT INTO `usr_account` VALUES ('e558d08a568a43c9cdd3', '.089b1f448e4ef627dff', 'c0b9f08fc286b010c5fdc1e2b8ebdb66', 'WBCINA0000262', '');
INSERT INTO `usr_account` VALUES ('e68fbefc984ec00f48db', '.71c126aab337cc043d7', '5a5a3a810de31aa2608d0b313bae5f1e', 'WBCINA0000158', '');
INSERT INTO `usr_account` VALUES ('e73a2782c695934074f7', '.4d04e058a8cf267b3e6', 'e3851b83d036bc572d11499d820d5067', 'WBCINA0000193', '');
INSERT INTO `usr_account` VALUES ('e7b398f677fbf9975b4c', '.b6ee4fe9dc60ebe491a', '66610e7533b429412b71a013becb84ce', '', '');
INSERT INTO `usr_account` VALUES ('e9d4b56829edb8b69cb8', '.cc647ba865d43fec19c', 'aec608fda7a485e96f9040d240fa2a6b', '', '');
INSERT INTO `usr_account` VALUES ('e9f68e548b0697a0ffd6', '.116b55625669424dad3', '0b60fd8a182725ffcbd9388318356980', 'WBCINA0000065', '');
INSERT INTO `usr_account` VALUES ('eabee85c4c79f38083f4', '.5cd45534308f93f6a10', '458ee57686cdbfb27076732de3cb6e93', 'WBCINA0000110', '');
INSERT INTO `usr_account` VALUES ('ec5556b86362adf93c28', '.5d9f635ee5b33cfef81', '59949ef12e777ef3006d67b507ff62aa', '', '');
INSERT INTO `usr_account` VALUES ('ecfdbc8de72a35049102', '.b0b74776f2e61028e2d', '70e1289acfa41166df235e2db4d2627d', 'WBCINA0000180', '');
INSERT INTO `usr_account` VALUES ('edc93ac6e25ec6a46f00', '.af76df5c8acd4be53bd', '90e57311a4e974e852c014616958405a', 'WBCINA0000131', '');
INSERT INTO `usr_account` VALUES ('ef60d77e119cdcd1e70a', '.82c06e47563c81a5bfc', 'e388f02f750e65ebba95ab9493cda01e', '', '');
INSERT INTO `usr_account` VALUES ('ef7f4a790d6f6aeac2ea', '.0269c49a8040e73726f', 'af477b1984e40f7f6a8ee19f9e36d01e', 'WBCINA0000227', '');
INSERT INTO `usr_account` VALUES ('ef849644b17e3bce6e22', '.f031e255863d08ebb97', 'd74a2661b6a11785a07380a3fd0f8a1a', '', '');
INSERT INTO `usr_account` VALUES ('efd38464a0f9f1b4bfb8', '.d76b53f3325242c18c1', '302fb478fd35bf2cf0149cbe380e971a', '', '');
INSERT INTO `usr_account` VALUES ('f02bc6dd0ee3c75155bd', '.b1035b511bbcb4e0527', '90759a75b7cfe034d5ac307fd3d07060', '', '');
INSERT INTO `usr_account` VALUES ('f0dd80355a18efc97bf2', '.801a98bb7f0cd71c40f', 'b9314c84287ca8a5eed209fa4e5dc591', 'WBCINA0000048', '');
INSERT INTO `usr_account` VALUES ('f0e25fcab1e6724ca10a', '.f9a899b3adef9d0b1b7', '111c0528bbbce8a8b78750ad86d4980e', 'WBCINA0000003', '');
INSERT INTO `usr_account` VALUES ('f0e5b61bd4428e9b25dd', '.c32fe0b0e14ad4f3a35', 'e433e140aaaae8c96dde157d72c8035a', 'WBCINA0000197', '');
INSERT INTO `usr_account` VALUES ('f1251968e8aae5642aa3', '.0917bdc0b7c5d80d86f', '2966219ca230b6fa4ec1de303fc5cdf1', 'WBCINA0000225', '');
INSERT INTO `usr_account` VALUES ('f149b58c1a23e6d1f389', '.7a8680d62a442b221f4', '368b2d6d16cccd2b2cf3f6eb34b609b8', 'WBCINA0000218', '');
INSERT INTO `usr_account` VALUES ('f3839a9691dc8bf37c9a', '.46c7a80c2814decbe93', 'ce5697c28ab73be8447d1a473c25aa26', 'WBCINA0000113', '');
INSERT INTO `usr_account` VALUES ('f478339eaf1d3d57c373', '.61b82fe412812d35b39', 'd05cc4203d36c477abb90cbe72616547', 'WBCINA0000137', '');
INSERT INTO `usr_account` VALUES ('f5cde7b09d97a64fd67f', '.8c7f5a33bddd501e9f9', '65fef8ca8bded1899c897537680f1d5b', '', '');
INSERT INTO `usr_account` VALUES ('f6696f6c8e8f3ce8c247', '.a6e538340f3f483697f', '3598e99a16d88e2a9b36e24c06fa8fab', 'WBCINA0000313', '');
INSERT INTO `usr_account` VALUES ('f85a2ae0a91e06f2f599', '.c19906f7186089a8544', '16918bd090b1abedfbd01fc733ebf602', '', '');
INSERT INTO `usr_account` VALUES ('f86622ea816c7eb10dee', '.f46b1dd9e0524196108', '2e6bfa000ee3048dfe407a032dd228ed', 'WBCINA0000055', '');
INSERT INTO `usr_account` VALUES ('fa7c94df313204d14566', '.27132ca638075f9e08b', '2cf057093250095da78d3668ef970807', '', '');
INSERT INTO `usr_account` VALUES ('fa9208d209969dd9f4a3', '.0528a303bf5ae12da8c', '2d88a35b4cdb0f11f53e787804147dd7', '', '');
INSERT INTO `usr_account` VALUES ('fb02f72ebabf6a311d31', '.7c222f6fe2e0de30ba3', '92c07e74c9f005d99b302347241a5682', 'WBCINA0000192', '');
INSERT INTO `usr_account` VALUES ('fbad8a724feec842a0eb', '.8b9310f8644623f69e3', '3049fe00a37e6ace50d5c2dc122321e8', 'WBCINA0000083', '');
INSERT INTO `usr_account` VALUES ('fca4591db159b23cedb6', '.0555e7a4f65a99193a3', 'c952fcd091648094dfc4073a75ef9ad1', 'WBCINA0000148', '');
INSERT INTO `usr_account` VALUES ('fd55ee2bd485f2fbfbbd', '.8ecf5d9b963803a2265', '9895a38c715d45c587271cbef0feae35', 'WBCINA0000091', '');
INSERT INTO `usr_account` VALUES ('fd775a9b1e4f8126cfa0', '.ecfb2da3f297becf4d6', 'a0b3334ff1a7990a2052438e6f31304f', 'WBCINA0000168', '');
INSERT INTO `usr_account` VALUES ('fdc74ce4b2ab424ea8fc', '.30122a7b29548e6e114', '7607dbb75e2b392eb5636243c21cb903', 'WBCINA0000042', '');
INSERT INTO `usr_account` VALUES ('fe468f6c303b39ba1a84', '.afaf695071b81ba7cef', '04ccf5b0585259fc01ba00c78879e41b', 'WBCINA0000027', '');
INSERT INTO `usr_account` VALUES ('fe4e3f0badacb9718ea3', '.0fc6b045e79bb3fb3b0', 'e83ff2945cea4e1aa9da0b7b1787ae3d', 'WBCINA0000221', '');
INSERT INTO `usr_account` VALUES ('fe9ab8ed121652ae0d07', '.7726c33c9cc01aa6aad', '01b95413087f0944716f0216e895da6a', 'WBCINA0000051', '');
INSERT INTO `usr_account` VALUES ('ffd5c658a154388eaf42', '.bbc5babb53622b59778', 'e3055e899d245d3a982a1fcde019995c', 'WBCINA0000141', '');
INSERT INTO `usr_album` VALUES ('1', '1', 'Profile Picture', 'profile', '1');
INSERT INTO `usr_album` VALUES ('2', '1', 'Wall Picture', 'post', '1');
INSERT INTO `usr_album` VALUES ('3', '1', 'Public Picture', 'public', '1');
INSERT INTO `usr_album` VALUES ('4', '1', 'Private Picture', 'private', '0');
INSERT INTO `usr_album` VALUES ('5', '0', 'Reserved', '', '0');
INSERT INTO `usr_album` VALUES ('6', '0', 'Reserved', '', '0');
INSERT INTO `usr_album` VALUES ('7', '0', 'Reserved', '', '0');
INSERT INTO `usr_album` VALUES ('8', '0', 'Reserved', '', '0');
INSERT INTO `usr_album` VALUES ('9', '0', 'Reserved', '', '0');
INSERT INTO `usr_album` VALUES ('11', '5731d07f79debda21be2', 'testing new', 'testing', '1');
INSERT INTO `usr_contact` VALUES ('00ec615bfb3d01428224', 'product_support@draeger.co.id', '');
INSERT INTO `usr_contact` VALUES ('010e5a0c42c4477e4a62', 'ridjani@sillobatara.com', '+62 8161870677');
INSERT INTO `usr_contact` VALUES ('011e710a82e5a9be8d44', 'yanti@winsglobal.com', '');
INSERT INTO `usr_contact` VALUES ('017138a99b78ddf7a2ea', 'roddygrobinson@yahoo.com', '');
INSERT INTO `usr_contact` VALUES ('033459aac55e938f2b76', 'didier.perez@airkitafoudation.org', '');
INSERT INTO `usr_contact` VALUES ('04665e09048582c105d0', 'vice-principal@nis.or.id', '');
INSERT INTO `usr_contact` VALUES ('049f6e85c80e89f2a5bd', 'kiel.chrysolite@yahoo.com', '');
INSERT INTO `usr_contact` VALUES ('04c9003bf96e4ec643d4', 'director@ina.or.id', '');
INSERT INTO `usr_contact` VALUES ('0615ab93644fa4a30a86', 'info@dte-engineering.com', '');
INSERT INTO `usr_contact` VALUES ('07d7c47e8ae7422ab1c5', 'une_skyline@yahoo.com', '');
INSERT INTO `usr_contact` VALUES ('08531e385bc7e0e7e68d', 'm.derouw@nutricia.com', '');
INSERT INTO `usr_contact` VALUES ('0995a136dd251f3eb432', 'little-pretiey@yahoo.com', '+62 85692234496');
INSERT INTO `usr_contact` VALUES ('09bab40d632707359ecb', 'mjarquisola13@ymail.com', '+62 81510226179');
INSERT INTO `usr_contact` VALUES ('0abc6169ae7fdff2baf0', 'srt-ho@srt.co.id', '');
INSERT INTO `usr_contact` VALUES ('0ac60f79989361d49616', 'boonconsult@gmail.com', '+62 0213548212');
INSERT INTO `usr_contact` VALUES ('0bfcb9d4b08401855162', 'info@nesoindonesia.or.id', '');
INSERT INTO `usr_contact` VALUES ('0c2dd323098e73a2cd84', 'olive_imel@yahoo.com', '+62 818861623');
INSERT INTO `usr_contact` VALUES ('0ccc8bafca0f6aed8b5c', 'info@sundatrails.com', '');
INSERT INTO `usr_contact` VALUES ('0cd019921f3bfceabf1f', 'micon.international@gmail.com', '');
INSERT INTO `usr_contact` VALUES ('0cdf86847cb58037442f', 'rani@winsglobal.com', '');
INSERT INTO `usr_contact` VALUES ('0d48dbd80cc627727ff6', 'bitsch@hotelborobudur.com', '');
INSERT INTO `usr_contact` VALUES ('0dcc1d0019d9ed89678a', 'von.e@hotmail.com', '+62 8128489228');
INSERT INTO `usr_contact` VALUES ('0f8fcf37e9defb0ba0a4', 'adetarya@technomed-asia.co.id', '');
INSERT INTO `usr_contact` VALUES ('0fcd93abfc590bde2a2e', 'leo.evers@multibintang.co.id', '');
INSERT INTO `usr_contact` VALUES ('10e1b90f4c732c69211b', 'jsopq916@yahoo.com', '+62 81319813677');
INSERT INTO `usr_contact` VALUES ('11df886a817bb8e3e83d', 'naviscope@yahoo.com', '+62 021 962230');
INSERT INTO `usr_contact` VALUES ('11ee38ef38b350ec3982', 'wpcitra@dnet.net.id', '');
INSERT INTO `usr_contact` VALUES ('125b998be5073167791c', 'info@teamworx.co.id', '');
INSERT INTO `usr_contact` VALUES ('12630b93463a05e7b790', 'philippe.demeyer@vincentsheppard.com', '');
INSERT INTO `usr_contact` VALUES ('13ce9958e882fc7a9e8d', 'wirda@winsglobal.com', '');
INSERT INTO `usr_contact` VALUES ('14be327e1cf17e1ad5c2', 'general@royalhaskoningindonesia.com', '');
INSERT INTO `usr_contact` VALUES ('15f9362907d5c77bf516', 'slangenfamily@hotmail.com', '');
INSERT INTO `usr_contact` VALUES ('160adc82dc7e99e5007e', 'marcia@winsglobal.com', '+62  2172058');
INSERT INTO `usr_contact` VALUES ('16ce5b78b438eb1a6ba4', 'korz.zegggelaar@insoorz.com', '');
INSERT INTO `usr_contact` VALUES ('16f9d5a86585813e3c52', 'renz_msr@yahoo.com', '+62 85881111431');
INSERT INTO `usr_contact` VALUES ('1729da1b2df980734b5b', 'aps@pacific.net.id', '');
INSERT INTO `usr_contact` VALUES ('17bddea44d9aa89f71d9', 'michel.demuynck@ca-cib.com', '');
INSERT INTO `usr_contact` VALUES ('19ccfd1af6bea4bd5a64', 'sri.wahyuni@sfconsulting.co.id', '');
INSERT INTO `usr_contact` VALUES ('1a1daf34dcac774f5c71', 'saungmirwan@saungmirwan.com', '');
INSERT INTO `usr_contact` VALUES ('1af80cc78ecb48c02e72', 'octav_iez@yahoo.co.id', '+62 021 99776678');
INSERT INTO `usr_contact` VALUES ('1bb8514a20e38049ce9b', 'samuel_siahaan@agungraya.co.id', '');
INSERT INTO `usr_contact` VALUES ('1cd543585d9e9ce5bbf0', 'ktsprima@centrin.net.id', '');
INSERT INTO `usr_contact` VALUES ('1d94697e70e79e8a1191', 'freddie_owen@yahoo.com', '+62 021 9836391');
INSERT INTO `usr_contact` VALUES ('1e76a35559c647468a5b', 'j.van.keulen@teamworx.co.id', '');
INSERT INTO `usr_contact` VALUES ('1eee1356f1a334eb3b88', 'ican@evolutionteams.com', '');
INSERT INTO `usr_contact` VALUES ('1f8d931db87147a29be9', 'm.smit@gmbs.eu', '');
INSERT INTO `usr_contact` VALUES ('1fcafe0a583ee2fbe101', 'yannie.augustien@hotmail.com', '');
INSERT INTO `usr_contact` VALUES ('212fcca820a80d33a66c', 'dbindo@cbn.net.id', '');
INSERT INTO `usr_contact` VALUES ('218b105309005d8f32de', 'Sri.Aditia@spr.akzonobel.com', '');
INSERT INTO `usr_contact` VALUES ('21b8c6e241c8bf290334', 'elien_smits@multibintang.co.id', '');
INSERT INTO `usr_contact` VALUES ('220a3b2021cde4f7a5c2', 'allen.brewer@norma-asia.com', '');
INSERT INTO `usr_contact` VALUES ('232d5f6016275b46c80a', 'info@q-spicing.com', '');
INSERT INTO `usr_contact` VALUES ('25d1aa539b02ee9dac1f', 'leonita_simapatti@yahoo.com', '+62 021 8564998');
INSERT INTO `usr_contact` VALUES ('2615b183ac0828ca55cf', 'wagemaker@hkv.nl', '');
INSERT INTO `usr_contact` VALUES ('261dcc62ed8490aebfca', 'natalia.meidya@yahoo.com', '+62 81908171568');
INSERT INTO `usr_contact` VALUES ('27a29ac87a1461b7c88e', 'bvleather@yahoo.com', '+62 021 30037740');
INSERT INTO `usr_contact` VALUES ('285541c1d3527d364258', 'rightimefinance@gmail.com', '+62 21720998');
INSERT INTO `usr_contact` VALUES ('296676ae4e62ebcfe22b', 'david@haven-associates.com', '+62 81219129');
INSERT INTO `usr_contact` VALUES ('2a4819d69ebd7971fc8d', 'bpmjakarta@cbn.net.id', '');
INSERT INTO `usr_contact` VALUES ('2b765a1bdb0b9ff89568', 'j.van.der.knap@rijkzwaan.com', '');
INSERT INTO `usr_contact` VALUES ('2c157e10220bf7a82cce', 'olivia_john91@yahoo.com', '+62 81991228855');
INSERT INTO `usr_contact` VALUES ('2c525238bcaa32d4b13f', 'alex.vanderwyck@aon.com', '');
INSERT INTO `usr_contact` VALUES ('2d8c94b5fecf3a164247', 'barbara.voskamp@voskamplawyers.com', '');
INSERT INTO `usr_contact` VALUES ('2e50c71578011822fc1d', 'agrimax.jakarta@gmail.com', '');
INSERT INTO `usr_contact` VALUES ('2e9de7eedb8a17dddd77', 'info@newwicker.com', '');
INSERT INTO `usr_contact` VALUES ('2f0d5bea6650dff37f57', 'joe@datascrip.co.id', '');
INSERT INTO `usr_contact` VALUES ('2ff5c4efa52ce9515d75', 'alex.jaminon@ocinitrogen.com', '');
INSERT INTO `usr_contact` VALUES ('30d349d6040edc8baf1c', 'amelianatalina@yahoo.com', '+62 8129189452');
INSERT INTO `usr_contact` VALUES ('3272d6803fe17d67c777', 'tleenders@asia-equitytrust.com', '');
INSERT INTO `usr_contact` VALUES ('33331c85609587e6a725', 'r_wintgens@indo.net.id', '+62 0217279142');
INSERT INTO `usr_contact` VALUES ('33d0ed22cf94c7d9b381', 'dianne@nlrindonesia.or.id', '');
INSERT INTO `usr_contact` VALUES ('33d5f8f654542c10cff5', 'susanti1507@yahoo.com', '+62 0215292000');
INSERT INTO `usr_contact` VALUES ('34e0a333d76e7a3b92ff', 'leo@tirta-drenthe.com', '');
INSERT INTO `usr_contact` VALUES ('3539aece62d8210ff1e1', 'rifina_yang@yahoo.co.id', '+62 81311163982');
INSERT INTO `usr_contact` VALUES ('3661d1af9aa20354edf6', 'vincenthar@pttdp.com', '');
INSERT INTO `usr_contact` VALUES ('37ea7eb59dac7a0350ef', 'inspiro@attglobal.net', '');
INSERT INTO `usr_contact` VALUES ('381964dd3467c6e5a644', 'moshi-moshiku@yahoo.com', '+62 85711670250');
INSERT INTO `usr_contact` VALUES ('3995af1ff80f4bf55158', 'pingkan.antania@gmail.com', '+62 818415032');
INSERT INTO `usr_contact` VALUES ('3aed76b9b2ea280be0c1', 'darmawansaleh@ymail.com', '+62 021 573336');
INSERT INTO `usr_contact` VALUES ('3b1d6fbefba78e988e10', 'mangesh@nvision.co.id', '');
INSERT INTO `usr_contact` VALUES ('3c9cf04753e2268e34a1', 'r.reijman@burdock.com', '');
INSERT INTO `usr_contact` VALUES ('3d3e856e4c63310bf4fe', 'sebastiaan@navigat.com', '');
INSERT INTO `usr_contact` VALUES ('3e5852cc8b8bf19f33be', 'rslangen@controlunion.com', '');
INSERT INTO `usr_contact` VALUES ('3e6ad7ffeb77cbfbdc28', 'patricia.condro@yahoo.com', '+62 8174945633');
INSERT INTO `usr_contact` VALUES ('406922207a5789b5051b', 'thijs.sablerolle@gmail.com', '');
INSERT INTO `usr_contact` VALUES ('42a93add5b94d0ee96e7', 'frankvanginkel@kingfisher-insurance.net', '');
INSERT INTO `usr_contact` VALUES ('42e89cf82cc164f54d52', 'jdevries@vanleeuwen.co.id', '');
INSERT INTO `usr_contact` VALUES ('434a4447e817c82a1df7', 'p.debats@ihcmerwede.com', '');
INSERT INTO `usr_contact` VALUES ('4446210ec49d91650c1e', 'Gyscha@winsglobal.com', '');
INSERT INTO `usr_contact` VALUES ('447366436ff2fb4ee928', 'inamulti@rad.net.id', '');
INSERT INTO `usr_contact` VALUES ('44df0b64d03529c80ede', 'alexandro_alexander@yahoo.com', '+62 81908827777');
INSERT INTO `usr_contact` VALUES ('44f8ea2cae316846418c', 'jderaad@sbimanning.co.id', '');
INSERT INTO `usr_contact` VALUES ('45f71263311645806aba', 'export@lulualbum.com', '');
INSERT INTO `usr_contact` VALUES ('470fc76f53105118176b', 'lagerwij@saranakreasi.com', '');
INSERT INTO `usr_contact` VALUES ('47592a72175242546c72', 'johnny34@rad.net.id', '');
INSERT INTO `usr_contact` VALUES ('4812f6425ac30b35034a', 'jos.mennens@id.pvmgrp.com', '');
INSERT INTO `usr_contact` VALUES ('48412d551c8dda2e595c', 'skpangkey@hollandcolours.com', '');
INSERT INTO `usr_contact` VALUES ('4957f4ad6ddfe9a9e425', 'romeo_my@yahoo.com', '+62 81386664541');
INSERT INTO `usr_contact` VALUES ('49daf62c9c570edb129c', 'milda.y-yunus@dbschenker.com', '');
INSERT INTO `usr_contact` VALUES ('4bbdaced692b41330d55', 'jwill@santaferelo.co.id', '+62 81198202');
INSERT INTO `usr_contact` VALUES ('4bde50ac83823879d271', 'dstuip@accette.co.id', '');
INSERT INTO `usr_contact` VALUES ('4d8e87110f099dcf3661', 'hpdeboer@iro.nl', '');
INSERT INTO `usr_contact` VALUES ('4df33e629a21183f9973', 'ckunjr@gmail.com', '+62 2171268880');
INSERT INTO `usr_contact` VALUES ('4e0498f663d4ad767035', 'hera@cobra.co.id', '+62 021 999300');
INSERT INTO `usr_contact` VALUES ('4e1bd8e972572d5bc1c1', 'chindy.angelia@yahoo.com', '+62 8179898959');
INSERT INTO `usr_contact` VALUES ('4e2f9a5f1b287d39bdca', 'amayanti21@yahoo.co.id', '+62 2170607023');
INSERT INTO `usr_contact` VALUES ('4e9adf7229729c45118e', 'wanda.scott@finlasy.net', '');
INSERT INTO `usr_contact` VALUES ('4f2d6e3ad6e3af36a4e7', 'dearieu@yahoo.com', '+62 021 546428');
INSERT INTO `usr_contact` VALUES ('5009e8dc99f688e7b7a4', 'gkjkt@cbn.net.id', '');
INSERT INTO `usr_contact` VALUES ('505e8ee1be8a74eb59a7', 'ryan@winsglobal.com', '');
INSERT INTO `usr_contact` VALUES ('53b61a4a3f74f364a80e', 'purba@sutriana.com', '');
INSERT INTO `usr_contact` VALUES ('53f862e0d63dac24ed79', 'info@asyx.com', '');
INSERT INTO `usr_contact` VALUES ('545022a623699d1b0fb3', 'handi@cobra.co.id', '+62 021 913566');
INSERT INTO `usr_contact` VALUES ('54b1b1eb96d61f65fd16', 'merrypane@gmail.com', '+62 8551034510');
INSERT INTO `usr_contact` VALUES ('55dca73c5804d8663351', 'leonardhendrawan@hotmail.com', '');
INSERT INTO `usr_contact` VALUES ('56a559a8d6e469558853', 'office@trendcom-intl.com', '');
INSERT INTO `usr_contact` VALUES ('5731d07f79debda21be2', 'agus@winsglobal.com', '');
INSERT INTO `usr_contact` VALUES ('58e51a6cc129e2bcfab2', 'smithc@kncvtbc.nl', '');
INSERT INTO `usr_contact` VALUES ('591af565b5a378c5d0f3', 'indonesia@excellentholidays.info', '');
INSERT INTO `usr_contact` VALUES ('5bf99c5ea311b5ae57bf', 'joris.van.wijk@hitfoundation.eu', '');
INSERT INTO `usr_contact` VALUES ('5f8461ca33617f6c69d7', 'east_road@yahoo.com', '+62 8561586887');
INSERT INTO `usr_contact` VALUES ('5fb4a6db719f5b061ab6', 'niaga_international@yahoo.com', '');
INSERT INTO `usr_contact` VALUES ('603921338cfa9ffbaa35', 'lvaccar@gmail.com', '+62 021 71793152');
INSERT INTO `usr_contact` VALUES ('608e23715ab3a46bdd80', 'rhoda@indo.net.id', '');
INSERT INTO `usr_contact` VALUES ('60bca865f0ed6f808885', 'baudouin.coomans@mazars.co.id', '');
INSERT INTO `usr_contact` VALUES ('6250b1230140fa6f3544', 'susanna@zeelandia.co.id', '');
INSERT INTO `usr_contact` VALUES ('628cf06e80d59a0c418b', 'tour@kmg.bayubuanatravel.com', '+62 021 650126');
INSERT INTO `usr_contact` VALUES ('6390f06600ed47b57e90', 'chrisgarrett.sf@gmail.com', '');
INSERT INTO `usr_contact` VALUES ('63f2fe715446cba6e132', 'laura.manalu@asia.bnpparibas.com', '');
INSERT INTO `usr_contact` VALUES ('64b6e6634f8fade06cc9', 'ricw@fugro.co.id', '+62 2183008');
INSERT INTO `usr_contact` VALUES ('64b954da0c730727b741', 'gert@espionline.com', '');
INSERT INTO `usr_contact` VALUES ('664aa999d5403d36588f', 'fauzansubandi@gmail.com', '+62 81389367889');
INSERT INTO `usr_contact` VALUES ('664e92087fd3382c02bd', 'bsutantio@macro.co.id', '');
INSERT INTO `usr_contact` VALUES ('6806a2b7b123a0a82e31', 'william@aspacmining.com', '');
INSERT INTO `usr_contact` VALUES ('6ad3e9b154a0bf49900f', 'agung@hotelkristal.co.id', '+62 8172372495');
INSERT INTO `usr_contact` VALUES ('6ad56584d2d36b6d0e93', 'wilblok@cbn.net.id', '');
INSERT INTO `usr_contact` VALUES ('6b74c8796548003fae22', 'marcel.raats@agentschapnl.nl', '');
INSERT INTO `usr_contact` VALUES ('6d9d822ba9c5b6701bae', 'dirk-jan@refaco.nl', '');
INSERT INTO `usr_contact` VALUES ('6dc41e10bb12e91b375b', 'wim.maes@desleeclama.com', '');
INSERT INTO `usr_contact` VALUES ('6e02c4ccf9991b9eea8f', 'info@syres-indonesia.com', '');
INSERT INTO `usr_contact` VALUES ('6ec91627886839dff4a7', 'project@ina.or.id', '');
INSERT INTO `usr_contact` VALUES ('6f170d18f8e9bda8dfff', 'andy@nslogistics.net', '');
INSERT INTO `usr_contact` VALUES ('6fb2038d36a0633fada2', 'tnw@tnw.nl', '');
INSERT INTO `usr_contact` VALUES ('711cca1ca075eced492f', 'info@pamerindo.com', '');
INSERT INTO `usr_contact` VALUES ('717c754daf29ae8c7872', 'tim.klappe@manroland.com', '');
INSERT INTO `usr_contact` VALUES ('71d90b9fba71f265497b', 'adhi_anondo@gpp.co.id', '');
INSERT INTO `usr_contact` VALUES ('727930fb01fe005de25d', 'tatang@winsglobal.com', '');
INSERT INTO `usr_contact` VALUES ('7310148804bba9c4c755', 'gyscha@hotmail.com', '+62 0878782944');
INSERT INTO `usr_contact` VALUES ('739fbadd91a8dbe06efb', 'roeland@zi-argus.com', '');
INSERT INTO `usr_contact` VALUES ('76ab07071ab7b94d591d', 'eve_on_email@yahoo.com', '+62 85714513300');
INSERT INTO `usr_contact` VALUES ('76f341ae9b1ef60af70d', 'Kevin.Burrell@cevalogistics.com', '');
INSERT INTO `usr_contact` VALUES ('79b19eae951eb3f56466', 'mark@lediard.net', '+62 21720323');
INSERT INTO `usr_contact` VALUES ('7a30792824f1f1f5c6c6', 'a.a.kirana@gmail.com', '+62 0812181252');
INSERT INTO `usr_contact` VALUES ('7a92f7ced45096e08214', 'armandfaris@yahoo.com', '+62 81519493693');
INSERT INTO `usr_contact` VALUES ('7c1c0fc6e5a1ee3aaa6a', 'marcpeeters@bambunusaverde.com', '');
INSERT INTO `usr_contact` VALUES ('7e67fed150b8b30d9df2', 'info@witbo.co.id', '');
INSERT INTO `usr_contact` VALUES ('7ebc9f54a85fd2687c57', 'villiger@cbn.net.id', '');
INSERT INTO `usr_contact` VALUES ('7eef31dffd85b2ab7c57', 'mariko@jacindonesia.com', '');
INSERT INTO `usr_contact` VALUES ('7ef24b858bdfa6e19ce8', 'cosmar@ptcosmar.com', '');
INSERT INTO `usr_contact` VALUES ('7f6350838f956d64176e', 'doni.leemrijse@cahayasakti.net', '');
INSERT INTO `usr_contact` VALUES ('7f64e471d7088f10106b', 'tjen.permata@kping.co.id', '+62 8567850550');
INSERT INTO `usr_contact` VALUES ('7fc6653525bf2848a468', 'ck@turboned.nl', '');
INSERT INTO `usr_contact` VALUES ('7fe7c6376eebc744e5b7', 'zeesliciouz@yahoo.com', '+62 021 914559');
INSERT INTO `usr_contact` VALUES ('80fab60c5bf667dde4cd', 'laser.jibot@yahoo.com', '+62 85256136660');
INSERT INTO `usr_contact` VALUES ('822253b91c028b2fab17', 'widayat.d.buutoro@gmail.com', '+62 8129180362');
INSERT INTO `usr_contact` VALUES ('8239739aa11fc08a1f62', 'dougie.douglas@etihad.com', '+62 819752386');
INSERT INTO `usr_contact` VALUES ('8316638c2225ff8ba6c4', 'Jennychugani@hotmail.com', '+62 8161829921');
INSERT INTO `usr_contact` VALUES ('84dcffe6bb6c9e5a6d40', 'hany.wijaya@gmail.com', '+62 818842488');
INSERT INTO `usr_contact` VALUES ('8532fad51d628f1c9696', 'kk.idguides@gmail.com', '+62 85714473854');
INSERT INTO `usr_contact` VALUES ('8972417a1225beb95737', 'irfanwow@yahoo.com', '');
INSERT INTO `usr_contact` VALUES ('8a1367b867e960954066', 'barry.pitman@ichotelsgroup.com', '');
INSERT INTO `usr_contact` VALUES ('8a5804e184b8f6a7a786', 'squeeze@dps.centrin.net.id', '');
INSERT INTO `usr_contact` VALUES ('8b1175fe5720ed122d4b', 'nadya@peoplesouce-solutions.com', '');
INSERT INTO `usr_contact` VALUES ('8b574a1b6be60d2f9c12', 'marij.aben@gmail.com', '');
INSERT INTO `usr_contact` VALUES ('8bb0b43f6ac92833153f', 'dwi_oetami@live.nl', '');
INSERT INTO `usr_contact` VALUES ('8c1dcdb78d078ac81e22', 'endang30_astuti@yahoo.co.id', '+62 8567180808');
INSERT INTO `usr_contact` VALUES ('8e3e85bd92aaca6203fb', 'step29n@yahoo.com', '+62 818991029');
INSERT INTO `usr_contact` VALUES ('8f21c73bd16b954bf70a', 'jwh@cbn.net.id', '');
INSERT INTO `usr_contact` VALUES ('8f4a05a9a3e0fe1acc6d', 'cisca.sundoro@gmail.com', '+62 8129481090');
INSERT INTO `usr_contact` VALUES ('8f8ee6591e85c28706fd', 'remko@dotus-indonesia.com', '');
INSERT INTO `usr_contact` VALUES ('90223a099e566b7745fa', 'g.vanzoest@ihs.nl', '');
INSERT INTO `usr_contact` VALUES ('9081e65e05792979650e', 'hans.zewald@dhv.com', '');
INSERT INTO `usr_contact` VALUES ('9086fd28f48abf565b8e', 'willemstuive@liberator.nl', '');
INSERT INTO `usr_contact` VALUES ('90aa09f90bd0bbe0230e', 'maurits.lalisang@unilever.com', '');
INSERT INTO `usr_contact` VALUES ('90f107f3d51838a37b61', 'mdf@mdf.nl', '');
INSERT INTO `usr_contact` VALUES ('9114fdff19a3cac9219f', 'juliati@gistecprima.com', '');
INSERT INTO `usr_contact` VALUES ('914f69b1f9c47daa6876', 'mega.warni@hotmail.com', '+62 85921785352');
INSERT INTO `usr_contact` VALUES ('91c65844c1727ac33beb', 'purnomo.prawiro@bluebirdgroup.com', '');
INSERT INTO `usr_contact` VALUES ('920d271f5a56e45471a2', 'tbakker@abnrlaw.com', '');
INSERT INTO `usr_contact` VALUES ('922ffdc42e5a95c70b6f', 'marketing@scanotassku.net', '');
INSERT INTO `usr_contact` VALUES ('92392066623b2b60daf4', 'rik@triple-a-team.com', '');
INSERT INTO `usr_contact` VALUES ('9245232d54b182f04dae', 'Harry.Purwoko@damco.com', '');
INSERT INTO `usr_contact` VALUES ('9269a85a3094e548ff52', 'robert.hogenstijn@lemeridien.com', '');
INSERT INTO `usr_contact` VALUES ('926abe25100df96bcbd0', 'linders@wlqc.com', '');
INSERT INTO `usr_contact` VALUES ('926e26c41b00b4393c89', 'darwin.silalahi@shell.com', '');
INSERT INTO `usr_contact` VALUES ('92b2175ad00f1a463069', 't.a.jovina@gmail.com', '+62 811874508');
INSERT INTO `usr_contact` VALUES ('94187fce4a2e3dd6e689', 'hilang70@hotmail.com', '');
INSERT INTO `usr_contact` VALUES ('95664d37b15c059676d8', 'maria@babalu.tv', '');
INSERT INTO `usr_contact` VALUES ('95b3c1a68aabdc741229', 'vanderint-indo@cbn.net.id', '');
INSERT INTO `usr_contact` VALUES ('95fbe336f671ec87a7d1', 'winardi@lippokarawaci.co.id', '+62 816828579');
INSERT INTO `usr_contact` VALUES ('9743ee5090b76c8e9666', 'ochiimoet@yahoo.com', '+62 83893863611');
INSERT INTO `usr_contact` VALUES ('9746056cc1022050c070', 'info@airdrilling.com', '');
INSERT INTO `usr_contact` VALUES ('97475427155a7d66ebd7', 'ives@cbn.net.id', '+62 99997799');
INSERT INTO `usr_contact` VALUES ('9877c3e3cc5392928ba5', 'rayncarnation@yahoo.com', '+62 021 92688189');
INSERT INTO `usr_contact` VALUES ('98cc30e1368c91ccb5ff', 'hmsofie@yahoo.com', '+23 45234542');
INSERT INTO `usr_contact` VALUES ('996fbc37291a7bd2c669', 'info@baliarchineers.net', '');
INSERT INTO `usr_contact` VALUES ('9ab4429e4e563dba0e49', 'penkonindo@vanoord.com', '');
INSERT INTO `usr_contact` VALUES ('9b2c7b2e253ba81623f0', 'andreaswihardja@inkote.co.id', '');
INSERT INTO `usr_contact` VALUES ('9b98fdc3ff9a96f853b3', 'a23wolff@rad.net.id', '');
INSERT INTO `usr_contact` VALUES ('9bbb95d1f24edcd08b3d', 'benedict@dnet.net.id', '');
INSERT INTO `usr_contact` VALUES ('9d1a767618fefeafcf40', 'dominique.vanderhaeghen@fitagency.com', '');
INSERT INTO `usr_contact` VALUES ('9da3c48fac7dbf13c668', 'ongkowijaya@live.com', '');
INSERT INTO `usr_contact` VALUES ('9dde060be2e1669e1d80', 'martin.sanders@planet.nl', '');
INSERT INTO `usr_contact` VALUES ('9e7247458e598260d58a', 'johnweldan@yahoo.com.sg', '+62 0217137641');
INSERT INTO `usr_contact` VALUES ('9ea852b592ae8d4b6d85', 'rex.hobbel@kenbri.nl', '');
INSERT INTO `usr_contact` VALUES ('9ed93322b9d6fc2349fb', 'adiporaharjo@santaferelo.co.id', '+62 021 7892033');
INSERT INTO `usr_contact` VALUES ('a022f85d265da1173559', 'dirk.buitelaar@klm.com', '');
INSERT INTO `usr_contact` VALUES ('a0b105f8a9261e43369d', 'J.Mens@vapro.nl', '');
INSERT INTO `usr_contact` VALUES ('a1440bd13ceb58243c0d', 'marketing@kbn.co.id', '');
INSERT INTO `usr_contact` VALUES ('a3103e57293ccb1edb02', 'adidarma@propanraya.com', '');
INSERT INTO `usr_contact` VALUES ('a394ea0ac2054f5faa91', 'info@bibitbaru.com', '');
INSERT INTO `usr_contact` VALUES ('a570b5e81b18f7cd82a3', 'bektip@grasso-indonesia.com', '');
INSERT INTO `usr_contact` VALUES ('a57336627e24ae14e3aa', 'age@consultfinace.nl', '');
INSERT INTO `usr_contact` VALUES ('a595fb078ae2338e5a25', 'info@bamdecorient.com', '');
INSERT INTO `usr_contact` VALUES ('a614b4475a8b59be3ea2', 'mark.noordhoek.hegt@vopak.com', '');
INSERT INTO `usr_contact` VALUES ('a763fbc6c9f9cc1f1ff9', 'info@javaseacharters.com', '');
INSERT INTO `usr_contact` VALUES ('a8961c0af4d700d90399', 'ben.hofs@jne-me.com', '+31 11141097');
INSERT INTO `usr_contact` VALUES ('a97c6029cca89f39b9bb', 'tino.moorrees@bnpparibas-ip.co.id', '');
INSERT INTO `usr_contact` VALUES ('ab97f983e899e77068ec', 'pamuji_aribowo@yahoo.com', '');
INSERT INTO `usr_contact` VALUES ('ad03384610ffb68f0a8c', 'info@stonesofeden.com', '');
INSERT INTO `usr_contact` VALUES ('ad3cb48981d4db6bc1b8', 'kwikinglan@lf-consult.com', '');
INSERT INTO `usr_contact` VALUES ('ade53457b2e69229c071', 'Hans@sensor.nl', '');
INSERT INTO `usr_contact` VALUES ('adfce6c1d151965f2911', 'thalesnavaljkt@indosat.net.id', '');
INSERT INTO `usr_contact` VALUES ('ae1aa80997053166a382', 'theo@humpuss.co.id', '');
INSERT INTO `usr_contact` VALUES ('ae23f1528a98d12f7fc9', 'rdp@pa-asia.com', '');
INSERT INTO `usr_contact` VALUES ('af6d806064f74870ec97', 'Roy.Kamphuis@tnt.com', '');
INSERT INTO `usr_contact` VALUES ('b2ac101d2b1faba0caa3', 'frankvg@nfs-asia.com', '');
INSERT INTO `usr_contact` VALUES ('b3d80280ed4688e56918', 'marketing@ina.or.id', '');
INSERT INTO `usr_contact` VALUES ('b3fca2a1e0f2e780b215', 'frans_spanjaart@avip.com', '');
INSERT INTO `usr_contact` VALUES ('b40337980dab09cf96b8', 'mh.roos@klm.com', '');
INSERT INTO `usr_contact` VALUES ('b47708d5c88af35f40c5', 'sandy1pearce@gmail.com', '+61 41150815');
INSERT INTO `usr_contact` VALUES ('b4b0dac2d2f7a55899ac', 'ivan.siew@tnt.com', '');
INSERT INTO `usr_contact` VALUES ('b6d066260960ee9d4c51', 'dos@parklanejakarta.com', '');
INSERT INTO `usr_contact` VALUES ('b7546ea5d4715b3f099e', 'sales@allseasonsholland.com', '');
INSERT INTO `usr_contact` VALUES ('ba98c8fa53cb19027fdf', 'ewouters@deloitte.com', '');
INSERT INTO `usr_contact` VALUES ('bc3fb7f8e6d43bfc8b7c', 'bedders15@yahoo.co.uk', '+62 81382432570');
INSERT INTO `usr_contact` VALUES ('bc614b22d8df830fd230', 'distributors@cbn.net.id', '+62 21781488');
INSERT INTO `usr_contact` VALUES ('bce76ecdbac2a5d8e36e', 'Triandini.Prasetyo@regus.com', '');
INSERT INTO `usr_contact` VALUES ('bd3646e9903ded19fc8d', 'michelmaas@yahoo.co.uk', '');
INSERT INTO `usr_contact` VALUES ('be19191192bd6aed68a0', 'eurojkt@indo.net.id', '');
INSERT INTO `usr_contact` VALUES ('be42347a753591727e9e', 'psa_office@cbn.net.id', '');
INSERT INTO `usr_contact` VALUES ('bf31a9f99aed5e225e4f', 'srboga@ratuboga.com', '');
INSERT INTO `usr_contact` VALUES ('bf4a939ec900a44f2374', 'billyottost@gmail.com', '+62 817772896');
INSERT INTO `usr_contact` VALUES ('bf8aed2a8691e4029961', 'raseacatin@gmail.com', '');
INSERT INTO `usr_contact` VALUES ('c0e9fa6eea99f57f1641', 'arie.koortens@moduspec.com', '');
INSERT INTO `usr_contact` VALUES ('c15930c3e2657f11b78b', 'nox060686@yahoo.com', '+62 8176562304');
INSERT INTO `usr_contact` VALUES ('c1c3d2c40b2dcc1e5714', 'three1979@yahoo.com', '');
INSERT INTO `usr_contact` VALUES ('c21d1d04f936e3e522d6', 'rob.fletcher@philips.com', '');
INSERT INTO `usr_contact` VALUES ('c2f10dcd4a6dc55fec57', 'edwin.jager@nibc.com', '');
INSERT INTO `usr_contact` VALUES ('c3b1455d93aca66e6836', 'tmlukkyfadillah@ymail.com', '+62 85697274949');
INSERT INTO `usr_contact` VALUES ('c3b9f756a65d3bae9ade', 'l.kling@tdh.nl', '');
INSERT INTO `usr_contact` VALUES ('c4428aafe89bd6c7e111', 'dewi_cak@yahoo.co.uk', '+62 81318788228');
INSERT INTO `usr_contact` VALUES ('c49b84579ebd389b5f82', 'jjchung@familikita.co.id', '');
INSERT INTO `usr_contact` VALUES ('c4bbfaf9f058c98e13cd', 'iwanhoo@hotmail.com', '');
INSERT INTO `usr_contact` VALUES ('c4c9875904542ce929f7', 'augustinasuyanti@rocketmail.com', '+62 81387112580');
INSERT INTO `usr_contact` VALUES ('c4cbf2ebd389aa212e53', 'benny@phoenix.co.id', '+62 818686835');
INSERT INTO `usr_contact` VALUES ('c5420c6630974c7e5a5c', 'yos@sioenasia.com', '');
INSERT INTO `usr_contact` VALUES ('ca872ed0b4791dce3f7f', 'ianbarr@net-zap.com', '+62 21 300');
INSERT INTO `usr_contact` VALUES ('cedbb4a7446a43b3a449', 'info@agrikulturapt.com', '');
INSERT INTO `usr_contact` VALUES ('cf94ad1716f7f644d470', 'marijn@asbindo.org', '');
INSERT INTO `usr_contact` VALUES ('d0611a4e4d70b8bf716e', 'shellaloo@hotmail.com', '+62 85888845911');
INSERT INTO `usr_contact` VALUES ('d106b8c79ad511d6c859', 'sales@belgraver.nl', '');
INSERT INTO `usr_contact` VALUES ('d19d96fb8ed17fba1cbb', 'haiko.zuidhoff@nutreco.com', '');
INSERT INTO `usr_contact` VALUES ('d3485bdb411860ae8c19', 'n_morran2004@yahoo.com', '+62 81931373500');
INSERT INTO `usr_contact` VALUES ('d3c8cdb9a39e514d6b97', 'cees.ruygrok@frieslandfoods.co.id', '');
INSERT INTO `usr_contact` VALUES ('d512bea1518671c879f3', 'Tjoen.Hong.Lim@asia.ing.com', '');
INSERT INTO `usr_contact` VALUES ('d5b23ab05974874eab17', 'welt.franco@bekaert.com', '');
INSERT INTO `usr_contact` VALUES ('d72d58bcc924352a7f58', 'odiliakites@yahoo.com', '+62 021 929876');
INSERT INTO `usr_contact` VALUES ('db25f7c50412bfd7f92c', 'prijohandojo@pbtaxand.com', '');
INSERT INTO `usr_contact` VALUES ('db90baf4d45ea571b9e1', 'Joko.T.Suroso@Inowa-Wahana.com', '');
INSERT INTO `usr_contact` VALUES ('dcaa7f08d787ca1d7905', 'ann@winsglobal.com', '');
INSERT INTO `usr_contact` VALUES ('dd1d8180034abeaa15ec', 'blackberry_zone@yahoo.com', '+62 021 921353');
INSERT INTO `usr_contact` VALUES ('ddc364537c89859fe75f', 'eric.vermaas@cbn.net.id', '');
INSERT INTO `usr_contact` VALUES ('ddcaecb5c8440b266b67', 'swarie.ayuningtyas@yahoo.com', '+62 8122020288');
INSERT INTO `usr_contact` VALUES ('de4e03e64d033e60acce', 'gcsjkt@cbn.net.id', '');
INSERT INTO `usr_contact` VALUES ('decc7fd8eb49031eff6f', 'henk.mulder@rabobank.com', '');
INSERT INTO `usr_contact` VALUES ('df2a280b7c2eeab904aa', 'ayu_blackpinkerz@yahoo.com', '+62 021 95899247');
INSERT INTO `usr_contact` VALUES ('e14af235b73646e11e23', 'han.harlan@rnw.nl', '');
INSERT INTO `usr_contact` VALUES ('e27f729a4d26d6c080cf', 'slp@samudera.com', '');
INSERT INTO `usr_contact` VALUES ('e558d08a568a43c9cdd3', 'management@happytrailsindonesia.com', '');
INSERT INTO `usr_contact` VALUES ('e68fbefc984ec00f48db', 'matt.wiggers@publicis-metro.com', '');
INSERT INTO `usr_contact` VALUES ('e73a2782c695934074f7', 'rien@ewsi.co.id', '');
INSERT INTO `usr_contact` VALUES ('e7b398f677fbf9975b4c', 'hasian_novaldo@yahoo.com', '+62 021 917841');
INSERT INTO `usr_contact` VALUES ('e9d4b56829edb8b69cb8', 'ryan123@winsglobal.com', '+12 3456789');
INSERT INTO `usr_contact` VALUES ('e9f68e548b0697a0ffd6', 'stefaan@basicraft.com', '');
INSERT INTO `usr_contact` VALUES ('eabee85c4c79f38083f4', 'info@seu.co.id', '');
INSERT INTO `usr_contact` VALUES ('ec5556b86362adf93c28', 'narcisse@nuagebranding.com', '+62 021 7816');
INSERT INTO `usr_contact` VALUES ('ecfdbc8de72a35049102', 'janti.soeripto@kcc.com', '');
INSERT INTO `usr_contact` VALUES ('edc93ac6e25ec6a46f00', 'stintje_p@tinotuan.com', '');
INSERT INTO `usr_contact` VALUES ('ef60d77e119cdcd1e70a', 'ardyan@winsglobal.com', '');
INSERT INTO `usr_contact` VALUES ('ef7f4a790d6f6aeac2ea', 'Ted.Boman@oriflame.co.id', '');
INSERT INTO `usr_contact` VALUES ('ef849644b17e3bce6e22', 'riani_dech@yahoo.co.id', '+62 81536186886');
INSERT INTO `usr_contact` VALUES ('efd38464a0f9f1b4bfb8', 'geoff.thomas9799@gmail.com', '');
INSERT INTO `usr_contact` VALUES ('f02bc6dd0ee3c75155bd', 'sunarpodo@trac.astra.co.id', '+62 81227284050');
INSERT INTO `usr_contact` VALUES ('f0dd80355a18efc97bf2', 'haditopo@uninet.net.id', '');
INSERT INTO `usr_contact` VALUES ('f0e25fcab1e6724ca10a', 'info@pum.nl', '');
INSERT INTO `usr_contact` VALUES ('f0e5b61bd4428e9b25dd', 'Ernst@dyandra.com', '');
INSERT INTO `usr_contact` VALUES ('f1251968e8aae5642aa3', 'reijerb@boonfaam.demon.nl', '');
INSERT INTO `usr_contact` VALUES ('f149b58c1a23e6d1f389', 'freddy.meindertsma@gmail.com', '');
INSERT INTO `usr_contact` VALUES ('f3839a9691dc8bf37c9a', 'ed_krancher@haygroup.com', '');
INSERT INTO `usr_contact` VALUES ('f478339eaf1d3d57c373', 'titi@hema-resto.com', '');
INSERT INTO `usr_contact` VALUES ('f5cde7b09d97a64fd67f', 'siawnono@yahoo.com', '+62 021 5411465');
INSERT INTO `usr_contact` VALUES ('f6696f6c8e8f3ce8c247', 'franzboen@yahoo.com', '+62 0219952097');
INSERT INTO `usr_contact` VALUES ('f85a2ae0a91e06f2f599', 'marketing@winsglobal.com', '');
INSERT INTO `usr_contact` VALUES ('f86622ea816c7eb10dee', 'purwamultikarya@yahoo.com', '');
INSERT INTO `usr_contact` VALUES ('fa7c94df313204d14566', 'lidyagita@rocketmail.com', '+62 83892820793');
INSERT INTO `usr_contact` VALUES ('fa9208d209969dd9f4a3', 'enrico.anker@yahoo.com', '+62 8179425566');
INSERT INTO `usr_contact` VALUES ('fb02f72ebabf6a311d31', 'gerhard.hecker@shangri-la.com', '');
INSERT INTO `usr_contact` VALUES ('fbad8a724feec842a0eb', 'm.barbesier@sdvindonesia.com', '');
INSERT INTO `usr_contact` VALUES ('fca4591db159b23cedb6', 'tamstek@indosat.net.id', '');
INSERT INTO `usr_contact` VALUES ('fd55ee2bd485f2fbfbbd', 'ets_indonesia@yahoo.com', '');
INSERT INTO `usr_contact` VALUES ('fd775a9b1e4f8126cfa0', 'a.willemsen@iftechnology.nl', '');
INSERT INTO `usr_contact` VALUES ('fdc74ce4b2ab424ea8fc', 'jakarta@bostinco.com', '');
INSERT INTO `usr_contact` VALUES ('fe468f6c303b39ba1a84', 'sth@sthgroup.com', '');
INSERT INTO `usr_contact` VALUES ('fe4e3f0badacb9718ea3', 'handrie@bjj.co.id', '');
INSERT INTO `usr_contact` VALUES ('fe9ab8ed121652ae0d07', 'venita@bca.co.id', '');
INSERT INTO `usr_contact` VALUES ('ffd5c658a154388eaf42', 'waroengkreasi@gmail.com', '');
INSERT INTO `usr_contacts` VALUES ('1', 'fa9208d209969dd9f4a3', '100', '0', 'Jl. Cempaka Putih Tengah IIA/14');
INSERT INTO `usr_contacts` VALUES ('2', 'dcaa7f08d787ca1d7905', '101', '0', '12160');
INSERT INTO `usr_contacts` VALUES ('3', 'dcaa7f08d787ca1d7905', '100', '0', 'Kebayoran Baru');
INSERT INTO `usr_contacts` VALUES ('4', 'f5cde7b09d97a64fd67f', '3', '0', '+62 81932187393');
INSERT INTO `usr_contacts` VALUES ('5', 'f5cde7b09d97a64fd67f', '101', '0', '11750');
INSERT INTO `usr_contacts` VALUES ('6', 'f5cde7b09d97a64fd67f', '100', '0', 'Perumahan Kosambi Baru Blok C8/93 Cengkareng');
INSERT INTO `usr_contacts` VALUES ('7', 'ca872ed0b4791dce3f7f', '3', '0', '+62 816 181 1');
INSERT INTO `usr_contacts` VALUES ('8', 'ca872ed0b4791dce3f7f', '101', '0', '12870');
INSERT INTO `usr_contacts` VALUES ('9', 'ca872ed0b4791dce3f7f', '100', '0', 'Puri Casablanca, Kunigan');
INSERT INTO `usr_contacts` VALUES ('10', '1af80cc78ecb48c02e72', '3', '0', '+62 81905270556');
INSERT INTO `usr_contacts` VALUES ('11', '1af80cc78ecb48c02e72', '101', '0', '11740');
INSERT INTO `usr_contacts` VALUES ('12', '1af80cc78ecb48c02e72', '100', '0', 'Jl. Bawang Merah II No. 4 RT 07/07');
INSERT INTO `usr_contacts` VALUES ('13', '9ed93322b9d6fc2349fb', '101', '0', '15114');
INSERT INTO `usr_contacts` VALUES ('14', '9ed93322b9d6fc2349fb', '100', '0', 'Perum Cimone Mas Permai 2');
INSERT INTO `usr_contacts` VALUES ('15', 'dd1d8180034abeaa15ec', '3', '0', '+62 81219873941');
INSERT INTO `usr_contacts` VALUES ('16', 'dd1d8180034abeaa15ec', '101', '0', '16418');
INSERT INTO `usr_contacts` VALUES ('17', 'dd1d8180034abeaa15ec', '100', '0', 'Jl. Cimanuk II No. 222');
INSERT INTO `usr_contacts` VALUES ('18', '64b6e6634f8fade06cc9', '3', '0', '+62 0818154821');
INSERT INTO `usr_contacts` VALUES ('19', '64b6e6634f8fade06cc9', '100', '0', 'Jalan Asem Baris Raya #1');
INSERT INTO `usr_contacts` VALUES ('20', '4e2f9a5f1b287d39bdca', '101', '0', '12770');
INSERT INTO `usr_contacts` VALUES ('21', '4e2f9a5f1b287d39bdca', '100', '0', 'Jl. Pancoran Timur 4 No. 4');
INSERT INTO `usr_contacts` VALUES ('22', '8c1dcdb78d078ac81e22', '101', '0', '17133');
INSERT INTO `usr_contacts` VALUES ('23', '8c1dcdb78d078ac81e22', '100', '0', 'Jl. Melati VII No. 31 RT 03/01 Kali Baru');
INSERT INTO `usr_contacts` VALUES ('24', 'df2a280b7c2eeab904aa', '3', '0', '+62 81210113039');
INSERT INTO `usr_contacts` VALUES ('25', 'df2a280b7c2eeab904aa', '100', '0', 'Jl. H. Siun RT 004/01 Cipayung');
INSERT INTO `usr_contacts` VALUES ('26', '54b1b1eb96d61f65fd16', '101', '0', '11540');
INSERT INTO `usr_contacts` VALUES ('27', '54b1b1eb96d61f65fd16', '100', '0', 'Komp. Mabad No. 42 Kebon Jeruk');
INSERT INTO `usr_contacts` VALUES ('28', 'c4c9875904542ce929f7', '101', '0', '15412');
INSERT INTO `usr_contacts` VALUES ('29', 'c4c9875904542ce929f7', '100', '0', 'Rempoa, Ciputat');
INSERT INTO `usr_contacts` VALUES ('30', '7fe7c6376eebc744e5b7', '3', '0', '+62 83896778665');
INSERT INTO `usr_contacts` VALUES ('31', '7fe7c6376eebc744e5b7', '101', '0', '10250');
INSERT INTO `usr_contacts` VALUES ('32', '7fe7c6376eebc744e5b7', '100', '0', 'Tanah Abang Kecil No. 9');
INSERT INTO `usr_contacts` VALUES ('33', '4f2d6e3ad6e3af36a4e7', '3', '0', '+62 85717575971');
INSERT INTO `usr_contacts` VALUES ('34', '4f2d6e3ad6e3af36a4e7', '100', '0', 'Dasana Indah Blok U6 10 No. 21-23');
INSERT INTO `usr_contacts` VALUES ('35', '0995a136dd251f3eb432', '101', '0', '11420');
INSERT INTO `usr_contacts` VALUES ('36', '4df33e629a21183f9973', '100', '0', 'Permata Elok');
INSERT INTO `usr_contacts` VALUES ('37', '9743ee5090b76c8e9666', '101', '0', '15151');
INSERT INTO `usr_contacts` VALUES ('38', '9743ee5090b76c8e9666', '100', '0', 'Petukangan Selatan');
INSERT INTO `usr_contacts` VALUES ('39', 'e7b398f677fbf9975b4c', '3', '0', '+62 85782073101');
INSERT INTO `usr_contacts` VALUES ('40', 'e7b398f677fbf9975b4c', '100', '0', 'Pamulang 2 Tangerang Selatan');
INSERT INTO `usr_contacts` VALUES ('41', '4e0498f663d4ad767035', '3', '0', '+62 85717714957');
INSERT INTO `usr_contacts` VALUES ('42', '4e0498f663d4ad767035', '101', '0', '13440');
INSERT INTO `usr_contacts` VALUES ('43', '4e0498f663d4ad767035', '100', '0', 'Jl. Pendidikan Raya VIII No. 20');
INSERT INTO `usr_contacts` VALUES ('44', 'd0611a4e4d70b8bf716e', '100', '0', 'Citra 1 Blok E3 No. 26');
INSERT INTO `usr_contacts` VALUES ('45', '664aa999d5403d36588f', '100', '0', 'Kebon Jeruk');
INSERT INTO `usr_contacts` VALUES ('46', '25d1aa539b02ee9dac1f', '3', '0', '+62 8568176116');
INSERT INTO `usr_contacts` VALUES ('47', '25d1aa539b02ee9dac1f', '101', '0', '12910');
INSERT INTO `usr_contacts` VALUES ('48', '25d1aa539b02ee9dac1f', '100', '0', 'Prudential Tower lt.19, Jendral Sudirman Kav 79');
INSERT INTO `usr_contacts` VALUES ('49', '545022a623699d1b0fb3', '101', '0', '15418');
INSERT INTO `usr_contacts` VALUES ('50', '545022a623699d1b0fb3', '100', '0', 'Tangerang Selatan');
INSERT INTO `usr_contacts` VALUES ('51', '3aed76b9b2ea280be0c1', '3', '0', '+62 8161122448');
INSERT INTO `usr_contacts` VALUES ('52', '3aed76b9b2ea280be0c1', '100', '0', 'Jl. Penjerni');
INSERT INTO `usr_contacts` VALUES ('53', '1d94697e70e79e8a1191', '3', '0', '+62 8159936898');
INSERT INTO `usr_contacts` VALUES ('54', '1d94697e70e79e8a1191', '100', '0', 'Papan Mas Blok F2/II, Tambun Bekasi');
INSERT INTO `usr_contacts` VALUES ('55', '27a29ac87a1461b7c88e', '3', '0', '+62 81280931001');
INSERT INTO `usr_contacts` VALUES ('56', '27a29ac87a1461b7c88e', '101', '0', '12950');
INSERT INTO `usr_contacts` VALUES ('57', '27a29ac87a1461b7c88e', '100', '0', 'Menara Prima 25A, Jl. Lingkar Mega Kuningan Blok G2');
INSERT INTO `usr_contacts` VALUES ('58', 'd72d58bcc924352a7f58', '3', '0', '+62 8161986214');
INSERT INTO `usr_contacts` VALUES ('59', 'd72d58bcc924352a7f58', '100', '0', 'Kintamani Golf 15 No. 11, PHG, Gading Serpong');
INSERT INTO `usr_contacts` VALUES ('60', '0dcc1d0019d9ed89678a', '101', '0', '11430');
INSERT INTO `usr_contacts` VALUES ('61', '0dcc1d0019d9ed89678a', '100', '0', 'Jl. Tanjung Raya No. 18, Tomang');
INSERT INTO `usr_contacts` VALUES ('62', '603921338cfa9ffbaa35', '3', '0', '+62 811139652');
INSERT INTO `usr_contacts` VALUES ('63', '603921338cfa9ffbaa35', '101', '0', '12730');
INSERT INTO `usr_contacts` VALUES ('64', '603921338cfa9ffbaa35', '100', '0', 'Jl. Kemang Timur Kompleks IAPCO 18');
INSERT INTO `usr_contacts` VALUES ('65', '10e1b90f4c732c69211b', '100', '0', 'Hampzone Park Zerogong Pondok Indah');
INSERT INTO `usr_contacts` VALUES ('66', 'f02bc6dd0ee3c75155bd', '101', '0', '1503');
INSERT INTO `usr_contacts` VALUES ('67', 'f02bc6dd0ee3c75155bd', '100', '0', 'Perum DKI Sunter Jaya II Blok 18 No. 19');
INSERT INTO `usr_contacts` VALUES ('68', '7a92f7ced45096e08214', '101', '0', '13440');
INSERT INTO `usr_contacts` VALUES ('69', '7a92f7ced45096e08214', '100', '0', 'Jl. Dua Sembilan No. 6B, Jakarta Timur');
INSERT INTO `usr_contacts` VALUES ('70', '8f4a05a9a3e0fe1acc6d', '101', '0', '15180');
INSERT INTO `usr_contacts` VALUES ('71', '8f4a05a9a3e0fe1acc6d', '100', '0', 'Jl. Kintamani Golf 8 No. 57, Pondok Hijau Golf, Gading Serpong');
INSERT INTO `usr_contacts` VALUES ('72', '628cf06e80d59a0c418b', '3', '0', '+62 81806945488');
INSERT INTO `usr_contacts` VALUES ('73', '628cf06e80d59a0c418b', '101', '0', '14350');
INSERT INTO `usr_contacts` VALUES ('74', '628cf06e80d59a0c418b', '100', '0', 'Jl. Sunter Hijau');
INSERT INTO `usr_contacts` VALUES ('75', '4957f4ad6ddfe9a9e425', '100', '0', 'Jl. Madrasah No. 36');
INSERT INTO `usr_contacts` VALUES ('76', '9ea852b592ae8d4b6d85', '101', '0', '3251');
INSERT INTO `usr_contacts` VALUES ('77', '9ea852b592ae8d4b6d85', '100', '0', 'Delta Industrieweg 15');
INSERT INTO `usr_contacts` VALUES ('78', '80fab60c5bf667dde4cd', '100', '0', 'Pacific Place lt. 20');
INSERT INTO `usr_contacts` VALUES ('79', 'c4cbf2ebd389aa212e53', '100', '0', 'Kemang');
INSERT INTO `usr_contacts` VALUES ('80', 'c15930c3e2657f11b78b', '100', '0', 'Giri Loka 3 No. 14, BSD');
INSERT INTO `usr_contacts` VALUES ('81', '914f69b1f9c47daa6876', '101', '0', '11520');
INSERT INTO `usr_contacts` VALUES ('82', '914f69b1f9c47daa6876', '100', '0', 'Green Garden Blok A3 No. 12 A');
INSERT INTO `usr_contacts` VALUES ('83', '76ab07071ab7b94d591d', '100', '0', 'Jl. Anggrek 5 No. 24, Setiabudi Kuningan');
INSERT INTO `usr_contacts` VALUES ('84', 'c3b1455d93aca66e6836', '101', '0', '16750');
INSERT INTO `usr_contacts` VALUES ('85', 'c3b1455d93aca66e6836', '100', '0', 'Jl. Raya Puncak Gg. Arjuna No.50');
INSERT INTO `usr_contacts` VALUES ('86', '3e6ad7ffeb77cbfbdc28', '101', '0', '11750');
INSERT INTO `usr_contacts` VALUES ('87', '3e6ad7ffeb77cbfbdc28', '100', '0', 'Perum Kosambi Baru Blok E ext 3/2');
INSERT INTO `usr_contacts` VALUES ('88', '261dcc62ed8490aebfca', '101', '0', '15416');
INSERT INTO `usr_contacts` VALUES ('89', '261dcc62ed8490aebfca', '100', '0', 'Pamulang Permai II');
INSERT INTO `usr_contacts` VALUES ('90', '5f8461ca33617f6c69d7', '100', '0', 'Jl. Mangga Besar 4M/67');
INSERT INTO `usr_contacts` VALUES ('91', '11df886a817bb8e3e83d', '3', '0', '+62 2196223098');
INSERT INTO `usr_contacts` VALUES ('92', '16f9d5a86585813e3c52', '100', '0', 'Jl. Taman Daan Mogot V No. 1B, Jakarta Barat');
INSERT INTO `usr_contacts` VALUES ('93', '822253b91c028b2fab17', '101', '0', '14350');
INSERT INTO `usr_contacts` VALUES ('94', '822253b91c028b2fab17', '100', '0', 'Jl. Mirta Sunter Burlevard Blok E2 No.90');
INSERT INTO `usr_contacts` VALUES ('95', '4bbdaced692b41330d55', '3', '0', '+62 81198022');
INSERT INTO `usr_contacts` VALUES ('96', '4bbdaced692b41330d55', '101', '0', '12510');
INSERT INTO `usr_contacts` VALUES ('97', '4bbdaced692b41330d55', '100', '0', 'C/- Santa Fe, #208 Cialdank Commercial Estate, Jl raya Cialndak KKO');
INSERT INTO `usr_contacts` VALUES ('98', '09bab40d632707359ecb', '101', '0', '13440');
INSERT INTO `usr_contacts` VALUES ('99', '09bab40d632707359ecb', '100', '0', 'Jl. Dua Sembilan No. 6B, Jakarta Timur');
INSERT INTO `usr_contacts` VALUES ('100', '9877c3e3cc5392928ba5', '3', '0', '+62 818889158');
INSERT INTO `usr_contacts` VALUES ('101', '9877c3e3cc5392928ba5', '101', '0', '17147');
INSERT INTO `usr_contacts` VALUES ('102', '9877c3e3cc5392928ba5', '100', '0', 'Pulo Sirih Selatan VI AE 205');
INSERT INTO `usr_contacts` VALUES ('103', 'ddcaecb5c8440b266b67', '100', '0', 'Jl. Suren 1 No.19');
INSERT INTO `usr_contacts` VALUES ('104', '30d349d6040edc8baf1c', '101', '0', '14410');
INSERT INTO `usr_contacts` VALUES ('105', '30d349d6040edc8baf1c', '100', '0', 'Pademangan 2 4/19');
INSERT INTO `usr_contacts` VALUES ('106', '8e3e85bd92aaca6203fb', '100', '0', 'Jl. Kanadianti, Kemang');
INSERT INTO `usr_contacts` VALUES ('107', '0c2dd323098e73a2cd84', '101', '0', '13430');
INSERT INTO `usr_contacts` VALUES ('108', '0c2dd323098e73a2cd84', '100', '0', 'Jl. Perhubungan VIII/57, Rawamangun');
INSERT INTO `usr_contacts` VALUES ('109', '2c157e10220bf7a82cce', '101', '0', '11480');
INSERT INTO `usr_contacts` VALUES ('110', '2c157e10220bf7a82cce', '100', '0', 'Jl. Gang Haji Cholil No. 7, Jakarta Barat');
INSERT INTO `usr_contacts` VALUES ('111', '3995af1ff80f4bf55158', '101', '0', '11750');
INSERT INTO `usr_contacts` VALUES ('112', '97475427155a7d66ebd7', '101', '0', '15326');
INSERT INTO `usr_contacts` VALUES ('113', '97475427155a7d66ebd7', '100', '0', 'Sutera Blok 5 No.1 Alam Sutera');
INSERT INTO `usr_contacts` VALUES ('114', '8532fad51d628f1c9696', '101', '0', '12730');
INSERT INTO `usr_contacts` VALUES ('115', '8532fad51d628f1c9696', '100', '0', 'Jl. Kemang 5/4H');
INSERT INTO `usr_contacts` VALUES ('116', '4e1bd8e972572d5bc1c1', '101', '0', '11470');
INSERT INTO `usr_contacts` VALUES ('117', '4e1bd8e972572d5bc1c1', '100', '0', 'Tanjung Duren');
INSERT INTO `usr_contacts` VALUES ('118', '381964dd3467c6e5a644', '100', '0', 'Mediteranian 2 Tg Duren Tower Kenanga lt.25 KC');
INSERT INTO `usr_contacts` VALUES ('119', '84dcffe6bb6c9e5a6d40', '101', '0', '11410');
INSERT INTO `usr_contacts` VALUES ('120', '84dcffe6bb6c9e5a6d40', '100', '0', 'Jl. KS Tubun 2C No. 57');
INSERT INTO `usr_contacts` VALUES ('121', 'c4428aafe89bd6c7e111', '100', '0', 'Mansra 16 Blok BB /22A, Jakarta Barat');
INSERT INTO `usr_contacts` VALUES ('122', 'ef849644b17e3bce6e22', '100', '0', 'Jl. DR. Susilo 2D No. 71, Jakarta Barat');
INSERT INTO `usr_contacts` VALUES ('123', '3539aece62d8210ff1e1', '100', '0', 'Alpukat 3 No. 52 Tanjung Duren');
INSERT INTO `usr_contacts` VALUES ('124', 'fa7c94df313204d14566', '100', '0', 'Pasar Minggu, Jakarta Selatan');
INSERT INTO `usr_contacts` VALUES ('125', 'bc614b22d8df830fd230', '3', '0', '+62 811165428');
INSERT INTO `usr_contacts` VALUES ('126', 'bc614b22d8df830fd230', '101', '0', '12560');
INSERT INTO `usr_contacts` VALUES ('127', 'bc614b22d8df830fd230', '100', '0', 'Jl Benda Bawah 68 Cilandak Timur');
INSERT INTO `usr_contacts` VALUES ('128', '160adc82dc7e99e5007e', '101', '0', '12160');
INSERT INTO `usr_contacts` VALUES ('129', '160adc82dc7e99e5007e', '100', '0', 'WIN Iskandarsyah,');
INSERT INTO `usr_contacts` VALUES ('130', '79b19eae951eb3f56466', '3', '0', '+62 811170546');
INSERT INTO `usr_contacts` VALUES ('131', '79b19eae951eb3f56466', '101', '0', '12160');
INSERT INTO `usr_contacts` VALUES ('132', '79b19eae951eb3f56466', '100', '0', 'Jl Brawijaya VIII No 14');
INSERT INTO `usr_contacts` VALUES ('133', '296676ae4e62ebcfe22b', '3', '0', '+62 812191292');
INSERT INTO `usr_contacts` VALUES ('134', '296676ae4e62ebcfe22b', '101', '0', '12160');
INSERT INTO `usr_contacts` VALUES ('135', '296676ae4e62ebcfe22b', '100', '0', 'Haven Asian Correspondence Address PT Prima Solusi Sukses Rukan Gra');
INSERT INTO `usr_contacts` VALUES ('136', '7a30792824f1f1f5c6c6', '3', '0', '+62 81218125211');
INSERT INTO `usr_contacts` VALUES ('137', '7a30792824f1f1f5c6c6', '101', '0', '60117');
INSERT INTO `usr_contacts` VALUES ('138', '7a30792824f1f1f5c6c6', '100', '0', 'galaxy bumi permai d1/27');
INSERT INTO `usr_contacts` VALUES ('139', '9e7247458e598260d58a', '3', '0', '+62 816878705');
INSERT INTO `usr_contacts` VALUES ('140', '9e7247458e598260d58a', '101', '0', '15000');
INSERT INTO `usr_contacts` VALUES ('141', '9e7247458e598260d58a', '100', '0', 'Serpong');
INSERT INTO `usr_contacts` VALUES ('142', 'b47708d5c88af35f40c5', '3', '0', '+61 411508158');
INSERT INTO `usr_contacts` VALUES ('143', 'b47708d5c88af35f40c5', '101', '0', '2027');
INSERT INTO `usr_contacts` VALUES ('144', 'b47708d5c88af35f40c5', '100', '0', 'PO Box 924');
INSERT INTO `usr_contacts` VALUES ('145', 'ec5556b86362adf93c28', '3', '0', '+62 818178800');
INSERT INTO `usr_contacts` VALUES ('146', 'ec5556b86362adf93c28', '101', '0', '12560');
INSERT INTO `usr_contacts` VALUES ('147', 'ec5556b86362adf93c28', '100', '0', 'jalan kemang raya no. 1');
INSERT INTO `usr_contacts` VALUES ('148', 'a8961c0af4d700d90399', '3', '0', '+31 21516551');
INSERT INTO `usr_contacts` VALUES ('149', 'a8961c0af4d700d90399', '101', '0', '4301');
INSERT INTO `usr_contacts` VALUES ('150', 'a8961c0af4d700d90399', '100', '0', 'Industrieweg 44-6');
INSERT INTO `usr_contacts` VALUES ('151', '285541c1d3527d364258', '3', '0', '+62 81385484303');
INSERT INTO `usr_contacts` VALUES ('152', '285541c1d3527d364258', '101', '0', '12345');
INSERT INTO `usr_contacts` VALUES ('153', '285541c1d3527d364258', '100', '0', '1234');
INSERT INTO `usr_contacts` VALUES ('154', 'e9d4b56829edb8b69cb8', '3', '0', '+12 3456789');
INSERT INTO `usr_contacts` VALUES ('155', 'e9d4b56829edb8b69cb8', '101', '0', '12620');
INSERT INTO `usr_contacts` VALUES ('156', 'e9d4b56829edb8b69cb8', '100', '0', 'earth');
INSERT INTO `usr_contacts` VALUES ('157', '33331c85609587e6a725', '3', '0', '+62 818778718');
INSERT INTO `usr_contacts` VALUES ('158', '33331c85609587e6a725', '101', '0', '12110');
INSERT INTO `usr_contacts` VALUES ('159', '33331c85609587e6a725', '100', '0', 'Jl Jenggala 1-1 Kebayoran Baru');
INSERT INTO `usr_contacts` VALUES ('160', '0ac60f79989361d49616', '3', '0', '+62 852565610');
INSERT INTO `usr_contacts` VALUES ('161', '0ac60f79989361d49616', '101', '0', '5171');
INSERT INTO `usr_contacts` VALUES ('162', '0ac60f79989361d49616', '100', '0', 'Waterlaat 3');
INSERT INTO `usr_contacts` VALUES ('163', 'f6696f6c8e8f3ce8c247', '3', '0', '+62 81315075678');
INSERT INTO `usr_contacts` VALUES ('164', 'f6696f6c8e8f3ce8c247', '101', '0', '12920');
INSERT INTO `usr_contacts` VALUES ('165', 'f6696f6c8e8f3ce8c247', '100', '0', 'Ambassador Residence #123 Jl. Karet Pedurenan No. 36');
INSERT INTO `usr_contacts` VALUES ('166', '98cc30e1368c91ccb5ff', '3', '0', '+23 412341234');
INSERT INTO `usr_contacts` VALUES ('167', '98cc30e1368c91ccb5ff', '101', '0', '11540');
INSERT INTO `usr_contacts` VALUES ('168', '98cc30e1368c91ccb5ff', '100', '0', 'hmsofie');
INSERT INTO `usr_contacts` VALUES ('169', '7310148804bba9c4c755', '3', '0', '+62 87878294482');
INSERT INTO `usr_contacts` VALUES ('170', '7310148804bba9c4c755', '101', '0', '17412');
INSERT INTO `usr_contacts` VALUES ('171', '7310148804bba9c4c755', '100', '0', 'komplek dosen ikip blok 4D no.7');
INSERT INTO `usr_contacts` VALUES ('172', '33d5f8f654542c10cff5', '3', '0', '+62 818793087');
INSERT INTO `usr_contacts` VALUES ('173', '33d5f8f654542c10cff5', '101', '0', '12920');
INSERT INTO `usr_contacts` VALUES ('174', '33d5f8f654542c10cff5', '100', '0', 'JAKARTA');
INSERT INTO `usr_friend` VALUES ('7', '5731d07f79debda21be2', '505e8ee1be8a74eb59a7', '1', '0');
INSERT INTO `usr_friend` VALUES ('8', 'dcaa7f08d787ca1d7905', '4446210ec49d91650c1e', '0', '0');
INSERT INTO `usr_friend` VALUES ('9', 'dcaa7f08d787ca1d7905', '7310148804bba9c4c755', '0', '0');
INSERT INTO `usr_friend` VALUES ('10', 'dcaa7f08d787ca1d7905', '5731d07f79debda21be2', '1', '0');
INSERT INTO `usr_friend` VALUES ('11', 'dcaa7f08d787ca1d7905', 'c4c9875904542ce929f7', '0', '0');
INSERT INTO `usr_friend` VALUES ('12', 'dcaa7f08d787ca1d7905', 'bc614b22d8df830fd230', '0', '0');
INSERT INTO `usr_friend` VALUES ('13', 'dcaa7f08d787ca1d7905', '6390f06600ed47b57e90', '0', '0');
INSERT INTO `usr_friend` VALUES ('14', 'dcaa7f08d787ca1d7905', 'ca872ed0b4791dce3f7f', '0', '0');
INSERT INTO `usr_friend` VALUES ('15', 'dcaa7f08d787ca1d7905', '505e8ee1be8a74eb59a7', '1', '0');
INSERT INTO `usr_friend` VALUES ('16', 'dcaa7f08d787ca1d7905', 'e9d4b56829edb8b69cb8', '0', '0');
INSERT INTO `usr_friend` VALUES ('17', 'dcaa7f08d787ca1d7905', '160adc82dc7e99e5007e', '0', '0');
INSERT INTO `usr_picture` VALUES ('2', '5731d07f79debda21be2', '11', '1333956516', '419ab1120c79d336296d.png', '1', 'testing gambar baru di album baru');
INSERT INTO `usr_post` VALUES ('1', 'dcaa7f08d787ca1d7905', '1328247695', 'info', '', '1', 'c4ca4238a0b923820dcc.jpg');
INSERT INTO `usr_post` VALUES ('12', '5731d07f79debda21be2', '1328586835', 'info', 'testing 1234', '1', '');
INSERT INTO `usr_post` VALUES ('14', '5731d07f79debda21be2', '1328588587', 'info', 'try once more', '1', '');
INSERT INTO `usr_private` VALUES ('00ec615bfb3d01428224', 'Bob Michel Karreman', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('010e5a0c42c4477e4a62', 'Ridjani Noer', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('011e710a82e5a9be8d44', 'Yanti', '', '6', '5', '1985', '', '0');
INSERT INTO `usr_private` VALUES ('017138a99b78ddf7a2ea', 'Rod Robinson', '', '28', '4', '1965', '', '0');
INSERT INTO `usr_private` VALUES ('033459aac55e938f2b76', 'Didier Perez', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('04665e09048582c105d0', 'Sander Fisser', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('049f6e85c80e89f2a5bd', 'Kiel', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('04c9003bf96e4ec643d4', 'Elmar Bouma', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('0615ab93644fa4a30a86', 'Gerard Derksen', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('07d7c47e8ae7422ab1c5', 'coba', '', '1', '1', '1996', '', '5');
INSERT INTO `usr_private` VALUES ('08531e385bc7e0e7e68d', 'Marc de Rouw', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('0995a136dd251f3eb432', 'Trie Anis Ririyanti', '', '7', '5', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('09bab40d632707359ecb', 'Maria Jacinta', '', '13', '5', '1964', '', '5');
INSERT INTO `usr_private` VALUES ('0abc6169ae7fdff2baf0', 'Ananda Purwoyuwono', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('0ac60f79989361d49616', 'Reijer Cornelis BOON', '', '7', '4', '1945', '', '5');
INSERT INTO `usr_private` VALUES ('0bfcb9d4b08401855162', 'Marrik Bellen', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('0c2dd323098e73a2cd84', 'Olivia Imelda', '', '16', '7', '1973', '', '0');
INSERT INTO `usr_private` VALUES ('0ccc8bafca0f6aed8b5c', 'Anita Verhoeven', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('0cd019921f3bfceabf1f', 'Benjamin H.E. Misero', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('0cdf86847cb58037442f', 'Rara', '', '16', '4', '1987', '', '5');
INSERT INTO `usr_private` VALUES ('0d48dbd80cc627727ff6', 'Poul Bitsch', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('0dcc1d0019d9ed89678a', 'Evone', '', '26', '9', '1983', '', '0');
INSERT INTO `usr_private` VALUES ('0f8fcf37e9defb0ba0a4', 'H. Ade Tarya Hidayat', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('0fcd93abfc590bde2a2e', 'Leo Evers', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('10e1b90f4c732c69211b', 'Jun Pagobayan', '', '16', '9', '1969', '', '5');
INSERT INTO `usr_private` VALUES ('11df886a817bb8e3e83d', 'Hendra Wijaya', '', '20', '10', '1986', '', '0');
INSERT INTO `usr_private` VALUES ('11ee38ef38b350ec3982', 'H. M. Syukur Sakka', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('125b998be5073167791c', 'Marangkup Manik', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('12630b93463a05e7b790', 'Philippe De Meyer', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('13ce9958e882fc7a9e8d', 'wirda hilwa', '', '4', '10', '1985', 'padang', '0');
INSERT INTO `usr_private` VALUES ('14be327e1cf17e1ad5c2', 'Wybe A. de Jager MSc', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('15f9362907d5c77bf516', 'ROGER S', '', '4', '3', '1971', '', '0');
INSERT INTO `usr_private` VALUES ('160adc82dc7e99e5007e', 'Marcia Lattimore', '', '7', '1', '1990', '', '0');
INSERT INTO `usr_private` VALUES ('16ce5b78b438eb1a6ba4', 'Korz Zeggelaar', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('16f9d5a86585813e3c52', 'Rendra Sugiarto', '', '4', '4', '1988', '', '0');
INSERT INTO `usr_private` VALUES ('1729da1b2df980734b5b', 'Prashant G. Lalwani', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('17bddea44d9aa89f71d9', 'Michel John RB Demuynck', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('19ccfd1af6bea4bd5a64', 'Stan Pranoto', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('1a1daf34dcac774f5c71', 'Tatang Hadinata', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('1af80cc78ecb48c02e72', 'Octaviana', '', '4', '10', '1987', '', '0');
INSERT INTO `usr_private` VALUES ('1bb8514a20e38049ce9b', 'Samuel H. Siahaan', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('1cd543585d9e9ce5bbf0', 'Johnson L.Young', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('1d94697e70e79e8a1191', 'Freddie', '', '25', '2', '1981', '', '0');
INSERT INTO `usr_private` VALUES ('1e76a35559c647468a5b', 'Joop G. van Keulen', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('1eee1356f1a334eb3b88', 'Rakhmat Ichsan', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('1f8d931db87147a29be9', 'Maarten Smit', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('1fcafe0a583ee2fbe101', 'Augustien Cahyani', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('212fcca820a80d33a66c', 'Robert M. Vosselman', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('218b105309005d8f32de', 'Sri Aditia', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('21b8c6e241c8bf290334', 'Elien Smits', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('220a3b2021cde4f7a5c2', 'Allen Brewer', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('232d5f6016275b46c80a', 'Robert van Buchem', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('25d1aa539b02ee9dac1f', 'Leonita Simapatti', '', '17', '8', '1972', '', '5');
INSERT INTO `usr_private` VALUES ('2615b183ac0828ca55cf', 'Jurjen Wagemaker', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('261dcc62ed8490aebfca', 'Natalia M', '', '28', '12', '1965', '', '5');
INSERT INTO `usr_private` VALUES ('27a29ac87a1461b7c88e', 'Brian Leather', '', '28', '3', '1965', '', '0');
INSERT INTO `usr_private` VALUES ('285541c1d3527d364258', 'Mark Barlow', '', '6', '1', '1996', '', '5');
INSERT INTO `usr_private` VALUES ('296676ae4e62ebcfe22b', 'David Jones', '', '23', '12', '1962', '', '0');
INSERT INTO `usr_private` VALUES ('2a4819d69ebd7971fc8d', 'Wout Buss', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('2b765a1bdb0b9ff89568', 'Jos van der Knaap', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('2c157e10220bf7a82cce', 'Olivia John', '', '15', '8', '1985', '', '0');
INSERT INTO `usr_private` VALUES ('2c525238bcaa32d4b13f', 'Alex van der Wyck', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('2d8c94b5fecf3a164247', 'Barbara Voskamp', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('2e50c71578011822fc1d', 'Max Boon', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('2e9de7eedb8a17dddd77', 'Jan Tans', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('2f0d5bea6650dff37f57', 'J. Kamdani', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('2ff5c4efa52ce9515d75', 'Alex Jaminon', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('30d349d6040edc8baf1c', 'Amelia Natalina', '', '13', '5', '1684', '', '0');
INSERT INTO `usr_private` VALUES ('3272d6803fe17d67c777', 'Tom Leenders', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('33331c85609587e6a725', 'Randolph Wintgens', '', '5', '6', '1948', '', '0');
INSERT INTO `usr_private` VALUES ('33d0ed22cf94c7d9b381', 'Dianne Van Oosterhout', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('33d5f8f654542c10cff5', 'susanti', '', '15', '7', '1972', '', '0');
INSERT INTO `usr_private` VALUES ('34e0a333d76e7a3b92ff', 'Leo Gijzel', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('3539aece62d8210ff1e1', 'Rifina', '', '24', '11', '1984', '', '0');
INSERT INTO `usr_private` VALUES ('3661d1af9aa20354edf6', 'Vincent Harijanto', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('37ea7eb59dac7a0350ef', 'O. Douwe Spil', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('381964dd3467c6e5a644', 'Shierly', '', '21', '11', '1972', '', '5');
INSERT INTO `usr_private` VALUES ('3995af1ff80f4bf55158', 'Pingkan Antania', '', '19', '4', '1988', '', '0');
INSERT INTO `usr_private` VALUES ('3aed76b9b2ea280be0c1', 'Darmawan Saleh', '', '15', '11', '1936', '', '5');
INSERT INTO `usr_private` VALUES ('3b1d6fbefba78e988e10', 'Mangesh R. Sholapure', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('3c9cf04753e2268e34a1', 'Robert Reijman', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('3d3e856e4c63310bf4fe', 'ing. Sebastiaan Sauren', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('3e5852cc8b8bf19f33be', 'Roger Slangen', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('3e6ad7ffeb77cbfbdc28', 'Patricia Condro', '', '25', '4', '1989', '', '0');
INSERT INTO `usr_private` VALUES ('406922207a5789b5051b', 'Thijs Sablerolle', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('42a93add5b94d0ee96e7', 'Frank van Ginkel', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('42e89cf82cc164f54d52', 'Joris de Vries', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('434a4447e817c82a1df7', 'Philip de Bats', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('4446210ec49d91650c1e', 'Gyscha Rendi', '', '1', '1', '1990', '', '0');
INSERT INTO `usr_private` VALUES ('447366436ff2fb4ee928', 'Prihanto Eko Putro', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('44df0b64d03529c80ede', 'Alexandro', '', '30', '5', '1980', '', '0');
INSERT INTO `usr_private` VALUES ('44f8ea2cae316846418c', 'Joost B. de Raad', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('45f71263311645806aba', 'Kurniawan Chandra Rahardja', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('470fc76f53105118176b', 'Johannes W. Lagerwij', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('47592a72175242546c72', 'Drs. Johnny Widjaja', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('4812f6425ac30b35034a', 'Jos M.H. Mennens', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('48412d551c8dda2e595c', 'Sylvia Kho-Pangkey', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('4957f4ad6ddfe9a9e425', 'Romeo Maulana Yusuf', '', '3', '9', '1986', '', '5');
INSERT INTO `usr_private` VALUES ('49daf62c9c570edb129c', 'Milda Yunus', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('4bbdaced692b41330d55', 'Jason Will', '', '26', '3', '1968', '', '5');
INSERT INTO `usr_private` VALUES ('4bde50ac83823879d271', 'Dick Stuip', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('4d8e87110f099dcf3661', 'Hans P. de Boer', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('4df33e629a21183f9973', 'Christian Kun', '', '1', '1', '1989', '', '0');
INSERT INTO `usr_private` VALUES ('4e0498f663d4ad767035', 'Hera Hirandini', '', '13', '3', '1977', '', '0');
INSERT INTO `usr_private` VALUES ('4e1bd8e972572d5bc1c1', 'Chindy Angelia', '', '20', '3', '1987', '', '0');
INSERT INTO `usr_private` VALUES ('4e2f9a5f1b287d39bdca', 'Amayanti Abdullah', '', '21', '7', '1996', '', '5');
INSERT INTO `usr_private` VALUES ('4e9adf7229729c45118e', 'Wanda Scott', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('4f2d6e3ad6e3af36a4e7', 'Arie Intan Utama', '', '6', '5', '1991', '', '0');
INSERT INTO `usr_private` VALUES ('5009e8dc99f688e7b7a4', 'Willy W. Basoeki', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('505e8ee1be8a74eb59a7', 'Ryan Permana', 'Ryan', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('53b61a4a3f74f364a80e', 'Purba Hardjosusono', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('53f862e0d63dac24ed79', 'Frank Andreas Rabitsch', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('545022a623699d1b0fb3', 'M. Handi Sepding', '', '17', '9', '1985', '', '0');
INSERT INTO `usr_private` VALUES ('54b1b1eb96d61f65fd16', 'Merry Pane', '', '8', '12', '1975', '', '0');
INSERT INTO `usr_private` VALUES ('55dca73c5804d8663351', 'Leonard Handy Hendrawan', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('56a559a8d6e469558853', 'Boentoro Soegiarto', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('5731d07f79debda21be2', 'Agus Kurniawan', 'Agus', '25', '5', '1981', 'Kediri', '0');
INSERT INTO `usr_private` VALUES ('58e51a6cc129e2bcfab2', 'Chris Smith', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('591af565b5a378c5d0f3', 'Anton Lie Handojo', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('5bf99c5ea311b5ae57bf', 'Joris van Wijk', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('5f8461ca33617f6c69d7', 'Purnama Sucipto Gunawan', '', '26', '11', '1978', '', '0');
INSERT INTO `usr_private` VALUES ('5fb4a6db719f5b061ab6', 'Sugianto Ongkowijaya', '', '6', '2', '1966', '', '0');
INSERT INTO `usr_private` VALUES ('603921338cfa9ffbaa35', 'Lara Vaccar', '', '20', '6', '1967', '', '0');
INSERT INTO `usr_private` VALUES ('608e23715ab3a46bdd80', 'Nico Jaya Jonathan', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('60bca865f0ed6f808885', 'Baudouin Coomans', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('6250b1230140fa6f3544', 'Susanna S. Solichin', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('628cf06e80d59a0c418b', 'Jimmy', '', '17', '2', '1988', '', '0');
INSERT INTO `usr_private` VALUES ('6390f06600ed47b57e90', 'Chris Garrett', '', '1', '1', '1996', '', '5');
INSERT INTO `usr_private` VALUES ('63f2fe715446cba6e132', 'Laura Manalu', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('64b6e6634f8fade06cc9', 'Ric Wymer', '', '20', '3', '1956', '', '0');
INSERT INTO `usr_private` VALUES ('64b954da0c730727b741', 'Gerrit van de Meent', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('664aa999d5403d36588f', 'Fauzan Subandi', '', '24', '4', '1982', '', '0');
INSERT INTO `usr_private` VALUES ('664e92087fd3382c02bd', 'Bambang Sutantio', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('6806a2b7b123a0a82e31', 'William J. van Dongen', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('6ad3e9b154a0bf49900f', 'Agung Wahyu Nugroho', '', '5', '7', '1976', '', '5');
INSERT INTO `usr_private` VALUES ('6ad56584d2d36b6d0e93', 'Willie Blokvoort', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('6b74c8796548003fae22', 'Marcel Raats', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('6d9d822ba9c5b6701bae', 'Dirk Jan De Vries', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('6dc41e10bb12e91b375b', 'Wim C.P. Maes', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('6e02c4ccf9991b9eea8f', 'Hoedani I.S.N Hadijono', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('6ec91627886839dff4a7', 'Ariefin', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('6f170d18f8e9bda8dfff', 'Suwandi', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('6fb2038d36a0633fada2', 'L.C.J. van Nijnatten', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('711cca1ca075eced492f', 'Ian Roberts', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('717c754daf29ae8c7872', 'Tim Klappe', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('71d90b9fba71f265497b', 'Adhi I. Anondo', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('727930fb01fe005de25d', 'Tatang Al-Mubarak', '', '12', '6', '1981', 'Tanggerang', '0');
INSERT INTO `usr_private` VALUES ('7310148804bba9c4c755', 'gyscha rendy', '', '23', '6', '1989', '', '0');
INSERT INTO `usr_private` VALUES ('739fbadd91a8dbe06efb', 'Roeland Blaak', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('76ab07071ab7b94d591d', 'Ivon', '', '14', '12', '1984', '', '0');
INSERT INTO `usr_private` VALUES ('76f341ae9b1ef60af70d', 'Kevin Burrell', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('79b19eae951eb3f56466', 'mark w lediard', '', '19', '12', '1945', '', '5');
INSERT INTO `usr_private` VALUES ('7a30792824f1f1f5c6c6', 'Anjani Amitya Kirana', '', '14', '10', '1988', '', '0');
INSERT INTO `usr_private` VALUES ('7a92f7ced45096e08214', 'Indra Murtisurbakti', '', '28', '9', '1966', '', '0');
INSERT INTO `usr_private` VALUES ('7c1c0fc6e5a1ee3aaa6a', 'Marc Peeters', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('7e67fed150b8b30d9df2', 'Eveline Buter', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('7ebc9f54a85fd2687c57', 'Kees Valk', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('7eef31dffd85b2ab7c57', 'Mariko A. Yoshihara', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('7ef24b858bdfa6e19ce8', 'Juanita Aditiawan', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('7f6350838f956d64176e', 'Donnie Leemrijse', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('7f64e471d7088f10106b', 'Julya Permata', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('7fc6653525bf2848a468', 'C. Kleijwegt', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('7fe7c6376eebc744e5b7', 'Siti Fauzia', '', '21', '1', '1988', '', '0');
INSERT INTO `usr_private` VALUES ('80fab60c5bf667dde4cd', 'Jibie Henri Tengku', '', '4', '10', '1985', '', '0');
INSERT INTO `usr_private` VALUES ('822253b91c028b2fab17', 'Widayat D. B', '', '26', '7', '1966', '', '5');
INSERT INTO `usr_private` VALUES ('8239739aa11fc08a1f62', 'Dougie Douglas', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('8316638c2225ff8ba6c4', 'Jenny Chugani', '', '6', '7', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('84dcffe6bb6c9e5a6d40', 'Hany Sutawijaya', '', '2', '4', '1980', '', '0');
INSERT INTO `usr_private` VALUES ('8532fad51d628f1c9696', 'Krystyna Krassowska', '', '27', '11', '1971', '', '0');
INSERT INTO `usr_private` VALUES ('8972417a1225beb95737', 'Irfan Melayu', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('8a1367b867e960954066', 'Barry Pitman', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('8a5804e184b8f6a7a786', 'Setiadi Sugih Selamet', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('8b1175fe5720ed122d4b', 'Nadya Soetedja', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('8b574a1b6be60d2f9c12', 'Marij Aben', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('8bb0b43f6ac92833153f', 'Dwi Oetami', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('8c1dcdb78d078ac81e22', 'Endang Astuti', '', '30', '8', '1985', '', '0');
INSERT INTO `usr_private` VALUES ('8e3e85bd92aaca6203fb', 'Stephen Lewis', '', '29', '9', '1966', '', '5');
INSERT INTO `usr_private` VALUES ('8f21c73bd16b954bf70a', 'Joop Heilijgers', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('8f4a05a9a3e0fe1acc6d', 'Francisca Sundoro', '', '5', '7', '1971', '', '5');
INSERT INTO `usr_private` VALUES ('8f8ee6591e85c28706fd', 'Remko Weingarten', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('90223a099e566b7745fa', 'G.J. van Zoest', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9081e65e05792979650e', 'Hans Zewald', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9086fd28f48abf565b8e', 'Willem Stuive', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('90aa09f90bd0bbe0230e', 'Maurits Lalisang', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('90f107f3d51838a37b61', 'Andries Wouter Rijneveld', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9114fdff19a3cac9219f', 'Juliati Widjaja', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('914f69b1f9c47daa6876', 'Mega Warni K', '', '18', '6', '1990', '', '0');
INSERT INTO `usr_private` VALUES ('91c65844c1727ac33beb', 'Purnomo Prawiro', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('920d271f5a56e45471a2', 'Theodoor Bakker', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('922ffdc42e5a95c70b6f', 'DR. Anto Suroto , SH, SE, MM', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('92392066623b2b60daf4', 'Rik L. Frenkel', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9245232d54b182f04dae', 'Harry Purwoko', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9269a85a3094e548ff52', 'Robert Hogenstijn', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('926abe25100df96bcbd0', 'Ir. Willem Linders', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('926e26c41b00b4393c89', 'Darwin Silalahi', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('92b2175ad00f1a463069', 'Tince Jovina', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('94187fce4a2e3dd6e689', 'Riad Ollong', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('95664d37b15c059676d8', 'Maria Westerbos', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('95b3c1a68aabdc741229', 'Jos van der Sluijs', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('95fbe336f671ec87a7d1', 'Winardi Taniwangsa', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9743ee5090b76c8e9666', 'Rossiyana', '', '19', '12', '1989', '', '0');
INSERT INTO `usr_private` VALUES ('9746056cc1022050c070', 'Diederik Zwager', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('97475427155a7d66ebd7', 'Rusfly Wongso', '', '20', '5', '1965', '', '5');
INSERT INTO `usr_private` VALUES ('9877c3e3cc5392928ba5', 'Ray Sukmajaya', '', '19', '9', '1981', '', '0');
INSERT INTO `usr_private` VALUES ('98cc30e1368c91ccb5ff', 'hmsofie', '', '31', '3', '1979', '', '0');
INSERT INTO `usr_private` VALUES ('996fbc37291a7bd2c669', 'Wolfram Siegmeth', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9ab4429e4e563dba0e49', 'Peter van der Hulst', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9b2c7b2e253ba81623f0', 'Andreas Wihardja', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9b98fdc3ff9a96f853b3', 'Alan Wolff', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9bbb95d1f24edcd08b3d', 'Asto Putranto Sudiro', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9d1a767618fefeafcf40', 'Dominique Vanderhaeghen', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9da3c48fac7dbf13c668', 'Sugianto ', '', '6', '2', '1966', '', '0');
INSERT INTO `usr_private` VALUES ('9dde060be2e1669e1d80', 'M. Sanders', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('9e7247458e598260d58a', 'John', '', '5', '4', '1972', '', '0');
INSERT INTO `usr_private` VALUES ('9ea852b592ae8d4b6d85', 'Rex Hobbel', '', '6', '4', '1966', '', '5');
INSERT INTO `usr_private` VALUES ('9ed93322b9d6fc2349fb', 'Arief Dipo', '', '16', '2', '1978', '', '5');
INSERT INTO `usr_private` VALUES ('a022f85d265da1173559', 'Dirk Buitelaar', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('a0b105f8a9261e43369d', 'Ir. Sjaak (J.P.J.) Mens', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('a1440bd13ceb58243c0d', 'Ir. Raharjo Arjosiswoyo, M Si', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('a3103e57293ccb1edb02', 'Hendra Adidarma', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('a394ea0ac2054f5faa91', 'Hendro Basuki', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('a570b5e81b18f7cd82a3', 'Bekti S. Pringgosiswojo', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('a57336627e24ae14e3aa', 'A.K. Jonker', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('a595fb078ae2338e5a25', 'Arjoto Wisanto', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('a614b4475a8b59be3ea2', 'Mark Noordhoek Hegt', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('a763fbc6c9f9cc1f1ff9', 'Marnix Beugel', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('a8961c0af4d700d90399', 'Ben Hofs', '', '29', '6', '1946', '', '5');
INSERT INTO `usr_private` VALUES ('a97c6029cca89f39b9bb', 'Tino Moorrees', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ab97f983e899e77068ec', 'Ir. Pamuji, MM', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ad03384610ffb68f0a8c', 'Herman Nooijen', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ad3cb48981d4db6bc1b8', 'Kwik Ing Lan', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ade53457b2e69229c071', 'Giezenberg', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('adfce6c1d151965f2911', 'Trevor Day', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ae1aa80997053166a382', 'Theo', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ae23f1528a98d12f7fc9', 'Rio D. Praaning P. Adiningrat', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('af6d806064f74870ec97', 'Roy Kamphuis', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('b2ac101d2b1faba0caa3', 'Frank W. van Gelder', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('b3d80280ed4688e56918', 'Shinta Halm', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('b3fca2a1e0f2e780b215', 'Frans Spanjaart', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('b40337980dab09cf96b8', 'Marcel H. Roos', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('b47708d5c88af35f40c5', 'Sandy Pearce', '', '12', '8', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('b4b0dac2d2f7a55899ac', 'Ivan Siew C.K.', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('b6d066260960ee9d4c51', 'Wing Wijaksana', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('b7546ea5d4715b3f099e', 'J. A. Bijlmer', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ba98c8fa53cb19027fdf', 'Edwin Wouters', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('bc3fb7f8e6d43bfc8b7c', 'David Beaford', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('bc614b22d8df830fd230', 'Charles P.C. Jansen', '', '13', '1', '1948', '', '5');
INSERT INTO `usr_private` VALUES ('bce76ecdbac2a5d8e36e', 'Triandini Prasetyo', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('bd3646e9903ded19fc8d', 'Michel Maas', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('be19191192bd6aed68a0', 'Jan W. Smeenk', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('be42347a753591727e9e', 'M. Boudewijn K. Wudy', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('bf31a9f99aed5e225e4f', 'Aswan Kwek', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('bf4a939ec900a44f2374', 'Billy Otto', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('bf8aed2a8691e4029961', 'Raseacatin', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('c0e9fa6eea99f57f1641', 'Arie J. Koortens', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('c15930c3e2657f11b78b', 'Ryan Ferdinand', '', '6', '6', '1986', '', '0');
INSERT INTO `usr_private` VALUES ('c1c3d2c40b2dcc1e5714', 'Sulistyo', '', '1', '1', '1098', '', '0');
INSERT INTO `usr_private` VALUES ('c21d1d04f936e3e522d6', 'Rob Fletcher', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('c2f10dcd4a6dc55fec57', 'Edwin Jager', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('c3b1455d93aca66e6836', 'R Muhammad Lukky Fadillah', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('c3b9f756a65d3bae9ade', 'Leonarda L. A.I. Kling', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('c4428aafe89bd6c7e111', 'Dewi Cakra', '', '11', '6', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('c49b84579ebd389b5f82', 'Judy Januar Chung', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('c4bbfaf9f058c98e13cd', 'Iwan Hoo', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('c4c9875904542ce929f7', 'Agustina Suyanti', '', '25', '10', '1978', '', '5');
INSERT INTO `usr_private` VALUES ('c4cbf2ebd389aa212e53', 'Benny Wijaya Amilie', '', '17', '4', '1977', '', '0');
INSERT INTO `usr_private` VALUES ('c5420c6630974c7e5a5c', 'Yos Rizaldy', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ca872ed0b4791dce3f7f', 'Ian Barr', '', '8', '1', '1957', '', '0');
INSERT INTO `usr_private` VALUES ('cedbb4a7446a43b3a449', 'Gert Pezij', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('cf94ad1716f7f644d470', 'Marijn van der Laan', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('d0611a4e4d70b8bf716e', 'Marshella', '', '5', '8', '1988', '', '0');
INSERT INTO `usr_private` VALUES ('d106b8c79ad511d6c859', 'Peter Belgraver', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('d19d96fb8ed17fba1cbb', 'Haiko Zuidhoff', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('d3485bdb411860ae8c19', 'N. Morran', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('d3c8cdb9a39e514d6b97', 'Cees Ruygrok', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('d512bea1518671c879f3', 'Lim Tjoen Hong', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('d5b23ab05974874eab17', 'Welt Franco', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('d72d58bcc924352a7f58', 'Vonny Odilia', '', '20', '12', '1975', '', '5');
INSERT INTO `usr_private` VALUES ('db25f7c50412bfd7f92c', 'A. Prijohandojo Kristanto', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('db90baf4d45ea571b9e1', 'Joko Trio Suroso', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('dcaa7f08d787ca1d7905', 'Ann Garrett', 'Annie', '1', '6', '0', 'London England', '5');
INSERT INTO `usr_private` VALUES ('dd1d8180034abeaa15ec', 'Nur Sunny Abriani', '', '5', '10', '1985', '', '0');
INSERT INTO `usr_private` VALUES ('ddc364537c89859fe75f', 'F.A. Vermaas', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ddcaecb5c8440b266b67', 'Prameswari Ayuningtyas', '', '8', '8', '1985', '', '0');
INSERT INTO `usr_private` VALUES ('de4e03e64d033e60acce', 'Intan Aprillia M. Kraft', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('decc7fd8eb49031eff6f', 'Henk Mulder', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('df2a280b7c2eeab904aa', 'Ayu Wulandari', '', '6', '7', '1990', '', '0');
INSERT INTO `usr_private` VALUES ('e14af235b73646e11e23', 'Han Harlan', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('e27f729a4d26d6c080cf', 'Shanti L. Poesposoetjipto', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('e558d08a568a43c9cdd3', 'Geraldus van Amerongen', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('e68fbefc984ec00f48db', 'Matthijs Wiggers', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('e73a2782c695934074f7', 'Rien Rodenburg', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('e7b398f677fbf9975b4c', 'Hasian', '', '24', '11', '1990', '', '0');
INSERT INTO `usr_private` VALUES ('e9d4b56829edb8b69cb8', 'ryan permana', '', '20', '10', '1988', '', '5');
INSERT INTO `usr_private` VALUES ('e9f68e548b0697a0ffd6', 'Stefaan Debacker', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('eabee85c4c79f38083f4', 'Handoko Santoso', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ec5556b86362adf93c28', 'narcisse tiara rassidi', '', '25', '10', '1958', '', '5');
INSERT INTO `usr_private` VALUES ('ecfdbc8de72a35049102', 'Janti Soeripto', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('edc93ac6e25ec6a46f00', 'Stintje Papuling', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ef60d77e119cdcd1e70a', 'Ardyan Tantoro', '', '10', '10', '1975', 'Jakarta', '0');
INSERT INTO `usr_private` VALUES ('ef7f4a790d6f6aeac2ea', 'Ted Boman', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ef849644b17e3bce6e22', 'Riani', '', '7', '7', '1982', '', '0');
INSERT INTO `usr_private` VALUES ('efd38464a0f9f1b4bfb8', 'Geoff Thomas', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('f02bc6dd0ee3c75155bd', 'Sunarpodo', '', '30', '10', '1971', '', '5');
INSERT INTO `usr_private` VALUES ('f0dd80355a18efc97bf2', 'Hadi S. Topobroto Ph. D', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('f0e25fcab1e6724ca10a', 'A.M. Thijs van Praag', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('f0e5b61bd4428e9b25dd', 'Ernst Karel Remboen', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('f1251968e8aae5642aa3', 'Reijer C. Boon', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('f149b58c1a23e6d1f389', 'Freddy Meindertsma MBA', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('f3839a9691dc8bf37c9a', 'Ed E.A. Krancher', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('f478339eaf1d3d57c373', 'Ratna Savitri (Titi) Umar', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('f5cde7b09d97a64fd67f', 'Nono', '', '26', '9', '1991', '', '0');
INSERT INTO `usr_private` VALUES ('f6696f6c8e8f3ce8c247', 'Franz Boen', '', '27', '4', '1958', '', '0');
INSERT INTO `usr_private` VALUES ('f85a2ae0a91e06f2f599', 'Marketing', '', '1', '1', '1996', '', '5');
INSERT INTO `usr_private` VALUES ('f86622ea816c7eb10dee', 'Joseph Purwono', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('fa7c94df313204d14566', 'Lidya Gitta', '', '27', '10', '1988', '', '0');
INSERT INTO `usr_private` VALUES ('fa9208d209969dd9f4a3', 'Enrico Firmansyah', '', '18', '12', '1978', '', '0');
INSERT INTO `usr_private` VALUES ('fb02f72ebabf6a311d31', 'Gerhard Hecker', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('fbad8a724feec842a0eb', 'Michel Barbesier', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('fca4591db159b23cedb6', 'Marita Hovers', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('fd55ee2bd485f2fbfbbd', 'Charles Cremers', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('fd775a9b1e4f8126cfa0', 'A. Willemsen', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('fdc74ce4b2ab424ea8fc', 'Dipl. Ing. GT. Onggowasito', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('fe468f6c303b39ba1a84', 'Rusmin Wijaya', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('fe4e3f0badacb9718ea3', 'Oey Soe Bio', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('fe9ab8ed121652ae0d07', 'D.E. Setiyoso', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_private` VALUES ('ffd5c658a154388eaf42', 'Taufan Dante', '', '1', '1', '1996', '', '0');
INSERT INTO `usr_public` VALUES ('00ec615bfb3d01428224', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('010e5a0c42c4477e4a62', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('011e710a82e5a9be8d44', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('017138a99b78ddf7a2ea', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('033459aac55e938f2b76', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('04665e09048582c105d0', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('049f6e85c80e89f2a5bd', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('04c9003bf96e4ec643d4', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('0615ab93644fa4a30a86', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('07d7c47e8ae7422ab1c5', 'image/photo.jpg', '0', '0', '', '', '', '');
INSERT INTO `usr_public` VALUES ('08531e385bc7e0e7e68d', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('0995a136dd251f3eb432', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta Barat', '');
INSERT INTO `usr_public` VALUES ('09bab40d632707359ecb', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('0abc6169ae7fdff2baf0', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('0ac60f79989361d49616', 'image/photo.jpg', '0', '0', 'NL', '', 'Kaatsheuvel', '');
INSERT INTO `usr_public` VALUES ('0bfcb9d4b08401855162', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('0c2dd323098e73a2cd84', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('0ccc8bafca0f6aed8b5c', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('0cd019921f3bfceabf1f', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('0cdf86847cb58037442f', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('0d48dbd80cc627727ff6', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('0dcc1d0019d9ed89678a', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('0f8fcf37e9defb0ba0a4', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('0fcd93abfc590bde2a2e', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('10e1b90f4c732c69211b', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('11df886a817bb8e3e83d', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('11ee38ef38b350ec3982', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('125b998be5073167791c', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('12630b93463a05e7b790', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('13ce9958e882fc7a9e8d', 'image/photo.jpg', '2', '0', '', '', '', '');
INSERT INTO `usr_public` VALUES ('14be327e1cf17e1ad5c2', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('15f9362907d5c77bf516', 'image/photo.jpg', '1', '0', '', '', '', '');
INSERT INTO `usr_public` VALUES ('160adc82dc7e99e5007e', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('16ce5b78b438eb1a6ba4', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('16f9d5a86585813e3c52', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('1729da1b2df980734b5b', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('17bddea44d9aa89f71d9', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('19ccfd1af6bea4bd5a64', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('1a1daf34dcac774f5c71', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('1af80cc78ecb48c02e72', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta Barat', '');
INSERT INTO `usr_public` VALUES ('1bb8514a20e38049ce9b', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('1cd543585d9e9ce5bbf0', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('1d94697e70e79e8a1191', 'image/photo.jpg', '0', '0', 'ID', '', 'Bekasi', '');
INSERT INTO `usr_public` VALUES ('1e76a35559c647468a5b', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('1eee1356f1a334eb3b88', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('1f8d931db87147a29be9', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('1fcafe0a583ee2fbe101', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('212fcca820a80d33a66c', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('218b105309005d8f32de', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('21b8c6e241c8bf290334', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('220a3b2021cde4f7a5c2', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('232d5f6016275b46c80a', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('25d1aa539b02ee9dac1f', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('2615b183ac0828ca55cf', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('261dcc62ed8490aebfca', 'image/photo.jpg', '0', '0', 'ID', '', 'Tangerang', '');
INSERT INTO `usr_public` VALUES ('27a29ac87a1461b7c88e', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('285541c1d3527d364258', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('296676ae4e62ebcfe22b', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('2a4819d69ebd7971fc8d', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('2b765a1bdb0b9ff89568', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('2c157e10220bf7a82cce', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('2c525238bcaa32d4b13f', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('2d8c94b5fecf3a164247', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('2e50c71578011822fc1d', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('2e9de7eedb8a17dddd77', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('2f0d5bea6650dff37f57', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('2ff5c4efa52ce9515d75', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('30d349d6040edc8baf1c', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('3272d6803fe17d67c777', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('33331c85609587e6a725', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('33d0ed22cf94c7d9b381', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('33d5f8f654542c10cff5', 'image/photo.jpg', '0', '0', 'ID', '', 'JAKARTA', '');
INSERT INTO `usr_public` VALUES ('34e0a333d76e7a3b92ff', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('3539aece62d8210ff1e1', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('3661d1af9aa20354edf6', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('37ea7eb59dac7a0350ef', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('381964dd3467c6e5a644', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('3995af1ff80f4bf55158', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('3aed76b9b2ea280be0c1', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('3b1d6fbefba78e988e10', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('3c9cf04753e2268e34a1', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('3d3e856e4c63310bf4fe', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('3e5852cc8b8bf19f33be', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('3e6ad7ffeb77cbfbdc28', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('406922207a5789b5051b', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('42a93add5b94d0ee96e7', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('42e89cf82cc164f54d52', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('434a4447e817c82a1df7', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('4446210ec49d91650c1e', 'image/photo.jpg', '2', '0', '', '', '', '');
INSERT INTO `usr_public` VALUES ('447366436ff2fb4ee928', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('44df0b64d03529c80ede', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('44f8ea2cae316846418c', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('45f71263311645806aba', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('470fc76f53105118176b', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('47592a72175242546c72', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('4812f6425ac30b35034a', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('48412d551c8dda2e595c', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('4957f4ad6ddfe9a9e425', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('49daf62c9c570edb129c', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('4bbdaced692b41330d55', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('4bde50ac83823879d271', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('4d8e87110f099dcf3661', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('4df33e629a21183f9973', 'image/photo.jpg', '0', '0', 'ID', '', 'Lippo Karawaci', '');
INSERT INTO `usr_public` VALUES ('4e0498f663d4ad767035', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('4e1bd8e972572d5bc1c1', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('4e2f9a5f1b287d39bdca', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta Selatan', '');
INSERT INTO `usr_public` VALUES ('4e9adf7229729c45118e', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('4f2d6e3ad6e3af36a4e7', 'image/photo.jpg', '0', '0', 'ID', '', 'Tangerang', '');
INSERT INTO `usr_public` VALUES ('5009e8dc99f688e7b7a4', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('505e8ee1be8a74eb59a7', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('53b61a4a3f74f364a80e', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('53f862e0d63dac24ed79', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('545022a623699d1b0fb3', 'image/photo.jpg', '0', '0', 'ID', '', 'Tangerang', '');
INSERT INTO `usr_public` VALUES ('54b1b1eb96d61f65fd16', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('55dca73c5804d8663351', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('56a559a8d6e469558853', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('5731d07f79debda21be2', 'image/photo.jpg', '1', '0', '', 'Kediri', 'Depok', '');
INSERT INTO `usr_public` VALUES ('58e51a6cc129e2bcfab2', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('591af565b5a378c5d0f3', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('5bf99c5ea311b5ae57bf', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('5f8461ca33617f6c69d7', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('5fb4a6db719f5b061ab6', 'image/photo.jpg', '1', '0', '', '', '', '');
INSERT INTO `usr_public` VALUES ('603921338cfa9ffbaa35', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('608e23715ab3a46bdd80', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('60bca865f0ed6f808885', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('6250b1230140fa6f3544', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('628cf06e80d59a0c418b', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('6390f06600ed47b57e90', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('63f2fe715446cba6e132', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('64b6e6634f8fade06cc9', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('64b954da0c730727b741', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('664aa999d5403d36588f', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('664e92087fd3382c02bd', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('6806a2b7b123a0a82e31', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('6ad3e9b154a0bf49900f', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('6ad56584d2d36b6d0e93', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('6b74c8796548003fae22', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('6d9d822ba9c5b6701bae', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('6dc41e10bb12e91b375b', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('6e02c4ccf9991b9eea8f', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('6ec91627886839dff4a7', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('6f170d18f8e9bda8dfff', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('6fb2038d36a0633fada2', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('711cca1ca075eced492f', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('717c754daf29ae8c7872', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('71d90b9fba71f265497b', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('727930fb01fe005de25d', 'image/photo.jpg', '1', '0', '', '', '', '');
INSERT INTO `usr_public` VALUES ('7310148804bba9c4c755', 'image/photo.jpg', '0', '0', 'ID', '', 'jakarta', '');
INSERT INTO `usr_public` VALUES ('739fbadd91a8dbe06efb', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('76ab07071ab7b94d591d', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('76f341ae9b1ef60af70d', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('79b19eae951eb3f56466', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta Selatan', '');
INSERT INTO `usr_public` VALUES ('7a30792824f1f1f5c6c6', 'image/photo.jpg', '0', '0', 'ID', '', 'Surabaya', '');
INSERT INTO `usr_public` VALUES ('7a92f7ced45096e08214', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('7c1c0fc6e5a1ee3aaa6a', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('7e67fed150b8b30d9df2', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('7ebc9f54a85fd2687c57', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('7eef31dffd85b2ab7c57', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('7ef24b858bdfa6e19ce8', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('7f6350838f956d64176e', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('7f64e471d7088f10106b', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('7fc6653525bf2848a468', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('7fe7c6376eebc744e5b7', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('80fab60c5bf667dde4cd', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('822253b91c028b2fab17', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('8239739aa11fc08a1f62', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('8316638c2225ff8ba6c4', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('84dcffe6bb6c9e5a6d40', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('8532fad51d628f1c9696', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('8972417a1225beb95737', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('8a1367b867e960954066', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('8a5804e184b8f6a7a786', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('8b1175fe5720ed122d4b', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('8b574a1b6be60d2f9c12', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('8bb0b43f6ac92833153f', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('8c1dcdb78d078ac81e22', 'image/photo.jpg', '0', '0', 'ID', '', 'Bekasi', '');
INSERT INTO `usr_public` VALUES ('8e3e85bd92aaca6203fb', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('8f21c73bd16b954bf70a', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('8f4a05a9a3e0fe1acc6d', 'image/photo.jpg', '0', '0', 'ID', '', 'Serpong', '');
INSERT INTO `usr_public` VALUES ('8f8ee6591e85c28706fd', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('90223a099e566b7745fa', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('9081e65e05792979650e', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('9086fd28f48abf565b8e', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('90aa09f90bd0bbe0230e', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('90f107f3d51838a37b61', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('9114fdff19a3cac9219f', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('914f69b1f9c47daa6876', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('91c65844c1727ac33beb', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('920d271f5a56e45471a2', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('922ffdc42e5a95c70b6f', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('92392066623b2b60daf4', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('9245232d54b182f04dae', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('9269a85a3094e548ff52', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('926abe25100df96bcbd0', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('926e26c41b00b4393c89', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('92b2175ad00f1a463069', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('94187fce4a2e3dd6e689', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('95664d37b15c059676d8', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('95b3c1a68aabdc741229', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('95fbe336f671ec87a7d1', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('9743ee5090b76c8e9666', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta Selatan', '');
INSERT INTO `usr_public` VALUES ('9746056cc1022050c070', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('97475427155a7d66ebd7', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('9877c3e3cc5392928ba5', 'image/photo.jpg', '0', '0', 'ID', '', 'Bekasi', '');
INSERT INTO `usr_public` VALUES ('98cc30e1368c91ccb5ff', 'image/photo.jpg', '0', '0', 'ID', '', 'bandung', '');
INSERT INTO `usr_public` VALUES ('996fbc37291a7bd2c669', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('9ab4429e4e563dba0e49', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('9b2c7b2e253ba81623f0', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('9b98fdc3ff9a96f853b3', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('9bbb95d1f24edcd08b3d', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('9d1a767618fefeafcf40', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('9da3c48fac7dbf13c668', 'image/photo.jpg', '1', '0', '', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('9dde060be2e1669e1d80', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('9e7247458e598260d58a', 'image/photo.jpg', '0', '0', 'ID', '', 'Tangerang', '');
INSERT INTO `usr_public` VALUES ('9ea852b592ae8d4b6d85', 'image/photo.jpg', '0', '0', 'NL', '', 'LX', '');
INSERT INTO `usr_public` VALUES ('9ed93322b9d6fc2349fb', 'image/photo.jpg', '0', '0', 'ID', '', 'Tangerang', '');
INSERT INTO `usr_public` VALUES ('a022f85d265da1173559', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('a0b105f8a9261e43369d', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('a1440bd13ceb58243c0d', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('a3103e57293ccb1edb02', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('a394ea0ac2054f5faa91', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('a570b5e81b18f7cd82a3', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('a57336627e24ae14e3aa', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('a595fb078ae2338e5a25', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('a614b4475a8b59be3ea2', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('a763fbc6c9f9cc1f1ff9', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('a8961c0af4d700d90399', 'image/photo.jpg', '0', '0', 'NL', '', 'Zierikzee', '');
INSERT INTO `usr_public` VALUES ('a97c6029cca89f39b9bb', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('ab97f983e899e77068ec', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('ad03384610ffb68f0a8c', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('ad3cb48981d4db6bc1b8', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('ade53457b2e69229c071', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('adfce6c1d151965f2911', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('ae1aa80997053166a382', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('ae23f1528a98d12f7fc9', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('af6d806064f74870ec97', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('b2ac101d2b1faba0caa3', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('b3d80280ed4688e56918', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('b3fca2a1e0f2e780b215', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('b40337980dab09cf96b8', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('b47708d5c88af35f40c5', 'image/photo.jpg', '0', '0', 'AU', '', 'Sydney', '');
INSERT INTO `usr_public` VALUES ('b4b0dac2d2f7a55899ac', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('b6d066260960ee9d4c51', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('b7546ea5d4715b3f099e', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('ba98c8fa53cb19027fdf', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('bc3fb7f8e6d43bfc8b7c', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('bc614b22d8df830fd230', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('bce76ecdbac2a5d8e36e', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('bd3646e9903ded19fc8d', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('be19191192bd6aed68a0', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('be42347a753591727e9e', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('bf31a9f99aed5e225e4f', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('bf4a939ec900a44f2374', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('bf8aed2a8691e4029961', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('c0e9fa6eea99f57f1641', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('c15930c3e2657f11b78b', 'image/photo.jpg', '0', '0', 'ID', '', 'Tangerang', '');
INSERT INTO `usr_public` VALUES ('c1c3d2c40b2dcc1e5714', 'image/photo.jpg', '1', '0', '', '', '', '');
INSERT INTO `usr_public` VALUES ('c21d1d04f936e3e522d6', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('c2f10dcd4a6dc55fec57', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('c3b1455d93aca66e6836', 'image/photo.jpg', '0', '0', 'ID', '', 'Bogor', '');
INSERT INTO `usr_public` VALUES ('c3b9f756a65d3bae9ade', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('c4428aafe89bd6c7e111', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('c49b84579ebd389b5f82', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('c4bbfaf9f058c98e13cd', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('c4c9875904542ce929f7', 'image/photo.jpg', '0', '0', 'ID', '', 'Tangerang', '');
INSERT INTO `usr_public` VALUES ('c4cbf2ebd389aa212e53', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('c5420c6630974c7e5a5c', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('ca872ed0b4791dce3f7f', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('cedbb4a7446a43b3a449', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('cf94ad1716f7f644d470', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('d0611a4e4d70b8bf716e', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('d106b8c79ad511d6c859', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('d19d96fb8ed17fba1cbb', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('d3485bdb411860ae8c19', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('d3c8cdb9a39e514d6b97', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('d512bea1518671c879f3', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('d5b23ab05974874eab17', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('d72d58bcc924352a7f58', 'image/photo.jpg', '0', '0', 'ID', '', 'Tangerang', '');
INSERT INTO `usr_public` VALUES ('db25f7c50412bfd7f92c', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('db90baf4d45ea571b9e1', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('dcaa7f08d787ca1d7905', '3.jpg', '2', '0', 'ID', 'Chesham England', 'Lives in Jakarta', 'I grew up in Buckinghamshire England, Long Island New York, and Los Angeles California...lived in Alaska, USA and now live in Jakarta Indonesia. ');
INSERT INTO `usr_public` VALUES ('dd1d8180034abeaa15ec', 'image/photo.jpg', '0', '0', 'ID', '', 'Depok Timur', '');
INSERT INTO `usr_public` VALUES ('ddc364537c89859fe75f', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('ddcaecb5c8440b266b67', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('de4e03e64d033e60acce', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('decc7fd8eb49031eff6f', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('df2a280b7c2eeab904aa', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta Timur', '');
INSERT INTO `usr_public` VALUES ('e14af235b73646e11e23', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('e27f729a4d26d6c080cf', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('e558d08a568a43c9cdd3', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('e68fbefc984ec00f48db', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('e73a2782c695934074f7', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('e7b398f677fbf9975b4c', 'image/photo.jpg', '0', '0', 'ID', '', 'Tangerang', '');
INSERT INTO `usr_public` VALUES ('e9d4b56829edb8b69cb8', 'image/photo.jpg', '0', '0', 'ID', '', 'jakarta', '');
INSERT INTO `usr_public` VALUES ('e9f68e548b0697a0ffd6', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('eabee85c4c79f38083f4', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('ec5556b86362adf93c28', 'image/photo.jpg', '0', '0', 'ID', '', 'jakarta selatan', '');
INSERT INTO `usr_public` VALUES ('ecfdbc8de72a35049102', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('edc93ac6e25ec6a46f00', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('ef60d77e119cdcd1e70a', 'image/photo.jpg', '1', '0', '', '', '', '');
INSERT INTO `usr_public` VALUES ('ef7f4a790d6f6aeac2ea', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('ef849644b17e3bce6e22', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('efd38464a0f9f1b4bfb8', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('f02bc6dd0ee3c75155bd', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('f0dd80355a18efc97bf2', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('f0e25fcab1e6724ca10a', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('f0e5b61bd4428e9b25dd', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('f1251968e8aae5642aa3', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('f149b58c1a23e6d1f389', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('f3839a9691dc8bf37c9a', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('f478339eaf1d3d57c373', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('f5cde7b09d97a64fd67f', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta Barat', '');
INSERT INTO `usr_public` VALUES ('f6696f6c8e8f3ce8c247', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('f85a2ae0a91e06f2f599', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('f86622ea816c7eb10dee', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('fa7c94df313204d14566', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('fa9208d209969dd9f4a3', 'image/photo.jpg', '0', '0', 'ID', '', 'Jakarta', '');
INSERT INTO `usr_public` VALUES ('fb02f72ebabf6a311d31', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('fbad8a724feec842a0eb', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('fca4591db159b23cedb6', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('fd55ee2bd485f2fbfbbd', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('fd775a9b1e4f8126cfa0', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('fdc74ce4b2ab424ea8fc', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('fe468f6c303b39ba1a84', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('fe4e3f0badacb9718ea3', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('fe9ab8ed121652ae0d07', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_public` VALUES ('ffd5c658a154388eaf42', 'image/photo.jpg', '0', '0', 'ID', '', '', '');
INSERT INTO `usr_verify` VALUES ('15f9362907d5c77bf516', '1331620583');
INSERT INTO `usr_verify` VALUES ('4446210ec49d91650c1e', '1329380889');
INSERT INTO `usr_verify` VALUES ('5731d07f79debda21be2', '1328069342');
INSERT INTO `usr_verify` VALUES ('9da3c48fac7dbf13c668', '1331617281');
INSERT INTO `usr_verify` VALUES ('c1c3d2c40b2dcc1e5714', '1330051535');
