<?php echo $header; ?>
<div id="content" class="container"><div class="doublepad"><?php echo $content_top; ?>

  <div class="pagetitle marbot"><?php echo $heading_title; ?></div>
  <table class="table orders">
  <thead>
    <tr>
        <td><?php echo str_replace(':','',$text_order); ?></td>
        <td><?php echo str_replace(':','',$text_size); ?></td>
        <td><?php echo str_replace(':','',$text_name); ?></td>
        <td class="customer"><?php echo str_replace(':','',$text_date_added); ?></td>
        <td><?php echo str_replace(':','',$text_remaining); ?></td>
        <td></td>
    </tr>
  </thead>
  <tbody>
  <?php $num=0; foreach ($downloads as $download) { $num++; ?>
  <tr class="numtr<?php if ($num%2 == 0) echo "odd"; else echo "even";?>">
  <td><?php echo $download['order_id']; ?></td>
  <td><?php echo $download['size']; ?></td>
  <td><?php echo $download['name']; ?></td>
  <td class="customer"><?php echo $download['date_added']; ?></td>
  <td><?php echo $download['remaining']; ?></td>
  <td class="download-info">
        <?php if ($download['remaining'] > 0) { ?>
        <a href="<?php echo $download['href']; ?>"><i class="icon-save icon-large"></i></a>
        <?php } ?>
   </td>
   </tr>
  <?php } ?>
  </tbody>
  </table>
  <div class="pagination"><?php echo $pagination; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>