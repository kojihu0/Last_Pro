$(function(){
	$(".refundPrice").on("keyup",function(){
		if(isNaN($(".refundPrice").val())==true){
			$(".numberTxt").css({
				"display":"block" 	 
			});
		}else{
			$(".numberTxt").css({
				"display":"none" 	 
			});
		}
	});
//////////////////////////////////반환일자 등록////////////////////////////////////////////
	$("#refundRegi").click(function(){
		if(isNaN($(".refundPrice").val())==true){
			alert("반환액을 숫자로 입력해주세요.");
			return false;
		}else if($(".refundPrice").val()=="" || $(".refundPrice").val()==0){
			alert("반환액이 0원이면 안됩니다.");
			return false;
		}else if(parseInt($(".refundPrice").val()) > parseInt($("#payment_amount").text())){
			alert("반환액이 수납액 보다 크면 안됩니다.");
			return false;
		}else if($("#refundReason").val()==""){
			alert("반환사유를 입력해주세요.");
			return false;
		}else if($("#refundWay option:selected").val()=="선택하세요"){
			alert("반환방법을 선택하세요.");
			return false;
		}else if($("#refundDay").val()==""){
			alert("반환일자를 선택해주세요.");
			return false;
		}
	})
//////////////////////////////////반환일자 등록////////////////////////////////////////////
/////////////////////////////////회원등록 유효성검사//////////////////////////////////////////
	var korName = /^[가-힝]{2,7}$/;
	var engName= /^[a-zA-Z]{2,20}$/;
	var email = /^\w{4,20}$/;
	var domain = /^[a-zA-Z]{2,10}[.]{1}[a-zA-Z]{2,3}$/;
    var id = /^[a-zA-Z]{1}\w{7,20}$/;
	
	$("#member_regi").on("click", function(){
		if(!korName.test($(".korName").val()) || $(".korName").val()==""){
			alert("2글자 이상 한글이름을 입력해주세요.");
			return false;
		}else if(!engName.test($(".engName").val()) || $(".engName").val()==""){
			alert("영문이름을 입력해주세요.");ㅇ
			return false;
		}else if($(".birthYear option:selected").val()=="선택" || $(".birthMonth option:selected").val()=="선택" || $(".birthDay option:selected").val()=="선택"){
			alert("생년월일을 선택해주세요.");
			return false;
		}else if($(".student_phone1").val()=="" || $(".student_phone2").val()=="" || isNaN($(".student_phone1").val())==true || isNaN($(".student_phone2").val())==true || $(".student_phone1").val().length<4 || $(".student_phone2").val().length<4){
			alert("학생연락처를 제대로 입력해주세요");
			return false;
		}else if(!email.test($("#rsEmail").val()) || !domain.test($("#rsDomain").val())){
			alert("학생 이메일을 제대로 입력해주세요.");
			return false;
		}else if(isNaN($(".tel2").val())==true || isNaN($(".tel3").val())==true || $(".tel2").val().length<3 || $(".tel3").val().length<4){
			alert("집 전화번호를 제대로 입력해주세요.");
			return false;
		}else if($(".student_id").val()=="" || !id.test($(".student_id").val())){
			alert("아이디를 제대로 입력해주세요.");
			return false;
		}else if($(".parent_phone1").val()=="" || $(".parent_phone2").val()=="" || isNaN($(".parent_phone1").val())==true || isNaN($(".parent_phone2").val())==true || $(".parent_phone1").val().length<4 || $(".parent_phone2").val().length<4){
			alert("학부모 연락처를 제대로 입력해주세요");
			return false;
		}else if(!email.test($("#rpEmail").val()) || !domain.test($("#rpDomain").val())){
			alert("학부모 이메일을 제대로 입력해주세요");
			return false;
		}else if($(".relation option:selected").val()=="=="){
			alert("학부모 관계를 선택해주세요.");
			return false;
		}else if(!korName.test($(".pkorName").val()) || $(".pkorName").val()==""){
			alert("학부모 성함을 제대로 입력해주세요. ");
			return false;
		}else if($(".addr_num").val()==""){
			alert("주소를 검색해주세요.");
			return false;
		}else if($(".addr_sub").val()==""){
			alert("상세주소를 입력해세요.");
			return false;
		}else if(c && $(".otherReason").val()==""){
			alert("수강동기 기타를 선택하셨습니다. 동기를 입력해주세요");
			return false;
		}else if($(".interest").prop("checked")==true && $(".interestReason").val()==""){
			alert("관심분야 기타를 선택하셨습니다. 관심분야를 입력해주세요.");
			return false;
		}else if($(".first_regiDate").val()==""){
			alert("최초등록일을 입력해주세요. ");
			return false;
		}
	});
/////////////////////////////////회원등록 유효성검사//////////////////////////////////////////
/////////////////////////////////회원수정 유효성검사//////////////////////////////////////////
	$("#modify_studentInfo").on("click", function(){
		if(!korName.test($(".korName").val()) || $(".korName").val()==""){
			alert("2글자 이상 한글이름을 입력해주세요.");
			return false;
		}else if(!engName.test($(".engName").val()) || $(".engName").val()==""){
			alert("영문이름을 입력해주세요.");
			return false;
		}else if($(".birthYear option:selected").val()=="선택" || $(".birthMonth option:selected").val()=="선택" || $(".birthDay option:selected").val()=="선택"){
			alert("생년월일을 선택해주세요.");
			return false;
		}else if($(".student_phone1").val()=="" || $(".student_phone2").val()=="" || isNaN($(".student_phone1").val())==true || isNaN($(".student_phone2").val())==true || $(".student_phone1").val().length<4 || $(".student_phone2").val().length<4){
			alert("학생연락처를 제대로 입력해주세요");
			return false;
		}else if(!email.test($("#sEmail").val()) || !domain.test($("#sDomain").val())){
			alert("학생 이메일을 제대로 입력해주세요.");
			return false;
		}else if(isNaN($(".tel2").val())==true || isNaN($(".tel3").val())==true || $(".tel2").val().length<3 || $(".tel3").val().length<4){
			alert("집 전화번호를 제대로 입력해주세요.");
			return false;
		}else if($(".student_id").val()=="" || !id.test($(".student_id").val())){
			alert("아이디를 제대로 입력해주세요.");
			return false;
		}else if($(".parent_phone1").val()=="" || $(".parent_phone2").val()=="" || isNaN($(".parent_phone1").val())==true || isNaN($(".parent_phone2").val())==true || $(".parent_phone1").val().length<4 || $(".parent_phone2").val().length<4){
			alert("학부모 연락처를 제대로 입력해주세요");
			return false;
		}else if(!email.test($("#pEmail").val()) || !domain.test($("#pDomain").val())){
			alert("학부모 이메일을 제대로 입력해주세요");
			return false;
		}else if($(".relation option:selected").val()=="=="){
			alert("학부모 관계를 선택해주세요.");
			return false;
		}else if(!korName.test($(".pkorName").val()) || $(".pkorName").val()==""){
			alert("학부모 성함을 제대로 입력해주세요. ");
			return false;
		}else if($(".addr_num").val()==""){
			alert("주소를 검색해주세요.");
			return false;
		}else if($(".addr_sub").val()==""){
			alert("상세주소를 입력해세요.");
			return false;
		}else if($(".other").prop("checked")==true && $(".otherReason").val()==""){
			alert("수강동기 기타를 선택하셨습니다. 동기를 입력해주세요");
			return false;
		}else if($(".interest").prop("checked")==true && $(".interestReason").val()==""){
			alert("관심분야 기타를 선택하셨습니다. 관심분야를 입력해주세요.");
			return false;
		}else if($(".first_regiDate").val()==""){
			alert("최초등록일을 입력해주세요. ");
			return false;
		}
	});
/////////////////////////////////회원수정 유효성검사//////////////////////////////////////////
});