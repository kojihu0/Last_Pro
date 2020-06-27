
function selectEvent(params){
	console.log("들어와");
	var tag = "";
	tag += 	"<form id='calendar_form_select' method='post'>";
	tag += "<div class='flex p-3'>"+ 
				"<div class=''>일정명</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				"<div class=''>" +
					"<input size='15' class='border border-black' type='text' name='calendar_title' id='calendar_title' value=''/>" +
				"</div>" +
			"</div>";
	tag += "<div class='flex p-3'>" +
				"<div>시작 날짜</div>&nbsp;&nbsp;" +
				"<div>" +
					"<input  class='border border-black' type='date' name='calendar_start_date' id='calendar_start_date' value='" + params.momentStart + "'/>" +
				"</div>" +
			"</div>";
	tag += "<div class='flex p-3'>" +
				"<div>마침 날짜</div>&nbsp;&nbsp;" +
					"<div>" +
						"<input  class='border border-black' type='date' name='calendar_end_date' id='calendar_end_date' value='" + params.momentEnd + "'/>" +
				"</div>" +
			"</div>";
	tag += "<div class='flex p-3'>" +
				"<div>일정 명칭</div>&nbsp;&nbsp;" + 
				"<div>" + 
					"<textarea style='resize:none;'class='border border-black' cols='18' rows='5' name='calendar_content' id='calendar_content'></textarea>" +
				"</div>" +
			"</div>"	;
	tag += "<div class='flex p-3'>" +
				"<div>컬    러</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				"<div>" +
					"<select name='calendar_color' id='colorSelect'>" +
						"<option selected='selected'>::색상::</option>" +
						"<option value='#3A3939' style='color:#3A3939'>검정</option>" +
						"<option value='#FF583F' style='color:#FF583F'>빨강</option>" +
						"<option value='#51DBFF' style='color:#51DBFF'>파랑</option>" +
						"<option value='#A4ED75' style='color:#A4ED75'>녹색</option>" +  
					"</select>" +
				"</div>" +
			"</div>"	 ;
				
	tag += "<div class='text-right p-3'>" +
				"<input type='submit' value='저장' id='btn' />"+  
			"</div>";
	tag	+=	"</form>";
	
	selectPopup("일정관리", tag, 400);

}

//add event 작업. 
$(document).on('submit', '#calendar_form_select', function(){  
	console.log("너 되니?");  
   var jsonData = $("#calendar_form_select").serialize();
   $.ajax({  
		type:"POST",
		async:false, 
		url:"/lms/calendar/newData", 
		data: jsonData,  
		success : function(result){	 
			console.log("선택해서 되나?" + result);
 			calendar.refetchEvents();
		}, error : function(e){ 
			console.log("달력 이벤트 추가 에러" + e.responseText);
		}
	}); 
   selClosebPopup("popup");
  return false;
});//이벤트영역	

//모달 작업.
function selectPopup(subject, content, width){
	console.log("여기는?");
	$("#modal_calendar").html(subject); 
	$("#modal_calendar_content").html(content);
	selbPopup("popup", width)
}

function selbPopup(IDS, width){
	$("#"+IDS).css("width", width + "px");
	$("#" + IDS).bPopup(); 
}
function selClosebPopup(IDS){
	$("#" + IDS).bPopup().close();
}
