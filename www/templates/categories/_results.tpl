<?php if ( $_GET['result'] == 'catCreated' ) { ?>
    <div class="notification__error--text notification__error--textsmall mt-20" data-notify-hide >
        <div class="notification__error notification__success notification__error--top notification__error--top-border-radius"  >Категория успешно добавлена!</div>
    </div>
<?php } ?>

<?php if ( $_GET['result'] == 'catUpdated' ) { ?>
    <div class="notification__error--text notification__error--textsmall mt-20" data-notify-hide >
        <div class="notification__error notification__success notification__error--top notification__error--top-border-radius"  >Категория успешно отредактирована!</div>
    </div>
<?php } ?>


