<?php

$title = "Редактировать профиль";

$currentUser = $_SESSION['logged_user'];
$user = R::load('users', $currentUser->id);

if ( isset($_POST['profile-update']) ) {
	
	if ( trim($_POST['name']) == '') {
		$errors[] = ['title' => 'Введите имя'];
	}

	if ( trim($_POST['surname']) == '') {
		$errors[] = ['title' => 'Введите фамилию'];
	}

	if ( trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите email'];
	}

	if ( empty($errors) ) {
		
		$user->name = htmlentities($_POST['name']);
		$user->surname = htmlentities($_POST['surname']);
		$user->email = htmlentities($_POST['email']);
		$user->country = htmlentities($_POST['country']);
		$user->city = htmlentities($_POST['city']);

		R::store($user);
		$_SESSION['logged_user'] = $user;
		header('Location: ' . HOST . "profile" );
		exit();
	}
}


// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();


// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";



?>