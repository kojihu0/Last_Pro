/**
 * course detail
 */
$(function(){
	function stickyTabNav() {
		if (scrollY < 500) {
			$("#stickyNav").removeClass('sticky-nav');
		}
		else {
			$("#stickyNav").addClass('sticky-nav');
		}
	}

	/*별점*/
	$('#stars li').on('mouseover', function(){
    	var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on
   
    	// Now highlight all the stars that's not after the current hovered star
    	$(this).parent().children('li.star').each(function(e){
      		if (e < onStar) {
        		$(this).addClass('hover');
      		}
      		else {
        		$(this).removeClass('hover');
      		}
    	});
    
	}).on('mouseout', function(){
	    $(this).parent().children('li.star').each(function(e){
	    	$(this).removeClass('hover');
		});
	});
	
	/* 2. Action to perform on click */
	$('#stars li').on('click', function(){
		var form = $(this).parents('.courese-review-form');
	    var onStar = parseInt($(this).data('value'), 10); //현재 선택된 별점
	    form.find('input[name=review_rank]').val(onStar);
	    var stars = $(this).parent().children('li.star');
	    
	    for (i = 0; i < stars.length; i++) {
	      $(stars[i]).removeClass('selected');
	    }
	    
	    for (i = 0; i < onStar; i++) {
	      $(stars[i]).addClass('selected');
	    }
	});
	
	//위시리스트
	$(document).on('click', 'a.add-wishlist', function(e){
		e.preventDefault();
		console.log($(this).attr('data-wish_status'));
		$.ajax({
			url:$(this).data('action'),
			data: {
				course_no: $(this).data('course_no'),
				wish_status: $(this).attr('data-wish_status'),
			},
			success: function(result){
				console.log(result);
				var jsonData = JSON.parse(result);
				alert(jsonData.msg);
				var wish_status = jsonData.wish_status;
				console.log(wish_status);
				$('a.add-wishlist').attr('data-wish_status', wish_status);
				if(wish_status == 'remove'){
					$('a.add-wishlist').addClass('added-this');
				}else{
					$('a.add-wishlist').removeClass('added-this');
				}
			},
			error: function(e){
				console.log(e.responseText);
			}
		});
		
	});
	
	//탭
	if(location.hash.length>0){
		$('#'+location.hash.replace('#', '')).addClass('active');
		$('html,body').scrollTop($('.course-comment-list').offset().top-95);
	}
	
	$('.course-tab-nav .tab-item a').on('click', function(e){
		e.preventDefault();
        
        var tabIdx=$(this).parent().data('nav-idx');
        $('html,body').animate({
            scrollTop: $("#courseContent").offset().top-95
        });

        $('.course-tab-nav .tab-item').removeClass('active');
        $('.course-tab-content .tab-content-item').removeClass('active');

        $(this).parent().addClass('active');
        $('.course-tab-nav li[data-nav-idx='+tabIdx+']').addClass('active');
        $($(this).attr('href')).addClass('active');
    });
	
	$("html,body").on("mousewheel DOMMouseScroll'", stickyTabNav);
	stickyTabNav();
	
	$(".modifyReview").on('click', function(e){
		e.preventDefault();
		var review_no=$(this).data('review_no');
		$('.modify-review-'+review_no).toggleClass('hidden');
	});
	
	$('.review-modify-form').on('submit', function(e){
		e.preventDefault();
		var flag;
		$(this).find('input, textarea').each(function(){
			if($(this).val()==""){
				flag=false;
				return false;
			}
		});
		if(flag==false){
			return false;
		}
		$.ajax({
			url:$(this).attr('action'),
			type: 'POST',
			data: $(this).serialize(),
			success: function(result){
				console.log(result);
				var jsonData = JSON.parse(result);
				alert(jsonData.msg);
				var review_no = jsonData.review_no;
				var review_rank = jsonData.review_rank;
				var review_content = jsonData.review_content;
				$('.modify-review-'+review_no).addClass('hidden');
				$('.review_rank-'+review_no).attr('data-review_rank', review_rank);
				$('.review_rank-'+review_no).html('');
				$('.review_content-'+review_no).text(review_content);
				for(var i=1; i<=5; i++){
					if(i<=review_rank){
						$('.review_rank-'+review_no).append('<i class="xi-star"></i>');
					}
					else{
						$('.review_rank-'+review_no).append('<i class="xi-star-o"></i>');
					}
				}
			},
			error: function(e){
				console.log(e.responseText);
			}
		});
	});
	function deleteReview(review_no){
		
	}
});