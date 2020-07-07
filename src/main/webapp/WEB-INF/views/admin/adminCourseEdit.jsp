<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %> 

	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
			<div class="text-xl p-6 ">  
				<i class="xi-school"></i>&nbsp;강좌 수정
			</div>
			
	
		<div class="p-3 flex justify-center">
			<form method="post" action="/lms/admin/adminCourseEditOk?course_no=${vo.course_no }" enctype="multipart/form-data" onsubmit="return checkRegCourseEdit()"> 
				<table>
					<thead>  
						<tr>
							<th class="bg-info-300 p-3 w-32">과  정</th>
							<td class="p-3">${vo.course_name}</td>
						</tr>
						<tr>   
							<th class="bg-info-300 p-3 w-32">개강일</th> 
							<td class="p-3 calendar"><input class="datepicker border border-gray-600"type="text" name="course_date" id="courseStart" value="${vo.course_date }"/></td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">담당</th>
							<td class="p-3">${vo.employee_name }</td>
						</tr>
						<tr> 
							<th class="bg-info-300 p-3 w-32">수강료</th>
							<td class="p-3"><input type="text" name="course_price" id="coursePrice"  value="${vo.course_price }"size="7"  onkeyup="inputNumberFormat(this)"/></td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">접수 기간</th> 
							<td class="p-3  calendar">
								<input class="datepicker border border-gray-600" type="text" name="course_reception_start" id="startRegiDate" value="${vo.course_reception_start }"/>&nbsp;~&nbsp;<input class="datepicker border border-gray-600" type="text" name="course_reception_end" value="${vo.course_reception_end }" id="endRegiDate"/>
							</td>
						</tr>
						<tr> 
							<th class="bg-info-300 p-3 w-32">수강기간</th>
							<td class="p-3 calendar">
								<input class="border border-gray-600 datepicker" value="${vo.course_start_date }" type="text" name="course_start_date" id="startCourseDate"/>&nbsp;~&nbsp;<input class="border border-gray-600 datepicker" type="text" value="${vo.course_end_date }" name="course_end_date" id="endCourseDate"/>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">상태</th>
							<td class="p-3"> 
								<c:if test="${vo.course_state == '개강' }">
									<input type="radio" name="course_state" value="개강" id="radioCheck_01" checked/>&nbsp;개 강&nbsp;
								</c:if>
								<c:if test="${vo.course_state != '개강' }">
									<input type="radio" name="course_state" value="개강" id="radioCheck_01" />&nbsp;개 강&nbsp;
								</c:if>
								<c:if test="${vo.course_state == '대기' }">
									<input type="radio" name="course_state" value="대기" id="radioCheck_02" checked/>&nbsp;대 기&nbsp;	
								</c:if>
								<c:if test="${vo.course_state != '대기' }">
									<input type="radio" name="course_state" value="대기" id="radioCheck_02"/>&nbsp;대 기&nbsp;
								</c:if>
								<c:if test="${vo.course_state == '폐강' }">
									<input type="radio" name="course_state" value="폐강" id="radioCheck_03" checked/>&nbsp;폐 강&nbsp;
								</c:if>
								<c:if test="${vo.course_state != '폐강' }"> 
									<input type="radio" name="course_state" value="폐강" id="radioCheck_03"/>&nbsp;폐 강&nbsp;
								</c:if> 
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">수업상세정보</th> 
							<td class="p-3">
								<div class="inline-block relative w-40">
									<select id="courseDay" name="course_day" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
										<c:if test="${vo.course_day == null }">
											<option value="::요일::" selected="selected">::요일::</option>
										</c:if>
										<c:if test="${vo.course_day != null }">
											<option>::요일::</option>
										</c:if>
										
										<c:if test="${vo.course_day == '월~금' }">
											<option value="월~금" selected="selected">월~금</option>
										</c:if>
										<c:if test="${vo.course_day != '월~금' }">
											<option value="월~금">월~금</option>
										</c:if>
										
										<c:if test="${vo.course_day == '월,수,금' }">
											<option value="월,수,금" selected="selected">월,수,금</option> 
										</c:if>
										<c:if test="${vo.course_day != '월,수,금' }">
											<option value="월,수,금">월,수,금</option> 
										</c:if>
										
										<c:if test="${vo.course_day == '화,목,금' }">
											<option value="화,목,금" selected="selected">화,목,금</option>
										</c:if>
										<c:if test="${vo.course_day != '화,목,금' }">
											<option value="화,목,금">화,목,금</option>
										</c:if>
										
										<c:if test="${vo.course_day == '주말반' }">
											<option value="주말반" selected="selected">주말반</option>
										</c:if>
										<c:if test="${vo.course_day != '주말반' }">
											<option value="주말반">주말반</option>
										</c:if>
								  	 </select>
								  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
						    			<i class="xi-angle-down"></i>
						  			</div> 
					 			</div>
					 			<div class="inline-block relative w-40"> 
									<select id="courseTime" name="course_time" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
										
										<c:if test="${vo.course_time == null }">
											<option value="::수업시간::" selected="selected">::수업시간::</option>
										</c:if>
										<c:if test="${vo.course_time != null }">
											<option>::수업시간::</option>
										</c:if>
										
										<c:if test="${vo.course_time == '09:00~12:00'}">
											<option value="09:00~12:00"selected="selected">09:00~12:00</option>
										</c:if>
										<c:if test="${vo.course_time != '09:00~12:00'}">
											<option value="09:00~12:00">09:00~12:00</option>
										</c:if>
										
										<c:if test="${vo.course_time == '13:00~16:00' }">
											<option value="13:00~16:00"selected="selected">13:00~16:00</option>
										</c:if>
										<c:if test="${vo.course_time != '13:00~16:00'}">
											<option value="13:00~16:00">13:00~16:00</option>
										</c:if>
										
										<c:if test="${vo.course_time == '16:00~19:00' }">
											<option value="16:00~19:00"selected="selected">16:00~19:00</option>
										</c:if>
										<c:if test="${vo.course_time != '16:00~19:00' }">
											<option value="16:00~19:00">16:00~19:00</option>
										</c:if>
										
										<c:if test="${vo.course_time == '20:00~23:00' }">
											<option value="20:00~23:00"selected="selected">20:00~23:00</option>
										</c:if>
										<c:if test="${vo.course_time != '20:00~23:00' }">
											<option value="20:00~23:00">20:00~23:00</option>
										</c:if> 
										
								  	 </select>
								  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
						    			<i class="xi-angle-down"></i>
						  			</div>
					 			</div>
													 			<div class="inline-block relative w-40">
									<select name="course_stage" id="courseStage" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline text-center">
										<c:if test="${vo.course_stage == null }">
											<option selected="selected">::장소::</option>
										</c:if>
										<c:if test="${vo.course_stage != null }">
											<option>::장소::</option>
										</c:if>
									  
									    <option value="">=====본관=====</option> 
									    
									    <c:if test="${vo.course_stage == '본관A101'}">
											 <option selected="selected" value="본관A101">A101</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관A101' }">
											 <option value="본관A101">A101</option> 
										</c:if>
									    
									    <c:if test="${vo.course_stage == '본관A102' }">
											 <option selected="selected"  value="본관A102">A102</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관A102' }">
											 <option value="본관A102">A101</option>
										</c:if>
									    
									    <c:if test="${vo.course_stage == '본관A103' }">
											 <option selected="selected"  value="본관A103">A103</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관A103' }">
											 <option value="본관A103">A103</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '본관A201' }">
											 <option selected="selected"  value="본관A201">A201</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관A201' }">
											 <option value="본관A201">A201</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '본관A202' }">
											 <option selected="selected" value="본관A202">A202</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관A202' }">
											 <option value="본관A202">A202</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '본관A203' }">
											 <option selected="selected" value="본관A203">A203</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관A203' }">
											 <option value="본관A203">A203</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '본관A301' }">
											<option selected="selected"  value="본관A301">A301</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관A301' }">
											 <option value="본관A301">A301</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '본관A302' }">
											 <option selected="selected"  value="본관A302">A302</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관A302' }">
											 <option value="본관A302">A302</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '본관A303' }">
											 <option selected="selected"  value="본관A303">A303</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관A303' }">
											 <option value="본관A303">A303</option>
										</c:if>
										 <c:if test="${vo.course_stage == '본관B101'}">
											 <option selected="selected" value="본관B101">B101</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관B101' }">
											 <option value="본관B101">A101</option>
										</c:if>
									    
									    <c:if test="${vo.course_stage == '본관B102' }">
											 <option selected="selected"  value="본관B102">B102</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관B102' }">
											 <option value="본관 B102">B102</option>
										</c:if>
									    
									    <c:if test="${vo.course_stage == '본관B103' }">
											 <option selected="selected"  value="본관B103">B103</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관B103' }">
											 <option value="본관B103">B103</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '본관B201' }">
											 <option selected="selected"  value="본관B201">B201</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관B201' }">
											 <option value="본관B201">B201</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '본관B202' }">
											 <option selected="selected" value="본관B202">B202</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관B202' }">
											 <option value="본관B202">B202</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '본관B203' }">
											 <option selected="selected" value="본관B203">B203</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관B203' }">
											 <option value="본관B203">B203</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '본관B301' }">
											<option selected="selected"  value="본관B301">B301</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관B301' }">
											 <option value="본관B301">B301</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '본관B302' }">
											 <option selected="selected"  value="본관B302">B302</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관B302' }">
											 <option value="본관B302">A302</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '본관B303' }">
											 <option selected="selected"  value="본관B303">B303</option>
										</c:if>
										<c:if test="${vo.course_stage != '본관B303' }">
											 <option value="본관B303">A303</option>
										</c:if>
										
										
									    <option value="">=====신관=====</option>
									    
									    <c:if test="${vo.course_stage == '신관A101' }">
											 <option selected="selected" value="신관A101">A101</option>
										</c:if>
										<c:if test="${vo.course_stage != '신관A101' }">
											 <option value="신관A101">A101</option>
										</c:if>
									    
									    <c:if test="${vo.course_stage == '신관A102' }">
											 <option selected="selected"  value="신관A102">A102</option>
										</c:if>
										<c:if test="${vo.course_stage != '신관A102' }">
											 <option value="신관A102">A102</option>
										</c:if>
									    
									    <c:if test="${vo.course_stage == '신관A103' }">
											 <option selected="selected"  value="신관A103">A103</option>
										</c:if>
										<c:if test="${vo.course_stage != '신관A103' }">
											 <option value="신관A103">A103</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '신관A201' }">
											 <option selected="selected"  value="신관A201">A201</option>
										</c:if>
										<c:if test="${vo.course_stage != '신관A201'}">
											 <option value="신관A201">A201</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '신관A202' }">
											 <option selected="selected" value="신관A202">A202</option>
										</c:if>
										<c:if test="${vo.course_stage != '신관A202'}">
											 <option value="신관A202">A202</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '신관A203' }">
											 <option selected="selected" value="신관A203">A203</option>
										</c:if>
										<c:if test="${vo.course_stage != '신관A203'}">
											 <option value="신관A203">A203</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '신관A301' }">
											<option selected="selected"  value="신관A301">A301</option>
										</c:if>
										<c:if test="${vo.course_stage != '신관A301'}">
											 <option value="신관A301">A301</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '신관A302' }">
											 <option selected="selected"  value="신관A302">A302</option>
										</c:if>
										<c:if test="${vo.course_stage != '신관A302' }">
											 <option value="신관A302">A302</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '신관A303' }">
											 <option selected="selected"  value="신관A303">A303</option>
										</c:if>
										<c:if test="${vo.course_stage != '신관A303' }">
											 <option value="신관A303">A303</option>
										</c:if>
					
									    <option value="">=====구관=====</option>
									    
									    <c:if test="${vo.course_stage == '구관A101' }">
											 <option selected="selected" value="구관A101">A101</option>
										</c:if>
										<c:if test="${vo.course_stage != '구관A101' }">
											 <option value="구관A101">A101</option>
										</c:if>
									    
									    <c:if test="${vo.course_stage == '구관A102'}">
											 <option selected="selected"  value="구관A102">A102</option>
										</c:if>
										<c:if test="${vo.course_stage != '구관A102'}">
											 <option value="구관A102">A102</option>
										</c:if>
									    
									    <c:if test="${vo.course_stage == '구관A103' }">
											 <option selected="selected"  value="구관A103">A103</option>
										</c:if>
										<c:if test="${vo.course_stage != '구관A103'}">
											 <option value="구관A103">A103</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '구관A201' }">
											 <option selected="selected"  value="구관A201">A201</option>
										</c:if>
										<c:if test="${vo.course_stage != '구관A201'}">
											 <option value="구관A201">A201</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '구관A202' }">
											 <option selected="selected" value="구관A202">A202</option>
										</c:if>
										<c:if test="${vo.course_stage != '구관A202' }">
											 <option value="구관A202">A202</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '구관A203' }">
											 <option selected="selected" value="구관A203">A203</option>
										</c:if>
										<c:if test="${vo.course_stage != '구관A203' }">
											 <option value="구관A203">A203</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '구관A301' }">
											<option selected="selected"  value="구관A301">A301</option>
										</c:if>
										<c:if test="${vo.course_stage != '구관A301' }">
											 <option value="구관A301">A301</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '구관A302' }">
											 <option selected="selected"  value="구관A302">A302</option>
										</c:if>
										<c:if test="${vo.course_stage != '구관A302' }">
											 <option value="구관A302">A302</option>
										</c:if>
										
										<c:if test="${vo.course_stage == '구관A303' }">
											 <option selected="selected"  value="구관A303">A303</option>
										</c:if>
										<c:if test="${vo.course_stage != '구관A303' }">
											 <option value="구관A303">A303</option>  
										</c:if>
								  	 </select>
								  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
						    			<i class="xi-angle-down"></i>
						  			</div>
					 			</div>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">강좌개요</th>
							<td class="p-3">
								<textarea id="courseStory" class="border border-black" rows="7" cols="100" style="resize: none;" name="course_overview">${vo.course_overview }</textarea>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">강좌소개</th>
							<td class="p-3"> 
								<textarea rows="" cols="" id="courseEditContent" name="course_content" class="courseEditContent">${vo.course_content }</textarea>	
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">사용교재</th>
							<td class="p-3">
								<input class="border border-black" type="text" name="course_textbook" value="${vo.course_textbook }"/>
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
								<input class="bg-info-700 text-white rounded py-2 px-4 " type="submit" value="수정"/>
								<a class="bg-info-700 text-white rounded py-2 px-4" href="<%=projectPath%>/admin/adminCourseList">돌아가기</a>
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
		CKEDITOR.replace('courseEditContent', {height:350});
	});
</script>
