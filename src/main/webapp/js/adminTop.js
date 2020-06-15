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
		  $("#modify_counseling_form").css("display","none");
		  $("#modify_colsed_out_form").css("display","none");
		  $("#move_class_form").css("display","none");
		  $("#colsed_out_form").css("display","none");s
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
		  $("#modify_counseling_form").css("display","none");
		  $("#modify_colsed_out_form").css("display","none");
		  $("#move_class_form").css("display","none");
		  $("#colsed_out_form").css("display","none");
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
		  $("#modify_counseling_form").css("display","none");
		  $("#modify_colsed_out_form").css("display","none");
		  $("#move_class_form").css("display","none");
		  $("#colsed_out_form").css("display","none");
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
		  $("#modify_counseling_form").css("display","none");
		  $("#modify_colsed_out_form").css("display","none");
		  $("#move_class_form").css("display","none");
		  $("#colsed_out_form").css("display","none");
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
		  $("#modify_counseling_form").css("display","none");
		  $("#modify_colsed_out_form").css("display","none");
		  $("#move_class_form").css("display","none");
		  $("#colsed_out_form").css("display","none");
		});
	  
	  $("#modify_counseling_id").click(function(){
		  $("#counseling_management_tab>a").addClass("rounded-t").addClass("border-l").addClass("border-t").addClass("border-r");
		  $("#basicInfo_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#assigning_class_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#payment_status_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#attendance_absent_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  
		  $("#modify_counseling_form").css("display","block");
		  $("#modify_colsed_out_form").css("display","none");
		  $("#move_class_form").css("display","none");
		  $("#colsed_out_form").css("display","none");
		  $("#attendance_absent").css("display","none");
		  $("#basicInfo").css("display","none");
		  $("#assigning_class").css("display","none");
		  $("#payment_status").css("display","none");
		  $("#counseling_management").css("display","none");
		});
	  
	  $("#move_class").click(function(){
		  $("#assigning_class_tab>a").addClass("rounded-t").addClass("border-l").addClass("border-t").addClass("border-r");
		  $("#basicInfo_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#counseling_management_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#payment_status_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#attendance_absent_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  
		  $("#move_class_form").css("display","block");
		  $("#modify_colsed_out_form").css("display","none");
		  $("#colsed_out_form").css("display","none");
		  $("#modify_counseling_form").css("display","none");
		  $("#attendance_absent").css("display","none");
		  $("#basicInfo").css("display","none");
		  $("#assigning_class").css("display","none");
		  $("#payment_status").css("display","none");
		  $("#counseling_management").css("display","none");
		});
	  
	  $("#colsed_out_class").click(function(){
		  $("#assigning_class_tab>a").addClass("rounded-t").addClass("border-l").addClass("border-t").addClass("border-r");
		  $("#basicInfo_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#counseling_management_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#payment_status_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#attendance_absent_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  
		  $("#colsed_out_form").css("display","block");
		  $("#modify_colsed_out_form").css("display","none");
		  $("#move_class_form").css("display","none");
		  $("#modify_counseling_form").css("display","none");
		  $("#attendance_absent").css("display","none");
		  $("#basicInfo").css("display","none");
		  $("#assigning_class").css("display","none");
		  $("#payment_status").css("display","none");
		  $("#counseling_management").css("display","none");
		});
	  
	  $("#modify_colsed_out").click(function(){
		  $("#assigning_class_tab>a").addClass("rounded-t").addClass("border-l").addClass("border-t").addClass("border-r");
		  $("#basicInfo_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#counseling_management_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#payment_status_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  $("#attendance_absent_tab>a").removeClass("rounded-t").removeClass("border-l").removeClass("border-t").removeClass("border-r");
		  
		  $("#modify_colsed_out_form").css("display","block");
		  $("#colsed_out_form").css("display","none");
		  $("#move_class_form").css("display","none");
		  $("#modify_counseling_form").css("display","none");
		  $("#attendance_absent").css("display","none");
		  $("#basicInfo").css("display","none");
		  $("#assigning_class").css("display","none");
		  $("#payment_status").css("display","none");
		  $("#counseling_management").css("display","none");
		});
	  
////////////////////////////////////////////////////student_detail.jsp tab////////////////////////////////////////////////////////////
	  
///////////////////////////////////////////////////stuent_detail 이미지 업로드/////////////////////////////////////////////////////////////
	  $("#button_img").on("click", function(e){
		  e.preventDefault();
		  $("#input_img").click();
	  });
	  $("#input_img").on("change", imgFileSelect);
///////////////////////////////////////////////////stuent_detail 이미지 업로드/////////////////////////////////////////////////////////////
});
/////////student_detail 이미지 업로드
var sel_file;
function imgFileSelect(e){
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	
	filesArr.forEach(function(f){
		if(!f.type.match("image.*")){
			alert("확장자는 이미지 확장자만 가능합니다.");
			return;
		}
		
		sel_file = f;
		
		var reader = new FileReader();
		reader.onload = function(e){
			$("#img").attr("src", e.target.result);
		}
		reader.readAsDataURL(f);
	});
}
/////////student_detail 이미지 업로드
////////////이메일 도메인///////////////////////////////////////////////////////////////
function sInputDomain(){
	var domain = $("#sDomainSelect option:selected").val();
	if(domain=="직접입력"){
		document.getElementById("sDomain").value="";
	}else{
		document.getElementById("sDomain").value= domain;
	}
} 

function pInputDomain(){
	var domain = $("#pDomainSelect option:selected").val();
	if(domain=="직접입력"){
		document.getElementById("pDomain").value="";
	}else{
		document.getElementById("pDomain").value= domain;
	}
}
////////////이메일 도메인////////////////////////////////////////////////////////////////
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