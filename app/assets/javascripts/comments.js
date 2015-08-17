

$(document).on('page:change', function() {
	$('.rating').raty({
		path: '/assets',
		scoreName: 'comment[rating]'
	});
	$('.rated').raty({
		path: '/assets',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});
});