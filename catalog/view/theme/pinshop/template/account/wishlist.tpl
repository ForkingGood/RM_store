<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><i id="closeicon" onclick="$(this).parent().fadeOut('fast');" class="icon-remove padleft handpoint flright"></i></div>
<?php } ?>
<div id="content" class="container"><div class="doublepad"><?php echo $content_top; ?>
  <div class="pagetitle marbot"><?php echo $heading_title; ?></div>
  <?php if ($products) { ?>
  <div class="wishlist-info">
    <table class="table orders">
      <thead>
        <tr>
          <td class="image"><?php echo $column_image; ?></td>
          <td class="name"><?php echo $column_name; ?></td>
          <td class="model"><?php echo $column_model; ?></td>
          <td class="stock"><?php echo $column_stock; ?></td>
          <td class="price"><?php echo $column_price; ?></td>
          <td class="action"><?php echo $column_action; ?></td>
        </tr>
      </thead>
      <?php $num=0; foreach ($products as $product) { $num++; ?>
      <tbody id="wishlist-row<?php echo $product['product_id']; ?>">
        <tr class="numtr<?php if ($num%2 == 0) echo "odd"; else echo "even";?>">
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
          <td class="model"><?php echo $product['model']; ?></td>
          <td class="stock"><?php echo $product['stock']; ?></td>
          <td class="price"><?php if ($product['price']) { ?>
            <div class="price">
              <?php if (!$product['special']) { ?>
              <?php echo $product['price']; ?>
              <?php } else { ?>
              <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
              <?php } ?>
            </div>
            <?php } ?></td>
          <td class="action"><a href="#" onclick="addToCart('<?php echo $product['product_id']; ?>');return false;"><i class="icon-shopping-cart icon-large"></i></a>&nbsp;&nbsp;<a href="<?php echo $product['remove']; ?>"><i class="icon-trash icon-large"></i></a></td>
        </tr>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <div class="buttons">
    <div class="alcent"><a href="<?php echo $continue; ?>" class="button_normal colorback"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="alcent"><a href="<?php echo $continue; ?>" class="button_normal colorback"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>