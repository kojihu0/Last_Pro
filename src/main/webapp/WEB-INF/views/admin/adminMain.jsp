<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>


<!--  -->    
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		
		<div class="text-xl p-3 pt-20 mx-16 ">  
			<i class="xi-school"></i>&nbsp;HOME
		</div>
		
	    <!--Container-->
	    <div class="container w-full mx-auto pt-20">
	        <div class="w-full px-4 md:px-0 md:mt-8 mb-16 text-grey-darkest leading-normal">
	            <div class="flex flex-wrap">
	                <div class="w-full md:w-1/2 xl:w-1/3 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-1 text-right md:text-center"> 
	                               <div class="bg-info-300 uppercase text-left text-grey p-2 font-bold">Total Revenue</div> 
	                                <h3 class="text-3xl p-3">$3249 <span class="text-green"><i class="fas fa-caret-up"></i></span></h3>
	                            </div> 
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>
					<div class="w-full md:w-1/2 xl:w-1/3 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-1 text-right md:text-center"> 
	                               <div class="bg-info-300 uppercase text-left text-grey p-2 font-bold">Total T-Msg</div> 
	                                <h3 class="text-3xl p-3">$3249 <span class="text-green"><i class="fas fa-caret-up"></i></span></h3>
	                            </div> 
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>
	                <div class="w-full md:w-1/2 xl:w-1/3 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-1 text-right md:text-center"> 
	                               <div class="bg-info-300 uppercase text-left text-grey p-2 font-bold">Total Popular Teacher</div> 
	                                <h3 class="text-3xl p-3">$3249 <span class="text-green"><i class="fas fa-caret-up"></i></span></h3>
	                            </div> 
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>	             
	                <div class="w-full md:w-1/2 xl:w-1/3 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-1 text-right md:text-center"> 
	                               <div class="bg-info-300 uppercase text-left text-grey p-2 font-bold">Total Student</div> 
	                                <h3 class="text-3xl p-3">3249 <span class="text-green"><i class="fas fa-caret-up"></i></span></h3>
	                            </div> 
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>
	                <div class="w-full md:w-1/2 xl:w-1/3 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-1 text-right md:text-center"> 
	                               <div class="bg-info-300 uppercase text-left text-grey p-2 font-bold">Total Teacher</div> 
	                                <h3 class="text-3xl p-3">3249 <span class="text-green"><i class="fas fa-caret-up"></i></span></h3>
	                            </div> 
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>
	                <div class="w-full md:w-1/2 xl:w-1/3 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-1 text-right md:text-center"> 
	                               <div class="bg-info-300 uppercase text-left text-grey p-2 font-bold">Total Course</div> 
	                                <h3 class="text-3xl p-3">$3249 <span class="text-green"><i class="fas fa-caret-up"></i></span></h3>
	                            </div> 
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>	                	                	        
	            </div>
	
	            <!--Divider-->
	            <hr class="border-b-2 border-grey-light my-8 mx-4">
				
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
	             <!-- 메시지 게시판 -->
	             <div class="w-full md:w-1/2 p-3">	
	              	<div class="bg-white border rounded shadow">
						<div class="border-b p-3"> 
							<h5 class="text-grey-dark">T-QnA</h5>   
	                            <table class="table-auto">
									  <thead>
									    <tr class="bg-info-300">
									      <th class="px-4 py-2">제   목</th>
									      <th class="px-2 py-2 w-16">작성자</th>
									      <th class="px-2 py-2 w-16">조회수</th> 
									    </tr>
									  </thead>
									  <tbody>
									    <tr>
									      <td class="border px-4 py-2">Intro to CSS</td>
									      <td class="border px-4 py-2">Adam</td>
									      <td class="border px-4 py-2">858</td>
									    </tr>
									    <tr class="bg-gray-100">
									      <td class="border px-4 py-2">A Long and Winding Tour of the History of UI Frameworks and Tools and the Impact on Design</td>
									      <td class="border px-4 py-2">Adam</td>
									      <td class="border px-4 py-2">112</td>
									    </tr>
									    <tr>
									      <td class="border px-4 py-2">Intro to JavaScript</td>
									      <td class="border px-4 py-2">Chris</td>
									      <td class="border px-4 py-2">1,280</td>
									    </tr>
									  </tbody>
									</table>
	                        </div>
	                    </div>
	                   </div>
	                	<!-- 메시지 게시판 -->
	                  <div class="w-full md:w-1/2 p-3">	
	                	 <div class="bg-white border rounded shadow">
	                        <div class="border-b p-3"> 
	                            <h5 class="text-grey-dark">T-Message</h5>
	                            
	                            <table class="table-auto">
									  <thead>
									    <tr  class="bg-info-300 ">
									      <th class="px-4 py-2">제   목</th>
									      <th class="px-2 py-2 w-16">작성자</th>
									      <th class="px-2 py-2 w-16">조회수</th>
									    </tr> 
									  </thead>
									  <tbody>
									    <tr>
									      <td class="border px-4 py-2">Intro to CSS</td>
									      <td class="border px-4 py-2">Adam</td>
									      <td class="border px-4 py-2">858</td>
									    </tr>
									    <tr class="bg-gray-100">
									      <td class="border px-4 py-2">A Long and Winding Tour of the History of UI Frameworks and Tools and the Impact on Design</td>
									      <td class="border px-4 py-2">Adam</td>
									      <td class="border px-4 py-2">112</td>
									    </tr>
									    <tr>
									      <td class="border px-4 py-2">Intro to JavaScript</td>
									      <td class="border px-4 py-2">Chris</td>
									      <td class="border px-4 py-2">1,280</td>
									    </tr>
									  </tbody>
									</table>
	                        </div>
	                    </div>
	                   </div>
	                	<!-- 메시지 게시판 end-->
	                  <div class="w-full md:w-1/2 p-3">
	                    <!--Graph Card-->
	                    <div class="bg-white border rounded shadow">
	                        <div class="border-b p-3"> 
	                            <h5 class="text-grey-dark">Popularity Course</h5>
	                        </div>
	                        <div class="p-5">
	                            <canvas id="chartjs-7" class="chartjs" width="undefined" height="undefined"></canvas>
	                        
						   <script>
	                            new Chart(document.getElementById("chartjs-7"), {
	                                "type": "bar",
	                                "data": {
	                                    "labels": ["JAVA", "Html/CSS", "javascript", "Spring"],
	                                    "datasets": [{
	                                        "label": "Page Impressions",
	                                        "data": [10, 20, 30, 40],
	                                        "borderColor": "rgb(255, 99, 132)",
	                                        "backgroundColor": "rgba(255, 99, 132, 0.2)"
	                                    }, {
	                                        "label": "Adsense Clicks",
	                                        "data": [5, 15, 10, 30],
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
	                            new Chart(document.getElementById("chartjs-0"), {
	                                "type": "line",
	                                "data": {
	                                    "labels": ["김영권", "정진범", "이현지", "정호윤", "이학송", "이민호", "김춘식"],
	                                    "datasets": [{
	                                        "label": "Views",
	                                        "data": [65, 59, 80, 81, 56, 55, 40],
	                                        "fill": false,
	                                        "borderColor": "rgb(75, 192, 192)",
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