$(document).ready ->
	mainwidth = $("header").width()
	$("body").css("height", $("body").outerHeight() + 400)
	$("#cover"	).css("left", (mainwidth- $("#cover"	).width())/2)
	$("#vid"		).css("left", (mainwidth - $("#vid"		).width())/2)
	$("#home").css("height", $("#model").outerHeight()+540)
