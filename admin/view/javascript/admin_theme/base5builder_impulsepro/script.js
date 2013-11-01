$(document).ready(function(){


	/* Set Canvas Width & Height */

	function setCanvasWidth(){
		// Statistics - Line Graph
		var salesCustomerChartWidth = $(".statistic .dashboard-content #report").width();

		$("#sales-customer-graph").attr("width", salesCustomerChartWidth);

		// Overview - Pie Chart
		var salesValueChartWidth = $(".overview .sales-value-graph").width();
		var salesValueChartHeight = $(".overview .dashboard-overview-top").height();

		if(salesValueChartWidth > 0){
			if(salesValueChartWidth >= salesValueChartHeight){
				// set canvas height and width of canvas to salesValueChartHeight
				$("#sales-value-graph").attr("height", salesValueChartHeight).attr("width", salesValueChartHeight);
			}else{
				// set canvas height and width of canvas to salesValueChartWidth
				$("#sales-value-graph").attr("height", salesValueChartWidth).attr("width", salesValueChartWidth);
			}
		}
	}


	var waitForFinalEvent = (function () {
		var timers = {};
		return function (callback, ms, uniqueId) {
			if (!uniqueId) {
				uniqueId = "Don't call this twice without a uniqueId";
			}
			if (timers[uniqueId]) {
				clearTimeout (timers[uniqueId]);
			}
			timers[uniqueId] = setTimeout(callback, ms);
		};
	})();

	function generateUniqueString(){
		var text = "";
		var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

		for( var i=0; i < 5; i++ )
			text += possible.charAt(Math.floor(Math.random() * possible.length));

		return text;
	}


	/* Set Canvas Width & Height - Continued */


	var graphExists = $("#sales-customer-graph").height();

	if(graphExists > 0){
		setCanvasWidth();
	}


	/* Plot Sales/Customer Graph */

	// Get Graph Data
	(function(fn){
		if (!fn.map) fn.map=function(f){var r=[];for(var i=0;i<this.length;i++)r.push(f(this[i]));return r}
		if (!fn.filter) fn.filter=function(f){var r=[];for(var i=0;i<this.length;i++)if(f(this[i]))r.push(this[i]);return r}
	})(Array.prototype);

	function getSalesChart(range) {
		// Get the token Var from URL
		var split = location.search.replace('?','').split('&').map(function(val){
			return val.split('=');
		});

		$.ajax({
			type: 'GET',
			url: 'index.php?route=common/home/chart&token=' + split[1][1] + '&range=' + range,
			dataType: 'json',
			async: false,
			success: function(json) {

				var chartLabel = [];
				var chartCustomer = [];
				var chartOrder = [];

				$.each(json.xaxis, function(index,value){
					chartLabel.push(value[1]);
				});

				$.each(json.customer["data"], function(index,value){
					chartCustomer.push(value[1]);
				});

				$.each(json.order["data"], function(index,value){
					chartOrder.push(value[1]);
				});

				var lineChartData = {
					labels : chartLabel,
					datasets : [
					{
						fillColor : "rgba(159, 255, 94,0.6)",
						strokeColor : "rgba(130, 209, 77,1)",
						pointColor : "rgba(130, 209, 77,1)",
						pointStrokeColor : "#fff",
						data : chartCustomer
					},
					{
						fillColor : "rgba(200,204,227,0.5)",
						strokeColor : "rgba(147,155,203,1)",
						pointColor : "rgba(151,187,205,1)",
						pointStrokeColor : "#fff",
						data : chartOrder
					}
					]
				}

				var globalGraphSettings = {animation : Modernizr.canvas};

				var myLine = new Chart(document.getElementById("sales-customer-graph").getContext("2d")).Line(lineChartData, globalGraphSettings);
			}
		});
	}

if(graphExists > 0){
		// Plot it, Baby!
		getSalesChart($('#range').val());
	}


	// Get New Data Range

	$("#range").change(function(){

		var graphRange = $('#range').val();

		getSalesChart(graphRange);

	});


	/* Plot Sales/Amount/Value Graph (Pie Chart) */

	function getSalesValueChart(){

		var salesTotal = parseFloat($("#total_sale_raw").val());
		var salesThisYear = parseFloat($("#total_sale_year_raw").val());
		var salesPreviousYears = parseFloat($("#total_sales_previous_years_raw").val());

		var pieData = [
			{
				value: salesThisYear,
				color:"#69D2E7"
			},
			{
				value : salesPreviousYears,
				color : "#F38630"
			}	
		]

		var globalGraphSettings = {animation : Modernizr.canvas};

		new Chart(document.getElementById("sales-value-graph").getContext("2d")).Pie(pieData, globalGraphSettings);
	}

	if(graphExists > 0){

		getSalesValueChart();
	}


	var currentWindowWidth = $(window).width();

	$(window).resize(function () {
		waitForFinalEvent(function(){

			if($(this).width() != currentWindowWidth){

				currentWindowWidth = $(window).width();

				if(graphExists > 0){
					setCanvasWidth();
					getSalesChart($('#range').val());
					getSalesValueChart();
				}
			}





		}, 500, generateUniqueString());
	});


	/* Main Nav Accordion */

	$(".mainnav").accordion({
		accordion:false,
		speed: 500,
		closedSign: '<img src="view/image/admin_theme/base5builder_impulsepro/dropdown-arrow.png">',
		openedSign: '<img src="view/image/admin_theme/base5builder_impulsepro/dropdown-arrow.png">'
	});


	/*  Main Nav - Close Other Open Menus. Augment to Accordion Script */

	function menuOpen(width){

		$("#left-column").animate({"width": width + "px"},300);

		$("#content").animate({"margin-left": width + "px"},300);

		if($(window).width() <= 480){

			$(".right-header-content").css("visibility","hidden");
			$("ul.mainnav li").css("display", "block");
			$("ul.mainnav li#menu-control").css("padding-bottom", "45px");
		}else{
			$("#content").animate({"margin-left": width + "px"},300);
		}

		$(".right-header-content").animate({"margin-left": width + "px"},300);

		$("ul.mainnav > li > a").css("font-size","14px");
		$("ul.mainnav li a > span").css("display","inline");

		$(".sidebar.copyright").css("display","block");

		$("ul.mainnav li#menu-control .menu-control-outer").addClass("opened");
	}

	function menuClose(width){

		$("ul.mainnav li a.parent,ul.mainnav li a.top").parent().siblings().find("ul").slideUp();

		$("#left-column").animate({"width": width + "px"},300);

		if($(window).width() <= 480){

			$(".right-header-content").css("visibility","visible");
			$("#content").animate({"margin-left": "0px"},300);
			$("ul.mainnav li#menu-control").css("padding-bottom", "0");

			$("ul.mainnav li").css("display", "none");
			$("ul.mainnav li#menu-control").css("display", "block");
		}else{
			$("#content").animate({"margin-left": width + "px"},300);
		}

		$(".right-header-content").animate({"margin-left": width + "px"},300);
		

		$("ul.mainnav > li > a").css("font-size","0");
		$("ul.mainnav li a > span").css("display","none");

		$(".sidebar.copyright").css("display","none");

		$("ul.mainnav li#menu-control .menu-control-outer").removeClass("opened");
	}

	$("ul.mainnav li a.parent,ul.mainnav li a.top").click(function(){
		menuOpen();
		$(this).parent().siblings().find("ul").slideUp();
	});

	$("li#menu-control").click(function(){

		var leftColumnWidth = $("#left-column").width();
		var browserWidth = $(window).width();

		if(leftColumnWidth == 73){
			menuOpen("223");
		}else{
			menuClose("73");
		}

	});



	/* Main Nav - Highlight Active Menu Item */

	function getURLVar(urlVarName) {
		var urlHalves = String(document.location).toLowerCase().split('?');
		var urlVarValue = '';

		if (urlHalves[1]) {
			var urlVars = urlHalves[1].split('&');

			for (var i = 0; i <= (urlVars.length); i++) {
				if (urlVars[i]) {
					var urlVarPair = urlVars[i].split('=');

					if (urlVarPair[0] && urlVarPair[0] == urlVarName.toLowerCase()) {
						urlVarValue = urlVarPair[1];
					}
				}
			}
		}

		return urlVarValue;
	} 

	route = getURLVar('route');
	
	if (!route) {
		$('#dashboard').addClass('selected');
	} else {
		part = route.split('/');
		
		url = part[0];
		
		if (part[1]) {
			url += '/' + part[1];
		}
		
		$('a[href*=\'' + url + '\']').parents('li[id]').addClass('selected');
	}


	/*  Main Nav - Change Arrow Image */

	$("ul.mainnav li.selected a span img").attr("src","view/image/admin_theme/base5builder_impulsepro/dropdown-arrow-active.png");



	/* Add Class To Save/Insert/Delete... etc */

	var buttonExists = $(".buttons .button").height();

	if(buttonExists > 0){

		function getURLVars(urlVarName, getActionURL) {
			
			if(getActionURL == undefined){
				var getActionURL = '?';
			}
			var urlHalves = getActionURL.toLowerCase().split('?');
			var urlVarValue = '';

			if (urlHalves[1]) {
				var urlVars = urlHalves[1].split('&');

				for (var i = 0; i <= (urlVars.length); i++) {
					if (urlVars[i]) {
						var urlVarPair = urlVars[i].split('=');

						if (urlVarPair[0] && urlVarPair[0] == urlVarName.toLowerCase()) {
							urlVarValue = urlVarPair[1].split("/");
						}
					}
				}
			}

			return urlVarValue;
		}
		
		$(".buttons .button").each(function(){

			// first get the "href", then break it up to find the "key" term, like "insert", "delete", etc

			var getHrefFull = $(this).attr("href");

			var getAttrFull = $(this).attr("onclick");

			var getCancelButton = getURLVars("route",getHrefFull);

			if(getHrefFull != undefined){

				if(getHrefFull.indexOf("/insert&") > 0){

					$(this).addClass("insert");

				}else if(getHrefFull.indexOf("/copy&") > 0){

					$(this).addClass("copy");

				}else if((getCancelButton[0] && !getCancelButton[2]) || (getHrefFull.indexOf("/cancel&") > 0)){

					$(this).addClass("cancel");

				}else if(getHrefFull.indexOf("/delete&") > 0){

					$(this).addClass("delete");

				}else if(getHrefFull.indexOf("/repair&") > 0){

					$(this).addClass("repair");

				}

			}else{

				var getFormAction = $("#form").attr("action");
				var formAction = getURLVars("route",getFormAction);

				// Strip jargon from "onclick" data
				var toRemove = "location = '";
				var cleanAttr = getAttrFull.replace(toRemove,'');

				var toRemove = "';";
				var getAttr = cleanAttr.replace(toRemove,'');

				var getCancelButton = getURLVars("route",getHrefFull);

				// check if attr contains certain keywords
				if(getAttr.indexOf("/insert&") > 0){

					$(this).addClass("insert");

				}else if(((getAttr.indexOf("('#form').submit()") > 0) && (formAction[2] == 'delete')) || ((getAttr.indexOf("('form').submit()") > 0) && (formAction[2] == 'delete'))){

					if(getAttr.indexOf("/copy&") > 0){
						$(this).addClass("copy");
					}else{

						$(this).addClass("delete");
					}

				}else if(((getAttr.indexOf("('#form').submit()") > 0) && (formAction[2] == 'insert')) || ((getAttr.indexOf("('#form').submit()") > 0) && (formAction[2] == 'update')) || ((getAttr.indexOf("('#form').submit()") > 0) && (formAction[2] == 'save')) || ((getAttr.indexOf("('#form').submit()") > 0) && (!formAction[2])) || (getAttr.indexOf("/approve&") > 0) ){

					if(getAttr.indexOf("/delete&") > 0){

						$(this).addClass("delete");
					}else if(getAttr.indexOf("/invoice&") > 0){

						$(this).addClass("invoice");
					}else{

						$(this).addClass("save");
					}

				}else if((getCancelButton[0] && !getCancelButton[2]) || (getAttr.indexOf("/cancel&") > 0)){

					$(this).addClass("cancel");
				}else if(getAttr.indexOf("/copy&") > 0){

					$(this).removeClass("cancel");
					$(this).addClass("copy");

				}else if(getAttr.indexOf("/delete&") > 0){

					$(this).addClass("delete");
				}else if(getAttr.indexOf("('#restore').submit()") > 0){

					$(this).addClass("restore");
				}else if(getAttr.indexOf("('#backup').submit()") > 0){

					$(this).addClass("backup");
				}
			}

		});
	}


	/* Add Tab Arrows - Horizontal */

	$("<img src='view/image/admin_theme/base5builder_impulsepro/tab-arrow-green.png' class='arrow'>").prependTo("#tabs.htabs a.selected,#htabs.htabs a.selected");
	$("<img src='view/image/admin_theme/base5builder_impulsepro/tab-arrow-dark-grey.png' class='arrow'>").prependTo("#tabs.htabs a:not(.selected),#htabs.htabs a:not(.selected)");

	$("#tabs.htabs a,#htabs.htabs a").on("click",function(){
		$("#tabs.htabs a,#htabs.htabs a").find("img.arrow").remove();
		$("<img src='view/image/admin_theme/base5builder_impulsepro/tab-arrow-green.png' class='arrow'>").prependTo(this);
		$("<img src='view/image/admin_theme/base5builder_impulsepro/tab-arrow-dark-grey.png' class='arrow'>").prependTo("#tabs.htabs a:not(.selected),#htabs.htabs a:not(.selected)");
	});


	/* Add Tab Arrows - Vertical */

	$("<img src='view/image/admin_theme/base5builder_impulsepro/vtab-arrow-green.png' class='arrow'>").appendTo(".vtabs a.selected");
	$("<img src='view/image/admin_theme/base5builder_impulsepro/vtab-arrow-dark-grey.png' class='arrow'>").appendTo(".vtabs a:not(.selected)");

	$(".vtabs a").on("click",function(){
		$(".vtabs a").find("img.arrow").remove();
		$("<img src='view/image/admin_theme/base5builder_impulsepro/vtab-arrow-green.png' class='arrow'>").appendTo(this);
		$("<img src='view/image/admin_theme/base5builder_impulsepro/vtab-arrow-dark-grey.png' class='arrow'>").appendTo(".vtabs a:not(.selected)");
	});

});