<div id="banner<?php echo $module; ?>" class="banner banner-inline">
  <?php foreach ($banners as $banner) { ?>
  <?php if ($banner['link']) { ?>
  <div><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a>
  <?php } else { ?>
  <div><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />  <?php } ?>
<div class="banner-caption">
<h4><?php echo $banner['title']; ?></h4>
<span class="btn btn-primary"><a href="<?php echo $banner['link']; ?>">More info...</a></span>
</div>
  <?php } ?>
</div>
</div>
<script type="text/javascript"><!--

var banner = function() {
	$('#banner<?php echo $module; ?>').cycle({
		before: function(current, next) {
			$(next).parent().height($(next).outerHeight());
		}
	});
}

setTimeout(banner, 2000);
//--></script>