/**
 * common.js
 */
function basicFormValidate(form){
	var flag;
	$(form).find('input, textarea').each(function(){
		if($(this).val()==""){
			flag=false;
			alert('모든 항목을 입력해주세요.');
			return false;
		}
	});
	if($(form).find('#accept_policy').prop('checked')==false){
		flag=false;
		alert('약관 동의에 체크해주세요.');
	}
	
	if(flag==false){
		return false;
	}
}
$(function(){
	$('#mobileNavBtn').on('click', function(){
		$('#mobile-navigation').slideToggle();
	});
	//fade애니메이션
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
								toggleActtions:'play none none none',
								css: {
									autoAlpha: 0,
									y: yValue,
									x: xValue
								}
							},
							{
								scrollTrigger: el,
								toggleActtions:'play none none none',
								css: {
									autoAlpha: 1,
									y: 0,
									x: 0
								},
								ease: zEase
							});
						});
	}

	gsap.to(".pImage", {
	  yPercent: -50,
	  ease: "none",
	  scrollTrigger: {
	    trigger: ".pSection",
	    scrub: true
	  }, 
	});
	
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
		responsive: [
			{
				breakpoint: 768,
				settings: {
					slidesToShow: 2
				}
			},
			{
				breakpoint: 640,
				settings: {
					slidesToShow: 1
				}
			}
			
		]
	});
	
	$("#newsCarousel").slick({
		slidesToShow: 3,
		prevArrow: ".news-section .arrow-prev",
		nextArrow: ".news-section .arrow-next",
		responsive: [
			{
				breakpoint: 768,
				settings: {
					slidesToShow: 2
				}
			},
			{
				breakpoint: 640,
				settings: {
					slidesToShow: 1
				}
			}
			
		]
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
		if (scrollY > 30) {
			$('#site-header').addClass('sticky-header');
			$('#back-to-top').addClass('active');
			hide();
		}
		else if (scrollY < 30) {
			show();
			$('#site-header').removeClass('sticky-header');
			$('#back-to-top').removeClass('active');
		}
	}

	$("html,body").on("mousewheel DOMMouseScroll'", refresh);
	refresh();
	init_fadeAni();
	
	$('#back-to-top').on('click', function(e){
		e.preventDefault();
		$("html,body").animate({scrollTop: 0});
	});
	/* 메뉴 모달 검색창 */
    $('.search-ico').on('click', function(e){
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

    /**쿠키*/
	// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
	var key = getCookie("key");
	$("#grid-id").val(key); 
	
	if($("#grid-id").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
		$("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
	}
	
	$("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
		if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
			setCookie("key", $("#grid-id").val(), 7); // 7일 동안 쿠키 보관
		}else{ // ID 저장하기 체크 해제 시,
			deleteCookie("key");
		}
	});
	// ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
	$("#grid-id").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
		if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
			setCookie("key", $("#grid-id").val(), 7); // 7일 동안 쿠키 보관
		}
	});
});
function setCookie(cookieName, value, exdays){
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	document.cookie = cookieName + "=" + cookieValue;
}
function deleteCookie(cookieName){
	var expireDate = new Date();
	expireDate.setDate(expireDate.getDate() - 1);
	document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
function getCookie(cookieName) {
	cookieName = cookieName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cookieName);
	var cookieValue = '';
	if(start != -1){
		start += cookieName.length;
		var end = cookieData.indexOf(';', start);
		if(end == -1)end = cookieData.length;
		cookieValue = cookieData.substring(start, end);
	}
	return unescape(cookieValue);
}