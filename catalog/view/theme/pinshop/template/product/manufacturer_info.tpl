<?php echo $header; ?>
<div class="container">
<?php echo $content_top; ?>
    <?php 
    $noshow = false;
    if (!$products) { 
        $text = $text_empty;
        $noshow = true;
    } else {
        $text = "";}
    ?>
    <div style="margin:0 auto;">
    <div class="categorytitle"><?php echo $heading_title; ?> 
    
        <?php if (!$noshow) { ?>
            <div class="btn-group inline">
            <a data-toggle="dropdown" href="#">
                <div class="reorder colorback"><i class="icon-th"></i></div>
            </a>
            <ul class="dropdown-menu">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <li rel="<?php echo $sorts['href']; ?>"><a href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a></li>
            <?php } else { ?>
            <li rel="<?php echo $sorts['href']; ?>"><a href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a></li>
            <?php } ?>
            <?php } ?>
            </ul>
            </div>
            </div>
        <?php } else { ?>
            </div>
            <br/>
            <div class="row-fluid alcent noprod ">
                <i class="icon-bullhorn bigcircle colorbackwhite"></i>
                <span><?php //echo $text;
                ?></span></div>
                
            </div>
            
            
        
        
        <?php } ?>
    
    <div id="pinboard">
    
                <?php echo $special_block; 
                ?>
        </div>
        <?php 

        if (!isset($this->request->get['filter_name'])) $filter_name = ''; else $filter_name = $this->request->get['filter_name'];
        if (!isset($this->request->get['filter_tag'])) $filter_tag = ''; else $filter_tag = $this->request->get['filter_tag'];
        if (!isset($this->request->get['filter_description'])) $filter_description = ''; else $filter_description = $this->request->get['filter_description'];
        if (!isset($this->request->get['filter_sub_category'])) $filter_sub_category = ''; else $filter_sub_category = $this->request->get['filter_sub_category'];
        if (!isset($this->request->get['manufacturer_id'])) $manufacturer_id = ''; else $manufacturer_id = $this->request->get['manufacturer_id'];
        if (!isset($this->request->get['sort'])) $sort = 'p.date_added'; else $sort = $this->request->get['sort'];
        if (!isset($this->request->get['order'])) $order = 'DESC'; else $order = $this->request->get['order']; 
        $category = 0;
        ?>
        <nav id="page-nav">
                <a href='index.php?route=common/pagination&c=<?php echo $category;?>&sort=<?php echo $sort;?>&order=<?php echo $order;?>&filter_name=<?php echo $filter_name;?>&filter_tag=<?php echo $filter_tag;?>&filter_description=<?php echo $filter_description;?>&filter_sub_category=<?php echo $filter_sub_category;?>&filter_manufacturer_id=<?php echo $manufacturer_id;?>&p=2'></a>
        </nav>
    </div>
</div>


<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';

						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.cookie('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
						
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
		$.cookie('display', 'grid');
	}
}

view = $.cookie('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 
<?php echo $footer; ?>