$(function(){
	$(document).on("turbolinks:load", function(){
		var nav = $(".nav");
		$("li", nav)
		.mouseover(function(e){
			$("ul",this).stop().slideDown("fast");
			var select = $(this).children(".select")[0];
			$(select).toggleClass("select_a");
		})
		.mouseout(function(e){
			$("ul", this).stop().slideUp("fast");
			var select = $(this).children(".select")[0];
			$(select).toggleClass("select_a");
		});
	})
})
