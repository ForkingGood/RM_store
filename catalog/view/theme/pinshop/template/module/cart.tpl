<div id="cart">
  <div class="heading">
    <a><i class="icon-shopping-cart colorback icon-large icon-top"></i><span id="cart-total" class="colorwhite"><?php echo $text_items; ?></span><i class="icon-sort-down colorback icon-large padleft flright carticon"></i></a></div>
  <div class="content colorback" id="topcart">
    <?php if ($products || $vouchers) { ?>
    <div class="mini-cart-info colorback">
      <table>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="mini-cart-name colorwhite"><a class="colorwhite" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <div>
              <?php foreach ($product['option'] as $option) { ?>
              - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
              <?php } ?>
            </div></td>
          <td class="mini-cart-quantity">x&nbsp;<?php echo $product['quantity']; ?></td>
          <td class="mini-cart-total"><?php echo $product['total']; ?></td>
          <td class="mini-cart-remove"><i class="icon-trash padleft handpoint" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');"></i></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="mini-cart-name colorwhite"><?php echo $voucher['description']; ?></td>
          <td class="mini-cart-quantity">x&nbsp;1</td>
          <td class="mini-cart-total"><?php echo $voucher['amount']; ?></td>
          <td class="mini-cart-remove"><i class="icon-trash padleft handpoint" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');"></i></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="mini-cart-summary">
    <?php foreach ($totals as $total) { ?>
        <?php if ($total['code'] == 'total') { ?>
        <span class="totalsum">
        <?php echo $total['text']; ?></span>
        <?php } } ?>
    </div>
    <div class="checkout">
        <div id="mini-closecart" onclick="$('#topcart').hide()">
            <i id="mini-closecart" class="icon-remove handpoint"></i>
        </div>
        <a href="<?php echo $cart; ?>"><span class="mybutton cart-button "><i class="icon-tags  padright"></i><?php echo $text_cart; ?></span></a>
        <a href="<?php echo $checkout; ?>"><span class="mybutton cart-button "><i class="icon-share-alt  padright"></i><?php echo $text_checkout; ?></span></a>
    </div>
    <?php } else { ?>
            <div id="mini-closecart" onclick="$('#topcart').hide()">
            <i id="mini-closecart" class="icon-remove handpoint"></i>
        </div>
    <div class="empty">&nbsp;&nbsp;&nbsp;<?php echo $text_empty; ?></div>
    <?php } ?>
  </div>
</div>