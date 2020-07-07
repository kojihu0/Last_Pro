
	//일정등록 버튼 클릭시, 일정 등록.
	function editEvent(params){
		var tag = "";
		tag += 	"<form id='calendar_form_edit' method='post'>";
		tag += "<div class='flex items-center mb-4'>"+ 
				"<div class='w-1/4'>일정명</div>" +
					"<div class='w-3/4'>" +
						"<input type='hidden' name='calendar_no' value='" + params.calendar_no + "'/>" + 
		 				"<input size='15' class='appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:border-gray-700' type='text' name='calendar_title' id='calendar_title' value='"+ params.editTitle +"'/>" +
					"</div>" +
				"</div>";
		tag += "<div class='flex items-center mb-4'>" +
				"<div class='w-1/4'>시작 날짜</div>" +
					"<div class='w-3/4'>" +
						"<input  class='appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:border-gray-700' type='date' name='calendar_start_date' id='calendar_start_date' value='"+ params.momentStart +"'/>" +
					"</div>" +
				"</div>";
		tag += "<div class='flex items-center mb-4'>" +
				"<div class='w-1/4'>마침 날짜</div>" +
					"<div class='w-3/4'>" +
							"<input  class='appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:border-gray-700' type='date' name='calendar_end_date' id='calendar_end_date' value='"+ params.momentEnd +"'/>" +
					"</div>" +
				"</div>";
		tag += "<div class='flex items-center mb-4'>" +
				"<div class='w-1/4'>일정 명칭</div>" + 
					"<div class='w-3/4'>" + 
						"<textarea class='appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:border-gray-700 resize-none' cols='18' rows='5' name='calendar_content' id='calendar_content'>"+params.editContent +"</textarea>" +
					"</div>" + 
				"</div>"; 
		tag += "<div class='flex items-center mb-4'>" +
				"<div class='w-1/4'>컬러</div>" +
					"<div class='w-3/4'>"+
						"<select name='calendar_color' id='colorSelect' class='block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded leading-tight focus:outline-none focus:border-gray-700'>" +
							"<option selected='selected'>::색상::</option>" +
							"<option value='#3A3939' style='color:#3A3939'>검정</option>" +
							"<option value='#FF583F' style='color:#FF583F'>빨강</option>" +
							"<option value='#51DBFF' style='color:#51DBFF'>파랑</option>" +
							"<option value='#A4ED75' style='color:#A4ED75'>녹색</option>" +  
						"</select>" +
						"<div class='pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700'><i class='xi-angle-down'></i></div>"+
					"</div>" +
					"</div>" +
				"</div>"	 ;
					
		tag += "<div class='text-right p-3'>" +
					"<input type='submit' value='수정' id='btn' class='bg-gray-900 py-2 px-4  mx-2 text-white font-bold rounded'/>"+ 
					"<a id='deleteButton' class='bg-gray-900 py-2 px-4 text-white font-bold rounded'>삭제</a>"+  
					"</div>"+  
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
