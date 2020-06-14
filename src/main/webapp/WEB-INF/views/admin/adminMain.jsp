<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%
	String projectPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    
    <link rel="stylesheet" href="<%=projectPath %>/css/tailwind.css" type="text/css"/>
	<link rel="stylesheet" href="<%=projectPath %>/css/adminCss.css" type="text/css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	
	<script src="/lms/js/jquery-3.4.1.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<!-- fullCalendar -->
    <link rel="stylesheet" href="<%=projectPath %>/fullCalendar/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="<%=projectPath %>/fullCalendar/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='<%=projectPath %>/fullCalendar/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='<%=projectPath %>/fullCalendar/vendor/css/bootstrap-datetimepicker.min.css' />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="<%=projectPath %>/fullCalendar/css/main.css">
	<!-- end -->			
		
	<script type="text/javascript"  src="<%=projectPath %>/js/adminJs.js"></script>        	
    <!-- chart js -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js" integrity="sha256-XF29CBwU1MWLaGEnsELogU6Y6rcc5nCkhhx89nFMIDQ=" crossorigin="anonymous"></script>
	
<title>Insert title here</title>
</head>
<body> 
<!--  -->    
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		
		<div class="text-xl p-3 mx-16 ">  
			<i class="xi-school"></i>&nbsp;HOME
		</div>
		
	    <!--Container-->
	    <div class="container w-full mx-auto pt-20">
	        <div class="w-full px-4 md:px-0 md:mt-8 mb-16 text-grey-darkest leading-normal">
	            <div class="flex flex-wrap">
	                <div class="w-full md:w-1/2 xl:w-1/3 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow p-2">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-shrink pr-4">
	                                <div class="rounded p-3 bg-green-dark"><i class="fa fa-wallet fa-2x fa-fw fa-inverse"></i></div>
	                            </div>
	                            <div class="flex-1 text-right md:text-center"> 
	                               <div class="bg-info-300"><h5 class="bg-info-300 uppercase text-grey">Total Revenue</h5></div> 
	                                <h3 class="text-3xl">$3249 <span class="text-green"><i class="fas fa-caret-up"></i></span></h3>
	                            </div>
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>
	                <div class="w-full md:w-1/2 xl:w-1/3 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow p-2">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-shrink pr-4">
	                                <div class="rounded p-3 bg-orange-dark"><i class="fas fa-users fa-2x fa-fw fa-inverse"></i></div>
	                            </div>
	                            <div class="flex-1 text-right md:text-center">
	                                <h5 class="bg-info-300 uppercase text-grey">Total Users</h5>
	                                <h3 class="text-3xl">249 <span class="text-orange"><i class="fas fa-exchange-alt"></i></span></h3>
	                            </div>
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>
	                <div class="w-full md:w-1/2 xl:w-1/3 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow p-2">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-shrink pr-4">
	                                <div class="rounded p-3 bg-yellow-dark"><i class="fas fa-user-plus fa-2x fa-fw fa-inverse"></i></div>
	                            </div>
	                            <div class="flex-1 text-right md:text-center">
	                                <h5 class="bg-info-300 uppercase text-grey">New Users</h5>
	                                <h3 class="text-3xl">2 <span class="text-yellow-dark"><i class="fas fa-caret-up"></i></span></h3>
	                            </div>
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>
	                <div class="w-full md:w-1/2 xl:w-1/3 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow p-2">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-shrink pr-4">
	                                <div class="rounded p-3 bg-blue-dark"><i class="fas fa-server fa-2x fa-fw fa-inverse"></i></div>
	                            </div>
	                            <div class="flex-1 text-right md:text-center">
	                                <h5 class="bg-info-300 uppercase text-grey">Server Uptime</h5>
	                                <h3 class="text-3xl">152 days</h3>
	                            </div>
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>
	                <div class="w-full md:w-1/2 xl:w-1/3 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow p-2">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-shrink pr-4">
	                                <div class="rounded p-3 bg-indigo-dark"><i class="fas fa-tasks fa-2x fa-fw fa-inverse"></i></div>
	                            </div>
	                            <div class="flex-1 text-right md:text-center">
	                                <h5 class="bg-info-300 uppercase text-grey">To Do List</h5>
	                                <h3 class="text-3xl">7 tasks</h3>
	                            </div>
	                        </div>
	                    </div>
	                    <!--/Metric Card-->
	                </div>
	                <div class="w-full md:w-1/2 xl:w-1/3 p-3">
	                    <!--Metric Card-->
	                    <div class="bg-white border rounded shadow p-2">
	                        <div class="flex flex-row items-center">
	                            <div class="flex-shrink pr-4">
	                                <div class="rounded p-3 bg-red-dark"><i class="fas fa-inbox fa-2x fa-fw fa-inverse"></i></div>
	                            </div>  
	                            <div class="flex-1 text-right md:text-center">
	                                <h5 class="bg-info-300 uppercase text-grey">Issues</h5>
	                                <h3 class="text-3xl">3 <span class="text-red"><i class="fas fa-caret-up"></i></span></h3>
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
	                <div class="w-full md:w-full p-3">
	                	<!-- 달력 넣을 공간 -->
	                    <div class="bg-white border rounded shadow">
	                        <div class="bg-info-300  border-b p-3"> 
	                            <h5 class="text-grey-dark">Calendar</h5>
	                       </div>
						<div>
					        <!-- 일자 클릭시 메뉴오픈 -->
					        <div id="contextMenu" class="dropdown clearfix">
					            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
					                style="display:block;position:static;margin-bottom:5px;">
					                <li><a tabindex="-1" href="#">카테고리1</a></li>
					                <li><a tabindex="-1" href="#">카테고리2</a></li>
					                <li><a tabindex="-1" href="#">카테고리3</a></li>
					                <li><a tabindex="-1" href="#">카테고리4</a></li>
					                <li class="divider"></li>
					                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
					            </ul>
					        </div>
					
					        <div id="wrapper">
					            <div id="loading"></div>
					            <div id="calendar"></div>
					        </div>
					
					
					        <!-- 일정 추가 MODAL -->
					        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
					            <div class="modal-dialog" role="document">
					                <div class="modal-content">
					                    <div class="modal-header">
					                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
					                                aria-hidden="true">&times;</span></button>
					                        <h4 class="modal-title"></h4>
					                    </div>
					                    <div class="modal-body">
					
					                        <div class="row">
					                            <div class="col-xs-12">
					                                <label class="col-xs-4" for="edit-allDay">하루종일</label>
					                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox">
					                            </div>
					                        </div>
					
					                        <div class="row">
					                            <div class="col-xs-12">
					                                <label class="col-xs-4" for="edit-title">일정명</label>
					                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
					                                    required="required" />
					                            </div>
					                        </div>
					                        <div class="row">
					                            <div class="col-xs-12">
					                                <label class="col-xs-4" for="edit-start">시작</label>
					                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
					                            </div>
					                        </div>
					                        <div class="row">
					                            <div class="col-xs-12">
					                                <label class="col-xs-4" for="edit-end">끝</label>
					                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
					                            </div>
					                        </div>
					                        <div class="row">
					                            <div class="col-xs-12">
					                                <label class="col-xs-4" for="edit-type">구분</label>
					                                <select class="inputModal" name="edit-type" id="edit-type">
					                                    <option value="카테고리1">카테고리1</option>
					                                    <option value="카테고리2">카테고리2</option>
					                                    <option value="카테고리3">카테고리3</option>
					                                    <option value="카테고리4">카테고리4</option>
					                                </select>
					                            </div>
					                        </div>
					                        <div class="row">
					                            <div class="col-xs-12">
					                                <label class="col-xs-4" for="edit-color">색상</label>
					                                <select class="inputModal" name="color" id="edit-color">
					                                    <option value="#D25565" style="color:#D25565;">빨간색</option>
					                                    <option value="#9775fa" style="color:#9775fa;">보라색</option>
					                                    <option value="#ffa94d" style="color:#ffa94d;">주황색</option>
					                                    <option value="#74c0fc" style="color:#74c0fc;">파란색</option>
					                                    <option value="#f06595" style="color:#f06595;">핑크색</option>
					                                    <option value="#63e6be" style="color:#63e6be;">연두색</option>
					                                    <option value="#a9e34b" style="color:#a9e34b;">초록색</option>
					                                    <option value="#4d638c" style="color:#4d638c;">남색</option>
					                                    <option value="#495057" style="color:#495057;">검정색</option>
					                                </select>
					                            </div>
					                        </div>
					                        <div class="row">
					                            <div class="col-xs-12">
					                                <label class="col-xs-4" for="edit-desc">설명</label>
					                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
					                                    id="edit-desc"></textarea>
					                            </div>
					                        </div>
					                    </div>
					                    <div class="modal-footer modalBtnContainer-addEvent">
					                        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					                        <button type="button" class="btn btn-primary" id="save-event">저장</button>
					                    </div>
					                    <div class="modal-footer modalBtnContainer-modifyEvent">
					                        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
					                        <button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
					                        <button type="button" class="btn btn-primary" id="updateEvent">저장</button>
					                    </div>
					                </div><!-- /.modal-content -->
					            </div><!-- /.modal-dialog -->
					        </div><!-- /.modal -->
					
					        <div class="panel panel-default">
					            <div class="panel-heading "> 
					                <h3 class="panel-title">필터</h3>
					            </div>
					            <div class="panel-body">
					
					                <div class="col-lg-6">
					                    <label for="calendar_view">구분별</label>
					                    <div class="input-group">
					                        <select class="filter" id="type_filter" multiple="multiple">
					                            <option value="카테고리1">카테고리1</option>
					                            <option value="카테고리2">카테고리2</option>
					                            <option value="카테고리3">카테고리3</option>
					                            <option value="카테고리4">카테고리4</option>
					                        </select>
					                    </div>
					                </div>
					 
					                <div class="col-lg-6">
					                    <label for="calendar_view">등록자별</label>
					                    <div class="input-group">
					                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="원장"
					                                checked>원장</label>
					                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="이학송"
					                                checked>이학송</label>
					                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="김영권"
					                                checked>김영권</label>
					                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="이현지"
					                                checked>이현지</label>
					                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="정진범"
					                                checked>정진범</label>
					                    </div>
					                </div>
					
					            </div>
					        </div>
					        <!-- /.filter panel --> 
					    </div>
					</div>
	                	<!-- 달력 넣을 공간 end -->
