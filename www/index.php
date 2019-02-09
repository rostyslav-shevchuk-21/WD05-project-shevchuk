<?php  

// Хост сайта
define('HOST', 'http://' . $_SERVER['HTTP_HOST'] . '/');

// Физический путь к корневой директории скрипта
define('ROOT', dirname(__FILE__).'/');

$errors = array();
$success = array();

require ROOT . "config.php";
require ROOT . "db.php";
require ROOT . "libs/functions.php";

session_start();


/*-------------------------------------------------

РОУТЕР

------------------------------------------------*/

// request URL = http://webdev-project/blog/post?id=15
$uri = $_SERVER["REQUEST_URI"]; // /portfolio/
$uri = rtrim($uri, "/"); // /portfolio
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1); // portfolio
$uri = explode('?', $uri);

switch ($uri[0]) {
	case '':
		require ROOT . "modules/main/index.php";
		break;
		
// ::::::::::::::::::: USERS ::::::::::::::::::::

	case 'login':
		require ROOT . "modules/login/login.php";
		break;

	case 'registration':
		include ROOT . "modules/login/registration.php";
		break;

	case 'logout':
		include ROOT . "modules/login/logout.php";
		break;

	case 'lost-password':
		include ROOT . "modules/login/lost-password.php";
		break;

	case 'set-new-password':
		include ROOT . "modules/login/set-new-password.php";
		break;

	case 'profile':
		include ROOT . "modules/profile/index.php";
		break;

	case 'profile-edit':
		include ROOT . "modules/profile/edit.php";
		break;

// :::::::::::::::::: CATEGORIES ::::::::::::::::::

	case 'blog/categories':
		include ROOT . "modules/categories/all.php";
		break;

	case 'blog/category-new':
		include ROOT . "modules/categories/new.php";
		break;

	case 'blog/category-edit':
		include ROOT . "modules/categories/edit.php";
		break;

	case 'blog/category-delete':
		include ROOT . "modules/categories/delete.php";
		break;

// ::::::::::::::::::::: BLOG :::::::::::::::::::::

	case 'blog':
		include ROOT . "modules/blog/index.php";
		break;

	case 'blog/post-new':
		include ROOT . "modules/blog/post-new.php";
		break;
	
	case 'blog/post-edit':
		include ROOT . "modules/blog/post-edit.php";
		break;

	case 'blog/post':
		include ROOT . "modules/blog/post.php";
		break;
	
// ::::::::::::::::: MAIN / OTHER :::::::::::::::::

	default:
		include "modules/main/index.php";
		break;
}


?>