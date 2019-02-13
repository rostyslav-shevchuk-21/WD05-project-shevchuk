<?php 

// echo "<pre>";
// print_r($post);
// echo "</pre>";

?>


<div class="sticky-footer-content">
	<div class="container user-content pt-70 make-relative">
		<div class="row">
			<div class="col-10 offset-1">
				<div class="blog-post">
					<div class="blog-post-heading-wrapper">
						<div>
							<h1 class="blog-post__title title-1"><?=$post['title']?></h1>
						</div>
						<div class="blog-post-heading-wrapper__link">
							<?php if ( isAdmin() ) { ?>
								<a class="button button-edit" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>">Редактировать</a>
								<a class="button button-delete" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>">Удалить</a>
							<?php } ?>

						</div>
					</div>
						<div class="blog-post__info">
							<div class="blog-post__info-name"><?=$post['name']?> <?=$post['surname']?></div>
							<div class="blog-post__info-category"><a href="#!"><?=$post['cat_title']?></a></div>
							<div class="blog-post__info-date"><? echo rus_date("j F Y H:i", strtotime($post['date_time']) )?></div>
							<div class="blog-post__info-comment-count"><a href="#!">2 комментария</a></div>
						</div>

					<?php if ($post['post_img'] !="") { ?>
						<img class="blog-post__image" src="<?=HOST?>usercontent/blog/<?=$post['post_img']?>" alt="<?=$post['title']?>" />
					<?php } ?>

					<div class="blog-post__content"><?=$post['text']?></div>
				</div>
				<div class="blog__buttons mt-30 mb-35">
					<div class="button__arrow-wrap"><a class="button button-backward" href="#!">Назад</a><i class="fas fa-arrow-left"></i></div>
					<div class="button__arrow-wrap"><a class="button button-forward" href="#!">Вперед</a><i class="fas fa-arrow-right"></i></div>
				</div>
				<div class="two-comments__title">2 комментария</div>
				<div class="two-comments-container">
					<div class="two-comments-container__avatar">
						<div class="avatar"><img src="../img/avatars/avatar-2.png" /></div>
					</div>
					<div class="two-comments-container-block">
						<div class="two-comments-container-block-wrap">
							<div class="two-comments-container-block-wrap__name">Джон До</div>
							<div class="two-comments-container-block-wrap__date"><i class="far fa-clock two-comments-container-block-wrap-icon"></i>05 Мая 2017 года в 15:45</div>
						</div>
						<div class="two-comments-container-block__message">Замечательный парк, обязательно отправлюсь туда этим летом.</div>
					</div>
				</div>
				<div class="two-comments-container">
					<div class="two-comments-container__avatar">
						<div class="avatar"><img src="../img/avatars/avatar-3.png" /></div>
					</div>
					<div class="two-comments-container-block">
						<div class="two-comments-container-block-wrap">
							<div class="two-comments-container-block-wrap__name">Джон До</div>
							<div class="two-comments-container-block-wrap__date"><i class="far fa-clock two-comments-container-block-wrap-icon"></i>05 Мая 2017 года в 15:45</div>
						</div>
						<div class="two-comments-container-block__message">Замечательный парк, обязательно отправлюсь туда этим летом.</div>
					</div>
				</div>


				<!-- Добавление комментария -->
				<div class="comment mt-35 mb-120">
					<div class="leave-comment-title">Оставить комментарий</div>
					<form 	class="leave-comment" id="commentForm" method="POST" 
							action="<?=HOST?>blog/post?id=<?=$post['id']?>" >
						<div class="leave-comment-avatar">
							<div class="avatar avatar--placeholder">
								<?php if ( $_SESSION['logged_user']['avatar_small'] != "" ) { ?>
									<img 
										src="<?=HOST?>usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" 
										alt="<?=$_SESSION['logged_user']['name']?> <?=$_SESSION['logged_user']['surname']?>" />
								<?php } ?>
							</div>
						</div>
						<div class="leave-comment-form">
							<div class="leave-comment-form__name">
								<?=$_SESSION['logged_user']['name']?>
								<?=$_SESSION['logged_user']['surname']?>	
							</div>
							<div class="notification__error notification__error--texthidden" data-error-comment-empty >Комментарий не может быть пустым.</div>
							<div class="comment-add-block__text mb-10">
								<textarea class="textarea" name="commentText" type="text" placeholder="Присоединиться к обсуждению..."></textarea>
							</div>
							<div class="comment-add__button mb-10">
								<input type="hidden" name="addComment" />
								<input class="button" type="submit" value="Опубликовать" data-add-comment />
							</div>
						</div>
					</form>
				</div>
				<!-- // Добавление комментария -->



			</div>
		</div>
	</div>
</div>