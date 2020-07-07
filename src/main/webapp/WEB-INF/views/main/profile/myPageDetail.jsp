<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!--헤더(메뉴)-->
<div id="content" class="w-full my-0 mx-auto">
	<div id="mainBanner" style="background-size:cover;background-image:url('<%=request.getContextPath()%>/img/top-banner.jpg')" class="mb-4  w-full ">
		<div class="container my-0 mx-auto">
			<h1 class="border-l-4 border-brand-600 text-5xl text-white roboto-slab font-bold">&nbsp;&nbsp;CLASS&nbsp;&nbsp;INFORMATION</h1>
		</div>
	</div>
	<!-----------------페이지 내용----------------->
	<div class="m-0 m-auto w-full max-w-screen-xl mt-8 mb-4 mx-auto">
		<span class="text-gray-500"><a href="<%=request.getContextPath()%>/">Home</a>&nbsp;&nbsp;<i class="xi-angle-right"></i>&nbsp;&nbsp;Class&nbsp;&nbsp;Information</span>
		<div id="hr" class="my-4 border-t border-solid"></div>
		
		<div class="w-full max-w-screen-lg m-0 m-auto">
			<div class=" max-w-screen-lg w-full">
			<span class="text-4xl font-bold">수강정보</span>
			<form id="basicInfo" class="w-full" method="post" action="/lms/modify_basicInfo">
   <input type="hidden" name="student_no" value="${vo.student_no}"/>
   
      <table class="w-full">
         <tr>
            <td class="border-solid border-4 text-white border-gray-600 bg-brand-500 p-2 text-center">강사명</td>
            <td class="border-solid border-4 border-gray-600 p-2">
               <div class="overflow-y-auto" >
                  <div>
                     <span class="ml-1">${info.employee_name}</span>
                  </div>
               </div>
            </td>
            <td class="border-solid border-4 text-white border-gray-600 bg-brand-500 p-2 text-center">강좌명</td>
            <td class="border-solid border-4 border-gray-600 p-2">
               <div class="overflow-y-auto" >
                  <div>
                     <span class="ml-1">${info.course_name}</span>
                  </div>
               </div>
            </td>
         </tr>
          <tr>
            <td class="border-solid border-4 text-white border-gray-600 bg-brand-500 p-2 text-center">이름</td>
            <td class="border-solid border-4 border-gray-600 " colspan="3">
            <div class="calendar">
            <input type="text" value="${vo.student_name_ko}" name="student_regi_date" class="datepicker border-solid border-2 pointer-events-none border-white ml-2 first_regiDate"/>
            </div>
            </td>
         </tr>
        
         <tr>
            <td class="border-solid border-4 text-white border-gray-600 bg-brand-500 p-2 text-center">휴대폰 번호</td>
            <td class="border-solid border-4 border-gray-600 p-2 ">
                <input type="text" name="student_phone_tel2" class="border-solid border-2 pointer-events-none border-white w-40  " value="${vo.student_tel_phone }"/>
            </td>
            <td class="border-solid border-4 text-white border-gray-600 bg-brand-500 p-2 text-center">Email</td>
            <td class="border-solid border-4 border-gray-600 p-2 ">
               <div> 
                  <input id="sEmail" type="text" name="student_email_id" class="pointer-events-none border-solid border-2 border-white " value="${vo.student_email}"/>
                  <div class="inline-block relative w-40">
                    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
                       </div>
                   </div>
               </div>
            </td>
         </tr>
         <tr>
            <tr>
            <td class="border-solid border-4 border-gray-600 text-white  bg-brand-500 p-2 text-center">자기소개</td>
            <td class="border-solid border-4 border-gray-600 p-2 pointer-events-none"colspan="3"><textarea cols="100" rows="5" class="border-solid border-2 border-white pointer-events-none" name="student_memo">${vo.student_info}</textarea></td>
         </tr>
         
         <tr>
            <td class="border-solid border-4 text-white border-gray-600 bg-brand-500 p-2 text-center">수업시작일</td>
            <td class="border-solid border-4 border-gray-600  " colspan="3">
            <div class="calendar"><input type="text" value="${info.course_start_date}" name="student_regi_date" class="datepicker  pointer-events-none border-solid border-2 border-white ml-2 first_regiDate"/></div></td>
         </tr>
          <tr>
            <td class="border-solid border-4 text-white border-gray-600 bg-brand-500 p-2 text-center">수업종료일</td>
            <td class="border-solid border-4 border-gray-600  " colspan="3">
            <div class="calendar"><input type="text" value="${info.course_end_date}" name="student_regi_date" class="datepicker pointer-events-none border-solid border-2border-white ml-2 first_regiDate"/></div></td>
         </tr>
      </table>
		   </form>
				<!-- DivTable.com -->
			</div>
		</div>
	</div>
</div>
		