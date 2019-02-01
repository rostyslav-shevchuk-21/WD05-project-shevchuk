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
		<div class="row justify-content-between mb-50">
			
			<?php foreach ($posts as $post) { ?>
				
				<?php include ROOT . "templates/_parts/_blog-card.tpl" ?>

			<?php } ?>

		</div>
	</div>
</div>