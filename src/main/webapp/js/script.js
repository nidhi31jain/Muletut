$(function() {
	mapURL();
	/** ************URL mapping************** */
	function mapURL() {
		var url = $(location).attr("href");
		var file = url.split("/")[4].split("#")[0]
		MenuSettings(url, file);
		var newColors = [ "#7e3878", "#00aba9", "#b91d47", "#ff66c2" ];
		if (file == "index.html" || file == "" || file == "cloudhub.html") {
			var path = url.includes("#") ? url.split("#")[1] : "";
			var thisVar = "";
			var indexOfItem = "";
			if (path != "") {
				thisVar = $("div#main-content aside div ul li a[href='#"
						+ path + "']");
				indexOfItem = $(thisVar).parent().index();
			}
			alert(path+","+thisVar+","+indexOfItem);
			loadFile(path, thisVar, indexOfItem);
			miscFunctions();
		} else if (file == "blog.html") {
			$("html, body").attr('style', 'background: #fff !important')
			$("#mule-menu-button").hide();
			setColor(newColors);
		} else if (file == "about.html" || file == "error.html"
				|| document.body.contains(document.getElementById("code"))) {
			$("#mule-menu-button").hide();
			$("#main").css('overflow', 'hidden')
		} else {
			setColor(newColors);
			loadPost();
		}
		scroll();
	}

	/** ***********Load Post************ */
	function loadPost() {
		var title = $("div#main-content-single div#post-area h2.title").text();
		var newColors = [ "#7e3878", "#00aba9", "#b91d47", "#ff66c2" ];
		var rand = Math.floor(Math.random() * newColors.length);
		$("div#main-content-single div#post-area div#heading").css(
				'background', newColors[rand]);
		var request = $.ajax({
			url : "post.html",
			type : "GET",
			data : {
				title : title.toLowerCase()
			},
			cache : false,
			beforeSend : function() {
			},
			success : function(data) {
				$("div#main-content-single div#post-content").html(data);
				if ($("div#post-content .post-code").length != 0) {
					$("div#post-content .post-code").each(function(index) {
						Prism.highlightElement($(".post-code")[index]);
					})
				}
				gapi.comments.render('comments', {
					href : window.location,
					first_party_property : 'BLOGGER',
					view_type : 'FILTERED_POSTMOD'
				});
			},
			error : function() {
			}
		})
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
				setNextPreviousLinks(indexOfItem);
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
	function setNextPreviousLinks(indexOfItem) {
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

	function miscFunctions() {
		/** ***********Clicking Sidebar Link**************** */
		$("div#main-content aside div ul li a").click(function() {
			var titleOfItem = $(this).attr("href").substring(1);
			var indexOfItem = $(this).parent().index();
			loadFile(titleOfItem, this, indexOfItem);
		})
		/** ************Change Previous Link************ */
		$("div#post ul.pager li.previous").click(function() {
			changePreviousLink(this);
		})
		/** ************Change Next Link************ */
		$("div#post ul.pager li.next").click(function() {
			changeNextLink(this);
		})
	}

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

	/** ************Function for Menu Settings************** */
	function MenuSettings(url, file) {
		if (file != "") {
			$("header nav#navbar-header ul#nav-menu li.active").removeClass(
					"active");
			$("header nav#navbar-header ul#nav-menu li a[href='" + file + "']")
					.parent().addClass("active");
		}
	}

	function setColor(colors) {
		$("div#main ul #posts").each(function() {
			var rand = Math.floor(Math.random() * colors.length);
			$(this).css('background', colors[rand]);
		})
	}

	/** ***********Scroll*************** */
	function scroll() {
		$("a#scroll-up").hide();
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
			}, 800);
			return false;
		});
	}
})