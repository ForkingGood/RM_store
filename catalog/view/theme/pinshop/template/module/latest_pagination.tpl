<div style="margin:0 auto;">
<div id="pinboard">
      <?php foreach ($products as $product) { ?>
      <div class="item" style="height:auto;">
      <div class="name" id="lnk"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['thumb']) { $imgsize = (getimagesize($product['thumb']));?>
        <div class="image" style="width: <?php echo $imgsize[0]; ?>px;height: <?php echo $imgsize[1]; ?>px;"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" width="<?php echo $imgsize[0]; ?>" height="<?php echo $imgsize[1]; ?>" /></a></div>
        <?php } ?>
        
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
      </div>
      
      <?php } ?>
      </div>
</div>
</div>