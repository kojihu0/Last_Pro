$(function(){
	$("#menuList a").hover(function(){
		$(this).css("color","black");
		$(this).css("text-decoration","none");
	},function(){
		$(this).children("ul").fadeOut();
		$(this).css("color","gray");
	});
	
	$("#menuList>li").hover(function(){
		$(this).children("ul").fadeIn();
	},function(){
		$(this).children("ul").fadeOut();
	});
	
	$(".subMenu a").hover(function(){
		$(this).css("color","black");
		$(this).css("text-decoration","none");
	},function(){
		$(this).css("color","gray");
	});
	  $( ".datepicker" ).datepicker({
		  showOn: "both", 
	      buttonImage: "/lms/img/calendar.png", 
	      buttonImageOnly: true,
	      changeMonth: true, 
          changeYear: true,
          nextText: '다음 달',
          prevText: '이전 달',
          showButtonPanel: true, 
          currentText: '오늘 날짜', 
          closeText: '닫기', 
          dateFormat: "yy-mm-dd",
          dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
          dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
          monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
          monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
	  });
////////////////////////////////////////////////////student_detail.jsp tab////////////////////////////////////////////////////////////
	  $("#basicInfo_tab").click(function(){
		  $("#basicInfo_tab>a").addClass("rounded-t").addClass("border-l").addClass("border-t").addClass("border-r");
		  $("#counseling_management_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#assigning_class_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#payment_status_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#attendance_absent_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#basicInfo").css("display","block");
		  $("#counseling_management").css("display","none");
		  $("#assigning_class").css("display","none");
		  $("#payment_status").css("display","none");
		  $("#attendance_absent").css("display","none");
	  });
	  
	  $("#counseling_management_tab").click(function(){
		  $("#counseling_management_tab>a").addClass("rounded-t").addClass("border-l").addClass("border-t").addClass("border-r");
		  $("#basicInfo_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#assigning_class_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#payment_status_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#attendance_absent_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#counseling_management").css("display","block");
		  $("#basicInfo").css("display","none");
		  $("#assigning_class").css("display","none");
		  $("#payment_status").css("display","none");
		  $("#attendance_absent").css("display","none");
		});
	  
	  $("#assigning_class_tab").click(function(){
		  $("#assigning_class_tab>a").addClass("rounded-t").addClass("border-l").addClass("border-t").addClass("border-r");
		  $("#basicInfo_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#counseling_management_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#payment_status_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#attendance_absent_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#assigning_class").css("display","block");
		  $("#basicInfo").css("display","none");
		  $("#counseling_management").css("display","none");
		  $("#payment_status").css("display","none");
		  $("#attendance_absent").css("display","none");
		});
	  
	  $("#payment_status_tab").click(function(){
		  $("#payment_status_tab>a").addClass("rounded-t").addClass("border-l").addClass("border-t").addClass("border-r");
		  $("#basicInfo_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#assigning_class_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#counseling_management_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#attendance_absent_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#payment_status").css("display","block");
		  $("#basicInfo").css("display","none");
		  $("#assigning_class").css("display","none");
		  $("#counseling_management").css("display","none");
		  $("#attendance_absent").css("display","none");
		});
	  
	  $("#attendance_absent_tab").click(function(){
		  $("#attendance_absent_tab>a").addClass("rounded-t").addClass("border-l").addClass("border-t").addClass("border-r");
		  $("#basicInfo_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#assigning_class_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#payment_status_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#counseling_management_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#attendance_absent").css("display","block");
		  $("#basicInfo").css("display","none");
		  $("#assigning_class").css("display","none");
		  $("#payment_status").css("display","none");
		  $("#counseling_management").css("display","none");
		});
	  
////////////////////////////////////////////////////student_detail.jsp tab////////////////////////////////////////////////////////////
});

function openDaumZipAddress() {
	new daum.Postcode({
		oncomplete:function(data) {
			
			jQuery("#reward_addr_num").val(data.zonecode);
			jQuery("#reward_addr_main").val(data.address);
			jQuery("#reward_addr_sub").focus();
		}
	}).open();
}

function receive_delCheck() {
	if(confirm("수납내역을 정말 삭제하시겠습니까?")){
		
	}
}

function return_delCheck() {
	if(confirm("반환내역을 정말 삭제하시겠습니까?")){
		
	}
}

function memberDelete_check() {
	if(confirm("회원을 정말 삭제하시겠습니까?")){
		
	}
}

function delete_counseling(){
	if(confirm("상담내용을 정말 삭제하시겠습니까?")){
		
	}
}

function delete_class_record(){
	if(confirm("레코드를 정말 삭제하시겠습니까?")){
		
	}
}