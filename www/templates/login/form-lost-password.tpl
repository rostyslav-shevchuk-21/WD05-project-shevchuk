<form class="registration-form" method="POST" action="<?=HOST?>lost-password">
	<h1 class="title-1 registration-form__caption">Забыл пароль</h1>

	<?php  
		// echo "<pre>";
		// print_r($_POST);
		// echo "</pre>";
	?>

	<?php require ROOT . "templates/_parts/_erorrs.tpl" ?>
	<?php require ROOT . "templates/_parts/_success.tpl" ?>

 

	<div class="registration-form__email">
		<input name="email" class="input-text" type="email" placeholder="E-mail" value="info@mail.com" />
	</div>

	<div class="password-remember-wrapper">
		<span>
			<a class="registration-form__password-recovery" href="<?=HOST?>login">Перейти на страницу входа</a>
		</span>
	</div>
	<div class="registration-form__button">
		<input class="button button-lost button-small" type="submit" value="Восстановить пароль" name="lost-password" />
	</div>
</form>