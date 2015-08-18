$(document).on('page:update', function() {
	$('.pagination').on('click', 'a', function() {
		$('.pagination').html('Loading...');
		$.get(this.href, null, null, "script");
		return false;
	});
});
