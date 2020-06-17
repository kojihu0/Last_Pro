<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휴강생 현황</title>
</head>
<body>
<div class="w-full max-w-screen-xl my-0 mx-auto flex items-center justify-between flex-wrap px-8 xl:px-0">
	<div class="h-10 text-lg my-6">
		<i class="xi-school"></i><span class="ml-2">휴강생현황</span>
	</div>
	<form class="w-full border-solid border-4 border-gray-600 flex bg-gray-200">
		<div class="mx-3 w-5/6">
			<div class="my-2 calendar ">등록일자 : <input type="text" class="datepicker border-solid border-2 border-gray-600 ml-2"/> ~ <input type="text" class="datepicker border-solid border-2 border-gray-600"/></div>
			회원이름 : <input type="text" class="ml-2 border-solid border-2 border-gray-600"/>
		</div>
		<input type="submit" value="검색하기" class="w-20 h-20 my-1 ml-12 border-solid border-2 border-gray-600 rounded"/>
	</form>
	<div class="my-2"><i class="xi-search"></i>검색 결과 : <span class="ml-1">0</span>건</div>
	<table class="bg-info-300" style="width:100%; border-top: 1px solid #444444;">
		<tr>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">회원번호</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:150px">회원명</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:200px">휴대전화</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:200px">부모전화</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:230px">최근수강강좌</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">휴원일자</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px" >휴원사유</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">담당자</td>
		</tr>
		<tr class="bg-white">
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">회원번호</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:150px">회원명</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:200px">휴대전화</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:200px">부모전화</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:230px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis">최근수강강좌</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">휴원일자</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis" >휴원사유</td>
			<td class="border-solid border-2 border-gray-600 text-center" style="width:100px">담당자</td>
		</tr>
	</table>
</div>
</body>
</html>