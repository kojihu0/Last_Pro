<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6 w-full">
		<i class="xi-school"></i><span class="ml-2">수강생현황</span>
	</div>
	<a href="/lms/student_current_situation" class="mb-2 w-full"><i class="xi-angle-left-min">목록으로</i></a>
	<form class="w-full" method="post" action="/lms/registration_memberOk" enctype="multipart/form-data">
		<table class="w-full">
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">이름</td>
				<td class="border-solid border border-gray-600 p-3" style="width:270px;">
					<div class="my-3">한글 : <input type="text" name="student_name_ko" class="border-solid border-2 border-gray-600 rounded korName"/></div>
					<div>영문 : <input type="text" name="student_name_eng" class="border-solid border-2 border-gray-600 rounded engName"/></div>
				</td>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">사진</td>
				<td class="border-solid border border-gray-600 p-2" style="width:685px;">
					<div class="img_wrap border-solid border-2 border-gray-600" style="width:200px; height:200px; margin:0 auto">
						<img id="img"src="/lms/img/user-avatar.png" class="student_img"/>
					</div>
					<div class="mt-2" style="margin-left:245px;">
						<input onchange="preview(this, $('.student_img'));"id="input_img" name="img_file" type="file"> 
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">성별</td>
				<td class="border-solid border border-gray-600 p-3">
					<div>
						<input type="radio" name="student_gender" value="남" checked>남
						<input type="radio" name="student_gender" value="여">여
					</div>
				</td>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">생년월일</td>
				<td class="border-solid border border-gray-600 p-3">
					<div class="inline-block relative w-40 mx-2">
						<select name="student_birthday_year" class="birthYear block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
							<option>선택</option>
							<c:forEach var="i" begin="0" end="${2020-1940}">
							    <c:set var="yearOption" value="${2020-i}" />
							    <option value="${yearOption}">${yearOption}</option>
							</c:forEach>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<i class="xi-angle-down"></i>
					    </div>
					</div>
					년<div class="inline-block relative w-40 mx-2">
						<select name="student_birthday_month" class="birthMonth block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
							<option>선택</option>
							<c:forEach var="i" begin="1" end="12">
							    <option value="${i}">${i}</option>
							</c:forEach>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<i class="xi-angle-down"></i>
					    </div>
					</div>
					월<div class="inline-block relative w-40 mx-2">
						<select name="student_birthday_day" class="birthDay block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
							<option>선택</option>
							<c:forEach var="i" begin="1" end="31">
							    <option value="${i}">${i}</option>
							</c:forEach>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<i class="xi-angle-down"></i>
					    </div>
					</div>일
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">휴대폰 정보</td>
				<td class="border-solid border border-gray-600 p-3">
					010
					- <input type="text" name="student_tel1" class="border-solid border-2 border-gray-600 w-20 rounded text-center student_phone1" maxlength="4"/>
					- <input type="text" name="student_tel2" class="border-solid border-2 border-gray-600 w-20 rounded text-center student_phone2" maxlength="4"/>
				</td>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">Email</td>
				<td class="border-solid border border-gray-600 p-3">
					<div> 
						<input id="rsEmail" type="text" name="student_email_id" class="border-solid border-2 border-gray-600 rounded"/>@  
						<input id="rsDomain"  name="student_email_domain" type="text" class="border-solid border-2 border-gray-600 text-center rounded"/> 	
						<div class="inline-block relative w-40">
							<select id="rsDomainSelect" onclick="rsInputDomain()" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
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
				    			<i class="xi-angle-down"></i>
				  			</div>
			 			</div>
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">전화번호</td>
				<td class="border-solid border border-gray-600 p-3" style="width:300px;">
					<div class="inline-block relative w-auto">
						<select name="student_house1" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
							   <option>02</option>
							   <option>051</option>
							   <option>053</option>
							   <option>032</option>
							   <option>062</option>
							   <option>042</option>
							   <option>052</option>
							   <option>044</option>
							   <option>031</option>
							   <option>033</option>
							   <option>043</option>
							   <option>063</option>
							   <option>061</option>
							   <option>054</option>
							   <option>055</option>
							   <option>064</option>
						  </select>
						<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
				    		<i class="xi-angle-down"></i>
				  		</div>
			 		</div>
					- <input type="text" name="student_house2" class="border-solid border-2 border-gray-600 w-20 text-center rounded tel2" maxlength="4"/>
					- <input type="text" name="student_house3" class="border-solid border-2 border-gray-600 w-20 text-center rounded tel3" maxlength="4"/>
				</td>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">홈아이디/비밀번호</td>
				<td class="border-solid border border-gray-600 p-3">
					<input type="text" name="student_id" class="border-solid border-2 border-gray-600 rounded w-64 student_id" placeholder="아이디"/>
					<input type="password" name="student_pw" class="border-solid border-2 border-gray-600 rounded w-64 student_pw" placeholder="비밀번호"/>
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">학부모 휴대폰</td>
				<td class="border-solid border border-gray-600 p-3">
					010
					- <input type="text" name="parent_phone1" class="border-solid border-2 border-gray-600 w-20 rounded text-center parent_phone1" maxlength="4"/>
					- <input type="text" name="parent_phone2" class="border-solid border-2 border-gray-600 w-20 rounded text-center parent_phone2" maxlength="4"/>
				</td>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">학부모 Email</td>
				<td class="border-solid border border-gray-600 p-3">
					<div> 
						<input id="rpEmail" type="text" name="parent_email_id" class="border-solid border-2 border-gray-600 rounded"/>@  
						<input id="rpDomain" name="parent_email_domain" type="text" class="border-solid border-2 border-gray-600 text-center rounded"/> 	
						<div class="inline-block relative w-40">
							<select id="rpDomainSelect" onclick="rpInputDomain()" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
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
				    			<i class="xi-angle-down"></i>
				  			</div>
			 			</div>
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">학부모 관계</td>
				<td class="border-solid border border-gray-600 p-3">
					<div class="inline-block relative w-40 mx-2">
						<select name="student_parent_state" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline relation">
							<option>==</option>
							<option>조부</option>
							<option>조모</option>
							<option>부</option>
							<option>모</option>
			  	 		</select>
			  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
		   			    	<i class="xi-angle-down"></i>
					    </div>
					</div>
				</td>
				<td class="border-solid border border-gray-600 bg-info-200 p-2 text-center">학부모 성함</td>
				<td class="border-solid border border-gray-600 p-2 "><input type="text" name="student_parent_name" class="border-solid border-2 border-gray-600 rounded w-40 pkorName"/></td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">주소</td>
				<td  class="border-solid border border-gray-600 p-3"colspan="3">
					<div class="flex">
						<input type="text" name="student_addr_no" class="border-solid border-2 border-gray-600 w-32 rounded addr1 text-center addr_num" maxlength="5" readonly/>
						<input type="button" onClick="openDaumZipAddress();" class="ml-3 border rounded w-20" value="주소검색"/>
					</div>
					<input type="text" name="student_addr_main" class="border-solid border-2 border-gray-600 mt-3 rounded addr_main" style="width:400px" readonly>
					<input type="text" name="student_addr_sub" class="border-solid border-2 border-gray-600 mt-3 rounded addr_sub" style="width:300px"placeholder="상세주소">
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">수강동기</td>
				<td class="border-solid border border-gray-600 p-3"colspan="3">
					<div>
						<input type="radio" name="student_motive" value="소개" checked>소개
						<input type="radio" name="student_motive" value="신문">신문
						<input type="radio" name="student_motive" value="전단지">전단지
						<input type="radio" name="student_motive" value="홈페이지">홈페이지
						<input type="radio" name="student_motive" value="카페">카페
						<input type="radio" name="student_motive" value="기타" class="other">기타
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">관심분야</td>
				<td class="border-solid border border-gray-600 p-3" colspan="3">
					<div>
						<input type="radio" name="student_interest" value="JAVA" checked>JAVA
						<input type="radio" name="student_interest" value="HTML/CSS">HTML/CSS
						<input type="radio" name="student_interest" value="JAVASCRIPT">JAVASCRIPT
						<input type="radio" name="student_interest" value="SPRING">SPRING
						<input type="radio" name="student_interest" value="MYBATIS">MYBATIS
						<input type="radio" name="student_interest" value="기타" class="interest">기타
					</div>
				</td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">메모</td>
				<td class="border-solid border border-gray-600 p-3"colspan="3"><textarea name="student_memo" class="border-solid border-2 border-gray-600 rounded" cols="100" rows="5"></textarea></td>
			</tr>
			<tr>
				<td class="border-solid border border-gray-600 bg-info-200 text-center p-3">최초 등록일</td>
				<td class="border-solid border border-gray-600 p-3" colspan="3">
				<div class="calendar"><input type="text" name="student_regi_date" class="datepicker border-solid border-2 border-gray-600 ml-2 first_regiDate"/></div></td>
			</tr>
		</table>
		<div class="text-center my-5">
			<input id="member_regi" class="border-solid bg-info-600 px-4 rounded" type="submit" value="등록하기"/>
		</div>
	</form>
</div>
