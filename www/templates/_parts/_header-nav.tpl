<div class="header__nav ml-55">
	<nav class="navigation">
		<ul>
			<li class="navigation__item">
				<a class="<?=($uri[0] == "" ) ? "navigation__link--active" : ""?>" href="<?=HOST?>">Главная</a>
			</li>
			<li class="navigation__item">
				<a class="<?=($uri[0] == "about" ) ? "navigation__link--active" : ""?>" href="<?=HOST?>about">Обо мне</a>
			</li>
			<li class="navigation__item">
				<a class="<?=($uri[0] == "portfolio" ) ? "navigation__link--active" : ""?>" href="<?=HOST?>portfolio">Работы</a>
			</li>
			<li class="navigation__item">
				<a class="<?=($uri[0] == "blog" ) ? "navigation__link--active" : ""?>" href="<?=HOST?>blog">Блог</a>
			</li>
			<li class="navigation__item">
				<a class="<?=($uri[0] == "contacts" ) ? "navigation__link--active" : ""?>" href="<?=HOST?>contacts">Контакты</a>
			</li>
		</ul>
	</nav>
</div>