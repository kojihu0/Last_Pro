
document.addEventListener('DOMContentLoaded', function() {
	  var calendarEl = document.getElementById('calendar');
	  var draggableEl = document.getElementById('mydraggable');
	  
	  var calendar = new FullCalendar.Calendar(calendarEl, {
	    
		  plugins	    : [ 'interaction', 'dayGrid', 'timeGrid' ],
		  defaultView : 'dayGridMonth',
		  defaultDate : new Date(),
		  selectable  : true,
		  selectMirror:true,
		  selectHelper:true,
		  locale : 'ko',
		
		  header: {
			  left: 'prev,next today',
			  center: 'title',
			  right: 'dayGridMonth, timeGridWeek, timeGridDay, listMonth'
		  },
		  views: {
			    month: {
			      columnFormat: 'dddd'
			    },
		  },
			    
	      navLink:true,
	      businessHours:true,
	      editable: true,
	      eventLimit : true,
	      events: [ 
	    	  { 
                  title : "빨강색 배경 & 글자색 노랑색"
                , color : "#FF0000"
                , textColor : "#FFFF00"
                , start : "2020-06-02"
                , end : "2020-06-06T10:00:00"
            }
         ]
	  	});
	     
	  calendar.render();
	  
});

function addEvent(){
	console.log("들어오나");
	var tag = "";
	tag += "<div class='flex p-3'>" +
				"<div class=''>일정명</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				"<div class=''>" +
					"<input size='15' class='border border-black' type='text' id='calendar_title' value=''/>" +
				"</div>" +
			"</div>"
	tag += "<div class='flex p-3'>" +
				"<div>시작 날짜</div>&nbsp;&nbsp;" +
				"<div>" +
					"<input  class='border border-black' type='date' id='calendar_start_date' value=''/>" +
				"</div>" +
			"</div>"
	tag += "<div class='flex p-3'>" +
				"<div>마침 날짜</div>&nbsp;&nbsp;" +
					"<div>" +
						"<input  class='border border-black' type='date' id='calendar_end_date' value=''/>" +
				"</div>" +
			"</div>"
	tag += "<div class='flex p-3'>" +
				"<div>일정 명칭</div>&nbsp;&nbsp;" + 
				"<div>" + 
					"<textarea style='resize:none;'class='border border-black' cols='18' rows='5' id='calendar_content'></textarea>" +
				"</div>" +
			"</div>"	
	tag += "<div class='flex p-3'>" +
				"<div>컬    러</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				"<div>" +
					"<select id='colorSelect'>" +
						"<option selected='selected'>::색상::</option>" +
						"<option vlaue='1'>검정</option>" +
						"<option vlaue='2'>빨강</option>" +
						"<option vlaue='3'>파랑</option>" +
						"<option vlaue='4'>녹색</option>" +
					"</select>" +
				"</div>" +
			"</div>"	 
				
	tag += "<div class='text-right p-3'>" +
				"<button id='saveButton' onClick=javascript:saveEvent();>저장</button>&nbsp;&nbsp;" +
			"</div>";		
	
	console.log(tag);
	openPopup("일정 등록", tag,  1000);
}

function saveEvent(){
	//var id 		= 세션에서 받아온 아이디. 
	var title 		= $("#calendar_title").val();
	var startDate 	= $("#calendar_start_date").val();
	var endDate 	= $("#calendar_end_date").val();
	var content 	= $("#calendar_content").val();
	
	var option 		= document.getElementById("colorSelect").options;
	var select 		= document.getElementById("colorSelect").selectedIndex;
	
	var color 		= option[select].value;
	
	var params = {
			
		"title="    : title,
		"startDate" : startDate,
		"endDate"   : endDate,
		"content"   : content,
		"color"	    : color
	}
	
	console.log(params);
	
	$.ajax({
		type:"POST",
		data: params,
		success:function(result){
			//---------------------------
			events = result;
			//---------------------------
			//데이터 작업.
		}, error:function(error){
			
		}
	});	
}

function openPopup(subject, content, width){
	$("#modal_calendar").html(subject);
	$("#modal_calendar_content").html(content);
	openbPopup("popup", width)
}

function openbPopup(IDS, width){
	$("#"+IDS).css("width" + width + "px");
	$("#" + IDS).bPopup(); 
}
function closebPopup(IDS){
	$("#" + IDS).bPopup().close();
}
