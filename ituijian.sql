---------------------- admin user start ----------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(32) COLLATE utf8_bin NOT NULL,
  `ip` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `user_group`;

CREATE TABLE `user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `permission` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `user_group` VALUES (1,'管理员','a:2:{s:6:\"access\";a:148:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:19:\"catalog/information\";i:5;s:20:\"catalog/manufacturer\";i:6;s:15:\"catalog/message\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:14:\"catalog/review\";i:10;s:15:\"catalog/sitemap\";i:11;s:18:\"common/filemanager\";i:12;s:19:\"common/localisation\";i:13;s:13:\"common/upload\";i:14;s:15:\"common/uploader\";i:15;s:13:\"design/banner\";i:16;s:13:\"design/layout\";i:17;s:14:\"extension/feed\";i:18;s:16:\"extension/module\";i:19;s:17:\"extension/payment\";i:20;s:18:\"extension/shipping\";i:21;s:14:\"extension/tool\";i:22;s:15:\"extension/total\";i:23;s:16:\"feed/google_base\";i:24;s:19:\"feed/google_sitemap\";i:25;s:14:\"layout/default\";i:26;s:16:\"layout/parameter\";i:27;s:13:\"layout/report\";i:28;s:17:\"localisation/city\";i:29;s:20:\"localisation/country\";i:30;s:21:\"localisation/currency\";i:31;s:21:\"localisation/geo_zone\";i:32;s:21:\"localisation/language\";i:33;s:25:\"localisation/length_class\";i:34;s:22:\"localisation/logistics\";i:35;s:25:\"localisation/order_status\";i:36;s:26:\"localisation/return_action\";i:37;s:26:\"localisation/return_reason\";i:38;s:26:\"localisation/return_status\";i:39;s:25:\"localisation/stock_status\";i:40;s:22:\"localisation/tax_class\";i:41;s:25:\"localisation/weight_class\";i:42;s:17:\"localisation/zone\";i:43;s:14:\"module/account\";i:44;s:16:\"module/affiliate\";i:45;s:13:\"module/banner\";i:46;s:17:\"module/bestseller\";i:47;s:15:\"module/carousel\";i:48;s:15:\"module/category\";i:49;s:12:\"module/cates\";i:50;s:14:\"module/dealday\";i:51;s:15:\"module/featured\";i:52;s:14:\"module/hotsell\";i:53;s:18:\"module/information\";i:54;s:13:\"module/latest\";i:55;s:17:\"module/mostviewed\";i:56;s:15:\"module/onlineim\";i:57;s:16:\"module/promotion\";i:58;s:16:\"module/slideshow\";i:59;s:14:\"module/special\";i:60;s:12:\"module/store\";i:61;s:13:\"module/viewed\";i:62;s:14:\"module/welcome\";i:63;s:16:\"payment/alertpay\";i:64;s:14:\"payment/alipay\";i:65;s:24:\"payment/authorizenet_aim\";i:66;s:21:\"payment/bank_transfer\";i:67;s:14:\"payment/cheque\";i:68;s:11:\"payment/cod\";i:69;s:21:\"payment/free_checkout\";i:70;s:14:\"payment/liqpay\";i:71;s:20:\"payment/moneybookers\";i:72;s:14:\"payment/nochex\";i:73;s:15:\"payment/paymate\";i:74;s:16:\"payment/paypoint\";i:75;s:26:\"payment/perpetual_payments\";i:76;s:14:\"payment/pp_pro\";i:77;s:17:\"payment/pp_pro_uk\";i:78;s:19:\"payment/pp_standard\";i:79;s:15:\"payment/sagepay\";i:80;s:22:\"payment/sagepay_direct\";i:81;s:18:\"payment/sagepay_us\";i:82;s:14:\"payment/tenpay\";i:83;s:19:\"payment/twocheckout\";i:84;s:16:\"payment/worldpay\";i:85;s:27:\"report/affiliate_commission\";i:86;s:22:\"report/customer_credit\";i:87;s:21:\"report/customer_order\";i:88;s:22:\"report/customer_reward\";i:89;s:24:\"report/product_purchased\";i:90;s:21:\"report/product_viewed\";i:91;s:11:\"report/sale\";i:92;s:18:\"report/sale_coupon\";i:93;s:17:\"report/sale_order\";i:94;s:18:\"report/sale_return\";i:95;s:20:\"report/sale_shipping\";i:96;s:15:\"report/sale_tax\";i:97;s:14:\"sale/affiliate\";i:98;s:13:\"sale/auto_seo\";i:99;s:12:\"sale/contact\";i:100;s:11:\"sale/coupon\";i:101;s:13:\"sale/customer\";i:102;s:19:\"sale/customer_group\";i:103;s:7:\"sale/im\";i:104;s:10:\"sale/order\";i:105;s:11:\"sale/return\";i:106;s:12:\"sale/voucher\";i:107;s:18:\"sale/voucher_theme\";i:108;s:13:\"seo/url_alias\";i:109;s:14:\"setting/custom\";i:110;s:12:\"setting/mail\";i:111;s:17:\"setting/parameter\";i:112;s:14:\"setting/server\";i:113;s:15:\"setting/setting\";i:114;s:13:\"setting/store\";i:115;s:15:\"setting/upgrade\";i:116;s:17:\"shipping/citylink\";i:117;s:13:\"shipping/flat\";i:118;s:13:\"shipping/free\";i:119;s:13:\"shipping/item\";i:120;s:15:\"shipping/pickup\";i:121;s:12:\"shipping/ups\";i:122;s:13:\"shipping/usps\";i:123;s:15:\"shipping/weight\";i:124;s:11:\"tool/backup\";i:125;s:14:\"tool/error_log\";i:126;s:16:\"toolset/auto_seo\";i:127;s:15:\"toolset/sitemap\";i:128;s:12:\"total/coupon\";i:129;s:12:\"total/credit\";i:130;s:14:\"total/handling\";i:131;s:19:\"total/low_order_fee\";i:132;s:12:\"total/reward\";i:133;s:14:\"total/shipping\";i:134;s:15:\"total/sub_total\";i:135;s:9:\"total/tax\";i:136;s:11:\"total/total\";i:137;s:13:\"total/voucher\";i:138;s:9:\"user/user\";i:139;s:20:\"user/user_permission\";i:140;s:14:\"module/dealday\";i:141;s:14:\"module/hotsell\";i:142;s:18:\"module/information\";i:143;s:12:\"module/store\";i:144;s:14:\"module/welcome\";i:145;s:16:\"feed/google_base\";i:146;s:19:\"feed/google_sitemap\";i:147;s:15:\"module/onlineim\";}s:6:\"modify\";a:148:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:19:\"catalog/information\";i:5;s:20:\"catalog/manufacturer\";i:6;s:15:\"catalog/message\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:14:\"catalog/review\";i:10;s:15:\"catalog/sitemap\";i:11;s:18:\"common/filemanager\";i:12;s:19:\"common/localisation\";i:13;s:13:\"common/upload\";i:14;s:15:\"common/uploader\";i:15;s:13:\"design/banner\";i:16;s:13:\"design/layout\";i:17;s:14:\"extension/feed\";i:18;s:16:\"extension/module\";i:19;s:17:\"extension/payment\";i:20;s:18:\"extension/shipping\";i:21;s:14:\"extension/tool\";i:22;s:15:\"extension/total\";i:23;s:16:\"feed/google_base\";i:24;s:19:\"feed/google_sitemap\";i:25;s:14:\"layout/default\";i:26;s:16:\"layout/parameter\";i:27;s:13:\"layout/report\";i:28;s:17:\"localisation/city\";i:29;s:20:\"localisation/country\";i:30;s:21:\"localisation/currency\";i:31;s:21:\"localisation/geo_zone\";i:32;s:21:\"localisation/language\";i:33;s:25:\"localisation/length_class\";i:34;s:22:\"localisation/logistics\";i:35;s:25:\"localisation/order_status\";i:36;s:26:\"localisation/return_action\";i:37;s:26:\"localisation/return_reason\";i:38;s:26:\"localisation/return_status\";i:39;s:25:\"localisation/stock_status\";i:40;s:22:\"localisation/tax_class\";i:41;s:25:\"localisation/weight_class\";i:42;s:17:\"localisation/zone\";i:43;s:14:\"module/account\";i:44;s:16:\"module/affiliate\";i:45;s:13:\"module/banner\";i:46;s:17:\"module/bestseller\";i:47;s:15:\"module/carousel\";i:48;s:15:\"module/category\";i:49;s:12:\"module/cates\";i:50;s:14:\"module/dealday\";i:51;s:15:\"module/featured\";i:52;s:14:\"module/hotsell\";i:53;s:18:\"module/information\";i:54;s:13:\"module/latest\";i:55;s:17:\"module/mostviewed\";i:56;s:15:\"module/onlineim\";i:57;s:16:\"module/promotion\";i:58;s:16:\"module/slideshow\";i:59;s:14:\"module/special\";i:60;s:12:\"module/store\";i:61;s:13:\"module/viewed\";i:62;s:14:\"module/welcome\";i:63;s:16:\"payment/alertpay\";i:64;s:14:\"payment/alipay\";i:65;s:24:\"payment/authorizenet_aim\";i:66;s:21:\"payment/bank_transfer\";i:67;s:14:\"payment/cheque\";i:68;s:11:\"payment/cod\";i:69;s:21:\"payment/free_checkout\";i:70;s:14:\"payment/liqpay\";i:71;s:20:\"payment/moneybookers\";i:72;s:14:\"payment/nochex\";i:73;s:15:\"payment/paymate\";i:74;s:16:\"payment/paypoint\";i:75;s:26:\"payment/perpetual_payments\";i:76;s:14:\"payment/pp_pro\";i:77;s:17:\"payment/pp_pro_uk\";i:78;s:19:\"payment/pp_standard\";i:79;s:15:\"payment/sagepay\";i:80;s:22:\"payment/sagepay_direct\";i:81;s:18:\"payment/sagepay_us\";i:82;s:14:\"payment/tenpay\";i:83;s:19:\"payment/twocheckout\";i:84;s:16:\"payment/worldpay\";i:85;s:27:\"report/affiliate_commission\";i:86;s:22:\"report/customer_credit\";i:87;s:21:\"report/customer_order\";i:88;s:22:\"report/customer_reward\";i:89;s:24:\"report/product_purchased\";i:90;s:21:\"report/product_viewed\";i:91;s:11:\"report/sale\";i:92;s:18:\"report/sale_coupon\";i:93;s:17:\"report/sale_order\";i:94;s:18:\"report/sale_return\";i:95;s:20:\"report/sale_shipping\";i:96;s:15:\"report/sale_tax\";i:97;s:14:\"sale/affiliate\";i:98;s:13:\"sale/auto_seo\";i:99;s:12:\"sale/contact\";i:100;s:11:\"sale/coupon\";i:101;s:13:\"sale/customer\";i:102;s:19:\"sale/customer_group\";i:103;s:7:\"sale/im\";i:104;s:10:\"sale/order\";i:105;s:11:\"sale/return\";i:106;s:12:\"sale/voucher\";i:107;s:18:\"sale/voucher_theme\";i:108;s:13:\"seo/url_alias\";i:109;s:14:\"setting/custom\";i:110;s:12:\"setting/mail\";i:111;s:17:\"setting/parameter\";i:112;s:14:\"setting/server\";i:113;s:15:\"setting/setting\";i:114;s:13:\"setting/store\";i:115;s:15:\"setting/upgrade\";i:116;s:17:\"shipping/citylink\";i:117;s:13:\"shipping/flat\";i:118;s:13:\"shipping/free\";i:119;s:13:\"shipping/item\";i:120;s:15:\"shipping/pickup\";i:121;s:12:\"shipping/ups\";i:122;s:13:\"shipping/usps\";i:123;s:15:\"shipping/weight\";i:124;s:11:\"tool/backup\";i:125;s:14:\"tool/error_log\";i:126;s:16:\"toolset/auto_seo\";i:127;s:15:\"toolset/sitemap\";i:128;s:12:\"total/coupon\";i:129;s:12:\"total/credit\";i:130;s:14:\"total/handling\";i:131;s:19:\"total/low_order_fee\";i:132;s:12:\"total/reward\";i:133;s:14:\"total/shipping\";i:134;s:15:\"total/sub_total\";i:135;s:9:\"total/tax\";i:136;s:11:\"total/total\";i:137;s:13:\"total/voucher\";i:138;s:9:\"user/user\";i:139;s:20:\"user/user_permission\";i:140;s:14:\"module/dealday\";i:141;s:14:\"module/hotsell\";i:142;s:18:\"module/information\";i:143;s:12:\"module/store\";i:144;s:14:\"module/welcome\";i:145;s:16:\"feed/google_base\";i:146;s:19:\"feed/google_sitemap\";i:147;s:15:\"module/onlineim\";}}');
INSERT INTO `user_group` VALUES (10,'演示帐号','');
---------------------- admin user End ----------------

---------------------- Customer Start ----------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `firstname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) COLLATE utf8_bin NOT NULL DEFAULT '',
  `telephone` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fax` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `wishlist` text COLLATE utf8_bin,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `active_code` varchar(160) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `customer_group`;
CREATE TABLE `customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  `permission` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `customer_ip`;
CREATE TABLE `customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(15) COLLATE utf8_bin NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `customer_reward`;
CREATE TABLE `customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `reward_type` tinyint(1) NOT NULL DEFAULT '0',-- 0: publish, 1: recommend
  `description` text COLLATE utf8_bin NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
