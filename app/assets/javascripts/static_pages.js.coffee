$(document).ready ->
	mainwidth = $("header").width()
	$("body").css("height", $("body").outerHeight() + 400)
	$(".center").css("width", $(window).width() - 100)
	$("#cover"	).css("left", (mainwidth- $("#cover"	).width())/2)
	$("#vid"		).css("left", (mainwidth - $("#vid"		).width())/2)
	$("section p").css("width", mainwidth - 670)