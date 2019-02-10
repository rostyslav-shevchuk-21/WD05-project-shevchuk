<?php

// echo "<pre>";
// print_r($_POST);
// echo "</pre>";

?>



<div class="sticky-footer-content">
	<div class="container user-content pt-80 pb-120">
		<div class="row">
			<div class="col-10 offset-1">
				<div class="title-1 post-add__title">Редактировать пост</div>

				<?php require ROOT . "templates/_parts/_erorrs.tpl" ?>

				<form class="post-add-form" action="<?=HOST?>blog/post-edit?id=<?=$post['id']?>" method="POST" enctype="multipart/form-data">
					<div class="post-add-form__name">
						<label class="label">Название
							<input class="input-text" type="text" placeholder="Введите название" name="postTitle" value="<?=$post['title']?>" />
						</label>
					</div>

					<div class="post-add-form__name mt-30">
						<label class="label">Категория
							<select class="input-text" name="postCat">
								<?php foreach ($cats as $cat): ?> 
									<option 
										value="<?=$cat['id']?>"
										<?php echo ($post['cat'] == $cat ['id'] ) ? "selected" : ""; ?>
									>
										<?=$cat['cat_title']?>
									</option>
								<?php endforeach ?>
							</select>
						</label>
					</div>

					<div class="post-add-form__file">
						<div class="load-file-title">Изображение </div>
						<div class="load-file-opis">Изображение jpg или png, рекомендуемая ширина 945px и больше, высота от 400px и более, вес до 2Мб.</div>
						<div class="load-file-fieldset">
							<input class="inputfile" id="file-2" type="file" name="postImg" data-multiple-caption="{count} файлов выбрано" multiple="" />
							<label for="file-2">Выбрать файл</label>
							<span>Файл не выбран</span>
							<?php if ( $post['post_img_small'] !="") { ?>
								<div class="load-file-wrap mt-20">
									<div class="load-file-wrap-img">
									
										<img 
											class="load-file-wrap-img__image" 
											src="<?=HOST?>usercontent/blog/<?=$post['post_img_small']?>" 
											alt="foto" />
										<div class="load-file-wrap__button">
											<a class="button button-delete button-small" href="#!">Удалить</a>
										</div>
									</div>
								</div>
							<?php } ?>	
						</div>
					</div>




					<div class="post-add-form__textarea">
						<div class="load-file-title">Содержание</div>
							<textarea class="textarea" id="ckEditor" type="text" placeholder="Введите описание" name="postText"><?=$post['text']?></textarea>
							<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>
					</div>
					<div class="post-add-form-button">
						<input class="button button-save" type="submit" value="Сохранить" name="postUpdate" />
						<div class="button post-add-form-button__cancel">
							<a class="link-decoration" href="<?=HOST?>blog">Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>


