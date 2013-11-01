<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="success"><?php echo $error_warning; ?><i id="closeicon" onclick="$(this).parent().fadeOut('fast');" class="icon-remove padleft handpoint flright"></i></div>
<?php } ?>
<div id="content" class="container"><div class="doublepad"><?php echo $content_top; ?>
  <div class="pagetitle marbot"><?php echo $heading_title; ?></div>
  <form class="window" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <p><?php echo $text_email; ?></p>
    <h2><?php echo $text_your_email; ?></h2>
    <div class="content">
      <table class="form">
        <tr>
          <td><?php echo $entry_email; ?></td>
          <td><input type="text" name="email" value="" /></td>
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