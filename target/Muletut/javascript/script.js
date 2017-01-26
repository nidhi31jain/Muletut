$(function() {
	/*************Sidebar*****************/
	$("div#main-content aside div ul li a").click(function() {
		$("div#main-content aside div ul li").removeClass("active");
		$("div#main-content aside div ul li a").css({
			"color" : "#000"
		});
		$(this).css({
			"color" : "#0077b5"
		});
		$(this).parent().addClass("active");
		$id = $(this).parent().id();
		loadFile(id);
	})
	/*************Load File*************/
	function loadFile(id){
		$("div#main-content div#post div#post-area div3post-content").load("src/main/resources/"+id+".html");
	}
	/*************Scroll****************/
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