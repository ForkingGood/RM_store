<div id="content" class="row-fluid home-slider">
<?php $bannercount = 0; ?>
  <div id="slideshow<?php echo $module; ?>" class="carousel slide bs-carousel<?php echo $module; ?>" >
  <div class="carousel-inner">
    <?php foreach ($banners as $banner) { ?>
<div class="item<?php if ( $bannercount == 0 ) { echo ' active'; } ?>">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="See more information" /></a>
<span class="btn btn-primary"><a href="<?php echo $banner['link']; ?>">More info...</a></span>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="See more information" />
<span class="btn btn-primary"><a href="#">More info...</a></span>
    <?php } ?>
                <div class="carousel-caption">
                  <h2><?php echo $banner['title']; ?></h2>
                </div>
  </div>
<?php $bannercount = $bannercount + 1; ?>
    <?php } ?>
  </div>
<a class="carousel-control left" href="#slideshow<?php echo $module; ?>" data-slide="prev">&lsaquo;</a>
<a class="carousel-control right" href="#slideshow<?php echo $module; ?>" data-slide="next">&rsaquo;</a>
</div>

</div>
<script type="text/javascript"><!--
// $('.carousel').carousel();
/******
$('#slideshow<?php echo $module; ?>').on('slide.bs.carousel', function () {
});
*****/ 
    $('.bs-carousel<?php echo $module; ?>').carousel();
--></script>

