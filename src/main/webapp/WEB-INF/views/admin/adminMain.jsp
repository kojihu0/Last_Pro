<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    

	   <!-- chart js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js" integrity="sha256-XF29CBwU1MWLaGEnsELogU6Y6rcc5nCkhhx89nFMIDQ=" crossorigin="anonymous"></script>
	
	<!-- fullCalendar02 -->
	<link rel="stylesheet" href="<%=projectPath %>/fullCalendar02/core/main.css" type="text/css"/>
	<link rel="stylesheet" href="<%=projectPath %>/fullCalendar02/daygrid/main.css" type="text/css"/>
	<link rel="stylesheet" href="<%=projectPath %>/fullCalendar02/timegrid/main.css" type="text/css"/>
	
<title>Insert title here</title>
</head>
<body> 
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
	              			<button style="background-color: #1a252f;" class="p-3 w-24 h-10 rounded" onClick="javascript:addEvent();">일정등록</button>
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
 
	<!--  -->
	<script src="<%=projectPath %>/fullCalendar02/moment/main.js"></script>
	<script src="<%=projectPath %>/js/bPopup.js"></script>
	<script src="<%=projectPath %>/fullCalendar02/core/main.js"></script>
	<script src="<%=projectPath %>/fullCalendar02/interaction/main.js"></script>
	<script src="<%=projectPath %>/fullCalendar02/daygrid/main.js"></script>
	<script src="<%=projectPath %>/fullCalendar02/timegrid/main.js"></script>
	
	<script type="text/javascript"  src="<%=projectPath %>/js/adminJs.js"></script> 
    
</body>
</html>