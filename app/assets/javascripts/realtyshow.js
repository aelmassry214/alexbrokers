'use strict';

$(function () {


	// configuration
	var width = 250;
	var animationSpeed = 1000;
	var pause = 3000;
	var currentSlide = 1;

	// caching DOM
	var $slider = $('#showSlider');
	var $slideContainer = $slider.find('.showSlides');
	var $slides = $slideContainer.find('.showSlide');


	setInterval(function () {
		$slideContainer.animate({
			marginLeft: '-=' + width
		}, animationSpeed, function () {
			if (++currentSlide === $slides.length) {
				currentSlide = 1;
				$slideContainer.css('margin-left', 0);
			}
		});
	}, pause);

	console.log($slides.length);

});
