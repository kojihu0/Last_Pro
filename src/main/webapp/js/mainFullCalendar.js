
var calendar;
var tag =""
document.addEventListener('DOMContentLoaded', function() {
	  var calendarEl  = document.getElementById('calendar');
	  
  	  calendar = new FullCalendar.Calendar(calendarEl, {
  		  plugins	    : [ 'interaction', 'dayGrid'],
		  defaultView   : 'dayGridMonth',
		  defaultDate   : new Date(),
		  selectable    : true,
		  selectMirror  : true,
		  selectHelper  : true,
		  locale 		: 'ko',
		  header: {
			  left: 'prev,next today',
			  center: 'title',
			  right:  'listMonth'
		  },
		  views: {
			    month: {
			      columnFormat: 'dddd'
			    },
		  },   
	      navLink		 : true,
	      businessHours	 : true,
	      editable		 : true,
	      select: function(info) {
	    	  console.log(info);
	          if(confirm("일정을 등록 하시겠습니까?")){
	        	 var momentStart 	   = info.startStr; 
	 	         var end 			   = new Date(info.endStr);
	 	    	 var endStrsubtraction = moment(end).subtract(1, "days");
	 	    	 var momentEnd 		   = moment(endStrsubtraction).format('YYYY-MM-DD');
	 	    	
	 	    	 console.log("끝나는 날 momentEnd : " + momentEnd);
	 	    	 
	 	    	 var params = { 		 
	 	    			 "momentStart" 				: momentStart, 
	 	    			 "momentEnd" 				: momentEnd,
	 	    	 }; 
	 	    	 selectEvent(params);
	          }
	        },	
	      eventClick: function(info) {
		    	 
	    	 var momentStart;
	    	 var momentEnd 			= moment(info.event.end).subtract(1, "days");
	    	 var momentEndResult 	= moment(momentEnd).format('YYYY-MM-DD'); 
	    	 
	    	 var editTitle;
	    	 var editBackgroundColor;
	    	 var editContent;
	    	 var calendar_no;

	    	 var params = { 
	    			 "editTitle" 				: info.event.title,
	    			 "editBackgroundColor" 		: info.event.backgroundColor,
	    			 "editContent" 				: info.event.extendedProps.description,
	    			 "momentStart" 				: moment(info.event.start).format('YYYY-MM-DD'), 
	    			 "momentEnd" 				: momentEndResult,
	    			 "calendar_no"				: info.event.id
	    	 }; 

	    	 editEvent(params);
	  
	      },
	      eventDrop: function(info) {

	    	    console.log(info);
	    	    
	    	     var dropMomentStart 		 = moment(info.event.start).format('YYYY-MM-DD');
		    	 var dropMomentEnd 			 = moment(info.event.end).subtract(1, "days");
		    	 var dropMomentEndResult 	 = moment(dropMomentEnd).format('YYYY-MM-DD'); 
		    	 
		    	 var dropEditTitle 			 = info.event.title;
		    	 var dropEditBackgroundColor = info.event.backgroundColor;
		    	 var dropEditContent 		 = info.event.extendedProps.description;
		    	 var dropCalendar_no 		 = info.event.id;

		    	 alert("시작일 : " + dropMomentStart + " ~ 종료일 : " + dropMomentEndResult);
		    	  
		    	 var dropParams = { 
		    			 "calendar_title" 		: dropEditTitle, 
		    			 "calendar_color" 		: dropEditBackgroundColor,
		    			 "calendar_content" 	: dropEditContent,
		    			 "calendar_start_date" 	: dropMomentStart, 
		    			 "calendar_end_date" 	: dropMomentEndResult,
		    			 "calendar_no"			: dropCalendar_no  
		    	 }; 
	    	    
	    	    dropEventEdit(dropParams); 
	    	    
	    },
	      eventRender: function(info) {			
			tippy(info.el, {
				
				content: "<div class='text-center'>"
							+"<p class='font-bold text-lg' style='background-color :"+info.event.backgroundColor+"'>"+ info.event.title +"</p>"
							+"<p>"+ info.event.extendedProps.description +"</p>"
						+ "</div>",
						allowHTML : true 
			});
	    },
	    eventResize : function(info){ 
	    	
		     var resizeMomentStart 		 = moment(info.event.start).format('YYYY-MM-DD');
	    	 var resizeMomentEnd 	     = moment(info.event.end).subtract(1, "days");
	    	 var resizeMomentEndResult 	 = moment(resizeMomentEnd).format('YYYY-MM-DD'); 
	    	 
	    	 var resizeEditTitle 			= info.event.title;
	    	 var resizeEditBackgroundColor 	= info.event.backgroundColor;
	    	 var resizeEditContent 		 	= info.event.extendedProps.description;
	    	 var resizeCalendar_no 		 	= info.event.id;

	    	 alert("시작일 : " + resizeMomentStart + " ~ 종료일 : " + resizeMomentEndResult);
	    	  
	    	 var resizeParams = { 
	    			 "calendar_title" 		: resizeEditTitle, 
	    			 "calendar_color" 		: resizeEditBackgroundColor, 
	    			 "calendar_content" 	: resizeEditContent,
	    			 "calendar_start_date" 	: resizeMomentStart, 
	    			 "calendar_end_date" 	: resizeMomentEndResult,
	    			 "calendar_no"			: resizeCalendar_no  
	    	 }; 
	    	
	    	 dropEventEdit(resizeParams);
	    },
	     eventSources : [ 
	    	  {
	    		  url: '/lms/calendar/base',
	    		  method: 'GET',
	    		  failure: function(e){
	    			 console.log("일정 읽기 실패");
	    		  }
	    	  }
	      ]
	      
	  	}); 
	  //캘린더 그리기.
	  calendar.render();
});