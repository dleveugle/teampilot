function toggleMenus(){
    $(".menu-toggle").toggleClass('open');
    $(".menu-round").toggleClass('open');
	$(".menu-line").toggleClass('open');
}
$(".menu-toggle" ).click(function() {
	toggleMenus();
});
