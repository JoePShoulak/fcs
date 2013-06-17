$(document).ready ->
	mainwidth = $("header").width()
	$("#cover"	).css("left", (mainwidth - $("#cover"	).width())/2)
	$("#vid"		).css("left", (mainwidth - $("#vid"		).width())/2)
	$("#home").css("height", $("#model").outerHeight()+540)
	jQuery ->
		$("a.fancybox").fancybox()
