<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6 w-full">
		<i class="xi-school"></i><span class="ml-2">수강생현황</span>
	</div>
	<a href="/lms/student_current_situation" class="mb-2 w-full"><i class="xi-angle-left-min">목록으로</i></a>
	<form class="w-full">
		<table class="w-full">
			<tr>
				<td class="border-solid border-4 border-gray-600 ">이름</td>
				<td class="border-solid border-4 border-gray-600 " colspan="3">한글 : <input type="text" name="korname" class="border-solid border-2 border-gray-600 rounded"/> 영문 : <input type="text" name="engname" class="border-solid border-2 border-gray-600 rounded"/></td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 ">성별</td>
				<td class="border-solid border-4 border-gray-600 ">
					<div>
						<input type="radio" name="gender" value="M">남
						<input type="radio" name="gender" value="F">여
					</div>
				</td>
				<td class="border-solid border-4 border-gray-600 ">생년월일</td>
				<td class="border-solid border-4 border-gray-600 ">
					<div class="inline-block relative w-40 mx-2">
						<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
							<option>선택</option>
							<c:forEach var="i" begin="0" end="${2020-1940}">
							    <c:set var="yearOption" value="${2020-i}" />
							    <option value="${yearOption}">${yearOption}</option>
							</c:forEach>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
					    </div>
					</div>
					년<div class="inline-block relative w-40 mx-2">
						<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
							<option>선택</option>
							<c:forEach var="i" begin="1" end="12">
							    <option value="${i}">${i}</option>
							</c:forEach>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
					    </div>
					</div>
					월<div class="inline-block relative w-40 mx-2">
						<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
							<option>선택</option>
							<c:forEach var="i" begin="1" end="31">
							    <option value="${i}">${i}</option>
							</c:forEach>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
					    </div>
					</div>일
				</td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 ">학교정보</td>
				<td class="border-solid border-4 border-gray-600 " colspan="3"><input type="text" name="schoolInfo" class="border-solid border-2 border-gray-600 "/><button>검색</button>
					<div class="inline-block relative w-40 mx-2">
						<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
							<option>학년선택</option>
							<c:forEach var="i" begin="1" end="6">
							    <option value="${i}">${i}학년</option>
							</c:forEach>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
					    </div>
					</div>
					<div class="inline-block relative w-40 mx-2">
						<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
							<option>졸업여부</option>
							<option>재학</option>
							<option>졸업</option>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
					    </div>
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 ">휴대폰 정보</td>
				<td class="border-solid border-4 border-gray-600 ">
					010
					- <input type="text" name="student_phone1" class="border-solid border-2 border-gray-600 w-20 rounded"/>
					- <input type="text" name="student_phone2" class="border-solid border-2 border-gray-600 w-20 rounded"/>
				</td>
				<td class="border-solid border-4 border-gray-600 ">Email</td>
				<td class="border-solid border-4 border-gray-600 ">
					<div> 
						<input type="text" name="id" class="border-solid border-2 border-gray-600 rounded email1"/>@  
						<input id="domain" name="domain" type="text" class="border-solid border-2 border-gray-600 text-center rounded email2"/> 	
						<div class="inline-block relative w-40">
							<select id="email" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
								<option>직접입력</option>
							    <option>naver.com</option>
							    <option>daum.net</option>
							    <option>gmail.com</option>
							    <option>hotmail.com</option>
							    <option>nate.com</option>
							    <option>korea.com</option>
							    <option>chollian.net</option>
						  	 </select>
						  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
				    			<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				  			</div>
			 			</div>
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 ">전화번호</td>
				<td class="border-solid border-4 border-gray-600 ">
					<input type="text" name="tel1" class="border-solid border-2 border-gray-600 w-20 rounded"/>
					- <input type="text" name="tel2" class="border-solid border-2 border-gray-600 w-20 rounded"/>
					- <input type="text" name="tel3" class="border-solid border-2 border-gray-600 w-20 rounded"/>
				</td>
				<td class="border-solid border-4 border-gray-600 ">홈아이디</td>
				<td class="border-solid border-4 border-gray-600 "><input type="text" name="id" class="border-solid border-2 border-gray-600 rounded w-64"/></td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 ">학부모 휴대폰</td>
				<td class="border-solid border-4 border-gray-600 ">
					010
					- <input type="text" name="parent_phone1" class="border-solid border-2 border-gray-600 w-20 rounded"/>
					- <input type="text" name="parent_phone2" class="border-solid border-2 border-gray-600 w-20 rounded"/>
				</td>
				<td class="border-solid border-4 border-gray-600 ">학부모 Email</td>
				<td class="border-solid border-4 border-gray-600 ">
					<div> 
						<input type="text" name="id" class="border-solid border-2 border-gray-600 rounded email1"/>@  
						<input id="domain" name="domain" type="text" class="border-solid border-2 border-gray-600 text-center rounded email2"/> 	
						<div class="inline-block relative w-40">
							<select id="email" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
								<option>직접입력</option>
							    <option>naver.com</option>
							    <option>daum.net</option>
							    <option>gmail.com</option>
							    <option>hotmail.com</option>
							    <option>nate.com</option>
							    <option>korea.com</option>
							    <option>chollian.net</option>
						  	 </select>
						  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
				    			<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				  			</div>
			 			</div>
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 ">학부모 관계</td>
				<td class="border-solid border-4 border-gray-600 ">
					<div class="inline-block relative w-40 mx-2">
						<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
							<option>==</option>
							<option>조부</option>
							<option>조모</option>
							<option>부</option>
							<option>모</option>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
					    </div>
					</div>
				</td>
				<td class="border-solid border-4 border-gray-600 ">학부모 섬함</td>
				<td class="border-solid border-4 border-gray-600 "><input type="text" class="border-solid border-2 border-gray-600 rounded w-64"/></td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 ">주소</td>
				<td  class="border-solid border-4 border-gray-600 "colspan="3">
					<div class="flex">
						<input id="reward_addr_num" name="reward_addr_num" type="text" class="border-solid border-2 border-gray-600 w-32 rounded addr1 text-center" maxlength="5" readonly/>
						<input type="button" onClick="openDaumZipAddress();" class="ml-3 border rounded w-20" value="주소검색"/>
					</div>
					<input id="reward_addr_main" name="reward_addr_main" type="text" class="border-solid border-2 border-gray-600 mt-3 rounded addr2" style="width:400px" readonly>
					<input id="reward_addr_sub" name="reward_addr_sub" type="text" class="border-solid border-2 border-gray-600 mt-3 rounded" style="width:300px"placeholder="상세주소">
				</td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 ">수강동기</td>
				<td class="border-solid border-4 border-gray-600 "colspan="3">
					<div>
						<input type="radio" name="motivation">소개
						<input type="radio" name="motivation">신문
						<input type="radio" name="motivation">전단지
						<input type="radio" name="motivation">홈페이지
						<input type="radio" name="motivation">카페
						<input type="radio" name="motivation">기타<input type="text" name="motivation" class="border-solid border-2 border-gray-600 rounded"/>
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 ">관심분야</td>
				<td class="border-solid border-4 border-gray-600 " colspan="3">
					<div>
						<input type="radio" name="motivation">JAVA
						<input type="radio" name="motivation">HTML/CSS
						<input type="radio" name="motivation">JAVASCRIPT
						<input type="radio" name="motivation">SPRING
						<input type="radio" name="motivation">MYBATIS
						<input type="radio" name="motivation">기타<input type="text" name="motivation" class="border-solid border-2 border-gray-600 rounded"/>
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 ">메모</td>
				<td class="border-solid border-4 border-gray-600 "colspan="3"><textarea cols="100" rows="5"></textarea></td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 ">최초 등록일</td>
				<td class="border-solid border-4 border-gray-600 " colspan="3">
				<div class="calendar"><input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2"/></div></td>
			</tr>
		</table>
		<div class="text-center my-5">
			<input class="border-solid border-2 border-gray-600 rounded" type="submit" value="등록하기"/>
		</div>
	</form>
</div>
</body>
</html>