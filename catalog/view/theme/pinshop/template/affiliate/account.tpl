<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><i id="closeicon" onclick="$(this).parent().fadeOut('fast');" class="icon-remove padleft handpoint flright"></i></div>
<?php } ?>
<div id="content" class="container"><div class="doublepad"><?php echo $content_top; ?>
  <div class="pagetitle marbot"><?php echo $heading_title; ?></div>
  <div class="row-fluid">
  <div class="span4 window">
  <h2><?php echo $text_my_account; ?></h2>
  
  <div class="content">
    <ul>
      <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
      <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
      <li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
    </ul>
  </div>
  </div>
  <div class="span4 window">
  <h2><?php echo $text_my_tracking; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
    </ul>
  </div>
  </div>
  <div class="span4 window">
  <h2><?php echo $text_my_transactions; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
    </ul>
  </div>
  </div>
  </div>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>