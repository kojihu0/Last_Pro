/**
 * common.js
 */
$(function(){
	function init_fadeAni(){
		$('.fadeIn, .fadeUp, .fadeDown, .fadeLeft, .fadeRight').each(function(idx, el){
			var $this = $(this);
			var zDuration = 1.2;
	        var zEase = 'Power4.easeInOut';
	        var yValue = 0;
	        var xValue = 0;
			var zDelay = 0;
			
			if ($this.hasClass('fadeIn')) {
	            yValue = xValue = 0;
	        } else if ($this.hasClass('fadeUp')) {
	            yValue = 20;
	        } else if ($this.hasClass('fadeDown')) {
	            yValue = -20;
	        } else if ($this.hasClass('fadeLeft')) {
	            xValue = 20;
	        } else if ($this.hasClass('fadeRight')) {
	            xValue = -20;
	        }
			
			var tween = gsap.fromTo(el, zDuration,{
								scrollTrigger: el,
								css: {
									autoAlpha: 0,
									y: yValue,
									x: xValue
								}
							},
							{
								scrollTrigger: el,
								css: {
									autoAlpha: 1,
									y: 0,
									x: 0
								},
								ease: zEase
							});
						});
	}
	
	
	$("#mainSlider").on('init', function(event, slick) {
        // let's do this after we init the banner slider
		var el = $('#mainSlider .slide-item[data-slick-index=0]');
		slideTxt(el);
    }).on('beforeChange', function(slick, currentSlide){
		var el = $('#mainSlider .slick-current');
        var eltxt = el.find(".slide_txt").children();
        gsap.set(eltxt, {
        	autoAlpha: 0,
        	y: -20
        });
	}).on('afterChange', function(slick, currentSlide){
        var el = $('#mainSlider .slick-current');
        slideTxt(el);
	}).slick({
		fade: true,
		prevArrow: ".main-slide-section .arrow-prev",
		nextArrow: ".main-slide-section .arrow-next",
		autoplay: true,
		autoplaySpeed: 10000,
	});
	
	function slideTxt(el) {
        var eltxt = el.find(".slide_txt").children();
        $.each(eltxt, function(e){
        	console.log(e);
        	var $this = $(this);
        	var delay = 500;
        	setTimeout(function() {
        		gsap.fromTo($this, 1.5, {
        			autoAlpha: 0,
        			y: -20
        		},{
        			autoAlpha: 1,
        			y: 0
        		});
        	}, e * delay);
        });
	}
	
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
		y: -95 })
	.to("#site-header", {
		duration: 0.3,
		opacity: 1,
		y: 0,
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
	init_fadeAni();
	
	/* 메뉴 모달 검색창 */
    $('#search-ico').on('click', function(e){
        e.preventDefault();
        $($(this).data('target')).fadeIn(function(){
            $(this).removeClass('hidden');
        });
    });

    $('.modal .close').on('click', function(){
        $(this).parents('.modal').fadeOut(function(){
            $(this).parents('.modal').addClass('hidden');
        });
    });

    $('input.number-only').on('keyup', function(){
        $(this).val($(this).val().replace(/[^0-9]/g,""));
    });

    /* 후원 상세페이지 */
    $('a.btn-donate').on('click', function(e){
        e.preventDefault();
        $('html,body').animate({
            scrollTop: $("#donate").offset().top
        });
    });

    $('a.add-wishlist').on('click', function(e){
        e.preventDefault();
        $(this).toggleClass('added-this');
    });

    $('.course-tab-nav .tab-item a').on('click', function(e){
        e.preventDefault();
        console.log($(this));
        $('html,body').animate({
            scrollTop: $("#courseContent").offset().top
        });

        $('.course-tab-nav .tab-item').removeClass('active');
        $('.course-tab-content .tab-content-item').removeClass('active');

        $(this).parent().addClass('active');
        $($(this).attr('href')).addClass('active');
    });
});