$(document).ready ->
	jQuery ->
		$("a.fancybox").fancybox()
	jQuery ->
	  $('.local-nav a').pjax('[data-pjax-container]', {timeout: 10000})
	