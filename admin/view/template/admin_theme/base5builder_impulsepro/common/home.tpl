<?php echo $header; ?>
<div id="content">
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<?php if ($error_install) { ?>
	<div class="warning"><?php echo $error_install; ?></div>
	<?php } ?>
	<?php if ($error_image) { ?>
	<div class="warning"><?php echo $error_image; ?></div>
	<?php } ?>
	<?php if ($error_image_cache) { ?>
	<div class="warning"><?php echo $error_image_cache; ?></div>
	<?php } ?>
	<?php if ($error_cache) { ?>
	<div class="warning"><?php echo $error_cache; ?></div>
	<?php } ?>
	<?php if ($error_download) { ?>
	<div class="warning"><?php echo $error_download; ?></div>
	<?php } ?>
	<?php if ($error_logs) { ?>
	<div class="warning"><?php echo $error_logs; ?></div>
	<?php } ?>
	<div class="box">
		<div class="heading">
			<h1><img src="view/image/admin_theme/base5builder_impulsepro/icon-dashboard-large.png" alt="" /> <?php echo $heading_title; ?></h1>
		</div>
		<div class="content">
			<div class="dashboard-top">
				<div class="statistic">
					<div class="range clearfix">
						<div class="range-label"><?php echo $entry_range; ?></div>
						<select id="range">
							<option value="day"><?php echo $text_day; ?></option>
							<option value="week"><?php echo $text_week; ?></option>
							<option value="month"><?php echo $text_month; ?></option>
							<option value="year"><?php echo $text_year; ?></option>
						</select>
					</div>
					<div class="dashboard-heading"><?php echo $text_statistics; ?></div>
					<div class="dashboard-content">
						<div class="sales-customer-legend clearfix">
							<div class="sales-customer-legend-box stat-1">
								<div class="sales-customer-legend-color">
									<div class="legend-color-box"></div>
								</div>
								<div class="sales-customer-legend-text"><?php echo $text_total_order; ?></div>
							</div>
							<div class="sales-customer-legend-box stat-2">
								<div class="sales-customer-legend-color">
									<div class="legend-color-box"></div>
								</div>
								<div class="sales-customer-legend-text"><?php echo $text_total_customer; ?></div>
							</div>
						</div>
						<div id="report">
							<canvas id="sales-customer-graph" height="222" width="518"></canvas>
						</div>
					</div>
				</div>
				<div class="overview">
					<div class="dashboard-heading"><?php echo $text_overview; ?></div>
					<div class="dashboard-content">
						<div class="dashboard-overview-top clearfix">
							<div class="sales-value-graph">
								<input id="total_sale_raw" type="hidden" value="<?php echo substr($total_sale_raw, 0, -2); ?>"/>
								<input id="total_sale_year_raw" type="hidden" value="<?php echo substr($total_sale_year_raw, 0, -2); ?>"/>
								<input id="total_sales_previous_years_raw" type="hidden" value="<?php echo $total_sales_previous_years_raw; ?>"/>
								<canvas id="sales-value-graph" height="104" width="104"></canvas>
							</div>
							<div class="sales-value-legend">
								<div class="sales-this-year">
									<div class="number-stat-legend-color">
										<div class="legend-color-box"></div>
									</div>
									<div class="number-stat-number"><?php echo $total_sale_year; ?></div>
									<div class="number-stat-text"><?php echo $text_total_sale_year; ?></div>
								</div>
								<div class="sales-previous-years">
									<div class="number-stat-legend-color">
										<div class="legend-color-box"></div>
									</div>
									<div class="number-stat-number"><?php echo $total_sales_previous_years; ?></div>
									<div class="number-stat-text"><?php echo $text_total_sales_previous_years; ?></div>
								</div>
								<div class="sales-total">
									<div class="number-stat-legend-color">
										<div class="legend-color-box"></div>
									</div>
									<div class="number-stat-number"><?php echo $total_sale; ?></div>
									<div class="number-stat-text"><?php echo $text_total_sale; ?></div>
								</div>
							</div>
						</div>
						<div class="dashboard-overview-bottom clearfix">
							<div class="number-stat-box stat-1">
								<div class="number-stat-number"><?php echo number_format($total_order); ?></div>
								<div class="number-stat-text"><?php echo $text_total_order; ?></div>
							</div>
							<div class="number-stat-box stat-2">
								<div class="number-stat-number"><?php echo number_format($total_customer); ?></div>
								<div class="number-stat-text"><?php echo $text_total_customer; ?></div>
							</div>
							<div class="number-stat-box stat-3">
								<div class="number-stat-number"><?php echo number_format($total_review); ?></div>
								<div class="number-stat-text"><?php echo $text_total_review; ?></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="dashboard-bottom">
				<div class="latest">
					<div class="dashboard-heading"><?php echo $text_latest_10_orders; ?></div>
					<div class="dashboard-content">
						<table class="list">
							<thead>
								<tr>
									<td class="right"><?php echo $column_order; ?></td>
									<td class="left"><?php echo $column_customer; ?></td>
									<td class="left"><?php echo $column_status; ?></td>
									<td class="left"><?php echo $column_date_added; ?></td>
									<td class="right"><?php echo $column_total; ?></td>
									<td class="right"><?php echo $column_action; ?></td>
								</tr>
							</thead>
							<tbody>
								<?php if ($orders) { ?>
								<?php foreach ($orders as $order) { ?>
								<tr>
									<td class="right"><?php echo $order['order_id']; ?></td>
									<td class="left"><?php echo $order['customer']; ?></td>
									<td class="left"><?php echo $order['status']; ?></td>
									<td class="left"><?php echo $order['date_added']; ?></td>
									<td class="right"><?php echo $order['total']; ?></td>
									<td class="right"><?php foreach ($order['action'] as $action) { ?>
										[ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
										<?php } ?></td>
									</tr>
									<?php } ?>
									<?php } else { ?>
									<tr>
										<td class="center" colspan="6"><?php echo $text_no_results; ?></td>
									</tr>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					</div>
				</div>
				<div class="other-stats">
					<div class="dashboard-heading"><?php echo $text_other_stats; ?></div>
					<div class="dashboard-content">
						<div class="other-stats-box stat-1">
							<div class="other-stat-number"><?php echo number_format($total_customer_approval); ?></div>
							<div class="other-stat-text"><?php echo $text_total_customer_approval; ?></div>
						</div>
						<div class="other-stats-box stat-2">
							<div class="other-stat-number"><?php echo number_format($total_review_approval); ?></div>
							<div class="other-stat-text"><?php echo $text_total_review_approval; ?></div>
						</div>
						<div class="other-stats-box stat-3">
							<div class="other-stat-number"><?php echo number_format($total_affiliate); ?></div>
							<div class="other-stat-text"><?php echo $text_total_affiliate; ?></div>
						</div>
						<div class="other-stats-box stat-4">
							<div class="other-stat-number"><?php echo number_format($total_affiliate_approval); ?></div>
							<div class="other-stat-text"><?php echo $text_total_affiliate_approval; ?></div>
						</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>
<?php echo $footer; ?>