<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %> 

<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script src="<%=projectPath %>/ckeditor/ckeditor.js"></script>

</head>
<body>


	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
			<div class="text-xl p-3 mx-16 ">  
				<i class="xi-school"></i>&nbsp;강좌 수정
			</div>
			
	
		<div class="p-3 flex justify-center">
			<form method="post" action="">
				<table>
					<thead>
						<tr>
							<th class="bg-info-300 p-3 w-32">과  정</th>
							<td class="p-3">자바 기반 Spring 웹 개발</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">개강일</th>
							<td class="p-3" ><input type="date" name="courseStart"/></td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">담당</th>
							<td class="p-3"><input type="text" name="teacherNmae" placeholder="김아무개"/></td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">수강료</th>
							<td class="p-3"><input type="text" name="coursePrice" placeholder="360000"/></td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">접수 기간</th>
							<td class="p-3">
								<input type="date" name="startRegiDate"/>&nbsp;~&nbsp;<input type="date" name="endRegiDate"/>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">수강기간</th>
							<td class="p-3">
								<input type="date" name="startCourseDate"/>&nbsp;~&nbsp;<input type="date" name="endCourseDate"/>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">상태</th>
							<td class="p-3">
								<input type="radio" name="courseState" value="개강"/>&nbsp;개 강&nbsp;
								<input type="radio" name="courseState" value="대기"/>&nbsp;대 기&nbsp;
								<input type="radio" name="courseState" value="폐강"/>&nbsp;폐 강&nbsp;
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">수업상세정보</th> 
							<td class="p-3">
								<div class="inline-block relative w-40">
									<select id="email" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
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
									<select id="email" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
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
									<select id="email" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
										<option selected="selected">::장소::</option>
									    <option vlaue="">:본관:</option> 
									    <option vlaue="본관 :A101">A101</option>
									    <option vlaue="본관 :A102">A102</option>
									    <option vlaue="본관 :A103">A103</option>
									    <option vlaue="본관 :B201">B201</option>
									    <option vlaue="본관 :B202">B202</option>
									    <option vlaue="본관 :B203">B203</option>
									    <option vlaue="본관 :C301">C301</option>
									    <option vlaue="본관 :C302">C302</option>
									    <option vlaue="본관 :C303">C303</option>
									    <option vlaue="">:신관:</option>
									    <option vlaue="신관:A101">A101</option>
									    <option vlaue="신관:A102">A102</option>
									    <option vlaue="신관:A103">A103</option>
									    <option vlaue="신관:B201">B201</option>
									    <option vlaue="신관:B202">B202</option>
									    <option vlaue="신관:B203">B203</option>
									    <option vlaue="신관:C301">C301</option>
									    <option vlaue="신관:C302">C302</option>
									    <option vlaue="신관:C303">C303</option>
									    <option vlaue="">:구관:</option>
									    <option vlaue="구관:A101">A101</option>
									    <option vlaue="구관:A102">A102</option>
									    <option vlaue="구관:A103">A103</option>
									    <option vlaue="구관:B201">B201</option>
									    <option vlaue="구관:B202">B202</option>
									    <option vlaue="구관:B203">B203</option>
									    <option vlaue="구관:C301">C301</option>
									    <option vlaue="구관:C302">C302</option>
									    <option vlaue="구관:C303">C303</option>
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
								<textarea class="border border-black" rows="7" cols="100" style="resize: none;" name="courseStory"></textarea>
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">강좌소개</th>
							<td class="p-3"> 
								<textarea rows="" cols="" id="courseEditContent" class="courseEditContent"></textarea>	
							</td>
						</tr>
						<tr>
							<th class="bg-info-300 p-3 w-32">사용교재</th>
							<td class="p-3">
								<input class="border border-black" type="text" name="courseTextbook"/>
							</td>
						</tr>
						<tr>
							<th colspan="2" class="p-3 text-right">
								<input class="bg-info-200 border-black border hover:bg-cta-800 font-bold py-2 px-4 rounded" type="submit" value="수정"/>
								<a class="bg-info-200 border-black border hover:bg-cta-800 font-bold py-2 px-4 rounded" href="<%=projectPath%>/admin/adminCourseList">돌아가기</a>
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
		CKEDITOR.replace('courseEditContent', {height:350})
	});
</script>

</body>
</html>