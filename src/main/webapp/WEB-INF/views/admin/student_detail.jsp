<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<div class="w-full p-4 bg-white">
	<!------------------------------------------------- 탭 메뉴 --------------------------------------->
	<span class="mt-5 mb-4 w-full">●${vo.student_name_ko}/${vo.student_name_eng} - 회원번호 : ${vo.student_no}/홈아이디: ${vo.student_id}</span>
	<!-- ----------------------------------------------기본정보 ---------------------------------------->
	<form id="basicInfo" class="w-full" method="post" action="/lms/modify_basicInfo" enctype="multipart/form-data">
	<input type="hidden" name="student_no" value="${vo.student_no}"/>
		<table class="w-full">
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">사진</td>
				<td class="border-solid border border-gray-600 p-2" style="width:350px;">
					<div class="img_wrap border-solid border border-gray-600" style="width:200px; height:200px; margin:0 auto">
						<c:if test="${vo.student_img != null }">
							<img src="/lms/img/${vo.student_img}" class="student_img">
						</c:if >
						<c:if test="${vo.student_img == null }">
							<img src="/lms/img/user-avatar.png" class="student_img">
						</c:if>
					</div>
					<div class="ml-20 mt-2">
						<input onchange="preview(this, $('.student_img'));"id="input_img" name="img_file" type="file"> 
					</div>
				</td>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">최근수강정보</td>
				<td class="border-solid border border-gray-600 p-2">
					<div class="overflow-y-auto" style="height:350px;">
					<c:forEach var="vo9" items="${list}">
						<div>
							<span class="ml-3">${vo9.course_start_date}/${vo9.course_name}</span><span class="ml-10">${vo9.payment_date}</span><span style="color:red;" class="ml-3">${vo9.payment_price}원</span>
						</div>
					</c:forEach>
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">이름</td>
				<td class="border-solid border border-gray-600 p-2 " colspan="3">한글 : <input type="text" name="student_name_ko" value="${vo.student_name_ko}" class="border-solid border border-gray-600 rounded korName"/> 영문 : <input type="text" name="student_name_eng" value="${vo.student_name_eng}" class="border-solid border border-gray-600 rounded engName"/></td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">성별</td>
				<td class="border-solid border border-gray-600 p-2">
					<div>
						<input type="radio" name="student_gender" value="남" <c:if test="${vo.student_gender=='남'}">checked</c:if>>남
						<input type="radio" name="student_gender" value="여" <c:if test="${vo.student_gender=='여'}">checked</c:if>>여
					</div>
				</td>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">생년월일</td>
				<td class="border-solid border border-gray-600 p-2 ">
					<div class="inline-block relative w-40 mx-2">
						<select name="student_birthday_year" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline birthYear">
							<option>선택</option>
							<c:forEach var="i" begin="0" end="${2020-1940}">
							   <c:set var="yearOption" value="${2020-i}" />
							   <c:if test="${vo.student_birthday_year==yearOption}"><option value="${yearOption}" selected>${yearOption}</option></c:if>
							   <c:if test="${vo.student_birthday_year!=yearOption}"><option value="${yearOption}">${yearOption}</option></c:if>
							</c:forEach>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<i class="xi-angle-down"></i>
					    </div>
					</div>
					년<div class="inline-block relative w-40 mx-2">
						<select name="student_birthday_month" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline birthMonth">
							<option>선택</option>
							<c:forEach var="i" begin="1" end="12">
							    <c:if test="${vo.student_birthday_month==i}"><option value="${i}" selected>${i}</option></c:if>
							     <c:if test="${vo.student_birthday_month!=i}"><option value="${i}">${i}</option></c:if>
							</c:forEach>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<i class="xi-angle-down"></i>
					    </div>
					</div>
					월<div class="inline-block relative w-40 mx-2">
						<select name="student_birthday_day" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline birthDay">
							<option>선택</option>
							<c:forEach var="i" begin="1" end="31">
							    <c:if test="${vo.student_birthday_day==i}"><option value="${i}" selected>${i}</option></c:if>
							    <c:if test="${vo.student_birthday_day!=i}"><option value="${i}">${i}</option></c:if>
							</c:forEach>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<i class="xi-angle-down"></i>
					    </div>
					</div>일
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">휴대폰 정보</td>
				<td class="border-solid border border-gray-600 p-2 ">
					010
					- <input type="text" name="student_tel1" value="${vo.student_tel1}" class="border-solid border border-gray-600 w-20 rounded text-center student_phone1" maxlength="4"/>
					- <input type="text" name="student_tel2" value="${vo.student_tel2}" class="border-solid border border-gray-600 w-20 rounded text-center student_phone2" maxlength="4"/>
				</td>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">Email</td>
				<td class="border-solid border border-gray-600 p-2 ">
					<div class="flex"> 
						<input id="sEmail" type="text" name="student_email_id" class="border-solid border border-gray-600 rounded" value="${vo.student_email_id}"/>@  
						<input id="sDomain" name="student_email_domain" type="text" class="border-solid border border-gray-600 text-center rounded" value="${vo.student_email_domain}"/> 	
						<div class="inline-block relative w-40">
							<select id="sDomainSelect" onclick="sInputDomain()" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline">
								<option>직접입력</option>
							    <option <c:if test="${vo.student_email_domain == 'naver.com'}">selected</c:if>>naver.com</option>
							    <option <c:if test="${vo.student_email_domain == 'daum.net'}">selected</c:if>>daum.net</option>
							    <option <c:if test="${vo.student_email_domain == 'gmail.com'}">selected</c:if>>gmail.com</option>
							    <option <c:if test="${vo.student_email_domain == 'hotmail.com'}">selected</c:if>>hotmail.com</option>
							    <option <c:if test="${vo.student_email_domain == 'nate.com'}">selected</c:if>>nate.com</option>
							    <option <c:if test="${vo.student_email_domain == 'korea.com<'}">selected</c:if>>korea.com</option>
							    <option <c:if test="${vo.student_email_domain == 'chollian.net'}">selected</c:if>>chollian.net</option>
						  	 </select>
						  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
				    			<i class="xi-angle-down"></i>
				  			</div>
			 			</div>
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">전화번호</td>
				<td class="border-solid border border-gray-600 p-2 ">
					<div class="inline-block relative w-auto">
						<select name="student_house1" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline">
							   <option <c:if test="${student_house1=='02'}">selected</c:if>>02</option>
							   <option <c:if test="${student_house1=='051'}">selected</c:if>>051</option>
							   <option <c:if test="${student_house1=='053'}">selected</c:if>>053</option>
							   <option <c:if test="${student_house1=='032'}">selected</c:if>>032</option>
							   <option <c:if test="${student_house1=='062'}">selected</c:if>>062</option>
							   <option <c:if test="${student_house1=='042'}">selected</c:if>>042</option>
							   <option <c:if test="${student_house1=='052'}">selected</c:if>>052</option>
							   <option <c:if test="${student_house1=='044'}">selected</c:if>>044</option>
							   <option <c:if test="${student_house1=='031'}">selected</c:if>>031</option>
							   <option <c:if test="${student_house1=='033'}">selected</c:if>>033</option>
							   <option <c:if test="${student_house1=='043'}">selected</c:if>>043</option>
							   <option <c:if test="${student_house1=='063'}">selected</c:if>>063</option>
							   <option <c:if test="${student_house1=='061'}">selected</c:if>>061</option>
							   <option <c:if test="${student_house1=='054'}">selected</c:if>>054</option>
							   <option <c:if test="${student_house1=='055'}">selected</c:if>>055</option>
							   <option <c:if test="${student_house1=='064'}">selected</c:if>>064</option>
						  </select>
						<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
				    		<i class="xi-angle-down"></i>
				  		</div>
			 		</div>
					- <input type="text" name="student_house2" value="${vo.student_house2}" class="border-solid border border-gray-600 w-20 rounded text-center tel2" maxlength="4"/>
					- <input type="text" name="student_house3" value="${vo.student_house3}" class="border-solid border border-gray-600 w-20 rounded text-center tel3" maxlength="4"/>
				</td>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">홈아이디</td>
				<td class="border-solid border border-gray-600 p-2 "><input type="text" name="student_id" value="${vo.student_id}" class="border-solid border border-gray-600 rounded w-64 student_id"/></td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">학부모 휴대폰</td>
				<td class="border-solid border border-gray-600 p-2 ">
					010
					- <input type="text" name="parent_phone1" value="${vo.parent_phone1}" class="border-solid border border-gray-600 w-20 rounded text-center parent_phone1" maxlength="4"/>
					- <input type="text" name="parent_phone2" value="${vo.parent_phone2}" class="border-solid border border-gray-600 w-20 rounded text-center parent_phone2" maxlength="4"/>
				</td>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">학부모 Email</td>
				<td class="border-solid border border-gray-600 p-2 ">
					<div class="flex"> 
						<input id="pEmail" type="text" value="${vo.parent_email_id}" name="parent_email_id" class="border-solid border border-gray-600 rounded email1"/>@  
						<input id="pDomain" type="text" value="${vo.parent_email_domain}" name="parent_email_domain" class="border-solid border border-gray-600 text-center rounded email2"/> 	
						<div class="inline-block relative w-40">
							<select id="pDomainSelect" onclick="pInputDomain()" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline">
								<option>직접입력</option>
							    <option <c:if test="${vo.parent_email_domain=='naver.com'}">selected</c:if>>naver.com</option>
							    <option <c:if test="${vo.parent_email_domain=='daum.net'}">selected</c:if>>daum.net</option>
							    <option <c:if test="${vo.parent_email_domain=='gmail.com'}">selected</c:if>>gmail.com</option>
							    <option <c:if test="${vo.parent_email_domain=='hotmail.com'}">selected</c:if>>hotmail.com</option>
							    <option <c:if test="${vo.parent_email_domain=='nate.com'}">selected</c:if>>nate.com</option>
							    <option <c:if test="${vo.parent_email_domain=='korea.com'}">selected</c:if>>korea.com</option>
							    <option <c:if test="${vo.parent_email_domain=='chollian.net'}">selected</c:if>>chollian.net</option>
						  	 </select>
						  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
				    			<i class="xi-angle-down"></i>
				  			</div>
			 			</div>
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">학부모 관계</td>
				<td class="border-solid border border-gray-600 p-2 ">
					<div class="inline-block relative w-40 mx-2">
						<select name="student_parent_state" class="relation block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline">
							<option>==</option>
							<option <c:if test="${vo.student_parent_state=='조부'}">selected</c:if>>조부</option>
							<option <c:if test="${vo.student_parent_state=='조모'}">selected</c:if>>조모</option>
							<option <c:if test="${vo.student_parent_state=='부'}">selected</c:if>>부</option>
							<option <c:if test="${vo.student_parent_state=='모'}">selected</c:if>>모</option>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<i class="xi-angle-down"></i>
					    </div>
					</div>
				</td>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">학부모 성함</td>
				<td class="border-solid border border-gray-600 p-2 "><input type="text" name="student_parent_name" value="${vo.student_parent_name}" class="border-solid border border-gray-600 rounded w-40 pkorName"/></td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">주소</td>
				<td  class="border-solid border border-gray-600 p-2 "colspan="3">
					<div class="flex">
						<input name="student_addr_no" type="text" value="${vo.student_addr_no}" class="addr_num border-solid border border-gray-600 w-32 rounded addr1 text-center" maxlength="5" readonly/>
						<input type="button" onClick="openDaumZipAddress();" class="ml-3 border rounded w-20 bg-info-200" value="주소검색"/>
					</div>
					<input type="text" name="student_addr_main" value="${vo.student_addr_main}" class="addr_main border-solid border border-gray-600 mt-3 rounded addr2" style="width:400px" readonly>
					<input type="text" name="student_addr_sub" value="${vo.student_addr_sub}" class="addr_sub border-solid border border-gray-600 mt-3 rounded" style="width:300px"placeholder="상세주소">
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">수강동기</td>
				<td class="border-solid border border-gray-600 p-2 "colspan="3">
					<div>
						<input type="radio" name="student_motive" value="소개"<c:if test="${vo.student_motive=='소개'}">checked</c:if>>소개
						<input type="radio" name="student_motive" value="신문"<c:if test="${vo.student_motive=='신문'}">checked</c:if>>신문
						<input type="radio" name="student_motive" value="전단지"<c:if test="${vo.student_motive=='전단지'}">checked</c:if>>전단지
						<input type="radio" name="student_motive" value="홈페이지"<c:if test="${vo.student_motive=='홈페이지'}">checked</c:if>>홈페이지
						<input type="radio" name="student_motive" value="카페"<c:if test="${vo.student_motive=='카페'}">checked</c:if>>카페
						<input type="radio" name="student_motive" value="기타" <c:if test="${vo.student_motive=='기타'}">checked</c:if>class="other">기타
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">관심분야</td>
				<td class="border-solid border border-gray-600 p-2 " colspan="3">
					<div>
						<input type="radio" name="student_interest" value="JAVA" <c:if test="${vo.student_interest=='JAVA'}">checked</c:if>>JAVA
						<input type="radio" name="student_interest" value="HTML/CSS" <c:if test="${vo.student_interest=='HTML/CSS'}">checked</c:if>>HTML/CSS
						<input type="radio" name="student_interest" value="JAVASCRIPT" <c:if test="${vo.student_interest=='JAVASCRIPT'}">checked</c:if>>JAVASCRIPT
						<input type="radio" name="student_interest" value="SPRING" <c:if test="${vo.student_interest=='SPRING'}">checked</c:if>>SPRING
						<input type="radio" name="student_interest" value="MYBATIS" <c:if test="${vo.student_interest=='MYBATIS'}">checked</c:if>>MYBATIS
						<input type="radio" name="student_interest" value="기타" <c:if test="${vo.student_interest=='기타'}">checked</c:if> class="interest">기타
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">메모</td>
				<td class="border-solid border border-gray-600 p-2 "colspan="3"><textarea cols="100" rows="5" class="border-solid border border-gray-600" name="student_memo">${vo.student_memo}</textarea></td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">최초 등록일</td>
				<td class="border-solid border border-gray-600 p-2 " colspan="3">
				<div class="calendar"><input type="text" value="${vo.student_regi_date}" name="student_regi_date" class="datepicker border-solid border border-gray-600 ml-2 first_regiDate"/></div></td>
			</tr>
		</table>
		<div class="my-5 flex justify-center">
			<input class="border-solid border border-gray-600 rounded mr-1 bg-info-200" type="submit" value="수정하기" id="modify_studentInfo"/>
			<a href="javascript:memberDelete_check(${vo.student_no})" class="border-solid border border-gray-600 rounded ml-1 bg-info-200">삭제하기</a>
		</div>
	</form>
	<!-- ----------------------------------------------기본정보 ---------------------------------------->
	<!------------------------------------------------- 상담관리 ------------------------------------------------>
	<div id="counseling_management" class="w-full" style="display:none">
		<form method="post" action="/lms/counseling_registration">
		<input type="hidden" name="student_no" value="${vo.student_no}"/>
			<div class="flex">
				<div class="inline-block relative w-40 mr-2">
					<select id="counseling_division" name="counseling_division" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline">
						<option>::상담구분::</option>
						<option>입학상담</option>
						<option>일반상담</option>
						<option>휴퇴원상담</option>
						<option>학부모상담</option>
		  	 		</select>
		  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		  			    	<i class="xi-angle-down"></i>
				    </div>
				</div>
				<input type="text" name="counseling_title" id="counseling_title" class="border-solid border border-gray-600" style="width:300px;"/>
			</div>
			<div class="w-full my-3">
				<textarea rows="5" cols="150" class="border-solid border border-gray-600" name="counseling_content" id="counseling_content"></textarea>
			</div>
			<div class="my-2 flex justify-between">
				<span>- 상담일자는 금일자로 자동 추가됩니다.</span>
				<input type="submit" value="등록하기" id="counseling_regi" class="border-solid border border-gray-600"/>
			</div>
		</form>
		<c:forEach var="vo3" items="${list2}">
			<div class="my-5">
				<div class="flex justify-between" style="border-top:solid black 1px; border-bottom:solid black 1px">
					<span class="p-2">${vo3.counseling_date}</span>
					<div class="p-2">
						<button data-student_no="${vo3.student_no}" data-counseling_no="${vo3.counseling_no}" class="rounded bg-info-200 border-solid border border-gray-600 modify_counseling_id" >수정</button><!-- Ajax로 구현하기 -->
						<a href="javascript:delete_counseling(${vo3.student_no},${vo3.counseling_no})" class="rounded bg-info-200 border-solid border border-gray-600">삭제</a>
					</div>
				</div>
				<div class="w-full mt-4">[<span class="counseling_division-${vo3.counseling_no}">${vo3.counseling_division}</span>]<span class="counseling_title-${vo3.counseling_no}">${vo3.counseling_title}</span></div>
				<div class="mt-2 counseling_content-${vo3.counseling_no}">${vo3.counseling_content}</div>
			</div>
		</c:forEach>
	</div>
	<form id="modify_counseling_form" method="post" action="/lms/modify_counselingOk" style="display:none">
		<input type="hidden" name="student_no"/>
		<input type="hidden" name="counseling_no"/>
		<div class="flex">
			<div class="inline-block relative w-40 mr-2">
				<select name="counseling_division" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline">
					<option>입학상담</option>
					<option>일반상담</option>
					<option>휴퇴원상담</option>
					<option>학부모상담</option>
	  	 		</select>
	  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
			    	<i class="xi-angle-down"></i>
			    </div>
			</div>
			<input type="text" name="counseling_title" class="border-solid border border-gray-600" style="width:300px;"/>
		</div>
		<div class="w-full">
			<textarea name="counseling_content" rows="5" cols="150" class="border-solid border border-gray-600"></textarea>
		</div>
		<input class="rounded bg-info-200 border-solid border border-gray-600" type="submit" value="등록하기"/>
	</form>
	<!------------------------------------------------- 상담관리 ------------------------------------------------>
	<!-------------------------------------------------반 배정 현황 ---------------------------------------------->
	<div class="w-full" id="assigning_class" style="display:none"> 
		<table class="w-full">
			<tbody>
			<c:forEach var="vo4" items="${list3}">
			<input type="hidden" name="student_no" value="${vo4.student_no}"/>
				<tr style="border-top:solid black 1px; border-bottom:solid black 1px">
					<td class="p-2">${vo4.payment_no}</td>
					<td class="p-2">${vo4.course_name}/${vo4.course_time}</td>
					<td class="p-2">${vo4.student_course_state_date}</td>
					<td class="p-2" style="color:red">
						<c:if test="${vo4.state==1}">(수료)</c:if>
						<c:if test="${vo4.state==2}">(미수료)</c:if>
						<c:if test="${vo4.state==3}">(휴원)</c:if>
						<c:if test="${vo4.state==4}">(퇴원)</c:if>
					</td>
					<td class="flex justify-end p-2">
						<c:if test="${vo4.state==0}">
							<button data-payment_no="${vo4.payment_no}" data-student_no="${vo4.student_no}" class="border-solid border border-gray-600 rounded bg-info-200" id="move_class">반 이동</button><!-- 휴퇴원처리가 되면 안보인다 --><!-- Ajax로 구현하기 -->
							<button class="border-solid border border-gray-600 rounded bg-info-200 ml-2" id="colsed_out_class">휴/퇴원</button><!-- 휴퇴원처리가 되면 안보인다 --><!-- Ajax로 구현하기 -->
						</c:if>
						<c:if test="${vo4.state==1 || vo4.state==2 || vo4.state==3 || vo4.state==4}">
							<button data-state="${vo4.state}" data-student_course_state_date="${vo4.student_course_state_date}" data-payment_no="${vo4.payment_no}" class="border-solid border border-gray-600 rounded bg-info-200 ml-2" id="modify_colsed_out">수정</button><!-- 휴퇴원처리가 되면 보인다 --><!-- Ajax로 구현하기 -->
						</c:if>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<!--------------------------------------------------반이동  ----------------------------------------------------------->
	<form method="post" action="/lms/admin/moveClassOk" class="w-full">
		<div class="w-full" id="move_class_form" style="display:none">
			<input type="hidden" name="payment_no"/>
			<input type="hidden" name="student_no"/>
			<table class="w-full">
				<tr>
					<td class="bg-info-300 text-center border border-solid border-gray-600 p-2" style="width:200px">이동 할 반 선택 : </td>
					<td class="border border-solid border-gray-600 p-2">
						<div class="inline-block relative w-40">
							<select name="course_day" id="course_day" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline">
								<option selected="selected">::요일::</option>
							    <option value="월~금">월~금</option>
							    <option value="월,수,금">월,수,금</option> 
							    <option value="화,목,금">화,목,금</option>
							    <option value="주말반">주말반</option>
						  	 </select>
						  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
				    			<i class="xi-angle-down"></i>
				  			</div> 
			 			</div>
			 			<div class="inline-block relative w-40"> 
							<select name="course_time" id="course_time" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline">
								<option selected="selected">::수업시간::</option>
							    <option value="09:00~12:00">09:00~12:00</option>
							    <option value="13:00~16:00">13:00~16:00</option>
							    <option value="16:00~19:00">16:00~19:00</option>
							    <option value="20:00~23:00">20:00~23:00</option>
						  	 </select>
						  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
				    			<i class="xi-angle-down"></i>
				  			</div>
			 			</div>
						<div class="inline-block relative w-40">
							<select name="course_stage" id="course_stage" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline text-center">
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
                               <option value="신관A201">A201</option>
                               <option value="신관A202">A202</option>
                               <option value="신관A203">A203</option>
                               <option value="신관A301">A301</option>
                               <option value="신관A302">A302</option>
                               <option value="신관A303">A303</option>
                               <option value="">=====구관=====</option>
                               <option value="구관A101">A101</option>
                               <option value="구관A102">A102</option>
                               <option value="구관A103">A103</option>
                               <option value="구관A201">A201</option>
                               <option value="구관A202">A202</option>
                               <option value="구관A203">A203</option>
                               <option value="구관A301">A301</option>
                               <option value="구관A302">A302</option>
                               <option value="구관A303">A303</option>
						  	 </select>
						  	 <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
				    			<i class="xi-angle-down"></i>
				  			</div>
			 			</div>
					</td>
				</tr>
				<tr>
					<td class="bg-info-300 text-center border border-solid border-gray-600 p-2">이동 일자 : </td>
					<td class="border border-solid border-gray-600 p-2">
						<div class="calendar">
							<input type="text" name="student_course_state_date" class="datepicker border-solid border border-gray-600 ml-2 text-center"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="bg-info-300 text-center border border-solid border-gray-600 h-64 p-2">납부 내역 변경 : </td>
					<td class="border border-solid border-gray-600 p-2">
						<input type="radio" name="pay" value="" checked/>수납내역을 변경하지 않음<br/>
						<input type="radio" name="pay" value=""/>수납내역을 신규반으로 전액 변경처리함<br/>
						<input type="radio" name="pay" value=""/>수강료를 이동일자 기준으로 배분<br/>
					</td>
				</tr>
			</table>
			<div class="text-center my-3">
				<input type="submit" id="moveCLassOk" value="반이동 처리" class="border border-gray-600 border-solid bg-info-200"/>
			</div>
		</div>
	</form>
	<!--------------------------------------------------반이동 -------------------------------------------------------->
	
	<!---------------------------------------------------휴퇴원  -------------------------------------------------------->
	<form method="post" action="/lms/admin/closedOutOk" class="w-full">
		<div class="w-full my-3" style="display:none;" id="colsed_out_form">
		<input type="hidden" name="student_no" value="${vo.student_no}"/>
			<table class="w-full">
				<tr class="text-center w-full">
					<td class="border border-solid border-gray-600 bg-info-300 p-2">대상자</td>
					<td class="border border-solid border-gray-600 p-2">
						<table class="w-full">
							<tr>
								<td class="border border-solid border-gray-600 p-2">선택</td>
								<td class="border border-solid border-gray-600 p-2">수강생</td>
								<td class="border border-solid border-gray-600 p-2">학생휴대폰</td>
								<td class="border border-solid border-gray-600 p-2">부모휴대폰</td>	
							</tr>
							<tr>
								<td class="border border-solid border-gray-600 p-2"><input id="student_closed_out" type="checkbox" checked/></td>
								<td class="border border-solid border-gray-600 p-2">${vo.student_name_ko}</td>
								<td class="border border-solid border-gray-600 p-2">${vo.student_tel_parent}</td>
								<td class="border border-solid border-gray-600 p-2">${vo.student_tel_phone}</td>	
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="border border-solid border-gray-600 bg-info-300 text-center p-2">구분</td>
					<td class="border border-solid border-gray-600 p-2">
						<div>
							<input class="state" type="radio" value="3" name="state"/>휴원
							<input class="state" type="radio" value="4" name="state"/>퇴원
						</div>
					</td>
				</tr>
				<tr>
					<td class="border border-solid border-gray-600 bg-info-300 text-center p-2">휴/퇴원 일지</td>
					<td class="border border-solid border-gray-600 p-2">
						<div class="calendar">
							<input type="text" id="student_closed_out_date" name="student_course_state_date" class="datepicker border-solid border border-gray-600 ml-2"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="border border-solid border-gray-600 bg-info-300 text-center p-2">비고</td>
					<td class="border border-solid border-gray-600 p-2"><input type="text" class="w-64 border border-solid border-gray-600"/></td>
				</tr>
			</table>
			<div class="text-center my-3 ">
				<input id="closed_out_ok" type="submit" value="처리하기" class="border border-solid border-gray-600 bg-info-200 rounded"/>
			</div>
		</div>
	</form>
	<!---------------------------------------------------휴퇴원  ------------------------------------------------------------>
	<!----------------------------------------------------휴퇴원 수정  ------------------------------------------------------------->
	<form method="post" action="/lms/admin/modifyClosedOutOk" class="w-full">
		<div class="w-full my-3" style="display:none;" id="modify_colsed_out_form">
			<input type="hidden" name="student_no" value="${vo.student_no}"/>
			<table class="w-full">
				<tr>
					<td class="border border-solid border-gray-600 bg-info-300 text-center p-2">구분</td>
					<td class="border border-solid border-gray-600 p-2">
						<div>
							<input type="radio" value="3" name="state"/>휴원
							<input type="radio" value="4" name="state"/>퇴원
						</div>
					</td>
				</tr>
				<tr>
					<td class="border border-solid border-gray-600 bg-info-300 text-center p-2">휴/퇴원 일지</td>
					<td class="border border-solid border-gray-600 p-2">
						<div class="calendar">
							<input type="text" name="student_course_state_date" class="datepicker border-solid border border-gray-600 ml-2"/>
						</div>
					</td>
				</tr>
				<tr>
					<td class="border border-solid border-gray-600 bg-info-300 text-center p-2">비고</td>
					<td class="border border-solid border-gray-600 p-2"><input type="text" class="w-64 border border-solid border-gray-600"/></td>
				</tr>
			</table>
			<div class="text-center my-3 ">
				<input type="submit" value="처리하기" class="border border-solid border-gray-600 rounded bg-info-200"/>
			</div>
		</div>
	</form>
	<!----------------------------------------------------휴퇴원 수정  ------------------------------------------------------------->
	<!-------------------------------------------------반 배정 현황 ---------------------------------------------->
	<!-------------------------------------------------납부 현황 ---------------------------------------------->
	<div class="w-full" id="payment_status" style="display:none">
		<table class="w-full" id="payment_status_detail">
			<tbody>
			<c:forEach var="vo2" items="${list}">
				<tr style="border-top:solid black 1px; border-bottom:solid black 1px">
					<td class="p-2">${vo2.payment_date}</td>
					<td>${vo2.course_start_date}/${vo2.course_name}/${vo2.employee_name}</td>
					<td>납부액 : ${vo2.payment_price}원</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<!-------------------------------------------------납부 현황 ---------------------------------------------->
	<!-------------------------------------------------출결 현황 ---------------------------------------------->
	<div class="w-full" id="attendance_absent" style="display:none">
		<div class="inline-block relative w-auto mr-2">
			<select id="attendanceKey" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-2 py-1 pr-4 rounded leading-tight focus:outline-none focus:shadow-outline month">
				<c:forEach var="vo5" items="${list4}">
					<option value="${vo5.payment_no}">${vo5.course_start_date} ${vo5.course_name}/${vo5.course_day}/${vo5.course_time}<c:if test="${vo5.state==0 || vo5.state==null}">(수료중)</c:if><c:if test="${vo5.state==1}">(수료)</c:if><c:if test="${vo5.state==2}">(미수료)</c:if><c:if test="${vo5.state==3}">(휴원)</c:if><c:if test="${vo5.state==4}">(퇴원)</c:if></option>
				</c:forEach>
			</select>
		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	    		<i class="xi-angle-down"></i>
	    	</div>
		</div>
		<table class="w-full mt-3">
			<tbody id="attendance_list">
			</tbody>
		</table>
	</div>
	<!-------------------------------------------------출결 현황 ---------------------------------------------->
	</div>
</div>