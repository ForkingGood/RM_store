<?php echo $header; ?>
<div id="content" class="container"><div class="doublepad"><?php echo $content_top; ?>
  <div class="pagetitle marbot"><?php echo $heading_title; ?></div>
  <form class="window" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div class="content"><br/><br/>
      <table class="table form">
      
        <tr>
          <td><?php echo $entry_newsletter; ?></td>
          <td><?php if ($newsletter) { ?>
            <input type="radio" name="newsletter" value="1" checked="checked" />
            <?php echo $text_yes; ?>&nbsp;
            <input type="radio" name="newsletter" value="0" />
            <?php echo $text_no; ?>
            <?php } else { ?>
            <input type="radio" name="newsletter" value="1" />
            <?php echo $text_yes; ?>&nbsp;
            <input type="radio" name="newsletter" value="0" checked="checked" />
            <?php echo $text_no; ?>
            <?php } ?></td>
        </tr>
      </table>
    </div>
    <div class="buttons">
      <div class="alleft butmodify"><a href="<?php echo $back; ?>" class="button_normal colorback"><?php echo $button_back; ?></a></div>
      <div class="alright"><input type="submit" value="<?php echo $button_continue; ?>" class="button_normal colorback" /></div>
    </div>
  </form>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>