// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

var slick = function() {
	$('.slider').slick({
		arrows: false,
		fade: true,
		pauseOnHover: false
	});
};

$(document).on('page:update', function() {
	slick()	
	$('<img src="/images/logo_text.svg">').appendTo($('.caption-1').delay(800).animate({ opacity: 1, left: '25%' }));
	$('<a href="/products">Visit the store...</a>').appendTo($('.hero-button-1').delay(1100).animate({opacity: 1, top: '53%'}));
	$("<h1>Visit the store.. prints... something</h1>").appendTo($('.caption-2'));
	$('.fa-envelope').delay(300).animate({margin: '0px', opacity: 0});
	$('.thanks-container').delay(900).fadeIn();
});
