var masonry = function() {
	var $grid = $('.grid').masonry({
		itemSelector: '.grid-item',
		columnWidth: '.grid-sizer',
		percentPosition: true
	});
	$grid.imagesLoaded().progress( function() {
  	$grid.masonry('layout');
	});
};



$(document).on('page:change', function () {
	masonry();
	// $('.search-box').attr("placeholder", "&#x26;")
});