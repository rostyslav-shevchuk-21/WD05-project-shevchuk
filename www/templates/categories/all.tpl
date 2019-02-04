<div class="sticky-footer-content">
	<div class="container user-content pt-80 pb-120 relative">
		<div class="row">
			<div class="col-10 offset-1">

				<?php
					// echo "<pre>";
					// print_r($cats);
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
				
				<table class="table table-striped">
					<thead class="table-primary">	
						<tr>
							<th scope="col">id</th>
							<th scope="col">Название</th>
							<th scope="col">Редактировать</th>
							<th scope="col">Удалить</th>
						</tr>
					</thead>

					<tbody>
						<?php foreach ($cats as $cat): ?> 
						<tr>
							<th><?=$cat['id']?></th>
							<td><?=$cat['cat_title']?></td>
							<td><a href="<?=HOST?>blog/category-edit?id=<?=$cat['id']?>">Редактировать</a></td>
							<td><a href="<?=HOST?>blog/category-delete?id=<?=$cat['id']?>">Удалить</a></td>
						</tr>
						<?php endforeach ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>