$(function(){
	$("#menuList>li").hover(function(){
		$(this).children(".submenu").fadeIn();
	},function(){
		$(this).children(".submenu").fadeOut();
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
		  $("#colsed_out_form").css("display","none");
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
	  
	  $(".modify_counseling_id").click(function(){
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
		  
		  var student_no = $(this).data("student_no");
		  var counseling_no = $(this).data("counseling_no");
		  $("#modify_counseling_form textarea[name=counseling_content]").val($(".counseling_content-"+counseling_no).text());
		  $("#modify_counseling_form input[name=counseling_title]").val($(".counseling_title-"+counseling_no).text());
		  $("#modify_counseling_form select[name=counseling_division]").val($(".counseling_division-"+counseling_no).text()).prop("selected", true);
		  $("#modify_counseling_form input[name=student_no]").val(student_no);
		  $("#modify_counseling_form input[name=counseling_no]").val(counseling_no);
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
		  
		  var payment_no = $(this).data("payment_no");
		  var student_no = $(this).data("student_no");
		  $("#move_class_form input[name=payment_no]").val(payment_no);
		  $("#move_class_form input[name=student_no]").val(student_no);
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
		  
		  var state = $(this).data("state");
		  var student_course_state_date = $(this).data("student_course_state_date");
		  var payment_no = $(this).data("payment_no");
		  if(state==3){
			  $("#modify_colsed_out_form input[name=state]").val("3").prop("checked", true);
		  }else if(state==4){
			  $("#modify_colsed_out_form input[name=state]").val("4").prop("checked", true);
		  }
		  $("#modify_colsed_out_form input[name=student_course_state_date]").val(student_course_state_date);
		  $("#modify_colsed_out_form input[name=payment_no]").val(payment_no);
		});
	  
////////////////////////////////////////////////////student_detail.jsp tab////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////학생 상담 추가//////////////////////////////////////////////////////////////////////////
	  	$("#counseling_regi").click(function(){
	  		if($("#counseling_division option:selected").val()=='::상담구분::'){
	  			alert("상담구분을 선택해주세요.");
	  			return false;
	  		}else if($("#counseling_title").val()==""){
	  			alert("상담 제목을 입력해주세요.");
	  			return false;
	  		}else if($("#counseling_content").val()==""){
	  			alert("상담 내용을 입력해주세요.");
	  			return false;
	  		}
	  	});
///////////////////////////////////////////////////////반배정 이동///////////////////////////////////////////////////////////////////////////////
	  	$("#moveCLassOk").click(function(){
	  		if($("#course_day option:selected").val()=="::요일::"){
	  			alert("이동 할 반의 수업요일을 선택해주세요.");
	  			return false;
	  		}else if($("#course_time option:selected").val()=="::수업시간::"){
	  			alert("이동 할 반의 수업시간을 선택해주세요.");
	  			return false;
	  		}else if($("#course_stage option:selected").val()=="::장소::" || $("#course_stage option:selected").val()=="=====본관=====" || $("#course_stage option:selected").val()=="=====신관=====" || $("#course_stage option:selected").val()=="=====구관====="){
	  			alert("이동 할 반의 수업장소을 선택해주세요.");
	  			return false;
	  		}
	  	});
	  	
	 	$("#trasfer_classOK").click(function(){
	  		if($("#course_day option:selected").val()=="::요일::"){
	  			alert("이동 할 반의 수업요일을 선택해주세요.");
	  			return false;
	  		}else if($("#course_time option:selected").val()=="::수업시간::"){
	  			alert("이동 할 반의 수업시간을 선택해주세요.");
	  			return false;
	  		}else if($("#course_stage option:selected").val()=="::장소::" || $("#course_stage option:selected").val()=="=====본관=====" || $("#course_stage option:selected").val()=="=====신관=====" || $("#course_stage option:selected").val()=="=====구관====="){
	  			alert("이동 할 반의 수업장소을 선택해주세요.");
	  			return false;
	  		}else if($("#course_name option:selected").val()=="=="){
	  			alert("이동 할 반을 선택해주세요.");
	  			return false;
	  		}
	  	});
//////////////////////////////////////////////////////학생 휴/퇴원////////////////////////////////////////////////////////////////////////////////////
	  	$("#closed_out_ok").click(function(){
	  		if($("input[id='student_closed_out']").prop("checked")==false){
	  			alert("휴/퇴원 대상자를 선택해주세요.");
	  			return false;
	  		}else if($("input[class='state']").prop("checked")==false){
	  			alert("휴원 또는 퇴원을 선택해주세요.");
	  			return false;
	  		}else if($("#student_closed_out_date").val()==""){
	  			alert("휴/퇴원 일지를 입력해주세요.");
	  			return false;
	  		}
	  	});
//////////////////////////////////////////////////////학생 휴.퇴원////////////////////////////////////////////////////////////////////////////////////
	  	//////////////////////////////////////////////반환//////////////////////////////////////////////////////////////////////////////////////////
	  	$("#refundDetailOk").click(function(){
	  		if($("#refundReason").val()==""){
	  			alert("반환사유를 입력해주세요.");
	  			return false;
	  		}else if($("#refundDay").val()==""){
	  			alert("반환일자를 입력해주세요.");
	  			return false;
	  		}
	  	});
	  	//////////////////////////////////////////////반환////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////출석리스트//////////////////////////////////////////////////////////////////////////////////////////////
	  	$("#attendanceKey").on("change", function(){
			var url = "/lms/admin/attendanceArray"
			var params = "payment_no="+$(this).val();
			$.ajax({
				type:"GET",
				url: url,
				data : params,
				success : function(result){
					var listResult = $(result);
					
					var tag ="<tr style='border-top:solid black 1px; border-bottom:solid black 1px'>";
					listResult.each(function(idx, vo){
						if(vo.attendance_state==1){
							tag +="<td class='w-1/4 p-2'>"+vo.attendance_date+"</td>"
								  +"<td class='w=1/4'>"+"출석"+"<td>"+"<td></td></tr>";
						}else if(vo.attendance_state==2){
							tag +="<td class='w-1/4 p-2'>"+vo.attendance_date+"</td>"
							  +"<td class='w=1/4'>"+"지각"+"<td>"+"<td></td></tr>";
						}else if(vo.attendance_state==3){
							tag +="<td class='w-1/4 p-2'>"+vo.attendance_date+"</td>"
							  +"<td class='w=1/4'>"+"결석"+"<td>"+"<td></td></tr>";
						}
						$("#attendance_list").html(tag);
					});
				},
				error : function(e){
					console.log(e.responseText);
				}
			});
		});
	  	 
		  $("#button_img").on("click", function(e){
			  e.preventDefault();
			  $("#input_img").click();
		  });
		  
		  $("#input_img").on("change", imgFileSelect);
///////////////////////////////////////////////////////출석리스트////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////반배정 이동///////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////학생 상담 추가//////////////////////////////////////////////////////////////////////////
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

/////////student_detail 이미지 업로드
function preview(input, target) {
    if(input.files && input.files[0]){
      var fileName= input.files[0].name;
      var ext=fileName.substr(fileName.length-3, fileName.length);
      var isCheck=false; 
          if(ext.toLowerCase()=='jpg' || ext.toLowerCase()=='gif' || ext.toLowerCase()=='png'){
          isCheck=true;              
      }
      if(isCheck==false){
          alert("이미지 파일만 등록이 가능합니다. 다시 선택해주세요.");
          jQuery(input).val("");
          return;
      }
      var reader = new FileReader();
      reader.readAsDataURL(input.files[0]);          
      reader.onload = function(e) {
        jQuery(target).attr('src', e.target.result);
      }
    }
}
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
function rsInputDomain(){
	var domain = $("#rsDomainSelect option:selected").val();
	if(domain=="직접입력"){
		document.getElementById("rsDomain").value="";
	}else{
		document.getElementById("rsDomain").value= domain;
	}
} 

function rpInputDomain(){
	var domain = $("#rpDomainSelect option:selected").val();
	if(domain=="직접입력"){
		document.getElementById("rpDomain").value="";
	}else{
		document.getElementById("rpDomain").value= domain;
	}
}
////////////이메일 도메인////////////////////////////////////////////////////////////////
function openDaumZipAddress() {
	new daum.Postcode({
		oncomplete:function(data) {
			
			jQuery(".addr_num").val(data.zonecode);
			jQuery(".addr_main").val(data.address);
			jQuery(".addr_sub").focus();
		}
	}).open();
}

function receive_delCheck(student_no,refund_price,payment_no) {
	if(refund_price==null || refund_price==0){
		if(confirm("수납내역을 정말 삭제하시겠습니까?")){
			location.href="/lms/admin/receiveDel?student_no="+student_no+"&payment_no="+payment_no;
		}
	}else{
		alert("관련반환내역이 있어 삭제할 수 없습니다.\n반환내역을 먼저 삭제해주세요.");
	}
}

function return_delCheck(student_no,payment_no) {
	if(confirm("반환내역을 정말 삭제하시겠습니까?")){
		location.href="/lms/admin/returnDel?student_no="+student_no+"&payment_no="+payment_no;
	}
}

function memberDelete_check(student_no) {
	if(confirm("회원을 정말 삭제하시겠습니까?")){
		location.href="/lms/admin/memberDel?student_no="+student_no;
	}
}

function delete_counseling(student_no,counseling_no){
	if(confirm("상담내용을 정말 삭제하시겠습니까?")){
		location.href="/lms/admin/counselingDel?student_no="+student_no+"&counseling_no="+counseling_no;
	}
}