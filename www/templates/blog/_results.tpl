<?php if ( $_GET['result'] == 'postDeleted' ) { ?>
    <div class="notification__error--text notification__error--textsmall mt-20" data-notify-hide >
        <div class="notification__error notification__error--top notification__error--top-border-radius" >Пост успешно удален!</div>
    </div>
<?php } ?>

<?php if ( $_GET['result'] == 'postCreated' ) { ?>
    <div class="notification__error--text notification__error--textsmall mt-20" data-notify-hide >
        <div class="notification__error notification__success notification__error--top notification__error--top-border-radius" >Новый пост добавлен!</div>
    </div>
<?php } ?>

<?php if ( $_GET['result'] == 'postUpdated' ) { ?>
    <div class="notification__error--text notification__error--textsmall mt-20" data-notify-hide >
        <div class="notification__error notification__success notification__error--top notification__error--top-border-radius" >Пост успешно отредактирован!</div>
    </div>
<?php } ?>