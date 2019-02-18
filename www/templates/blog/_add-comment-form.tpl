<?php if ( isLoggedIn() ) { ?>

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

<?php } else { ?>

	<div class="comment mb-120">
		<div class="comment__register text-center">
			<a href="<?=HOST?>login">Войдите</a> или 
			<a href="<?=HOST?>registration">зарегистрируйтесь</a>
			<br />чтобы оставить комментарий
		</div>
	</div>
<?php } ?>