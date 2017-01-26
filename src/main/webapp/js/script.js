$(function() {
	loadFile("", "", "");
	/** ************URL mapping************** */
	var path = $(location).attr("href").split("#")[1];
	if (path != null) {
		var thisVar = $("div#main-content aside div ul li a[href='#" + path
				+ "']");
		var indexOfItem = $(thisVar).parent().index();
		loadFile(path, thisVar, indexOfItem);
	}
	/** ***********Sidebar Link**************** */
	$("div#main-content aside div ul li a").click(function() {
		var titleOfItem = $(this).attr("href").substring(1);
		var thisVar = $(this);
		var indexOfItem = $(this).parent().index();
		loadFile(titleOfItem, thisVar, indexOfItem);
	})
	/** ************Previous Link************ */
	$("div#post ul.pager li.previous").click(
			function() {
				var idOfHeading = $(this).parent().parent().find("h2.title")
						.attr("id");
				if (idOfHeading == 0) {
					alert("Sorry")
				} else {
					var indexOfPreviousItem = idOfHeading - 1;
					var thisVar = $("div#main-content aside div ul li").eq(
							indexOfPreviousItem).find("a");
					var titleOfItem = $(thisVar).attr("href").substring("1");
					loadFile(titleOfItem, thisVar, indexOfPreviousItem);
				}
			})
	/** ************Next Link************ */
	$("div#post ul.pager li.next")
			.click(
					function() {
						var idOfHeading = $(this).parent().parent().find(
								"h2.title").attr("id");
						var totalCount = $("div#main-content aside div ul li").length - 1;
						if (idOfHeading == totalCount) {
							alert("Sorry")
						} else {
							var indexOfNextItem = parseInt(idOfHeading) + 1;
							var thisVar = $("div#main-content aside div ul li")
									.eq(indexOfNextItem).find("a");
							var titleOfItem = $(thisVar).attr("href")
									.substring("1");
							loadFile(titleOfItem, thisVar, indexOfNextItem);
						}
					})

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
				$(".loader").css({'height': loaderHeight , 'width': articleAreaWidth});
//				$(".loader").show();
			},
			success : function(data) {
//				$(".loader").hide();
				$("div#main-content aside div ul li").removeClass("active");
				$("div#main-content aside div ul li a").css({
					"color" : "#000"
				});
				$(thisVar).css({
					"color" : "#0077b5"
				});
				$(thisVar).parent().addClass("active");
				$("div#post div#post-area h2.title").attr("id", indexOfItem)
				$("div#post div#post-area h2.title").text(titleOfItem);
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