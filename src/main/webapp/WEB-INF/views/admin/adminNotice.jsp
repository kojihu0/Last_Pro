<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
	<div class="w-full max-w-screen-xl my-0 mx-auto items-center justify-between flex-wrap px-8 xl:px-0">
		
		
		<div class="text-xl p-6 ">  
			<i class="xi-school"></i>&nbsp;사내공지
		</div>
		
		<div class="p-3 mb-4 w-full flex bg-gray-300 items-center flex">
			<div class="inline-block relative mx-2">
				<select name="searchKey"  onChange="location.href='<%=projectPath %>/admin/adminNotice?searchKey='+ this.value" class="appearance-none w-full bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline">  
					<option value="-1"  <c:if test="${searchKey  == '-1'}">selected</c:if>>전  부</option> 
					<option value="2"  <c:if test="${searchKey  == '2'}">selected </c:if>>이벤트</option>  						
					<option value="1"  <c:if test="${searchKey  == '1'}">selected </c:if>>공지사항</option>  
				</select>
				<div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
   			    	<i class="xi-angle-down"></i>
			    </div>
			</div>
		</div>
		
		<div class="p-3">
			<table class="w-full">
				<tbody>
					<tr class="text-center">  
						<td class="border-b-4 border-info-700 bg-info-300 w-16">번호</td>
						<td class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-128">제목</td>
						<td class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-32">분류</td>
						<td class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-64">작성자</td>
						<td class="border-b-4 border-info-700 bg-info-300 bg-info-300 w-64">작성일</td> 
					</tr>
				</tbody>  
				<tbody>  
					<c:forEach var="vo" items="${list }">
						<tr class="bg-white hover:bg-gray-200 cursor-pointer" OnClick="location.href='<%=projectPath%>/admin/adminNoticeView?admin_notice_no=${vo.admin_notice_no }'">
							<td  class="border text-center p-2">${vo.admin_notice_no}</td>
							<td  class="truncate border text-center p-2">${vo.admin_notice_title}</td>
							
							<c:if test="${vo.admin_category == 1}">
								<td  class="border text-center p-2">공지사항</td>
							</c:if>
							<c:if test="${vo.admin_category == 2}">
								<td  class="border text-center p-2">이벤트</td>
							</c:if>
							
							<td  class="border text-center p-2">${vo.employee_name}</td>
							<td  class="border text-center p-2">${vo.admin_notice_date}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div class="p-3 text-right"> 
			<a class="bg-info-700 text-white rounded py-2 px-4" href="<%=projectPath%>/admin/adminNoticeWrite">쓰기</a>
		</div>	
		
	<div class="text-center">	
	<!-- 현재 페이지 -->
		<c:if test="${pageVo.pageNum == 1 }"> 
			<i class="xi-angle-left text-2xl"></i>
		</c:if>	  
		
		<c:if test="${pageVo.pageNum > 1 }"> 
			<a href="<%=projectPath %>/admin/adminNotice?pageNum=${pageVo.pageNum -1}<c:if test="${searchKey != -1}">&searchKey=${pageVo.searchKey }</c:if>"><i class="xi-angle-left text-2xl"></i></a> 
		</c:if>
		
		<c:forEach var="i" begin="${pageVo.startPage }" end="${pageVo.startPage + pageVo.onePageCount - 1}" > 
			<c:if test="${i <= pageVo.totalPage }"> 
				<a class="text-2xl" href="<%=projectPath %>/admin/adminNotice?pageNum=${i}<c:if test="${searchKey != -1}">&searchKey=${pageVo.searchKey }</c:if>"<c:if test="${i == pageVo.pageNum }">style='color:red'</c:if>> ${i}</a> 
			</c:if>
		</c:forEach>  
		 
		<!-- 현재 페이지가 마지막일 경우 -->
		<c:if test="${pageVo.pageNum == pageVo.totalPage }">
			<i class="xi-angle-right text-2xl"></i> 
		</c:if>
		<c:if test="${pageVo.pageNum < pageVo.totalPage }"> 
			<a href="<%=projectPath%>/admin/adminNotice?pageNum=${pageVo.pageNum + 1}<c:if test="${searchKey != -1}">&searchKey=${pageVo.searchKey }</c:if>"><i class="xi-angle-right text-2xl"></i></a> 
		</c:if>
	</div>
		
		 
</div>
