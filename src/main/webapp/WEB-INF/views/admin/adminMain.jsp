<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>


<!--  -->    
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		
		<div class="text-xl p-3 mx-16 ">  
			<i class="xi-school my-6"></i>&nbsp;HOME
		</div>
	    <!--Container-->
	    <div class="container w-full mx-auto">
	        <div class="w-full px-4 md:px-0 mb-16 text-grey-darkest leading-normal">
	            <div class="flex flex-wrap">
	                <div class="w-full md:w-1/2 xl:w-1/2 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-1 text-right md:text-center"> 
	                               <div class="bg-info-300 uppercase text-left text-grey p-2 font-bold">Total Revenue</div> 
	                                <h3 class="text-3xl p-3">&nbsp;ⓦ&nbsp;${amVo.totalPrice } <span class="text-green"><i class="fas fa-caret-up"></i></span></h3>
	                            </div> 
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>
	            
	                <div class="w-full md:w-1/2 xl:w-1/2 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-1 text-right md:text-center"> 
	                               <div class="bg-info-300 uppercase text-left text-grey p-2 font-bold">Total Student</div> 
	                                <h3 class="text-3xl p-3">${amVo.totalStudent }&nbsp;명 <span class="text-green"><i class="fas fa-caret-up"></i></span></h3>
	                            </div> 
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>
	                <div class="w-full md:w-1/2 xl:w-1/2 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-1 text-right md:text-center"> 
	                               <div class="bg-info-300 uppercase text-left text-grey p-2 font-bold">Total Teacher</div> 
	                                <h3 class="text-3xl p-3">${amVo.totalTeacher}&nbsp;명 <span class="text-green"><i class="fas fa-caret-up"></i></span></h3>
	                            </div> 
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>
	                <div class="w-full md:w-1/2 xl:w-1/2 p-3"> 
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-1 text-right md:text-center"> 
	                               <div class="bg-info-300 uppercase text-left text-grey p-2 font-bold">Total Course</div> 
	                                <h3 class="text-3xl p-3">${amVo.totalCourse }&nbsp;개<span class="text-green"><i class="fas fa-caret-up"></i></span></h3>
	                            </div> 
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>	                	                	        
	            </div>
	
	            <!--Divider-->
	            <hr class="border-b-2 border-info-300 my-8 mx-4">
				
	            <div class="flex flex-row flex-wrap flex-grow mt-2">
<!-- ---------------------------------------------------------------------------------------------------------------------------------------- -->	            
	              <!-- 캘린더 생성 -->
	         <div class="w-full md:w-full p-3">
	              		<div class="rounded text-white ">
	              			<input style="background-color: #1a252f;" class="p-3 w-24 h-10 rounded" type="button" id="popover" value="일정"/>
	              		</div>
	         	
	              	<div id='calendar'>
	              	
	              	</div>
					<div id="popup" class="bg-white rounded border-b-4 border-info-300">
	    		 	 	<div class="modal_calendar p-3 text-center" id="modal_calendar"></div>
              	 	 	<div class="modal_calendar_content" id="modal_calendar_content"></div>
					</div>               
	        </div>

