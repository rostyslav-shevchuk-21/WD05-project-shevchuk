 <?php foreach ($success as $item) {
        if ( count($item) == 1) { ?>
            <!-- Однострочная ошибка -->
        <div class="notification__error--text notification__error--textsmall mt-20">
            <div class="notification__error notification__success notification__error--top notification__error--top-border-radius"><?=$item['title']?></div>
        </div>
<?php    } else if ( count($item) == 2) { ?>
            <!-- Ошибка с описанием -->
        <div class="notification__error--text mb-20">
            <div class="notification__error notification__success notification__error--top notification__error--top-border-radius"><?=$item['title']?></div>
            <span class="mb-20 mt-20"><?=$item['desc']?></span>
        </div>
      
<?php    
        }
    }
 ?>