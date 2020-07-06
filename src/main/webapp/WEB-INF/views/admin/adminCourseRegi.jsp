<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		<div class="text-xl p-3 mx-16 ">  
			<i class="xi-school"></i>&nbsp;강좌 등록
		</div>
		<div class="p-3 flex justify-center">
			<form method="post" action="/lms/admin/adminCourseRegiOk" onsubmit="return checkRegCourseRegi()">
				<table>
					<thead>
						<tr>
							<th class="bg-info-300 p-3 w-32">과  정</th>
							<td class="p-3"><input id="courseName" class="border border-black" type="text" name="course_name" /></td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32 ">개강일</th>
							<td class="p-3 calendar" ><input id="courseStart" type="text" class="datepicker border border-gray-600" name="course_date"/></td>
						</tr>
						<tr> 
							<th class="bg-info-300 p-3 w-32">담당</th>
							<td class="p-3"><input id="teacherNmae" type="text" name="employee_name" value="${employee_name }"/></td> 
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">수강료</th>
							<td class="p-3"><input id="coursePrice" type="text" name="course_price" placeholder="360000" onkeyup="inputNumberFormat(this)"/></td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">접수 기간</th>
							<td class="p-3 calendar">
								<input type="text" class="datepicker border border-gray-600" id="startRegiDate" name="course_reception_start"/>&nbsp;~&nbsp;<input class="datepicker border border-gray-600" id="endRegiDate" type="text" name="course_reception_end"/>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">수강기간</th>
							<td class="p-3 calendar">
								<input type="text" class="border border-gray-600 datepicker" id="startCourseDate" name="course_start_date"/>&nbsp;~&nbsp;<input type="text" class="datepicker border border-gray-600" id="endCourseDate" name="course_end_date"/>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">상태</th>
							<td class="p-3">
								<input type="radio" name="course_state" value="개강" checked/>&nbsp;개 강&nbsp;
								<input type="radio" name="course_state" value="대기"/>&nbsp;대 기&nbsp;
								<input type="radio" name="course_state" value="폐강"/>&nbsp;폐 강&nbsp;
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">수업상세정보</th> 
							<td class="p-3">
								<div class="inline-block relative w-40">
									<select  name="course_day" id="courseDay" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
										<option selected="selected">::요일::</option>
									    <option value="월~금">월~금</option>
									    <option value="월,수,금">월,수,금</option>
									    <option value="화,목,금">화,목,금</option>
									    <option value="주말반">주말반</option>
								  	 </select>
								  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
						    			<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
						  			</div>
					 			</div>
					 			<div class="inline-block relative w-40">
									<select name="course_time" id="courseTime" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
										<option selected="selected">::수업시간::</option>
									    <option value="09:00~12:00">09:00~12:00</option>
									    <option value="13:00~16:00">13:00~16:00</option>
									    <option value="16:00~19:00">16:00~19:00</option>
									    <option value="20:00~23:00">20:00~23:00</option>
								  	 </select>
								  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
						    			<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
						  			</div>
					 			</div> 
					 			<div class="inline-block relative w-40">
									<select name="course_stage" id="courseStage" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline text-center">
										<option selected="selected">::장소::</option>
									    <option value="">=====본관=====</option>
									    <option value="본관A101">A101</option>
									    <option value="본관A102">A102</option>
									    <option value="본관A103">A103</option>
									    <option value="본관B201">B201</option>
									    <option value="본관B202">B202</option>
									    <option value="본관B203">B203</option>
									    <option value="본관C301">C301</option>
									    <option value="본관C302">C302</option>
									    <option value="본관C303">C303</option>
									    <option value="">=====신관=====</option>
									    <option value="신관A101">A101</option>
									    <option value="신관A102">A102</option>
									    <option value="신관A103">A103</option>
									    <option value="">=====구관=====</option>
									    <option value="구관A101">A101</option>
									    <option value="구관A102">A102</option>
									    <option value="구관A103">A103</option>
								  	 </select> 
								  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
						    			<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
						  			</div>
					 			</div>
					 		</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">강좌개요</th> 
							<td class="p-3">
								<textarea name="course_overview" class="border border-black" rows="7" cols="100" style="resize: none;" id="courseStory" name="courseStory"></textarea>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">강좌소개</th>
							<td class="p-3"> 
								<textarea name="course_content" id="courseRegiContent" class="courseRegiContent"></textarea>	 
							</td>
						</tr>  
						<tr>
							<th class="bg-info-300 p-3 w-32">사용교재</th>
							<td class="p-3">
								<input class="border border-black" type="text" name="course_textbook"/>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">강의 이미지</th>
							<td class="p-3"> 
								<input class="border border-black" type="file" name="course_img" value="${vo.course_img }"/>
							</td>
						</tr>
						<tr>
							<th colspan="2" class="p-3 text-right">
								<input class="bg-info-200 border-solid border-2 border-gray-600 rounded py-2 px-4" type="submit" value="등록"/>
								<a class="bg-info-200 border-solid border-2 border-gray-600 rounded py-2 px-4" href="<%=projectPath%>/admin/adminCourseList">돌아가기</a>
							</th>
							<th>
							</th>
						</tr>
					</thead>
				</table>
			</form>
		</div>
	</div>

<script>
	$(function(){   
		CKEDITOR.replace('courseRegiContent', {height:350});
	});
</script>