<!-- ---------------------------------------------------------------------------------------------------------------------------------------- -->					    
				 </div>    
			 <div class="flex flex-row flex-wrap flex-grow mt-2">
	            
	                  <div class="w-full md:w-1/2 p-3">
	                    <!--Graph Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="border-b p-3"> 
	                            <h5 class="text-grey-dark">Popularity Course</h5>
	                        </div>
	                        <div class="p-5">
	                            <canvas id="chartjs-7" class="chartjs" width="undefined" height="undefined"></canvas>
	                        
						   <script>
						   
						   		var courseName_00 = "${courseName[0]}";
						   		var courseName_01 = "${courseName[1]}";
						   		var courseName_02 = "${courseName[2]}";
						   		var courseName_03 = "${courseName[3]}";
						   		
						   		var payment_Num_C_00 = ${payment_Num_C[0]};
						   		var payment_Num_C_01 = ${payment_Num_C[1]};
						   		var payment_Num_C_02 = ${payment_Num_C[2]};
						   		var payment_Num_C_03 = ${payment_Num_C[3]};

	                            new Chart(document.getElementById("chartjs-7"), { 
	                                "type": "bar",
	                                "data": {
	                                    "labels": [	courseName_00,
	                                    			courseName_01,
	                                    			courseName_02,
	                                    			courseName_03
	                                    		  ],
	                                    "datasets": [{
	                                        "label": "Page Impressions", 
	                                        "data": [	payment_Num_C_00,
	                                        		 	payment_Num_C_01,
	                                        		 	payment_Num_C_02,
	                                        		 	payment_Num_C_03
	                                        		],
	                               
	                                        "borderColor": "rgb(255, 99, 132)",
	                                        "backgroundColor": [
	                                        	   'rgba(255, 99, 132, 0.2)',
	                                               'rgba(54, 162, 235, 0.2)',
	                                               'rgba(255, 206, 86, 0.2)',
	                                               'rgba(75, 192, 192, 0.2)',
	                                        ]
	                                    }, {
	                                        "label": "Adsense Clicks",
	                                        "data": [	payment_Num_C_00,
	                                        			payment_Num_C_01,
	                                        			payment_Num_C_02,
	                                        			payment_Num_C_03
	                                        		],
	                                        "type": "line",
	                                        "fill": false,
	                                        "borderColor": "rgb(54, 162, 235)"
	                                    }]
	                                },
	                                "options": {
	                                    "scales": {
	                                        "yAxes": [{
	                                            "ticks": {
	                                                "beginAtZero": true
	                                            }
	                                        }]
	                                    }
	                                }
	                            });
	                            </script>
	                        </div>
	                    </div>
	                   </div>
	                    <!--/Graph Card end-->
	                   <div class="w-full md:w-1/2 p-3">
	                    <!--Graph Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="border-b p-3">
	                            <h5 class="text-grey-dark">Popularity Teacher</h5> 
	                        </div>
	                        <div class="p-5">
	                            <canvas id="chartjs-0" class="chartjs" width="undefined" height="undefined"></canvas>
	                            
	                            <script>
	                            
	                        	var teacherName_00 = "${teacherName[0]}";
						   		var teacherName_01 = "${teacherName[1]}";
						   		var teacherName_02 = "${teacherName[2]}";
						   		var teacherName_03 = "${teacherName[3]}";
	                        	var teacherName_04 = "${teacherName[4]}";
						   		var teacherName_05 = "${teacherName[5]}";
						   		var teacherName_06 = "${teacherName[6]}";
						
						   		var payment_Num_C_00 = ${payment_Num_T[0]};
						   		var payment_Num_C_01 = ${payment_Num_T[1]};
						   		var payment_Num_C_02 = ${payment_Num_T[2]};
						   		var payment_Num_C_03 = ${payment_Num_T[3]};
						   		var payment_Num_C_04 = ${payment_Num_T[4]};
						   		var payment_Num_C_05 = ${payment_Num_T[5]};
						   		var payment_Num_C_06 = ${payment_Num_T[6]};
	                            
	                            
	                            
	                            new Chart(document.getElementById("chartjs-0"), {
	                                "type": "pie",
	                                "data": {
	                                    "labels": [	teacherName_00,
	                                    			teacherName_01,
	                                    			teacherName_02,
	                                    			teacherName_03,
	                                    			teacherName_04,
	                                    			teacherName_05,
	                                    			teacherName_06
	                                    		  ],
	                                    "datasets": [{
	                                        "label": "Views",
	                                        "data": [	payment_Num_C_00,
	                                        			payment_Num_C_01,
	                                        			payment_Num_C_02,
	                                        			payment_Num_C_03,
	                                        			payment_Num_C_04,
	                                        			payment_Num_C_05,
	                                        			payment_Num_C_06
	                                        		],
	                                        "fill": false,
	                                        "backgroundColor": [
	                                        	'rgba(75, 192, 192, 0.2)',
	                                        	'rgba(255, 99, 132, 0.2)',
	                                            'rgba(54, 162, 235, 0.2)',
	                                            'rgba(255, 206, 86, 0.2)',
	                                            'rgba(75, 192, 192, 0.2)',
	                                            'rgba(153, 102, 255, 0.2)',
	                                            'rgba(255, 159, 64, 0.2)'
	                                        ],
	                                        "hoverBorderColor" : 'rgba(0, 0, 0, 1)' ,
	                                        "lineTension": 0.1
	                                    }]
	                                },
	                                "options": {}
	                            });
	                            </script>
	                        </div>
	                    </div>
	                    <!--/Graph Card end-->
	                </div>         
	            </div>
	           	<!-- ------------------------------------------------------------------------------ -->
	        </div>
	    </div>
	</div>
  




<script>
$(function(){	
	//=======================================================================
	//일정등록 버튼 클릭시, 일정 등록.
	$("#popover").on('click', function(){ 
		var tag = "";
		tag += 	"<form id='calendar_form' method='post'>";
		tag += "<div class='flex p-3'>"+ 
					"<div class=''>일정명</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
					"<div class=''>" +
						"<input size='15' class='border border-black' type='text' name='calendar_title' id='calendar_title' value=''/>" +
					"</div>" +
				"</div>";
		tag += "<div class='flex p-3'>" +
					"<div>시작 날짜</div>&nbsp;&nbsp;" +
					"<div>" +
						"<input  class='border border-black' type='date' name='calendar_start_date' id='calendar_start_date' value=''/>" +
					"</div>" +
				"</div>";
		tag += "<div class='flex p-3'>" +
					"<div>마침 날짜</div>&nbsp;&nbsp;" +
						"<div>" +
							"<input  class='border border-black' type='date' name='calendar_end_date' id='calendar_end_date' value=''/>" +
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
		
		openPopup("일정관리", tag, 400);
	});//일정등록 창 end
	
	//==========

	//add event 작업. 
	$(document).on('submit', '#calendar_form', function(){ 
		console.log("너 되니?");  
	   var jsonData = $("#calendar_form").serialize();
	   $.ajax({  
			type:"POST",
			async:false, 
			url:"<%=projectPath%>/calendar/newData",
			data: jsonData,  
			success : function(result){	 
				console.log("너 어디갔니?" + result);
	 			calendar.refetchEvents();
			}, error : function(e){ 
				console.log("달력 이벤트 추가 에러" + e.responseText);
			}
		}); 
	   closebPopup("popup");
	  return false;
	});//이벤트영역	
	
	//모달 작업.
	function openPopup(subject, content, width){
		$("#modal_calendar").html(subject);
		$("#modal_calendar_content").html(content);
		openbPopup("popup", width)
	}

	function openbPopup(IDS, width){
		$("#"+IDS).css("width", width + "px");
		$("#" + IDS).bPopup(); 
	}
	function closebPopup(IDS){
		$("#" + IDS).bPopup().close();
	}
});//제이쿼리 영역 end

 </script>
	
	
</body>
</html>