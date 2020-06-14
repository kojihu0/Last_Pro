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
	<div class="h-10 text-lg my-6">
		<i class="xi-school"></i><span class="ml-2">수강생현황</span>
	</div>
	<a href="/lms/student_current_situation" class="w-full"><i class="xi-angle-left-min">목록으로</i></a>
	<!------------------------------------------------- 탭 메뉴 -------------------------------------->
	<ul class="flex border-b w-full">
	  <li class="-mb-px mr-1" id="basicInfo_tab">
	    <a class="bg-white inline-block border-l border-t border-r rounded-t py-2 px-4 text-blue-700 font-semibold">기본정보</a>
	  </li>
	  <li class="mr-1" id="counseling_management_tab">
	    <a class="bg-white inline-block py-2 px-4 text-blue-500 hover:text-blue-800 font-semibold">상담관리</a>
	  </li>
	  <li class="mr-1" id="assigning_class_tab">
	    <a class="bg-white inline-block py-2 px-4 text-blue-500 hover:text-blue-800 font-semibold">반배정 현황</a>
	  </li>
	  <li class="mr-1" id="payment_status_tab">
	    <a class="bg-white inline-block py-2 px-4 text-blue-500 hover:text-blue-800 font-semibold">납부현황</a>
	  </li>
	   <li class="mr-1" id="attendance_absent_tab">
	    <a class="bg-white inline-block py-2 px-4 text-blue-500 hover:text-blue-800 font-semibold">출결현황</a>
	  </li>
	</ul>
	<!------------------------------------------------- 탭 메뉴 --------------------------------------->
	<span class="mt-5 mb-4 w-full">●하정우/roy - 회원번호 : 10111/홈아이디: zxc61</span>
	<!-- ----------------------------------------------기본정보 ---------------------------------------->
	<form id="basicInfo" class="w-full" action="/lms/modify_basicInfo">
		<table class="w-full">
			<tr>
				<td class="border-solid border-4 border-gray-600 bg-info-200">사진</td>
				<td class="border-solid border-4 border-gray-600 "></td>
				<td class="border-solid border-4 border-gray-600 bg-info-200">최근수강정보</td>
				<td class="border-solid border-4 border-gray-600 ">
					<span class="ml-3">202006 JAVASCRIPT와 함께</span><span class="ml-10">2020-06-14</span><span style="color:red;">(퇴원)</span>
				</td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 bg-info-200">이름</td>
				<td class="border-solid border-4 border-gray-600 " colspan="3">한글 : <input type="text" name="korname" class="border-solid border-2 border-gray-600 rounded"/> 영문 : <input type="text" name="engname" class="border-solid border-2 border-gray-600 rounded"/></td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 bg-info-200">성별</td>
				<td class="border-solid border-4 border-gray-600 ">
					<div>
						<input type="radio" name="gender" value="M">남
						<input type="radio" name="gender" value="F">여
					</div>
				</td>
				<td class="border-solid border-4 border-gray-600 bg-info-200">생년월일</td>
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
				<td class="border-solid border-4 border-gray-600 bg-info-200">학교정보</td>
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
				<td class="border-solid border-4 border-gray-600 bg-info-200">휴대폰 정보</td>
				<td class="border-solid border-4 border-gray-600 ">
					010
					- <input type="text" name="student_phone1" class="border-solid border-2 border-gray-600 w-20 rounded"/>
					- <input type="text" name="student_phone2" class="border-solid border-2 border-gray-600 w-20 rounded"/>
				</td>
				<td class="border-solid border-4 border-gray-600 bg-info-200">Email</td>
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
				<td class="border-solid border-4 border-gray-600 bg-info-200">전화번호</td>
				<td class="border-solid border-4 border-gray-600 ">
					<input type="text" name="tel1" class="border-solid border-2 border-gray-600 w-20 rounded"/>
					- <input type="text" name="tel2" class="border-solid border-2 border-gray-600 w-20 rounded"/>
					- <input type="text" name="tel3" class="border-solid border-2 border-gray-600 w-20 rounded"/>
				</td>
				<td class="border-solid border-4 border-gray-600 bg-info-200">홈아이디</td>
				<td class="border-solid border-4 border-gray-600 "><input type="text" name="id" class="border-solid border-2 border-gray-600 rounded w-64"/></td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 bg-info-200">학부모 휴대폰</td>
				<td class="border-solid border-4 border-gray-600 ">
					010
					- <input type="text" name="parent_phone1" class="border-solid border-2 border-gray-600 w-20 rounded"/>
					- <input type="text" name="parent_phone2" class="border-solid border-2 border-gray-600 w-20 rounded"/>
				</td>
				<td class="border-solid border-4 border-gray-600 bg-info-200">학부모 Email</td>
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
				<td class="border-solid border-4 border-gray-600 bg-info-200">학부모 관계</td>
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
				<td class="border-solid border-4 border-gray-600 bg-info-200">학부모 섬함</td>
				<td class="border-solid border-4 border-gray-600 "><input type="text" class="border-solid border-2 border-gray-600 rounded w-64"/></td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 bg-info-200">주소</td>
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
				<td class="border-solid border-4 border-gray-600 bg-info-200">수강동기</td>
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
				<td class="border-solid border-4 border-gray-600 bg-info-200">관심분야</td>
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
				<td class="border-solid border-4 border-gray-600 bg-info-200">메모</td>
				<td class="border-solid border-4 border-gray-600 "colspan="3"><textarea cols="100" rows="5" class="border-solid border-2 border-gray-600"></textarea></td>
			</tr>
			<tr>
				<td class="border-solid border-4 border-gray-600 bg-info-200">최초 등록일</td>
				<td class="border-solid border-4 border-gray-600 " colspan="3">
				<div class="calendar"><input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2"/></div></td>
			</tr>
		</table>
		<div class="my-5 flex justify-center">
			<input class="border-solid border-2 border-gray-600 rounded mr-1" type="submit" value="수정하기"/>
			<a href="javascript:memberDelete_check()" class="border-solid border-2 border-gray-600 rounded ml-1"/>삭제하기</a>
		</div>
	</form>
	<!-- ----------------------------------------------기본정보 ---------------------------------------->
	<!------------------------------------------------- 상담관리 ------------------------------------------------>
	<div id="counseling_management" class="w-full" style="display:none">
		<form method="post" action="/lms/counseling_registration">
			<div class="flex">
				<div class="inline-block relative w-40 mr-2">
					<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
						<option>::상담구분::</option>
						<option>입학상담</option>
						<option>일반상담</option>
						<option>휴퇴원상담</option>
						<option>학부모상담</option>
		  	 		</select>
		  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		  			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				    </div>
				</div>
				<input type="text" class="border-solid border-2 border-gray-600" style="width:300px;"/>
			</div>
			<div class="w-full">
				<textarea rows="5" cols="150" class="border-solid border-2 border-gray-600"></textarea>
			</div>
			<div class="my-2 flex justify-between">
				<span>- 상담일자는 금일자로 자동 추가됩니다.</span>
				<input type="submit" value="등록하기" class="border-solid border-2 border-gray-600"/>
			</div>
		</form>
		<div class="my-5">
			<div class="flex justify-between" style="border-top:solid black 1px; border-bottom:solid black 1px">
				<span>2020-06-14 01:30</span>
				<div>
					<a href="modify_counseling" class="rounded bg-info-200" id="modify_counseling_id">수정</a>
					<a href="javascript:delete_counseling()" class="rounded bg-info-200">삭제</a>
				</div>
			</div>
			<div class="w-full mt-4">[일반상담]일반상담입니다</div>
			<span class="mt-2">일반상담 내용입니다.</span>
		</div>
	</div>
	<!------------------------------------------------- 상담관리 ------------------------------------------------>
	<!-------------------------------------------------반 배정 현황 ---------------------------------------------->
	<div class="w-full" id="assigning_class" style="display:none">
		<table class="w-full">
			<tbody>
				<tr style="border-top:solid black 1px; border-bottom:solid black 1px">
					<td>202006</td>
					<td>JAVASCRIPT와 함께 선생님이름</td>
					<td>2020-06-14</td>
					<td style="color:red">(퇴원)</td>
					<td class="flex justify-end">
						<a href="move_class" class="rounded bg-info-200">반 이동</a><!-- 휴퇴원처리가 되면 안보인다 -->
						<a href="move_class" class="rounded bg-info-200 ml-2">휴/퇴원</a><!-- 휴퇴원처리가 되면 안보인다 -->
						<a href="modify_student_status" class="rounded bg-info-200 ml-2">수정</a><!-- 휴퇴원처리가 되면 보인다 -->
						<a href="javascript:delete_class_record()" class="rounded bg-info-200 ml-2">삭제</a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-------------------------------------------------반 배정 현황 ---------------------------------------------->
	<!-------------------------------------------------납부 현황 ---------------------------------------------->
	<div class="w-full" id="payment_status" style="display:none">
		<table class="w-full">
			<tbody>
				<tr style="border-top:solid black 1px; border-bottom:solid black 1px" id="payment_status_detail">
					<td>2020-06-14</td>
					<td>201906/JAVASCRIPT와 합께/선생님이름</td>
					<td>납부액 : 500,000원</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-------------------------------------------------납부 현황 ---------------------------------------------->
	<!-------------------------------------------------출결 현황 ---------------------------------------------->
	<div class="w-full" id="attendance_absent" style="display:none">
		<div class="inline-block relative w-auto mr-2">
			<select class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
				<option>202006 JAVASCRIPT와 함께(퇴원)</option>
			</select>
		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	    		<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
	    	</div>
		</div>
		<table class="w-full mt-3">
			<tbody>
				<tr style="border-top:solid black 1px; border-bottom:solid black 1px">
					<td class="w-1/4">2020-06-03</td>
					<td class="w=1/4">등원</td>
					<td></td>
				</tr>
				<tr style="border-top:solid black 1px; border-bottom:solid black 1px">
					<td class="w-1/4">2020-06-02</td>
					<td class="w-1/4">결석</td>
					<td></td>
				</tr>
				<tr style="border-top:solid black 1px; border-bottom:solid black 1px">
					<td class="w-1/4">2020-06-01</td>
					<td class="w-1/4">지각</td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-------------------------------------------------출결 현황 ---------------------------------------------->
</div>
</body>
</html>