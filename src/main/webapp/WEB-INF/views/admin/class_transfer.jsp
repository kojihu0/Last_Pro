<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6 w-full">
		<i class="xi-school"></i><span class="ml-2">강좌별 수강생 현황</span>
	</div>
	<a href="/lms/management_of_student" class="w-full"><i class="xi-angle-left-min">반으로</i></a>
	<span class="w-full my-8">●${vo.student_name_ko}/${vo.student_name_eng}</span>
	<form class="w-full" method="post" action="/lms/class_transferOk">
		<input type="hidden" name="student_no" value="${vo.student_no}"/>
		<input type="hidden" name="course_no" value="${course_no}"/>
		<table class="w-full">
			<tr>
				<td class="bg-info-300 text-center border border-solid border-gray-600 p-2" style="width:200px">이동 할 반 선택 : </td>
				<td class="border border-solid border-gray-600 p-2">
					<div class="inline-block relative w-40">
						<select name="course_day" id="course_day" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
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
						<select name="course_time" id="course_time" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">
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
						<select name="course_stage" id="course_stage" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline text-center">
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
						<input type="text" class="datepicker border-solid border border-gray-600 ml-2 text-center transfer_date"/>
					</div>
				</td>
			</tr>
			<tr>
				<td class="bg-info-300 text-center border border-solid border-gray-600 h-64 p-2">납부 내역 변경 : </td>
				<td class="border border-solid border-gray-600 p-2">
					<div>
						<input type="radio" name="1" checked/>수납내역을 변경하지 않음<br/>
						<input type="radio" name="1"/>수납내역을 신규반으로 전액 변경처리함<br/>
						<input type="radio" name="1"/>수강료를 이동일자 기준으로 배분<br/>
					</div>
				</td>
			</tr>
		</table>
		<div class="text-center mt-3">
			<input type="submit" value="반이동 처리" id="trasfer_classOK" class="border-2 border-gray-600 border-solid rounded bg-info-200"/>
		</div>
	</form>
</div>
