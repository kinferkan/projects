<?php
$server_local_path = "D:\\xampp\htdocs\\";
$url_home = "http://localhost:9000/ituijian";
// HTTP
define('HTTP_SERVER', $url_home);
define('HTTP_IMAGE', $url_home.'/image/');
define('HTTP_ADMIN', $url_home.'/admin/');

// HTTPS
define('HTTPS_SERVER', $url_home);
define('HTTPS_IMAGE', $url_home.'/image/');

// DIR
define('DIR_APPLICATION', $server_local_path.'ituijian/catalog/');
define('DIR_SYSTEM', $server_local_path.'ituijian/system/');
define('DIR_DATABASE', $server_local_path.'ituijian/system/database/');
define('DIR_LANGUAGE', $server_local_path.'ituijian/catalog/language/');
define('DIR_TEMPLATE', $server_local_path.'ituijian/catalog/view/theme/');
define('DIR_CONFIG', $server_local_path.'ituijian/system/config/');
define('DIR_IMAGE', $server_local_path.'ituijian/image/');
define('DIR_CACHE', $server_local_path.'ituijian/system/cache/');
define('DIR_DOWNLOAD', $server_local_path.'ituijian/download/');
define('DIR_LOGS', $server_local_path.'ituijian/system/logs/');

// DB
define('DB_DRIVER', 'mysql');
define('DB_TRXN_DRIVER', 'mysqlt');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'ituijian');
define('DB_PREFIX', '');
?>