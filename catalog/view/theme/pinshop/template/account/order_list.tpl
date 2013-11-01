<?php echo $header; ?>
<div id="content" class="container"><div class="doublepad"><?php echo $content_top; ?>
  <div class="pagetitle marbot"><?php echo $heading_title; ?></div>
  <?php if ($orders) { ?>
  <table class="table orders">
  <thead>
        <td><?php echo str_replace(':','',$text_order_id); ?></td>
        <td><?php echo str_replace(':','',$text_status); ?></td>
        <td class="added"><?php echo str_replace(':','',$text_date_added); ?></td>
        <td class="products"><?php echo str_replace(':','',$text_products); ?></td>
        <td class="customer"><?php echo str_replace(':','',$text_customer); ?></td>
        <td><?php echo str_replace(':','',$text_total); ?></td>
        <td></td>
      </tr>
  </thead>
  <?php $num=0; foreach ($orders as $order) { $num++; ?>
  <tr class="numtr<?php if ($num%2 == 0) echo "odd"; else echo "even";?>">
      <td><?php echo $order['order_id']; ?></td>
      <td><?php echo $order['status']; ?></td>
      <td class="added"><?php echo $order['date_added']; ?></td>
      <td class="products"><?php echo $order['products']; ?></td>
      <td class="customer"><?php echo $order['name']; ?></td>
      <td><?php echo $order['total']; ?></td>
      <td><div class="order-info"><a href="<?php echo $order['href']; ?>"><i class="icon-search icon-large"></i></a>&nbsp;&nbsp;<a href="<?php echo $order['reorder']; ?>"><i class="icon-repeat icon-large"></i></a></td>
    
  </tr>
  <?php } ?>
  </table>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div></div>
<?php echo $footer; ?>