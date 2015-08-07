// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
// $(document).ready(function() {
// 	$('.slider').slick({
// 		arrows: false
// 	});
// });

var slick = function() {
	$('.slider').slick({
		arrows: false
	});
};

$(document).on('page:change', function() {
	$('<img src="/images/logo_text.svg">').appendTo($('.caption-1'))
	$("<h1>Visit the store.. prints... something</h1>").appendTo($('.caption-2'))
	slick()	
});
