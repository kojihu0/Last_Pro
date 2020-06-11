/**
 * common.js
 */
$(function(){
	$("#mainSlider").slick({
		fade: true,
		prevArrow: ".main-slide-section .arrow-prev",
		nextArrow: ".main-slide-section .arrow-next",
	});
	
	$("#mainSlider").on('afterChange', function(slick, currentSlide){
		gsap.to('.tw-el', 0.8, {left:0 , ease:Power3.easeInOut, delay: 0.5});
	});
	$("#mainSlider").on('beforeChange', function(slick, currentSlide){
		gsap.to('.tw-el', 0.1, {clearProps: "all"});
	});
	$("#courseCarousel").slick({
		slidesToShow: 4,
		prevArrow: ".best-section .arrow-prev",
		nextArrow: ".best-section .arrow-next",
	});
	
	$("#newsCarousel").slick({
		slidesToShow: 3,
		prevArrow: ".news-section .arrow-prev",
		nextArrow: ".news-section .arrow-next",
	});
	
	var isVisible = true;
	gsap.defaults({overwrite: 'auto'});
	var t1 = gsap.timeline({ paused: true })
	.to("#site-header", {
		duration: 0.3,
		opacity: 0,
		yPercent: -95 }, "-=1")
	.to("#site-header", {
		duration: 0.3,
		opacity: 1,
		yPercent: 0,
	})

	function show() { //헤더보이기
		if (!isVisible) {
			t1.progress(1);
			isVisible = true;
		}
	}

	function hide() { //헤더 숨기기
		if (isVisible) {
			t1.play(0);
			isVisible = false;
		}
	}

	function refresh() {
	console.log(scrollY);
		if (scrollY > 30) {
			$('#site-header').addClass('sticky-header');
			hide();
		}
		else if (scrollY < 30) {
			show();
			$('#site-header').removeClass('sticky-header');
		}
	}

	$("html,body").on("mousewheel DOMMouseScroll'", refresh);
	refresh();
});