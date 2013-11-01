
      <?php foreach ($products as $product) { ?>
      <?php //var_dump($product); ?>
      <div class="item" style="height:auto;">
        <div class="name" id="lnk"><a href="<?php echo $product['href']; ?>" ><?php echo $product['name']; ?></a></div>
        <?php if ($product['thumb']) { $imgsize = (getimagesize($product['thumb']));?>
        <div class="image" style="width: <?php echo $imgsize[0]; ?>px;height: <?php echo $imgsize[1]; ?>px;"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" width="<?php echo $imgsize[0]; ?>" height="<?php echo $imgsize[1]; ?>" /></a></div>
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
                <div style="display:inline-block;" id="shareicons_<?php echo $product['product_id']; ?>">
<!-- AddThis Button BEGIN -->
<a class="addthis_button" href="http://www.addthis.com/bookmark.php?v=300&amp;pubid=ra-50a3f61957888774"><i class="icon-thumbs-up icon-large"></i></a>
<script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
<script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-50a3f61957888774"></script>
<!-- AddThis Button END -->
                </div>
            </div>
            <div style="clear:both"></div> 
        <div class="cart handpoint" onclick="addToCart('<?php echo $product['product_id']; ?>');"><i class='icon-shopping-cart'></i>&nbsp;&nbsp;<?php echo $button_cart; ?></div>
              
      </div>
      
      <?php } ?>
