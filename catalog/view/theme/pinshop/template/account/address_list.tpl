<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><i id="closeicon" onclick="$(this).parent().fadeOut('fast');" class="icon-remove padleft handpoint flright"></i></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="success"><?php echo $error_warning; ?><i id="closeicon" onclick="$(this).parent().fadeOut('fast');" class="icon-remove padleft handpoint flright"></i></div>
<?php } ?>
<div id="content" class="container"><div class="doublepad"><?php echo $content_top; ?>
  <div class="pagetitle marbot"><?php echo $heading_title; ?></div>


  <div class="window20">
    <h2><?php echo $text_address_book; ?></h2>
  <?php foreach ($addresses as $result) { ?>
  <div class="content">
    <table class="table">
      <tr>
        <td><?php echo $result['address']; ?></td>
        <td style="text-align: right;"><a href="<?php echo $result['update']; ?>" ><i class="icon-pencil icon-large"></i></a> &nbsp; <a href="<?php echo $result['delete']; ?>"><i class="icon-trash icon-large"></i></a></td>
      </tr>
    </table>
  </div>
  <?php } ?>
  <div class="buttons">
    <div class="alleft "><a href="<?php echo $back; ?>" class="button colorback"><?php echo $button_back; ?></a></div>
    <div class="alright"><a href="<?php echo $insert; ?>" class="button colorback"><?php echo $button_new_address; ?></a></div>
  </div>
 </div>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>