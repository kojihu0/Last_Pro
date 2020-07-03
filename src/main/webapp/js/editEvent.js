
	//일정등록 버튼 클릭시, 일정 등록.
	function editEvent(params){
		var tag = "";
		tag += 	"<form id='calendar_form_edit' method='post'>";
		tag += "<div class='flex p-3'>"+ 
					"<div class=''>일정명</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
					"<div class=''>" +
						"<input type='hidden' name='calendar_no' value='" + params.calendar_no + "'/>" + 
		 				"<input size='15' class='border border-black' type='text' name='calendar_title' id='calendar_title' value='"+ params.editTitle +"'/>" +
					"</div>" +
				"</div>";
		tag += "<div class='flex p-3'>" +
					"<div>시작 날짜</div>&nbsp;&nbsp;" +
					"<div>" +
						"<input  class='border border-black' type='date' name='calendar_start_date' id='calendar_start_date' value='"+ params.momentStart +"'/>" +
					"</div>" +
				"</div>";
		tag += "<div class='flex p-3'>" +
					"<div>마침 날짜</div>&nbsp;&nbsp;" +
						"<div>" +
							"<input  class='border border-black' type='date' name='calendar_end_date' id='calendar_end_date' value='"+ params.momentEnd +"'/>" +
					"</div>" +
				"</div>";
		tag += "<div class='flex p-3'>" +
					"<div>일정 명칭</div>&nbsp;&nbsp;" + 
					"<div>" + 
						"<textarea style='resize:none;'class='border border-black' cols='18' rows='5' name='calendar_content' id='calendar_content'>"+params.editContent +"</textarea>" +
					"</div>" +
				"</div>"; 
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
					"<input type='submit' value='수정' id='btn' />"+ 
					"<a id='deleteButton'>삭제</a>"+  
				"</div>";
		tag	+=	"</form>";
		
		openPopup("일정관리", tag, 400);
}
	//========
	
	$(document).on('submit', '#calendar_form_edit', function(){
		console.log("1. 들어온다.");
		var editData = $("#calendar_form_edit").serialize(); 
		console.log("2. 값이 정상인가? : " + editData );
		$.ajax({ 
			url:"/lms/calendar/editEvent",
			data : editData,
			type : "POST",
			success : function(result){
				console.log(result + "성공 데이터");
				calendar.refetchEvents();
			},
			error:function(error){
				console.log(error + " : 에러");
			}
		});
		 closebPopup("popup");
		 return false;
	});
	
	$(document).on('click', '#deleteButton', function(){
		console.log("1. 삭제합시다?");
		var delData = $("#calendar_form_edit").serialize(); 
		console.log("2. 그래요. : " + delData );
		$.ajax({ 
			url:"/lms/calendar/delEvent",
			data : delData, 
			type : "POST",
			success : function(result){
				console.log(result + "성공 데이터");
				calendar.refetchEvents();
			},
			error:function(error){
				console.log(error + " : 에러");
			}
		});
		 closebPopup("popup");
		 return false;
	});
	
	//=========
	//모달 작업.
	function openPopup(subject, content, width){
		$("#modal_calendar").html(subject);
		$("#modal_calendar_content").html(content);
		openbPopup("popup", width);
	}

	function openbPopup(IDS, width){
		$("#"+IDS).css("width", width + "px");
		$("#" + IDS).bPopup(); 
	}
	function closebPopup(IDS){
		$("#" + IDS).bPopup().close();
	}
