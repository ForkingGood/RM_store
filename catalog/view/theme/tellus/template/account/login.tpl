<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="box">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="maincontent">
  <h1><?php echo $heading_title; ?></h1>
  <div class="login-content clearafter">
    <div class="left">
      <h2><?php echo $text_new_customer; ?></h2>
      <div class="content">
        <p><strong><?php echo $text_register; ?></strong></p>
        <p><?php echo $text_register_account; ?></p>
      </div>
      <div class="buttons">
        <div class="right">
        <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a></div>
      </div>
    </div>
    <div class="right">
      <h2><?php echo $text_returning_customer; ?></h2>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="content">
          <p class="clearafter"><strong><?php echo $text_i_am_returning_customer; ?></strong></p>
          <p class="clearafter">
          <strong><?php echo $entry_email; ?></strong>
          <input type="text" name="email" value="<?php echo $email; ?>" />
          </p>
          <p class="clearafter">
          <strong><?php echo $entry_password; ?></strong>
          <input type="password" name="password" value="<?php echo $password; ?>" />
          </p>
        </div>
          <div class="buttons">
          <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
		  <div class="right">
          <button type="submit" class="button"><?php echo $button_login; ?></button>
		  </div>
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
        </div>
      </form>
    </div>
  </div>
  </div>
  </div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>