<?php

$mainLayout = file_get_contents('http://localhost:1234/RM/');
echo $mainLayout;

// some little settings
$themename="pinshop";
$header=true;
$url = HTTP_SERVER;
if (isset($_SERVER["HTTPS"]) && ($_SERVER["HTTPS"] == "on")) {$url = str_replace("http://","https://",$url);}
if (isset($_SERVER["HTTPS"]) && ($_SERVER["HTTPS"] == "on")) $protocol = "https://"; else $protocol = "http://";
?>
<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $url;?><?php echo $link['rel']; ?>" />
<?php } ?>

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $url;?><?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<!-- Twitter bootstrap 2.1.0 -->
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/bootstrap/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/bootstrap/css/bootstrap.min.css" />
<!-- end of bootstrap parts-->
<!-- main theme CSS -->
<!--  <link rel="stylesheet" type="text/css" href="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/stylesheet/stylesheet_olda.css" />-->
<link rel="stylesheet" type="text/css" href="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/stylesheet/color.php" />
<!-- end of main theme CSS -->
<!-- Fonts -->
<link href='<?php echo $protocol; ?>fonts.googleapis.com/css?family=Open+Sans:300,600&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/fonts/font-awesome.css">
<!-- end of fonts-->
<!-- jQuery parts -->
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/common.js"></script>
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/jquery.ui.totop.min.js"></script>
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/easing.js"></script>
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/jquery.masonry.min.js"></script>
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/jquery.infinitescroll.min.js"></script>
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/jquery.imagesloaded.min.js"></script>
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/modernizr-transitions.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/assist/jquery/tabs.js"></script>
<!-- end of jQuery parts -->

<!-- bootstrap assets-->
<script type="text/javascript">
$('.dropdown-toggle').dropdown();
$(function ()  
{ $(".sharer").popover({placement:'top',trigger:'click',html:'true'});  
 
}); 
$(function(){
    /* jQuery Masonry by David DeSandro 
        more info http://masonry.desandro.com/ */
    var $container = $('#pinboard');
 
    $container.imagesLoaded(function(){
      $container.masonry({
      
        itemSelector: '.item',
        columnWidth: 233
      });
    });
    /* Infinite scroll by Paul Irish - http://paulirish.com/
    http://www.infinite-scroll.com/
    */
    $container.infinitescroll({
      navSelector  : '#page-nav',    
      nextSelector : '#page-nav a', 
      itemSelector : '.item',
      animate      : false,
      loading: {
          msgText: '<i class="icon-time icnloading colorfront"></i>',
          finishedMsg: '<i class="icon-ok-circle icnloading colorfront"></i>',
          img: ''
        }
      },
      
      // trigger Masonry as a callback
      function( newElements ) {
        var $newElems = $( newElements ).css({ opacity: 0 });
        $newElems.imagesLoaded(function(){
          $newElems.animate({ opacity: 1 });
          $container.masonry( 'appended', $newElems, true );
        });
      }
    );

  }); 
</script>
<!-- -->


<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
<div class="navbar navbar-fixed-top topbar">
  <div class="navbar-inner ">
    <div class="container container2">
        <a class="logo" href="<?php echo $home; ?>"><img src="<?php echo $url;?>catalog/view/theme/<?php echo $themename;?>/images/blank_logo.png" width="139" height="35"/></a>
        <div class="pull-right colorback" id="headerunder"></div>
        <div class="pull-right topcart colorback" id="header"><?php echo $cart; ?></div>

        <div class="topmenu">
 
            <div class="dropdown">
            
            <a class="dropdown-toggle padright" data-toggle="dropdown" href="#">Categories &nbsp;<i class="icon-sort-down icon-up"></i></a>
            <?php if ($categories) { ?>
              <ul class="dropdown-menu dropdown-menu-customwidth" role="menu" aria-labelledby="dLabel">
                <?php foreach ($categories as $category) { ?>
                <li class="<?php if ($category['children']) echo "dropdown-submenu"; ?>"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                  <?php if ($category['children']) { ?>
                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <ul class="dropdown-menu dropdown-menu-customwidth">
                      <?php $j = $i + ceil(count($category['children']) / 1); ?>
                      <?php for (; $i < $j; $i++) { ?>
                      <?php if (isset($category['children'][$i])) { ?>
                      <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                      <?php } ?>
                      <?php } ?>
                    </ul>
                    <?php } ?>
                  <?php } ?>
                </li>
                <?php } ?>
              </ul>
            <?php } ?>  
            <a href="<?php echo $wishlist; ?>" id="wishlist-total" class="padright    "><?php echo $text_wishlist; ?></a>
            <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
            <?php if ($currency != "") {?> 
            <div class="btn-group little-select">
              <a class="btn-mini colorback " data-toggle="dropdown" href="#"><?php 
              $a = (int)strpos($currency,"<b>")+3;
              $b = (int)strpos($currency,"</b>");
              $output = substr($currency,$a,$b-$a);
              echo $output; ?></a>
              <ul class="dropdown-menu">
                  <?php echo $currency; ?>
              </ul>
            </div>
            <?php } ?>
            <?php if ($language != "") {?> 
            <div class="btn-group little-select">
              <a class="btn-mini colorback " data-toggle="dropdown" href="#"><i class="icon-globe icon-large langminiicon"></i></a>
              <ul class="dropdown-menu">
                  <?php echo $language; ?>
              </ul>
            </div>
            <?php } ?>
            
            
            
            
            </div>
        </div>
    </div>
  </div>
