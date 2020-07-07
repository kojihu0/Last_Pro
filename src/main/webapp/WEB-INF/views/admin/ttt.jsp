<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Educamp Admin</title>
<script src="/lms/js/jquery-3.4.1.js"></script>
<script>
var data;
$(function(){
	
	$("#butt").on("click", function(){
		console.log("data 결과 확인 : " + data);
	});
	
		  $.ajax({
			  type:"GET",
			  url: "<%=projectPath%>/calendar/base",
			  success: function(result){  
				  
					data = result;

				  console.log(result + " : 결과값"); 
				  console.log(data + " : 결과값"); 
				  console.log(result + " : result 결과값"); 	


			  },
			  error:function(e){   
				  console.log(e.responseText + " : 에러 ");
			  }
		  });
	
});
</script>
</head>
<body>


<button id="butt" > 버어튼</button>

</body>
</html>