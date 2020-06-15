<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminNotice</title>

</head>
<body>

	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		
		
		<div class="text-xl p-3 mx-16 ">  
			<i class="xi-school"></i>&nbsp;사내공지
		</div>
		
		<div class="p-3 searchDiv text-right">
			<form id="searchForm" method="post" action="<%=projectPath %>/admin/adminNotice">
				<input type="text" name="search" placeholder="검색어 입력" class="border border-black"/>&nbsp;<button><i class="xi-search"></i></button>
			</form>
		</div>
		
		<div class="p-3">
			<table class="w-full">
				<tbody>
					<tr class="text-center">  
						<td class="border-b-4 border-info-700 bg-info-300 w-16">번호</td>
						<td class="border-b-4 border-info-700 bg-info-300 bg-info-300">제목</td>
						<td class="border-b-4 border-info-700 bg-info-300 bg-info-300">분류</td>
						<td class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-64">작성자</td>
						<td class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-64">작성일</td> 
						<td class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-16">조회수</td> 
					</tr>
				</tbody> 
				<tbody>
					<tr OnClick="location.href='<%=projectPath%>/admin/adminNoticeView?no='">
						<td  class="border text-center p-2">1</td>
						<td  class="border text-center p-2">공지사항 1번</td>
						<td  class="border text-center p-2">공지사항</td>
						<td  class="border text-center p-2">원장</td>
						<td  class="border text-center p-2">오늘</td>
						<td  class="border text-center p-2">1</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="p-3 text-right"> 
			<button class="bg-info-200 hover:bg-blue-700 border border-black font-bold py-2 px-4 rounded"><a href="<%=projectPath%>/admin/adminNoticeWrite">쓰기</a></button>
		</div>	
	</div>
	
</body>
</html>