<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	var student_no = '${student_no}';
	alert("휴/퇴원 수정이 완료 되었습니다.");
	location.href="/lms/student_detail?student_no="+student_no;
</script>