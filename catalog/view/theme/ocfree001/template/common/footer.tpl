<div id="footer">
  <?php if ($informations) { ?>
  <div class="column">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <?php } ?>
  <div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
</div>
<div class="iconspayments"><img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/payments_icons/skrill.png" alt="skrill" title="skrill" class="iconspayment" />
<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/payments_icons/paypal.png" alt="paypal" title="paypal" class="iconspayment" />
<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/payments_icons/visa.png" alt="visa" title="visa" class="iconspayment" />
<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/payments_icons/mastercard.png" alt="mastercard" title="mastercard" class="iconspayment" /></div>
</div>
<div id="powered">
<div class="left">
<?php echo $powered; ?> 
</div>
<div class="right">
<a href="http://websiteskin.com" target="_blank">WebSiteSkin.com</a> <a href="http://readigo.com" target="_blank">ReadiGo.com</a> <a href="http://technograde.ru" target="_blank">Technograde.ru</a> <br>
Our partner <a href="http://share.payoneer-affiliates.com/a/clk/5MqZXQ" target="_blank" alt="Get paid faster - your wayEkaterina Kopytina recommends the Payoneer Prepaid Debit MasterCard® Card. Sign up now and earn $25*" title="Get paid faster - your wayEkaterina Kopytina recommends the Payoneer Prepaid Debit MasterCard® Card. Sign up now and earn $25*">Payoneer</a> 
</div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>
</body></html>