---------------------- Customer End ----------------

---------------------- Shop config Start ----------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(32) COLLATE utf8_bin NOT NULL,
  `key` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` text COLLATE utf8_bin NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26568 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('21122', 'shipping', 'shipping_sort_order', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('3453', 'sub_total', 'sub_total_sort_order', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('3452', 'sub_total', 'sub_total_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('272', 'tax', 'tax_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('16013', 'total', 'total_sort_order', '9', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('16012', 'total', 'total_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('273', 'tax', 'tax_sort_order', '5', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25972', 'free_checkout', 'free_checkout_sort_order', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26096', 'cod', 'cod_sort_order', '5', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26094', 'cod', 'cod_geo_zone_id', '5', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26093', 'cod', 'cod_order_status_id', '13', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('21121', 'shipping', 'shipping_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('21120', 'shipping', 'shipping_estimator', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('13801', 'coupon', 'coupon_sort_order', '4', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('13800', 'coupon', 'coupon_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25947', 'flat', 'flat_sort_order', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25946', 'flat', 'flat_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25945', 'flat', 'flat_geo_zone_id', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25944', 'flat', 'flat_tax_class_id', '9', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26364', 'carousel', 'carousel_module', 'a:1:{i:0;a:9:{s:9:"banner_id";s:2:"11";s:5:"limit";s:1:"5";s:6:"scroll";s:1:"3";s:5:"width";s:2:"80";s:6:"height";s:2:"80";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26642', 'config', 'config_image_manufacturer_height', '240', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26650', 'config', 'config_image_wishlist_height', '80', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25943', 'flat', 'flat_cost', '5.00', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('9444', 'credit', 'credit_sort_order', '7', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('9443', 'credit', 'credit_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('18432', 'reward', 'reward_sort_order', '2', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('18431', 'reward', 'reward_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25516', 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25515', 'google_sitemap', 'google_sitemap_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25971', 'free_checkout', 'free_checkout_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25970', 'free_checkout', 'free_checkout_order_status_id', '15', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('24385', 'slideshow', 'slideshow_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:1:"9";s:5:"width";s:3:"960";s:6:"height";s:3:"280";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"0";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26651', 'config', 'config_image_cart_width', '80', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25466', 'account', 'account_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26649', 'config', 'config_image_wishlist_width', '80', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25936', 'free', 'free_total', '200', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25937', 'free', 'free_geo_zone_id', '12', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25938', 'free', 'free_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26648', 'config', 'config_image_compare_height', '120', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25925', 'weight', 'weight_6_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26647', 'config', 'config_image_compare_width', '90', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26646', 'config', 'config_image_related_height', '120', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26645', 'config', 'config_image_related_width', '90', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26644', 'config', 'config_image_additional_height', '120', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26643', 'config', 'config_image_additional_width', '90', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26641', 'config', 'config_image_manufacturer_width', '180', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26640', 'config', 'config_image_category_height', '180', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26639', 'config', 'config_image_category_width', '180', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26638', 'config', 'config_image_product_height', '240', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26637', 'config', 'config_image_product_width', '180', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26636', 'config', 'config_image_popup_height', '1600', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26635', 'config', 'config_image_popup_width', '1200', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26634', 'config', 'config_image_thumb_height', '450', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26633', 'config', 'config_image_thumb_width', '340', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26631', 'config', 'config_logo', 'data/logo/logo.png', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26518', 'config', 'config_cart_weight', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26517', 'config', 'config_upload_allowed', 'jpg, JPG, jpeg, gif, png, txt', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26516', 'config', 'config_download', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26505', 'config', 'config_review_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26515', 'config', 'config_return_status_id', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26514', 'config', 'config_complete_status_id', '5', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26628', 'config', 'config_order_status_id', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26512', 'config', 'config_stock_status_id', '7', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26627', 'config', 'config_stock_checkout', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26513', 'config', 'config_stock_warning', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26626', 'config', 'config_stock_display', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26511', 'config', 'config_commission', '5', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26510', 'config', 'config_affiliate_id', '5', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26625', 'config', 'config_checkout_id', '3', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26624', 'config', 'config_account_id', '5', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26630', 'config', 'config_guest_checkout', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26623', 'config', 'config_customer_approval', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26622', 'config', 'config_customer_price', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26621', 'config', 'config_customer_group_id', '8', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26502', 'config', 'config_invoice_prefix', 'GOOD/001', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26620', 'config', 'config_tax', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26501', 'config', 'config_admin_limit', '40', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26619', 'config', 'config_catalog_limit', '15', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26509', 'config', 'config_weight_class_id', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26508', 'config', 'config_length_class_id', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('24038', 'config', 'config_currency_auto', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26618', 'config', 'config_currency', 'CNY', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26616', 'config', 'config_zone_id', '700', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26617', 'config', 'config_language', 'cn', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26507', 'config', 'config_admin_language', 'cn', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26615', 'config', 'config_country_id', '44', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26614', 'config', 'config_layout_id', '4', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26613', 'config', 'config_template', 'default', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26611', 'config', 'config_meta_description', 'Shopilex网店系统,真正开源的PHP中文网店系统,真正开源免费的中文开源网店系统', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26610', 'config', 'config_title', 'Shopilex -  中文开源网店系统', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26609', 'config', 'config_fax', '', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26608', 'config', 'config_telephone', '123456789', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26605', 'config', 'config_owner', 'Alex', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26604', 'config', 'config_name', 'Shopilex', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26652', 'config', 'config_image_cart_height', '80', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26491', 'config', 'config_use_ssl', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26492', 'config', 'config_seo_url', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26493', 'config', 'config_maintenance', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26494', 'config', 'config_encryption', '12345', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26495', 'config', 'config_compression', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26497', 'config', 'config_error_display', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26498', 'config', 'config_error_log', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26499', 'config', 'config_error_filename', 'error.txt', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26500', 'config', 'config_google_analytics', '', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26481', 'config', 'config_mail_protocol', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26482', 'config', 'config_mail_parameter', '', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26483', 'config', 'config_smtp_host', '', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26484', 'config', 'config_smtp_username', '', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26485', 'config', 'config_smtp_password', '', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26486', 'config', 'config_smtp_port', '25', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26487', 'config', 'config_smtp_timeout', '5', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26488', 'config', 'config_alert_mail', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26489', 'config', 'config_account_mail', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26490', 'config', 'config_alert_emails', '', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26569', 'config', 'config_url', 'http://localhost/ts/shopilex20/', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26387', 'latest', 'latest_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"4";s:11:"image_width";s:3:"230";s:12:"image_height";s:3:"300";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26503', 'config', 'config_active', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26629', 'config', 'config_order_nopay_status_id', '16', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26506', 'config', 'config_invite_points', '100', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25033', 'banner', 'banner_module', 'a:3:{i:0;a:7:{s:9:"banner_id";s:2:"10";s:5:"width";s:3:"182";s:6:"height";s:3:"182";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:1;a:7:{s:9:"banner_id";s:2:"10";s:5:"width";s:3:"960";s:6:"height";s:3:"135";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:7:{s:9:"banner_id";s:2:"12";s:5:"width";s:3:"770";s:6:"height";s:3:"140";s:9:"layout_id";s:1:"3";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26606', 'config', 'config_address', '苏州艾乐信息科技有限公司', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26607', 'config', 'config_email', 'shopilex@gmail.com', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26612', 'config', 'config_meta_keyword', 'Shopilex,网店系统,开源PHP中文网店系统,开源免费网店系统,中文开源网店系统,开源网店系统', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26372', 'citylink', 'citylink_description', '上午发下午到,下午发次日到.', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25926', 'weight', 'weight_7_rate', '5:10.00,7:12.00', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25924', 'weight', 'weight_6_rate', '5:10.00,7:12.00', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25923', 'weight', 'weight_5_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25922', 'weight', 'weight_5_rate', '5:10.00,7:12.00', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25921', 'weight', 'weight_13_status', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25920', 'weight', 'weight_13_rate', '5:10.00,7:12.00', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25919', 'weight', 'weight_12_status', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25918', 'weight', 'weight_12_rate', '5:10.00,7:12.00', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25917', 'weight', 'weight_sort_order', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25916', 'weight', 'weight_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25915', 'weight', 'weight_tax_class_id', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25950', 'pickup', 'pickup_sort_order', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25949', 'pickup', 'pickup_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26095', 'cod', 'cod_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25939', 'free', 'free_sort_order', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25948', 'pickup', 'pickup_geo_zone_id', '5', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25914', 'category', 'category_module', 'a:3:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:4:{s:9:"layout_id";s:2:"13";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25927', 'weight', 'weight_7_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25928', 'weight', 'weight_9_rate', '5:10.00,7:12.00', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25929', 'weight', 'weight_9_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25930', 'weight', 'weight_8_rate', '5:10.00,7:12.00', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25931', 'weight', 'weight_8_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25932', 'weight', 'weight_11_rate', '5:10.00,7:12.00', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25933', 'weight', 'weight_11_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25934', 'weight', 'weight_10_rate', '5:10.00,7:12.00', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25935', 'weight', 'weight_10_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26092', 'cod', 'cod_total', '10', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25973', 'bank_transfer', 'bank_transfer_bank_1', '银行转账', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25974', 'bank_transfer', 'bank_transfer_total', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25975', 'bank_transfer', 'bank_transfer_order_status_id', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25976', 'bank_transfer', 'bank_transfer_geo_zone_id', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25977', 'bank_transfer', 'bank_transfer_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('25978', 'bank_transfer', 'bank_transfer_sort_order', '', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26596', 'config', 'config_default_payment', 'bank_transfer', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26369', 'citylink', 'citylink_tax_class_id', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26370', 'citylink', 'citylink_zone_id', '689', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26371', 'citylink', 'citylink_city_id', '210', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26368', 'citylink', 'citylink_rate', '10:11.6,15:14.1,20:16.60,25:19.1,30:21.6,35:24.1,40:26.6,45:29.1,50:31.6,55:34.1,60:36.6,65:39.1,70:41.6,75:44.1,80:46.6,100:56.6,125:69.1,150:81.6,200:106.6', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26632', 'config', 'config_icon', 'data/demo/ico.png', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26504', 'config', 'config_review', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26268', 'google_talk', 'google_talk_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"0";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26480', 'onlineim', 'onlineim_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"0";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26324', 'google_base', 'google_base_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26331', 'dealday', 'dealday_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26390', 'mostviewed', 'mostviewed_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26332', 'hotsell', 'hotsell_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"4";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26496', 'config', 'config_debug', '0', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26362', 'bestseller', 'bestseller_module', 'a:2:{i:0;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:1;a:7:{s:5:"limit";s:2:"10";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:2:"14";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26393', 'ims', 'ims', 'a:1:{i:0;a:4:{s:4:"type";s:2:"qq";s:7:"account";s:5:"10000";s:4:"text";s:12:"仅做测试";s:10:"sort_order";s:1:"1";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26388', 'cates', 'cates_module', 'a:1:{i:0;a:8:{s:11:"image_width";s:3:"230";s:12:"image_height";s:3:"300";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:4:"cate";s:2:"64";s:5:"count";s:1:"8";s:10:"sort_order";s:1:"2";}}', '1');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26373', 'citylink', 'citylink_status', '1', '0');
INSERT INTO `setting` (`setting_id`, `group`, `key`, `value`, `serialized`) VALUES ('26374', 'citylink', 'citylink_sort_order', '1', '0');


DROP TABLE IF EXISTS `extension`;
CREATE TABLE `extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) COLLATE utf8_bin NOT NULL,
  `code` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=472 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `extension` VALUES (410,'module','banner');
