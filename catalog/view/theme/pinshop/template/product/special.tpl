<?php echo $header; ?>
<div class="container container2">
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

        if (!isset($_GET["filter_name"])) $_GET["filter_name"] = '';
        if (!isset($_GET["filter_tag"])) $_GET["filter_tag"] = '';
        if (!isset($_GET["filter_description"])) $_GET["filter_description"] = '';
        if (!isset($_GET["filter_sub_category"])) $_GET["filter_sub_category"] = '';
        if (!isset($_GET["manufacturer_id"])) $_GET["manufacturer_id"] = '';
        if (!isset($_GET["sort"])) $_GET["sort"] = 'p.date_added';
        if (!isset($_GET["order"])) $_GET["order"] = 'DESC';    
        $category = 0;
        ?>
        <nav id="page-nav">
                <a href='index.php?route=common/pagination&c=<?php echo $category;?>&special=1&sort=<?php echo $_GET["sort"];?>&order=<?php echo $_GET["order"];?>&filter_name=<?php echo $_GET["filter_name"];?>&filter_tag=<?php echo $_GET["filter_tag"];?>&filter_description=<?php echo $_GET["filter_description"];?>&filter_sub_category=<?php echo $_GET["filter_sub_category"];?>&filter_manufacturer_id=<?php echo $_GET["manufacturer_id"];?>&order=<?php echo $order;?>&order=<?php echo $order;?>&p=2'></a>
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