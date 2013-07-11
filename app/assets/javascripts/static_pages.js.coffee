$(document).ready ->
	jQuery ->
    $("a.fancybox").fancybox()
	jQuery ->
    $(document).pjax('a', '[data-pjax-container]')
	