INSERT INTO `extension` VALUES (426,'module','carousel');
INSERT INTO `extension` VALUES (413,'module','category');
INSERT INTO `extension` VALUES (408,'module','account');
INSERT INTO `extension` VALUES (453,'module','affiliate');
INSERT INTO `extension` VALUES (419,'module','slideshow');
INSERT INTO `extension` VALUES (429,'module','cates');
INSERT INTO `extension` VALUES (438,'module','latest');
INSERT INTO `extension` VALUES (466,'module','information');
INSERT INTO `extension` VALUES (465,'module','hotsell');
INSERT INTO `extension` VALUES (449,'module','bestseller');
INSERT INTO `extension` VALUES (454,'module','mostviewed');
INSERT INTO `extension` VALUES (464,'module','dealday');
INSERT INTO `extension` VALUES (459,'module','viewed');
INSERT INTO `extension` VALUES (471,'module','onlineim');
INSERT INTO `extension` VALUES (467,'module','store');
INSERT INTO `extension` VALUES (468,'module','welcome');

DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(5) COLLATE utf8_bin NOT NULL,
  `locale` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(64) COLLATE utf8_bin NOT NULL,
  `directory` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filename` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `language` VALUES (1,'简体中文','cn','zh,zh-hk,zh-cn,zh-cn.UTF-8,cn-gb,chinese','cn.png','zh-cn','chinese',1,1);

DROP TABLE IF EXISTS `layout`;
CREATE TABLE `layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `layout` VALUES (1,'Home');
INSERT INTO `layout` VALUES (2,'Product');
INSERT INTO `layout` VALUES (3,'Category');
INSERT INTO `layout` VALUES (4,'Default');
INSERT INTO `layout` VALUES (5,'Manufacturer');
INSERT INTO `layout` VALUES (6,'Account');
INSERT INTO `layout` VALUES (7,'Checkout');
INSERT INTO `layout` VALUES (8,'Contact');
INSERT INTO `layout` VALUES (9,'Sitemap');
INSERT INTO `layout` VALUES (10,'Affiliate');
INSERT INTO `layout` VALUES (11,'Information');
INSERT INTO `layout` VALUES (12,'Account-No-Login');
INSERT INTO `layout` VALUES (13,'Search');
INSERT INTO `layout` VALUES (14,'Cart');

