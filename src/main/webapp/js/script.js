$(function() {
	mapURL();
	/** ************URL mapping************** */
	function mapURL() {
		var file = $(location).attr("href").split("/")[4].split("#")[0]
		if(file == "blog.html"){
			$("html, body").attr('style', 'background: #fff !important')
			HTMLSettings();			
		} else if (file == "about.html"){
			HTMLSettings();			
		} else {
			var path = $(location).attr("href").split("#")[1];
			if (path != null) {
				var thisVar = $("div#main-content aside div ul li a[href='#" + path
						+ "']");
				var indexOfItem = $(thisVar).parent().index();
				HTMLSettings();
				loadFile(path, thisVar, indexOfItem);
			}
			if (typeof path == "undefined") {
				HTMLSettings();
				loadFile("", "", "");
			}			

		}
	}

	/** ***********Load File************ */
	function loadFile(titleOfItem, thisVar, indexOfItem) {
		if (titleOfItem == "" || thisVar == "") {
			thisVar = $("div#main-content aside div ul li").first().find('a');
			titleOfItem = $(thisVar).attr("href").substring(1);
			indexOfItem = 0;
		}
		var request = $.ajax({
			url : "tut.html",
			type : "GET",
			data : {
				title : titleOfItem.toLowerCase()
			},
			cache : false,
			beforeSend : function() {
				var winHeight = $(window).height();
				var headerHeight = $("div#main header").height();
				var articleAreaWidth = $("div#main-content div#post").width();
				var loaderHeight = winHeight - headerHeight
				$(".loader").css({
					'height' : loaderHeight,
					'width' : articleAreaWidth
				});
				// $(".loader").show();
			},
			success : function(data) {
				// $(".loader").hide();
				$("div#main-content aside div ul li").removeClass("active");
				$("div#main-content aside div ul li a").css({
					"color" : "#000"
				});
				$(thisVar).css({
					"color" : "#0077b5"
				});
				$(thisVar).parent().addClass("active");
				$("div#post div#post-area h2.title").attr("id", indexOfItem)
				$("div#post div#post-area h2.title").text(
						titleOfItem.replace(/-/g, " "));
				$("div#post-content").html(data);
				setLinks(indexOfItem);
				if ($("div#post-content .post-code").length != 0) {
					$("div#post-content .post-code").each(function(index) {
						Prism.highlightElement($(".post-code")[index]);
					})
				}
			},
			error : function() {
			}
		})

	}

	/** ************ Setting links to next and previous buttons*************** */
	function setLinks(indexOfItem) {
		var totalCount = $("div#main-content aside div ul li").length - 1;
		var indexOfNext = "";
		var indexOfPrevious = "";
		var previousLink = "";
		var nextLink = "";
		if (indexOfItem != 0) {
			indexOfPrevious = indexOfItem - 1;
		}
		if (indexOfItem < totalCount) {
			indexOfNext = parseInt(indexOfItem) + 1;
		}
		if (indexOfPrevious != "" || indexOfItem > 0) {
			previousLink = $("div#main-content aside div ul li").eq(
					indexOfPrevious).find("a").attr("href").substring("1");
		}
		if (indexOfNext != "") {
			nextLink = $("div#main-content aside div ul li").eq(indexOfNext)
					.find("a").attr("href").substring("1");
		}
		$("div#post ul.pager li.next a").attr("href", "#" + nextLink)
		$("div#post ul.pager li.previous a").attr("href", "#" + previousLink)

	}

	/** ***********Sidebar Link**************** */
	$("div#main-content aside div ul li a").click(function() {
		setSidebarLinks(this);
	})

	/** ***********Function to Set Sidebar Link**************** */
	function setSidebarLinks(thisVar) {
		var titleOfItem = $(thisVar).attr("href").substring(1);
		var indexOfItem = $(thisVar).parent().index();
		loadFile(titleOfItem, thisVar, indexOfItem);
	}

	/** ************Change Previous Link************ */
	$("div#post ul.pager li.previous").click(function() {
		changePreviousLink(this);
	})

	/** ************Function to change Previous Link************ */
	function changePreviousLink(thisVar) {
		var idOfHeading = $(thisVar).parent().parent().find("h2.title").attr(
				"id");
		if (idOfHeading == 0) {
			alert("Sorry")
		} else {
			var indexOfPreviousItem = idOfHeading - 1;
			var thisVar = $("div#main-content aside div ul li").eq(
					indexOfPreviousItem).find("a");
			var titleOfItem = $(thisVar).attr("href").substring("1");
			loadFile(titleOfItem, thisVar, indexOfPreviousItem);
		}
	}

	/** ************Change Next Link************ */
	$("div#post ul.pager li.next").click(function() {
		changeNextLink(this);
	})

	/** ************Function to Change Next Link************ */
	function changeNextLink(thisVar) {
		var idOfHeading = $(thisVar).parent().parent().find("h2.title").attr(
				"id");
		var totalCount = $("div#main-content aside div ul li").length - 1;
		if (idOfHeading == totalCount) {
			alert("Sorry")
		} else {
			var indexOfNextItem = parseInt(idOfHeading) + 1;
			var thisVar = $("div#main-content aside div ul li").eq(
					indexOfNextItem).find("a");
			var titleOfItem = $(thisVar).attr("href").substring("1");
			loadFile(titleOfItem, thisVar, indexOfNextItem);
		}
	}

	/** ************Function for HTML Settings************** */
	function HTMLSettings() {
		var file = $(location).attr("href").split("#")[0].split("/")[4];
		if (file != "") {
			$("header nav#navbar-header ul#nav-menu li.active").removeClass(
					"active");
			$("header nav#navbar-header ul#nav-menu li a[href='" + file + "']")
					.parent().addClass("active");
			if (file == "about.html" || file == "error.html") {
				$("#main").css('overflow', 'hidden')
			} else if (file == "blog.html") {
				var colors = [ "#99b433", "#00a300", "#1e7145", "#ff0097",
						"#9f00a7", "#7e3878", "#00aba9", "#ffc40d", "#e3a21a",
						"#da532c", "#ee1111", "#b91d47", "#673AB7" ];
				var newColors = [ "#7e3878", "#00aba9", "#b91d47", "#0077b5", "#ff66c2"];
				setColor(newColors);
				$("div#main-content-blog div#posts-container #posts").hover(function(){
					var color = $(this).css('background');
					var rgbValue = color.substring(0, parseInt(color.indexOf(")"))+1);
				}, function(){
					
				})
				// gapi.comments.render('comments', {
				// href: window.location,
				// first_party_property: 'BLOGGER',
				// view_type: 'FILTERED_POSTMOD'
				// });

			}
		}
	}

	function setColor(colors) {
		$("div#main-content-blog div#posts-container #posts").each(
				function() {
					var rand = Math.floor(Math.random() * colors.length);
					$(this).css('background', colors[rand]);
				})
	}

	/** ***********Scroll*************** */
	$("a#scroll-up").hide();
	$(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 100) {

				$('a#scroll-up').fadeIn();
			} else {
				$('a#scroll-up').fadeOut();
			}
		});
		$('a#scroll-up').click(function() {
			$('body,html').animate({
				scrollTop : 0
			}, 100);
			return false;
		});
	});
})