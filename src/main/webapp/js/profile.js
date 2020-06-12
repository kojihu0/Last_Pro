/*마이페이지 위시리스트 이미지 슬라이드 */
$(function(){
    $("#courseCarousel").slick({
    	slidesToShow: 3,
		prevArrow: ".best-section .arrow-prev",
		nextArrow: ".best-section .arrow-next",
	});
});

/* 메뉴 모달 검색창 */
$(function(){
	$('#login-ico').on('click', function(e){
	    e.preventDefault();
	    $($(this).data('target')).fadeIn(function(){
	        $('.loginModal').removeClass('hidden');
	    });
	});
	
	$('.xi-close').on('click', function(){
	
	    $(".xi-close").parents('.loginModal').fadeOut(function(){
	        $(".xi-close").parents('.loginModal').addClass('hidden');
	    });
	});
});

$(function(){
	$("#grade").click(function(){
		
		$("#course>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
		$("#course>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
		
		$("#grade>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
		$("#grade>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
		
		$("#courseList").css("display","none");
		$("#gradeList").css("display","block");
	});
	
	$("#course").click(function(){
		
		$("#course>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
		$("#course>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
		
		$("#grade>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
		$("#grade>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
		
		$("#courseList").css("display","block");
		$("#gradeList").css("display","none");
		
		
	});
	$("#FinalGrade").click(function(){
		
		$("#CompletionCourse>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
		$("#CompletionCourse>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
		
		$("#FinalGrade>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
		$("#FinalGrade>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
		
		$("#CompletionCourseList").css("display","none");
		$("#FinalGradeList").css("display","block");
	});
	
	$("#CompletionCourse").click(function(){
		
		$("#CompletionCourse>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
		$("#CompletionCourse>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
		
		$("#FinalGrade>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
		$("#FinalGrade>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
		
		$("#CompletionCourseList").css("display","block");
		$("#FinalGradeList").css("display","none");
	});
	
	
	
	
	
		$("#avatar").click(function(){
			
			$("#imgUpload").css("display","block");
			$("#passwordUpdate").css("display","none");
			$("#profileUpdate").css("display","none");
			
			$("#avatar>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
			$("#avatar>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
			$("#general>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
			$("#general>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
			$("#password>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
			$("#password>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
			
		});
		
		$("#password").click(function(){
		
			$("#passwordUpdate").css("display","block");
			$("#imgUpload").css("display","none");
			$("#profileUpdate").css("display","none");
			
			$("#password>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
			$("#avatar>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
			$("#general>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
			
			$("#password>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
			$("#avatar>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
			$("#general>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
			
			
		});
		
		$("#general").click(function(){
			
			$("#profileUpdate").css("display","block");
			$("#imgUpload").css("display","none");
			$("#passwordUpdate").css("display","none");
			
			$("#general>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
			$("#avatar>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
			$("#password>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
			
			$("#general>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
			$("#avatar>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
			$("#password>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
			
		
			
		});
		
		
});