DROP TABLE IF EXISTS `layout_route`;
CREATE TABLE `layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `route` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `layout_route` VALUES (17,10,'affiliate/');
INSERT INTO `layout_route` VALUES (29,3,'product/category');
INSERT INTO `layout_route` VALUES (27,1,'common/home');
INSERT INTO `layout_route` VALUES (26,1,'common/home');
INSERT INTO `layout_route` VALUES (20,2,'product/product');
INSERT INTO `layout_route` VALUES (24,11,'information/information');
INSERT INTO `layout_route` VALUES (22,5,'product/manufacturer');
INSERT INTO `layout_route` VALUES (61,7,'checkout/checkout');
INSERT INTO `layout_route` VALUES (31,8,'information/contact');
INSERT INTO `layout_route` VALUES (32,12,'account/logout');
INSERT INTO `layout_route` VALUES (33,12,'account/login');
INSERT INTO `layout_route` VALUES (34,12,'account/forgotten');
INSERT INTO `layout_route` VALUES (35,12,'account/register');
INSERT INTO `layout_route` VALUES (58,6,'account/address');
INSERT INTO `layout_route` VALUES (57,6,'account/invite');
INSERT INTO `layout_route` VALUES (56,6,'account/newsletter');
INSERT INTO `layout_route` VALUES (55,6,'account/transaction');
INSERT INTO `layout_route` VALUES (54,6,'account/return');
INSERT INTO `layout_route` VALUES (53,6,'account/download');
INSERT INTO `layout_route` VALUES (52,6,'account/order');
INSERT INTO `layout_route` VALUES (51,6,'account/wishlist');
INSERT INTO `layout_route` VALUES (50,6,'account/password');
INSERT INTO `layout_route` VALUES (49,6,'account/account');
INSERT INTO `layout_route` VALUES (48,6,'account/edit');
INSERT INTO `layout_route` VALUES (47,13,'product/search');
INSERT INTO `layout_route` VALUES (59,6,'account/reward');
INSERT INTO `layout_route` VALUES (60,14,'checkout/cart');
---------------------- Shop config End ----------------

----------------------- Product Start --------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55177 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `product_description`;
CREATE TABLE `product_description` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=55177 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=142935 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `product_to_category`;
CREATE TABLE `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `product_user`;
CREATE TABLE `product_user`(
  `product_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `date_added` date NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` date NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY(`product_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` text COLLATE utf8_bin NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
----------------------- Product End --------------------

----------------------- Category Start --------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `category_description`;
CREATE TABLE `category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `category_to_layout`;
CREATE TABLE `category_to_layout` (
  `category_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
----------------------- Category End --------------------

----------------------- Banner Start --------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `banner` VALUES (10,'ad',1);
INSERT INTO `banner` VALUES (9,'首页横幅',1);
INSERT INTO `banner` VALUES (11,'品牌展示',1);
INSERT INTO `banner` VALUES (12,'分类广告',1);

DROP TABLE IF EXISTS `banner_image`;
CREATE TABLE `banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `banner_image` VALUES (90,9,'#','data/banner/banner-2.png');
INSERT INTO `banner_image` VALUES (93,10,'#','data/home-ad.png');
INSERT INTO `banner_image` VALUES (94,11,'','data/brand/brand-1.jpg');
INSERT INTO `banner_image` VALUES (95,11,'','data/brand/brand-2.jpg');
INSERT INTO `banner_image` VALUES (96,11,'','data/brand/brand-3.jpg');
INSERT INTO `banner_image` VALUES (97,11,'','data/brand/brand-4.jpg');
INSERT INTO `banner_image` VALUES (98,11,'','data/brand/brand-5.jpg');
INSERT INTO `banner_image` VALUES (99,11,'','data/brand/brand-6.jpg');
INSERT INTO `banner_image` VALUES (101,12,'#','data/demo/cate-banner-2.png');


DROP TABLE IF EXISTS `banner_image_description`;
CREATE TABLE `banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `banner_image_description` VALUES (90,1,9,'促销活动2');
INSERT INTO `banner_image_description` VALUES (93,1,10,'AD');
INSERT INTO `banner_image_description` VALUES (94,1,11,'佐丹奴');
INSERT INTO `banner_image_description` VALUES (95,1,11,'BASTO');
INSERT INTO `banner_image_description` VALUES (96,1,11,'Adidas');
INSERT INTO `banner_image_description` VALUES (97,1,11,'ELLE');
INSERT INTO `banner_image_description` VALUES (98,1,11,'Westside');
INSERT INTO `banner_image_description` VALUES (99,1,11,'Justyle');
INSERT INTO `banner_image_description` VALUES (101,1,12,'分类AD');
----------------------- Banner End --------------------

------------------ Manufacturer Start -----------------------------
DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `manufacturer` VALUES (5,'HTC','data/htc_logo.jpg',0);
INSERT INTO `manufacturer` VALUES (6,'Palm','data/palm_logo.jpg',0);
INSERT INTO `manufacturer` VALUES (7,'Hewlett-Packard','data/hp_logo.jpg',0);
INSERT INTO `manufacturer` VALUES (8,'Apple','data/c-1.jpg',0);
INSERT INTO `manufacturer` VALUES (9,'Canon','data/canon_logo.jpg',0);
INSERT INTO `manufacturer` VALUES (10,'Sony','data/sony_logo.jpg',0);
------------------ Manufacturer End -----------------------------

------------------ Infromation Start -----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `information` VALUES (3,3,1);
INSERT INTO `information` VALUES (4,1,1);
INSERT INTO `information` VALUES (5,4,1);
INSERT INTO `information` VALUES (6,2,1);

DROP TABLE IF EXISTS `information_description`;
CREATE TABLE `information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `information_description` VALUES (4,1,'关于我们','&lt;p&gt;\r\n	关于我们&lt;/p&gt;\r\n');
INSERT INTO `information_description` VALUES (5,1,'相关条款','&lt;p&gt;\r\n	相关条款&lt;/p&gt;\r\n');
INSERT INTO `information_description` VALUES (3,1,'购买条款','&lt;p&gt;\r\n	购买条款&lt;/p&gt;\r\n');
INSERT INTO `information_description` VALUES (6,1,'送货说明','&lt;p&gt;\r\n	送货说明&lt;/p&gt;\r\n');

DROP TABLE IF EXISTS `information_to_layout`;
CREATE TABLE `information_to_layout` (
  `information_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
------------------ Infromation End -----------------------------

