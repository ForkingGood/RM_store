<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="success"><?php echo $error_warning; ?><i id="closeicon" onclick="$(this).parent().fadeOut('fast');" class="icon-remove padleft handpoint flright"></i></div>
<?php } ?>
<div id="content" class="container"><div class="doublepad"><?php echo $content_top; ?>
  <div class="pagetitle marbot"><?php echo $heading_title; ?></div>
  <form class="window" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <h2><?php echo $text_your_details; ?></h2>
    <div class="content">
      <table class="form">
        <tr>
          <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
          <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
            <?php if ($error_firstname) { ?>
            <span class="error colorfront"><?php echo $error_firstname; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
          <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
            <?php if ($error_lastname) { ?>
            <span class="error colorfront"><?php echo $error_lastname; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_email; ?></td>
          <td><input type="text" name="email" value="<?php echo $email; ?>" />
            <?php if ($error_email) { ?>
            <span class="error colorfront"><?php echo $error_email; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
          <td><input type="text" name="telephone" value="<?php echo $telephone; ?>" />
            <?php if ($error_telephone) { ?>
            <span class="error colorfront"><?php echo $error_telephone; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><?php echo $entry_fax; ?></td>
          <td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
      <div class="alleft butmodify"><a href="<?php echo $back; ?>" class="button_normal colorback"><?php echo $button_back; ?></a></div>
      <div class="alright">
        <input type="submit" value="<?php echo $button_continue; ?>" class="button_normal colorback" />
      </div>
    </div>
  </form>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>