<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6 w-full">
		<i class="xi-school"></i><span class="ml-2">강좌별 수강생 현황</span>
	</div>
	<a href="/lms/student_by_course" class="w-full"><i class="xi-angle-left-min">목록으로</i></a>
	<span class="w-full my-8">●강좌명 : [${vo.course_start_date}]${vo.course_name}/${vo.course_day}/${vo.course_time}(총 ${course_student_count}명)</span>
	<div class="w-full">
		<div class="float-right my-3"><a href="/lms/admin/table_attendance_grade?course_no=${vo.course_no}"><span class="border-solid border-2 border-gray-600 rounded bg-info-200">출결현황</span></a></div>
	</div>
	<table class="bg-info-300" style="width:100%; border-top: 1px solid #444444;">
		<tr>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:50px">회원번호</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:200px">사진</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:150px">수강생</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:50px">성별</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:150px">학부모휴대폰</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:150px">학생휴대폰</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:150px">학생관리</td>
		</tr>
		<c:forEach var="vo2" items="${list}">
			<tr class="bg-white student_info"><!-- hover시 배경색이 변하고 click이벤트시 디테일 화면을 이동하는 이벤트처리하기-->
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:50px">${vo2.student_no}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:250px">
					<div class="img_wrap border-solid border-2 border-gray-600" style="width:200px; height:200px; margin:0 auto">
						<c:if test="${vo2.student_img != null }">
							<img src="/lms/img/${vo.student_img}" class="student_img">
						</c:if >
						<c:if test="${vo2.student_img == null }">
							<img src="/lms/img/user-avatar.png" class="student_img">
						</c:if>
					</div>
				</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:150px">${vo2.student_name_ko}/${vo2.student_name_eng}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:50px">${vo2.student_gender}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:150px">${vo2.student_tel_parent}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:150px">${vo2.student_tel_phone}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:150px">
					<a href="/lms/admin/class_transfer?student_no=${vo2.student_no}&course_no=${vo2.course_no}"><span class="border-solid border-2 border-gray-600 rounded bg-info-200 mr-3">반 이동</span></a>
					<a href="/lms/admin/leave_out?student_no=${vo2.student_no}"><span class="border-solid border-2 border-gray-600 rounded bg-info-200">휴/퇴원처리</span></a>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>
