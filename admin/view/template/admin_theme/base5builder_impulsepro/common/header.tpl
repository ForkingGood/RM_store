<?php echo '<?xml version="1.0" encoding="UTF-8"?>' . "\n"; ?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">
<head>
	<meta charset="utf-8">
	<title><?php echo $title; ?></title>
	<base href="<?php echo $base; ?>" />
	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } ?>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>

	<!-- Le styles -->
	<link href="view/stylesheet/admin_theme/base5builder_impulsepro/bootstrap.css" rel="stylesheet" media="screen">
	<link href="view/stylesheet/admin_theme/base5builder_impulsepro/style.css" rel="stylesheet">
	<link href="view/stylesheet/admin_theme/base5builder_impulsepro/bootstrap-responsive.css" rel="stylesheet">
	<link href="view/stylesheet/admin_theme/base5builder_impulsepro/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
	<link href="view/javascript/admin_theme/base5builder_impulsepro/ui/themes/custom-theme/jquery-ui-1.10.3.custom.css" rel="stylesheet" type="text/css"/>
	  <!--[if IE 7]>
	  <link href="view/stylesheet/admin_theme/base5builder_impulsepro/style-ie7.css" rel="stylesheet">
	  <![endif]-->
	  <!--[if IE 8]>
	  <link href="view/stylesheet/admin_theme/base5builder_impulsepro/style-ie8.css" rel="stylesheet">
	  <![endif]-->
	<script type="text/javascript" src="view/javascript/admin_theme/base5builder_impulsepro/jquery.js"></script>
	<script type="text/javascript" src="view/javascript/admin_theme/base5builder_impulsepro/ui/jquery-ui-1.10.3.custom.min.js"></script>
	<script type="text/javascript" src="view/javascript/admin_theme/base5builder_impulsepro/ui/external/jquery.bgiframe-3.0.0.js"></script>
	<script type="text/javascript" src="view/javascript/admin_theme/base5builder_impulsepro/tabs.js"></script>
	<?php foreach ($styles as $style) { ?>
	<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
	<?php foreach ($scripts as $script) { ?>
	<script type="text/javascript" src="<?php echo $script; ?>"></script>
	<?php } ?>
	<?php if($this->user->getUserName()){ ?>
		<script type="text/javascript" src="view/javascript/admin_theme/base5builder_impulsepro/Chart.js"></script>
		<script type="text/javascript" src="view/javascript/admin_theme/base5builder_impulsepro/modernizr.js"></script>
		<!--[if lte IE 8]>
		<script type="text/javascript" src="view/javascript/admin_theme/base5builder_impulsepro/excanvas.js"></script>
		<![endif]-->
	<?php } ?>
	<script type="text/javascript">
	$(document).ready(function(){

		// Signin - Button

		$(".form-signin-body-right input").click(function(){
			$(".form-signin").submit();
		});

		// Signin - Enter Key

		$('.form-signin input').keydown(function(e) {
			if (e.keyCode == 13) {
				$('.form-signin').submit();
			}
		});

	    // Confirm Delete
	    $('#form').submit(function(){
	    	if ($(this).attr('action').indexOf('delete',1) != -1) {
	    		if (!confirm('<?php echo $text_confirm; ?>')) {
	    			return false;
	    		}
	    	}
	    });

		// Confirm Uninstall
		$('a').click(function(){
			if ($(this).attr('href') != null && $(this).attr('href').indexOf('uninstall', 1) != -1) {
				if (!confirm('<?php echo $text_confirm; ?>')) {
					return false;
				}
			}
		});
	});
	</script>

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
  <script src="view/javascript/admin_theme/base5builder_impulsepro/html5shiv.js"></script>
  <![endif]-->

  <!-- Fav and touch icons -->
  <link rel="shortcut icon" href="view/image/admin_theme/base5builder_impulsepro/favicon.png">
</head>

<body>

	<div class="container-fluid">

		<?php if ($logged) { ?>

		<div id="left-column">
			<div class="sidebar-logo">
				<a href="<?php echo $home; ?>">
					<img src="view/image/admin_theme/base5builder_impulsepro/logo.png">
				</a>
			</div>
			<div id="mainnav">
				<ul class="mainnav">
					<li id="menu-control">
						<div class="menu-control-outer">
							<div class="menu-control-inner">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</div>
						</div>
					</li>
					<li id="dashboard"><a href="<?php echo $home; ?>" class="top"><?php echo $text_dashboard; ?></a></li>
					<li id="catalog"><a class="top"><?php echo $text_catalog; ?></a>
						<ul>
							<li><a href="<?php echo $category; ?>"><?php echo $text_category; ?></a></li>
							<li><a href="<?php echo $product; ?>"><?php echo $text_product; ?></a></li>
							<li><a class="parent"><?php echo $text_attribute; ?></a>
								<ul>
									<li><a href="<?php echo $attribute; ?>"><?php echo $text_attribute; ?></a></li>
									<li><a href="<?php echo $attribute_group; ?>"><?php echo $text_attribute_group; ?></a></li>
								</ul>
							</li>
							<li><a href="<?php echo $option; ?>"><?php echo $text_option; ?></a></li>
							<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
							<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
							<li><a href="<?php echo $review; ?>"><?php echo $text_review; ?></a></li>
							<li><a href="<?php echo $information; ?>"><?php echo $text_information; ?></a></li>
						</ul>
					</li>
					<li id="extension"><a class="top"><?php echo $text_extension; ?></a>
						<ul>
							<li><a href="<?php echo $module; ?>"><?php echo $text_module; ?></a></li>
							<li><a href="<?php echo $shipping; ?>"><?php echo $text_shipping; ?></a></li>
							<li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
							<li><a href="<?php echo $total; ?>"><?php echo $text_total; ?></a></li>
							<li><a href="<?php echo $feed; ?>"><?php echo $text_feed; ?></a></li>
						</ul>
					</li>
					<li id="sale"><a class="top"><?php echo $text_sale; ?></a>
						<ul>
							<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
							<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
							<li><a class="parent"><?php echo $text_customer; ?></a>
								<ul>
									<li><a href="<?php echo $customer; ?>"><?php echo $text_customer; ?></a></li>
									<li><a href="<?php echo $customer_group; ?>"><?php echo $text_customer_group; ?></a></li>
								</ul>
							</li>
							<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
							<li><a href="<?php echo $coupon; ?>"><?php echo $text_coupon; ?></a></li>
							<li><a class="parent"><?php echo $text_voucher; ?></a>
								<ul>
									<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
									<li><a href="<?php echo $voucher_theme; ?>"><?php echo $text_voucher_theme; ?></a></li>
								</ul>
							</li>
							<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
						</ul>
					</li>
					<li id="system"><a class="top"><?php echo $text_system; ?></a>
						<ul>
							<li><a href="<?php echo $setting; ?>"><?php echo $text_setting; ?></a></li>
							<li><a class="parent"><?php echo $text_design; ?></a>
								<ul>
									<li><a href="<?php echo $layout; ?>"><?php echo $text_layout; ?></a></li>
									<li><a href="<?php echo $banner; ?>"><?php echo $text_banner; ?></a></li>
								</ul>
							</li>
							<li><a class="parent"><?php echo $text_users; ?></a>
								<ul>
									<li><a href="<?php echo $user; ?>"><?php echo $text_user; ?></a></li>
									<li><a href="<?php echo $user_group; ?>"><?php echo $text_user_group; ?></a></li>
								</ul>
							</li>
							<li><a class="parent"><?php echo $text_localisation; ?></a>
								<ul>
									<li><a href="<?php echo $language; ?>"><?php echo $text_language; ?></a></li>
									<li><a href="<?php echo $currency; ?>"><?php echo $text_currency; ?></a></li>
									<li><a href="<?php echo $stock_status; ?>"><?php echo $text_stock_status; ?></a></li>
									<li><a href="<?php echo $order_status; ?>"><?php echo $text_order_status; ?></a></li>
									<li><a class="parent"><?php echo $text_return; ?></a>
										<ul>
											<li><a href="<?php echo $return_status; ?>"><?php echo $text_return_status; ?></a></li>
											<li><a href="<?php echo $return_action; ?>"><?php echo $text_return_action; ?></a></li>
											<li><a href="<?php echo $return_reason; ?>"><?php echo $text_return_reason; ?></a></li>
										</ul>
									</li>
									<li><a href="<?php echo $country; ?>"><?php echo $text_country; ?></a></li>
									<li><a href="<?php echo $zone; ?>"><?php echo $text_zone; ?></a></li>
									<li><a href="<?php echo $geo_zone; ?>"><?php echo $text_geo_zone; ?></a></li>
									<li><a class="parent"><?php echo $text_tax; ?></a>
										<ul>
											<li><a href="<?php echo $tax_class; ?>"><?php echo $text_tax_class; ?></a></li>
											<li><a href="<?php echo $tax_rate; ?>"><?php echo $text_tax_rate; ?></a></li>
										</ul>
									</li>
									<li><a href="<?php echo $length_class; ?>"><?php echo $text_length_class; ?></a></li>
									<li><a href="<?php echo $weight_class; ?>"><?php echo $text_weight_class; ?></a></li>
								</ul>
							</li>
							<li><a href="<?php echo $error_log; ?>"><?php echo $text_error_log; ?></a></li>
							<li><a href="<?php echo $backup; ?>"><?php echo $text_backup; ?></a></li>
						</ul>
					</li>
					<li id="reports"><a class="top"><?php echo $text_reports; ?></a>
						<ul>
							<li><a class="parent"><?php echo $text_sale; ?></a>
								<ul>
									<li><a href="<?php echo $report_sale_order; ?>"><?php echo $text_report_sale_order; ?></a></li>
									<li><a href="<?php echo $report_sale_tax; ?>"><?php echo $text_report_sale_tax; ?></a></li>
									<li><a href="<?php echo $report_sale_shipping; ?>"><?php echo $text_report_sale_shipping; ?></a></li>
									<li><a href="<?php echo $report_sale_return; ?>"><?php echo $text_report_sale_return; ?></a></li>
									<li><a href="<?php echo $report_sale_coupon; ?>"><?php echo $text_report_sale_coupon; ?></a></li>
								</ul>
							</li>
							<li><a class="parent"><?php echo $text_product; ?></a>
								<ul>
									<li><a href="<?php echo $report_product_viewed; ?>"><?php echo $text_report_product_viewed; ?></a></li>
									<li><a href="<?php echo $report_product_purchased; ?>"><?php echo $text_report_product_purchased; ?></a></li>
								</ul>
							</li>
							<li><a class="parent"><?php echo $text_customer; ?></a>
								<ul>
									<li><a href="<?php echo $report_customer_order; ?>"><?php echo $text_report_customer_order; ?></a></li>
									<li><a href="<?php echo $report_customer_reward; ?>"><?php echo $text_report_customer_reward; ?></a></li>
									<li><a href="<?php echo $report_customer_credit; ?>"><?php echo $text_report_customer_credit; ?></a></li>
								</ul>
							</li>
							<li><a class="parent"><?php echo $text_affiliate; ?></a>
								<ul>
									<li><a href="<?php echo $report_affiliate_commission; ?>"><?php echo $text_report_affiliate_commission; ?></a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li id="help"><a class="top"><?php echo $text_help; ?></a>
						<ul>
							<li><a onClick="window.open('http://www.opencart.com');"><?php echo $text_opencart; ?></a></li>
							<li><a onClick="window.open('http://www.opencart.com/index.php?route=documentation/introduction');"><?php echo $text_documentation; ?></a></li>
							<li><a onClick="window.open('http://forum.opencart.com');"><?php echo $text_support; ?></a></li>
						</ul>
					</li>
				</ul>
			</div>


			<div class="sidebar copyright">
				<div class="sidebar-base5builder">
					<p>ImpulsePro Admin Template By <a href="http://base5builder.com/" target="_blank">Base5Builder.com</a>. Built with <a href="http://getbootstrap.com/" target="_blank">Bootstap</a> v2.3.2. <br>Icons by: <a href="http://iconsweets2.com/" target="_blank">iconSweets2</a></p>
				</div>
				<div class="sidebar-opencart"><?php echo $text_footer; ?></div>
			</div>
		</div>
		<div class="right-header-content clearfix">
			<div class="secondary-menu">
				<ul>
					<li id="store"><a onClick="window.open('<?php echo $store; ?>');" class="top"><?php echo $text_front; ?></a>
						<ul>
							<?php foreach ($stores as $stores) { ?>
							<li><a onClick="window.open('<?php echo $stores['href']; ?>');"><?php echo $stores['name']; ?></a></li>
							<?php } ?>
						</ul>
					</li>
					<li id="logout"><a class="top" href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
				</ul>
			</div>
			<div class="admin-info"><?php echo $logged; ?></div>
		</div>
		<?php } ?>