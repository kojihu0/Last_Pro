<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강생 현황</title>
</head>
<body>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6">
		<i class="xi-school"></i><span class="ml-2">수강생현황</span>
	</div>
	<form action="/lms/student_current_situation" class="w-full border-solid border-4 border-gray-600 flex bg-gray-200">
		<div class="mx-3 w-5/6">
			<div class="flex my-2">
				<span class="leading-10">검색조건 : </span>
				<div class="inline-block relative w-40 mx-2">
					<select name="searchKey" class="block appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline month">
						<option value="student_name_ko">이름=></option>
					    <option value="student_no">원생번호=></option>
					    <option value="student_tel_phone">휴대전화=></option>
					    <option value="student_tel_parent">부모전화=></option>
		  	 		</select>
		  		    <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
	   			    	<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
				    </div>
				</div>
				<input  name="searchWord" type="text"/>
			</div>
		</div>
		<input type="submit" value="검색하기" class="w-20 h-12 mt-1 ml-12 border-solid border-2 border-gray-600 rounded"/>
	</form>
		<div class="my-2"><i class="xi-search"></i>검색 결과 : <span class="ml-1">${pageVO.totalRecord}</span>건</div>
		<div class="justify-end border-2 border-solid border-gray-600 bg-info-200 rounded"><a href="/lms/registration_member"/>등록하기</a></div>
	<table class="bg-info-300" style="width:100%; border-top: 1px solid #444444; border-collapse: collapse;">
		<tr>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px;">회원번호</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:200px;">회원명</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:50px;">성별</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:200px;">휴대폰</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:250px;">이메일</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:200px;">부모휴대폰</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:150px;">수강등록일</td>
		</tr>
		<c:forEach var="vo" items="${list}">
			<tr class="bg-white hover:bg-gray-200" onClick="location.href='/lms/student_detail?student_no=${vo.student_no}'">
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:100px;">${vo.student_no}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:200px;">${vo.student_name_ko}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:50px;">${vo.student_gender}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:200px;">${vo.student_tel_phone}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:250px;">${vo.student_email}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:200px;">${vo.student_tel_parent}</td>
				<td class="border-solid border-2 border-gray-600 text-center p-2" style="width:150px;">${vo.student_regi_date}</td>
			</tr>
		</c:forEach>
	</table>
	
	<div class="w-full max-w-screen-xl my-10 mx-auto mb-12">
		<ul class="flex justify-center" id="page">
			<c:if test="${pageVO.pageNum==1}">
				<li><i class="xi-angle-left"></i></li>
			</c:if>
			<c:if test="${pageVO.pageNum!=1}">
				<li class="hover:text-danger"><a href="/lms/student_current_situation?pageNum=${pageVO.pageNum-1}<c:if test='${pageVO.searchKey!=null && pageVO.searchWord!=null}'>&searchKey=${pageVO.searchKey}&searchWord=${pageVO.searchWord}</c:if>"><i class="xi-angle-left text-2xl"></i></a></li>
			</c:if>
			<c:forEach var="i" begin="${pageVO.startPage}" end="${pageVO.startPage + pageVO.onePageCount-1}">
				<c:if test="${i<=pageVO.totalPage}">
					<li class="hover:text-danger"><a href="/lms/student_current_situation?pageNum=${i}<c:if test='${pageVO.searchKey!=null && pageVO.searchWord!=null}'>&searchKey=${pageVO.searchKey}&searchWord=${pageVO.searchWord}</c:if>" <c:if test='${i==pageVO.pageNum}'>style='color:red'</c:if>><span class="text-2xl leading-none">${i}</span></a></li>
				</c:if>
			</c:forEach>
			<c:if test="${pageVO.pageNum == pageVO.totalPage}">
				<li><i class="xi-angle-right"></i></li>
			</c:if>
			<c:if test="${pageVO.pageNum < pageVO.totalPage}">
				<li class="hover:text-danger"><a href="/lms/student_current_situation?pageNum=${pageVO.pageNum+1}<c:if test='${pageVO.searchKey!=null && pageVO.searchWord!=null}'>&searchKey=${pageVO.searchKey}&searchWord=${pageVO.searchWord}</c:if>"><i class="xi-angle-right text-2xl"></i></a></li>
			</c:if>
		</ul>
	</div>
</div>
</body>
</html>