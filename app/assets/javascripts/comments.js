

$(document).on('page:change', function() {
	$('.rating').raty({
		path: '/raty_images',
		scoreName: 'comment[rating]'
	});
	$('.rated').raty({
		path: '/raty_images',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});
});