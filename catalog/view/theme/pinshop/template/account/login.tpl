<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><i id="closeicon" onclick="$(this).parent().fadeOut('fast');" class="icon-remove padleft handpoint flright"></i></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="success"><?php echo $error_warning; ?><i id="closeicon" onclick="$(this).parent().fadeOut('fast');" class="icon-remove padleft handpoint flright"></i></div>
<?php } ?>

<div id="container" class="container">
<div class="doublepad"><?php echo $content_top; ?>
  <div class="pagetitle"><?php echo $heading_title; ?></div>
  <div class="login-content row-fluid">

    <div class="span6 window">
      <div class="subtitle"><?php echo $text_returning_customer; ?></div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="content">
          <p><?php echo $text_i_am_returning_customer; ?></p>
          <b><?php echo $entry_email; ?></b><br />
          <input type="text" name="email" value="<?php echo $email; ?>" />
          <br />
          <br />
          <b><?php echo $entry_password; ?></b><br />
          <input type="password" name="password" value="<?php echo $password; ?>" />
          <br />
          <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
          <br />
          
          <input type="submit" value="<?php echo $button_login; ?>" class="button_normal colorback" />
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
        </div>
      </form>
    </div>
    <div class="span6 window">
      <div class="subtitle"><?php echo $text_new_customer; ?></div>
      <div class="content">
        <p><b><?php echo $text_register; ?></b></p>
        <p><?php echo $text_register_account; ?></p>
        <p><a href="<?php echo $register; ?>" class="button colorback"><?php echo $button_continue; ?></a></p></div>
    </div>
  </div>
</div>
</div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>