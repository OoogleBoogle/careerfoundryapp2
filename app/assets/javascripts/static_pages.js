// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('page:update', function() {
	$('.fa-envelope').delay(300).animate({margin: '0px', opacity: 0});
	$('.thanks-container').delay(900).fadeIn();
});
