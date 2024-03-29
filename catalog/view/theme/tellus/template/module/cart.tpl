<div id="cart">
  <div class="heading">
    <h4><?php echo $heading_title; ?></h4>
    <a><span id="cart-total"><?php echo $text_items; ?></span></a></div>
  <div class="content">
    <div class="inner">
	<?php if ($products || $vouchers) { ?>
    <div class="mini-cart-info">
      <table width="100%" cellpadding="0" cellspacing="0" border="0">
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
              <?php foreach ($product['option'] as $option) { ?>
              <span>- <?php echo $option['name']; ?> <?php echo $option['value']; ?></span>
              <?php } ?>
              <?php if ($product['recurring']): ?>
              - <small><?php echo $text_payment_profile ?> <?php echo $product['profile']; ?></small><br />
              <?php endif; ?>
          </td>
          <td class="quantity">x&nbsp;<?php echo $product['quantity']; ?></td>
          <td class="total"><?php echo $product['total']; ?></td>
          <td class="remove"><img src="catalog/view/theme/tellus/image/icons/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');" /></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="image"></td>
          <td class="name"><?php echo $voucher['description']; ?></td>
          <td class="quantity">x&nbsp;1</td>
          <td class="total"><?php echo $voucher['amount']; ?></td>
          <td class="remove"><img src="catalog/view/theme/tellus/image/icons/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" /></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="mini-cart-total">
      <table width="100%" cellpadding="0" cellspacing="0" border="0">
        <?php foreach ($totals as $total) { ?>
        <tr>
          <td class="name"><?php echo $total['title']; ?>:</td>
          <td class="total"><?php echo $total['text']; ?></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="checkout">
		<a href="<?php echo $cart; ?>" class="button"><?php echo $text_cart; ?></a>&nbsp;&nbsp;
		<a href="<?php echo $checkout; ?>" class="button"><?php echo $text_checkout; ?></a>
	</div>
    <?php } else { ?>
    <div class="empty"><?php echo $text_empty; ?></div>
    <?php } ?>
	</div>
  </div>
</div>