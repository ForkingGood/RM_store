<?php echo $header; ?>
<div id="content" class="container"><div class="doublepad"><?php echo $content_top; ?>
  <div class="pagetitle marbot"><?php echo $heading_title; ?></div>

  <table class="table orders">
  <thead>
    <tr>
        <td><?php echo str_replace(':','',$text_return_id); ?></td>
        <td><?php echo str_replace(':','',$text_status); ?></td>
        <td class="customer"><?php echo str_replace(':','',$text_date_added); ?></td>
        <td><?php echo str_replace(':','',$text_order_id); ?></td>
        <td><?php echo str_replace(':','',$text_customer); ?></td>
        <td></td>
    </tr>
  </thead>
  <tbody>
  
  
  
  <?php if ($returns) { ?>
  <?php $num=0; foreach ($returns as $return) { $num++;?>
  <tr class="numtr<?php if ($num%2 == 0) echo "odd"; else echo "even";?>">
    <td class="return-id">#<?php echo $return['return_id']; ?></td>
    <td class="return-status"><?php echo $return['status']; ?></td>
    <td class="customer"><?php echo $return['date_added']; ?></td>
    <td><?php echo $return['order_id']; ?></td>
    <td><?php echo $return['name']; ?></td>
    <td><a href="<?php echo $return['href']; ?>"><i class="icon-info-sign icon-large"></i></a></div>
  </tr>
  <?php } ?>
  
  </tbody>
  </table>
  
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
  <div class="buttons">
    <div class="alcent"><a href="<?php echo $continue; ?>" class="button colorback"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>