<?php

// echo "<pre>";
// print_r($_POST);
// echo "</pre>";

?>



<div class="sticky-footer-content">
	<div class="container user-content pt-80 pb-120">
		<div class="row">
			<div class="col-10 offset-1">
				<div class="title-1 post-add__title">Создать новую категорию</div>

				<?php require ROOT . "templates/_parts/_erorrs.tpl" ?>

				<form class="post-add-form" action="<?=HOST?>blog/category-new" method="POST">
					
					<div class="post-add-form__name">
						<label class="label">Название категории
							<input class="input-text" type="text" placeholder="Введите название" name="catTitle" />
						</label>
					</div>


					<div class="post-add-form-button">
						<input class="button button-save" type="submit" value="Сохранить" name="catNew" />
						<div class="button post-add-form-button__cancel">
							<a class="link-decoration" href="<?=HOST?>blog/categories">Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>