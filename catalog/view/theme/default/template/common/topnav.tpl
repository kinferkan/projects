<div class="headBg">
    <div class="headNav">
        <div id="welcome">
            <?php if (!$logged) { ?>
            <?php echo $text_welcome; ?>
            <?php } else { ?>
            <?php echo $text_logged; ?>
            <?php } ?>
        </div>
        <div class="shopping">
            <ul class="shoppingNav">

                <li class="account"><a rel="nofollow" class="checkout" href="<?php echo $checkout;?>" name="t-cart"><?php echo $text_checkout;?></a></li>
                <li class="drop-down">
                    <div class="drop-down-box">
                        <a class="drop-down-head" rel="nofollow" href="<?php echo $account;?>"><?php echo $text_account;?></a>
                        <div class="drop-down-list" style="width: 89px; ">
                            <a rel="nofollow" href="<?php echo $reward;?>"><?php echo $text_reward;?></a>
                            <a rel="nofollow" href="<?php echo $invite;?>"><?php echo $text_invite;?></a>
                        </div>
                    </div>
                </li>
                <li class="none"><a class="favorite" rel="nofollow" href="javascript:bookmarksite('<?php echo $store_name;?>','<?php echo $home;?>');"><?php echo $text_fav;?></a></li>
            </ul>
        </div>
    </div>
</div>