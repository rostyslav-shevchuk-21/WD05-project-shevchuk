<?php 

// echo "<pre>";
// print_r($posts);
// echo "</pre>";
?>


<div class="sticky-footer-content">
	<div class="container user-content pt-80 relative">
		<div class="blog__header mb-50">
			<span>Блог веб-разработчика</span>
			<div class="profile__button"><a class="button button-edit" href="<?=HOST?>blog/post-new">Добавить пост</a></div>
		</div>

		<?php 

			$string = "Что делать, если в наследство достался некачественный код";
			// $string = "Что делать, если в наследство";
			// $string = "Мнение: почему 10 year challenge — идеальный флешмоб для обучения ИИ";

			$result = substr($string, 0, 5);
			$result = mb_substr($string, 0, 45, 'UTF-8'); //Что делать, если в наследство достался некаче
			echo $result;
			echo "<br>";
			// $spacePosition mb_strripos($result, " ", 0, 'UTF-8'); //38
			$finalResult = mb_substr($result, 0, 38, 'UTF-8');
			echo "<br>";
			echo $finalResult . "...";


		?>


		<div class="row justify-content-between mb-50">
			
			<?php foreach ($posts as $post) { ?>
				
				<?php include ROOT . "templates/_parts/_blog-card.tpl" ?>

			<?php } ?>

		</div>
	</div>
</div>