<form class="registration-form" method="POST" action="<?=HOST?>registration">
	<h1 class="title-1 registration-form__caption">Регистрация</h1>


	<?php

		// echo "<pre>";
		// print_r($_POST);
		// echo "</pre>";


	?>

	<?php require ROOT . "templates/_parts/_erorrs.tpl" ?>

	<div class="registration-form__error">
		<div class="notification__error--text notification__error--texthidden">
			<div class="notification__error notification__error--top notification__error--top-border-radius">Данный email уже занят</div><span class="mb-20 mt-20">Используйте другой email чтобы создать новый аккаунт</span><span>Или воспользуйтесь <a href="#{link}">восстановлением пароля</a>, чтобы войти на сайт.</span>
		</div>
	</div>
	<div class="registration-form__email"><input name="email" class="input-text" type="email" placeholder="E-mail" value="info@mail.com" /></div>
	<div class="registration-form__password"><input name="password" class="input-text" type="password" placeholder="Пароль" value="123456" /></div>
	<div class="registration-form__button"><input class="button button-enter" type="submit" value="Регистрация" name="register" /></div>
</form>
