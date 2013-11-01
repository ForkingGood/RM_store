<?php
$timestamp = time();
$date_time_array = getdate($timestamp);
$month = $date_time_array['mon'];
$day = $date_time_array['mday'];
$year = $date_time_array['year'];
$timestamp = mktime( 0 , 0 ,0 ,$month,$day - 30,$year);
?>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
<?php if ( $product['date_new']  > $timestamp){ ?><div id="newlablecategory"></div><?php } ?>
<?php if (!$product['special']) { ?>
<?php if ( ($product['price'] == "$0.00") || ($product['price'] == "R 0.00") ) { ?><div id="freelablecategory">&nbsp;</div><?php } ?>
<?php } else { ?>
            <div id="speciallablecategory"></div>
<?php } ?>

        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
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
