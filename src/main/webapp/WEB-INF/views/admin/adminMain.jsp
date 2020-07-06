<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>


<div class="container my-0 mx-auto px-8 xl:px-0">
	<div class="text-xl py-3 mx-16 text-xl">  
		<span class="mr-2"><i class="xi-school my-6"></i></span>HOME
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
                                <h3 class="text-3xl p-3"><span class="mr-2"><i class="xi-won"></i></span>
                                	<span class="font-bold">
                                		${amVo.totalPrice } 
                                	</span>
                                </h3>
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
                                <h3 class="text-3xl p-3"><span class="mr-2 font-bold">${amVo.totalStudent }</span>명</h3>
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
                                <h3 class="text-3xl p-3"><span class="mr-2 font-bold">${amVo.totalTeacher}</span>명</h3>
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
                                <h3 class="text-3xl p-3"><span class="mr-2 font-bold">${amVo.totalCourse }</span>개</h3>
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
	           			<input class="bg-black py-2 px-6 rounded cursor-pointer" type="button" id="popover" value="일정추가"/>
	           		</div>
		         	<div id='calendar'></div>
					<div id="popup" class="bg-white rounded shadow">
	    		 	 	<div class="modal_calendar p-3 text-center font-bold text-lg bg-gray-200 rounded-t" id="modal_calendar"></div>
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
						   		var courseName_00;
						   		var courseName_01;
						   		var courseName_02;
						   		var courseName_03;
						   		
						   		var payment_Num_C_00;
						   		var payment_Num_C_01;
						   		var payment_Num_C_02;
						   		var payment_Num_C_03;
								
						   		
						   		 courseName_00 = '${courseName[0]}';  
						   		 courseName_01 = '${courseName[1]}';
						   		 courseName_02 = '${courseName[2]}';
						   		 courseName_03 = '${courseName[3]}'; 


						   	
						   		 payment_Num_C_00 = ${payment_Num_C[0]};
						   		 payment_Num_C_01 = ${payment_Num_C[1]};
						   		 payment_Num_C_02 = ${payment_Num_C[2]};
						   		 payment_Num_C_03 = ${payment_Num_C[3]};

						   		
	                            new Chart(document.getElementById("chartjs-7"), { 
	                                "type": "bar",
	                                "data": {
	                                    "labels": [	courseName_00,
	                                    			courseName_01,
	                                    			courseName_02, 
	                                    			courseName_03	
	                                    		  ],
	                                    "datasets": [{
	                                        "label": "course", 
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
	                                        "label": "point-line",
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
                            
	                            var teacherName_00;
						   		var teacherName_01;
						   		var teacherName_02;
						   		var teacherName_03;
	                        	var teacherName_04;
						   		var teacherName_05;
						   		var teacherName_06;
						
						   		var payment_Num_C_00;
						   		var payment_Num_C_01;
						   		var payment_Num_C_02;
						   		var payment_Num_C_03;
						   		var payment_Num_C_04;
						   		var payment_Num_C_05;
						   		var payment_Num_C_06;
						   		
						   		teacherName_00 = "${teacherName[0]}";
						   		teacherName_01 = "${teacherName[1]}";	 
						   		teacherName_02 = "${teacherName[2]}";
						   		teacherName_03 = "${teacherName[3]}";
						   		teacherName_04 = "${teacherName[4]}";
						   		teacherName_05 = "${teacherName[5]}";
						   		teacherName_06 = "${teacherName[6]}";
						   		//							
								payment_Num_C_00 = ${payment_Num_T[0]};
						   		payment_Num_C_01 = ${payment_Num_T[1]};	 
						   		payment_Num_C_02 = ${payment_Num_T[2]};
						   		payment_Num_C_03 = ${payment_Num_T[3]};
						   		payment_Num_C_04 = ${payment_Num_T[4]};
						   		payment_Num_C_05 = ${payment_Num_T[5]};
						   		payment_Num_C_06 = ${payment_Num_T[6]};
						  
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
		tag += 	"<form id='calendar_form' method='post'>"+
				"<div class='p-4'>";
		tag += "<div class='flex items-center mb-4'>"+ 
					"<div class='w-1/4'>일정명</div>" +
					"<div class='w-3/4'>" +
						"<input class='appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:border-gray-700' type='text' name='calendar_title' id='calendar_title' value=''/>" +
					"</div>" +
				"</div>";
		tag += "<div class='flex items-center mb-4'>" +
					"<div class='w-1/4'>시작 날짜</div>" +
					"<div class='w-3/4'>" +
						"<input class='appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:border-gray-700' type='date' name='calendar_start_date' id='calendar_start_date' value=''/>" +
					"</div>" +
				"</div>";
		tag += "<div class='flex items-center mb-4'>" +
					"<div class='w-1/4'>마침 날짜</div>" +
					"<div class='w-3/4'>" +
						"<input class='appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:border-gray-700' type='date' name='calendar_end_date' id='calendar_end_date' value=''/>" +
					"</div>" +
				"</div>";
		tag += "<div class='flex items-center mb-4'>" +
					"<div class='w-1/4'>일정 명칭</div>" + 
					"<div class='w-3/4'>" + 
						"<textarea class='appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:border-gray-700 resize-none' cols='18' rows='5' name='calendar_content' id='calendar_content'></textarea>" +
					"</div>" +
				"</div>"	;
		tag += "<div class='flex items-center mb-4'>" +
					"<div class='w-1/4'>컬러</div>" +
					"<div class='w-3/4'>"+
						"<div class='inline-block relative'>" +
							"<select name='calendar_color' id='colorSelect' class='block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded leading-tight focus:outline-none focus:border-gray-700'>" +
								"<option>::색상::</option>" +
								"<option value='#3A3939' style='color:#3A3939'>검정</option>" +
								"<option value='#FF583F' style='color:#FF583F'>빨강</option>" +
								"<option value='#51DBFF' style='color:#51DBFF'>파랑</option>" +
								"<option value='#A4ED75' style='color:#A4ED75'>녹색</option>" +  
							"</select>" +
							"<div class='pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700'><i class='xi-angle-down'></i></div>"+
						"</div>" +
					"</div>" +
				"</div>"	 ;
					
		tag += "<div class='text-right'>" +
					"<input type='submit' value='저장' id='btn' class='bg-gray-900 py-2 px-4 text-white font-bold rounded'/>"+  
				"</div>"+  
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