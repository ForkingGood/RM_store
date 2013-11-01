
      <?php foreach ($products as $product) { ?>
      <?php //var_dump($product); ?>
      <div class="item" style="height:auto;">
        <div class="name" id="lnk"><a href="<?php echo $product['href']; ?>" ><?php echo $product['name']; ?></a></div>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" width="" height="" /></a></div>
        <?php } ?>
        <div class="pindesc"><?php echo $product['description']; ?></div>
        <?php if ($product['price']) { ?>
        <div class="pull-left">
            <div class="price">
              <?php if (!$product['special']) { ?>
              <?php echo $product['price']; ?>
              <?php } else { ?>
              <div class="special triangle"></div><div class="special-icon rotate45"><i class='icon-hand-down colorwhite'></i></div>
              <span class="price-new"><?php echo $product['special']; ?></span><span class="price-old colorfront"><?php echo $product['price']; ?></span>
              <?php } ?>
            </div>
            
           </div> 
            <?php } ?>

        

        <div class="social pull-right">
            <?php if ($product['rating']) { ?>
            <?php echo "<span class='starnum'>".$product['rating'].'</span><i class="icon-star icon-large"></i>';?>
            <?php } ?> 
            <a href="" onclick="addToWishList('<?php echo $product['product_id']; ?>'); return false;"><i class="icon-gift icon-large"></i></a>
                <a href="#" onclick="$('#shareicons_<?php echo $product['product_id']; ?>').fadeToggle('fast'); $('#shareicons_<?php echo $product['product_id']; ?>').css('display', 'inline-block'); return false;"><i class="icon-thumbs-up icon-large"></i></a>
                <div style="display:none;" id="shareicons_<?php echo $product['product_id']; ?>">
                  <?php
                    $title=urlencode($product['name']);
                    $summary=urlencode($product['description']);
                    $image=urlencode($product['thumb']);
                    $url=urlencode(str_replace('&amp;','&',$product['href']));
                   ?>
                <a href='#' onclick="window.open('http://www.facebook.com/sharer.php?s=100&amp;p[title]=<?php echo $title;?>&amp;p[summary]=<?php echo $summary;?>&amp;p[url]=<?php echo $url; ?>&amp;&p[images][0]=<?php echo $image;?>', 'sharer', 'toolbar=0,status=0,width=626,height=436');
;return false;"><i class="icon-facebook icon-large"></i></a>
                <a href='#' onclick="window.open('http://twitter.com/share?url=<?php echo $url;?>&amp;text=<?php echo $title;?>', 'sharer', 'toolbar=0,status=0,width=626,height=436');
;return false;"><i class="icon-twitter icon-large"></i></a>
                <a href='#' onclick="window.open('https://plus.google.com/share?url=<?php echo $url;?>', 'sharer', 'toolbar=0,status=0,width=626,height=436');
;return false;"><i class="icon-google-plus icon-large"></i></a>
                <a href='#' onclick="window.open('http://pinterest.com/pin/create/button/?url=<?php $url;?>&amp;media=<?php echo $image; ?>&amp;description=<?php echo $summary; ?>', 'sharer', 'toolbar=0,status=0,width=626,height=436');
;return false;"><i class="icon-pinterest icon-large"></i></a>
                </div>
            </div>
            <div style="clear:both"></div> 
        <div class="cart handpoint" onclick="addToCart('<?php echo $product['product_id']; ?>');"><i class='icon-shopping-cart'></i>&nbsp;&nbsp;<?php echo $button_cart; ?></div>
              
      </div>
      
      <?php } ?>
