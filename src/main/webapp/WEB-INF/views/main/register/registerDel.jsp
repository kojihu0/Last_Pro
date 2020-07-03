<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
  	footer{display:none}
   #site-header{display:none}
</style>
<body>
<div class="text-center">
	<span class='text-3xl'>회원 탈퇴</span>
</div>

<form action="<%=ctx %>/registerDelOk" method="post">
<div class="text-center">
	<input type="text" name="delId"placeholder="ID" id="delId"  class="focus:bg-gray-200 focus:outline-none border-brand-500 border-2 px-1 py-1"/>
</div>
<div class="text-center mt-2">
	<input type="text" name="delPw"placeholder="PASSWORD" class="focus:bg-gray-200 focus:outline-none border-brand-500 border-2 px-1 py-1"/>
</div>
<div class="text-center mt-2">
	<input type="submit" value="확인" class="hover:cursor-pointer focus:outline-none hover:bg-brand-700 hover:border-brand-700 border-brand-500 bg-brand-500 border-2 px-1 py-1"/>
	<input type="button" value="취소" class="hover:cursor-pointer focus:outline-none hover:bg-brand-700 hover:border-brand-700 border-brand-500 bg-brand-500 border-2 px-1 py-1"/>
</div>
</form>
</body>