</div>
<div class="navbar navbar-static-top menubar responsive-menu">
  <div class="navbar-inner">   
        <div class="dropdown">
            
            <a class="dropdown-toggle padright" data-toggle="dropdown" href="#">Categories &nbsp;<i class="icon-sort-down icon-up"></i></a>
            <?php if ($categories) { ?>
              <ul class="dropdown-menu dropdown-menu-customwidth" role="menu" aria-labelledby="dLabel">
                <?php foreach ($categories as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                  <?php if ($category['children']) { ?>
                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <li class="divider"></li>
                      <?php $j = $i + ceil(count($category['children']) / 1); ?>
                      <?php for (; $i < $j; $i++) { ?>
                      <?php if (isset($category['children'][$i])) { ?>
                      <li class="<?php if ($category['children']) echo "m-sub"; ?>"><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                      <?php } ?>
                      <?php } ?>
                    <li class="divider"></li>
                    <?php } ?>
                  <?php } ?>
                </li>
                <?php } ?>
              </ul>
            <?php } ?>  
            <a href="<?php echo $wishlist; ?>" id="wishlist-total" class="padright"><?php echo $text_wishlist; ?></a>
            <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
            <?php if ($currency != "") {?> 
            <div class="btn-group little-select">
              <a class="btn-mini colorback " data-toggle="dropdown" href="#"><?php 
              $a = (int)strpos($currency,"<b>")+3;
              $b = (int)strpos($currency,"</b>");
              $output = substr($currency,$a,$b-$a);
              echo $output; ?></a>
              <ul class="dropdown-menu">
                  <?php echo $currency; ?>
              </ul>
            </div>
            <?php } ?>
            <?php if ($language != "") {?> 
            <div class="btn-group little-select">
              <a class="btn-mini colorback " data-toggle="dropdown" href="#"><i class="icon-globe icon-large langminiicon"></i></a>
              <ul class="dropdown-menu">
                  <?php echo $language; ?>
              </ul>
            </div>
            <?php } ?>
        </div>    
  </div>
</div>
<div class="navbar navbar-static-top menubar">
  <div class="navbar-inner">   
    <div class="container container2">
        <div id="welcome" class="pull-right">
            <?php if (!$logged) { ?>
            <?php echo $text_welcome; ?>
            <?php } else { ?>
            <?php echo $text_logged; ?>
            <?php } ?>
        </div>
        <div id="header">
            <div id="search" class="pull-left firstsearch">

                <div class="input-prepend"><span class="add-on handpoint" id="buttn-search"><i class="icon-search icon-large icon-top"></i></span><input type="text" class="form-search" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" /></div>
            </div>
        </div>
    </div>
  </div>
</div>
<div class="navbar navbar-static-top menubar responsive-search">
  <div class="navbar-inner">   
    <div class="container container2">
        <div id="header" align="center">
            <div id="search" class="pull-left fullwidth nopad5">
                <div class="input-prepend"><span class="add-on handpoint" id="buttn-search-res"><i class="icon-search icon-large icon-top"></i></span><input type="text" class="form-search" name="filter_name2" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" /></div>

            </div>
        </div>
    </div>
  </div>
</div>
<div class="afterheader"></div>
<div id="notification"></div>

<div id="container">