<div class="sticky-footer-content">
	<div class="container user-content pt-80 pb-120">
		<div class="row">
			<div class="col-10 offset-1">
				<div class="title-1 post-add__title">Удалить пост</div>

				<p>Вы действительно хотите удалить  пост <strong><?=$post['title']?></strong> с id = <?=$post['id']?> ? </p>

				<form class="post-add-form" action="<?=HOST?>blog/post-delete?id=<?=$post['id']?>" method="POST">
					
					<div class="post-add-form-button">
						<input class="button button-delete" type="submit" value="Удалить" name="postDelete" />
						<div class="button post-add-form-button__cancel">
							<a class="link-decoration" href="<?=HOST?>blog">Отмена</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>