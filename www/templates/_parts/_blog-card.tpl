<div class="card-post mb-20">
	<div class="card-post__image mb-15">

	<?php if ($post->post_img_small !="") { ?>
		<img src="<?=HOST?>usercontent/blog/<?=$post->post_img_small?>" alt="<?=$post->title?>" />
	<?php }  else { ?>		
		<img src="<?=HOST?>usercontent/blog-no-image.jpg" alt="<?=$post->title?>" />
	<?php } ?>		

	</div>
	<div class="card-post__title">
		<?=mbCutString($post->title, 43)?>
	</div>
	<a class="button" href="#!">Читать</a>
</div>