$(function(){
	$("#trasfer_classOK").on("click",function(){
		if($(".transfer_class_year option:selected").val()=="==" || $(".transfer_class_month option:selected").val()=="==" || $(".transfer_class option:selected").val()=="=="){
			alert("이동 할 반을 선택해주세요.");
			return false;
		}else if($(".transfer_date").val()==""){
			alert("이동 일자를 선택해주세요.");
			return false;
		}
	});
	
	$("#leave_outOk").on("click", function(){
		if($("#leave").prop("checked")==false && $("#out").prop("checked")==false){
			alert("휴원 또는 퇴원을 선택해주세요.");
			return false;
		}else if($("#leave_out_date").val()==""){
			alert("휴/퇴원 일지를 입력해주세요.");
			return false;
		}
	});
});