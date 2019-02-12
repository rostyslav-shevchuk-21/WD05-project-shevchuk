<div class="card-post mr-20 mb-50">
	<div class="card-post__image mb-15">

	<?php if ($post->post_img_small !="") { ?>
		<img src="<?=HOST?>usercontent/blog/<?=$post->post_img_small?>" alt="<?=$post->title?>" />
	<?php }  else { ?>		
		<img src="<?=HOST?>usercontent/blog-no-image.jpg" alt="<?=$post->title?>" />
	<?php } ?>		

	</div>
	<div class="card-post__title">
		<?=mbCutString($post->title, 38)?>
	</div>
	<a class="button" href="<?=HOST?>blog/post?id=<?=$post->id?>">Читать</a>
</div>