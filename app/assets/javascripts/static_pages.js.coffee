$(document).ready ->
	$("nav ul li").mouseenter ->
		$(@).css("background", "rgba(255, 51, 51, .8)")
	$("nav ul li").mouseleave ->
		$(@).css("background", "rgba(255, 51, 51, 0)")