<!-- ---------------------------------------------------------------------------------------------------------------------------------------- -->					    
				 </div>   
	             <!-- 메시지 게시판 -->
	             <div class="w-full md:w-1/2 p-3">	
	              	<div class="bg-white border rounded shadow">
						<div class="border-b p-3"> 
							<h5 class="text-grey-dark">T-QnA</h5>   
	                            <table class="table-auto">
									  <thead>
									    <tr>
									      <th class="px-4 py-2">제   목</th>
									      <th class="px-2 py-2">작성자</th>
									      <th class="px-2 py-2">조회수</th>
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
									    <tr>
									      <th class="px-4 py-2">제   목</th>
									      <th class="px-2 py-2">작성자</th>
									      <th class="px-2 py-2">조회수</th>
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
	<script src="<%=projectPath %>/fullCalendar/vendor/js/jquery.min.js"></script>
    <script src="<%=projectPath %>/fullCalendar/vendor/js/bootstrap.min.js"></script>
    <script src="<%=projectPath %>/fullCalendar/vendor/js/moment.min.js"></script>
    <script src="<%=projectPath %>/fullCalendar/vendor/js/fullcalendar.min.js"></script>
    <script src="<%=projectPath %>/fullCalendar/vendor/js/ko.js"></script>
    <script src="<%=projectPath %>/fullCalendar/vendor/js/select2.min.js"></script>
    <script src="<%=projectPath %>/fullCalendar/vendor/js/bootstrap-datetimepicker.min.js"></script>
    <script src="<%=projectPath %>/fullCalendar/js/main.js"></script>
    <script src="<%=projectPath %>/fullCalendar/js/addEvent.js"></script>
    <script src="<%=projectPath %>/fullCalendar/js/editEvent.js"></script>
    <script src="<%=projectPath %>/fullCalendar/js/etcSetting.js"></script>
</body>
</html>