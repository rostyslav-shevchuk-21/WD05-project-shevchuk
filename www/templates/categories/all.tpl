<div class="sticky-footer-content">
	<div class="container user-content pt-80 relative">
		<div class="row">
			<div class="col-10 offset-1">

				<?php
					// echo "<pre>";
					// print_r($_GET);
					// echo "</pre>";

					if ( isset($_GET['result']) ) {
						include ROOT . "templates/categories/_results.tpl";
					}

				?>

				<div class="blog__header mb-50">
					<span>Категории блога</span>
					<div>
						<a class="button button-edit" href="<?=HOST?>blog/category-new">Добавить категорию</a>
					</div>
				</div>


				<p>Тут будут все категории</p>
			</div>
		</div>
	</div>
</div>