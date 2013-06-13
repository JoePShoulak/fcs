$(document).ready ->
	$("body").css("height", $("body").outerHeight() + 400)
	$(".center").css("width", $(window).width() - 100)
	$("#cover").css("left", ($("header").width() - $("#cover").width())/2)
	$("#vid").css("left", ($("section").width() - $("#vid").width())/2)
