//콤마 찍기
function makeComma(str) {

	 str = String(str);

	 return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');

}
//콤마풀기
function uncomma(str) {
    str = String(str);
    return str.replace(/[^\d]+/g, '');
}
//값 입력시 콤마찍기
function inputNumberFormat(obj) {
    obj.value = makeComma(uncomma(obj.value));
}
//-----------------------------------------------------------------------------
//코스 수정 정규식
function checkRegCourseEdit(){
	var reg="";
 	//courseStart
 	var date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 	
 	if(!date_pattern.test(document.getElementById("courseStart").value)){
 		alert("날짜를 선택해 주세요");
 		return false;
 	}
	
	//teacherNmae -> 2~7글자.
	reg = /^[가-힣]{2,7}$/;
	if(!reg.test(document.getElementById("teacherName").value)){
		alert("이름은 한글 2~7글자로 작성하셔야 합니다.");
		return false;
	}
 	//startRegiDate
 	var date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
 	if(!date_pattern.test(document.getElementById("startRegiDate").value)){
 		alert("날짜를 선택해 주세요");
 		return false;
 	}
 	//endRegiDate
 	 date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
 	if(!date_pattern.test(document.getElementById("endRegiDate").value)){
 		alert("날짜를 선택해 주세요");
 		return false;
 	}
	
 	//startCourseDate
 	 date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
 	if(!date_pattern.test(document.getElementById("startCourseDate").value)){
 		alert("날짜를 선택해 주세요");
 		return false;
 	}
 	//endCourseDate
 	 date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
 	if(!date_pattern.test(document.getElementById("endCourseDate").value)){
 		alert("날짜를 선택해 주세요");
 		return false;
 	}
	 
 	//courseDay   courseTime  courseStage
 	var optionValuesDay   = document.getElementById("courseDay").options;
 	var selectIndexDay    = document.getElementById("courseDay").selectedIndex;
 	var selectValueDay    = optionValuesDay[selectIndexDay].value;
 	
 	var optionValuesTime  = document.getElementById("courseTime").options;
 	var selectIndexTime   = document.getElementById("courseTime").selectedIndex;
 	var selectValueTime   = optionValuesTime[selectIndexTime].value;

 	var optionValuesStage = document.getElementById("courseStage").options;
 	var selectIndexStage  = document.getElementById("courseStage").selectedIndex;
 	var selectValueStage  = optionValuesStage[selectIndexStage].value;

 	if(selectValueDay == "::요일::"){
 		alert("요일을 선택해주세요");
 		return false;
 	}
 	if(selectValueTime == "::수업시간::"){
 		alert("수업 시간을 선택해 주세요.");
 		return false;
 	}
 	if(selectValueStage == "::장소::"){ 
 		alert("장소를 선택해주세요");
 		return false;
 	}
 	//courseStory
 	if(document.getElementById("courseStory").value == ""){
 		alert("개요 작성은 필수입니다.");
 		return false;
 	}

 	//courseEditContent
 	if(document.getElementById("courseEditContent").value == ""){
 		alert("강좌 상세 내용 작성은 필수입니다.");
 		return false;
 	}
}
//---------------------------------------------------------------------
//코스 등록 정규식
function checkRegCourseRegi(){
	var reg = "";
	//courseName
	if(document.getElementById("courseName").value == ""){
		alert("강좌 명을 입력해 주세요.");
		return false;
	}
	//courseStart
 	var date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 	
 	if(!date_pattern.test(document.getElementById("courseStart").value)){
 		alert("날짜를 선택해 주세요");
 		return false;
 	}

	//teacherNmae -> 2~7글자.
	reg = /^[가-힣]{2,7}$/;
	if(!reg.test(document.getElementById("teacherName").value)){
		console.log("안와?");
		alert("이름은 한글 2~7글자로 작성하셔야 합니다.");
		return false;
	}
	
	//startRegiDate
 	var date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
 	if(!date_pattern.test(document.getElementById("startRegiDate").value)){
 		alert("날짜를 선택해 주세요");
 		return false;
 	}
	//endRegiDate
	 date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
	 if(!date_pattern.test(document.getElementById("endRegiDate").value)){
	 	alert("날짜를 선택해 주세요");
	 	return false;
	 }
	//startCourseDate
	 date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
	 if(!date_pattern.test(document.getElementById("startCourseDate").value)){
	 	alert("날짜를 선택해 주세요");
	 	return false;
	 }
	//endCourseDate
 	date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
  	if(!date_pattern.test(document.getElementById("endCourseDate").value)){
  		alert("날짜를 선택해 주세요");
  		return false;
  	}	
  //courseDay   courseTime  courseStage
 	var optionValuesDay   = document.getElementById("courseDay").options;
 	var selectIndexDay    = document.getElementById("courseDay").selectedIndex;
 	var selectValueDay    = optionValuesDay[selectIndexDay].value;
 	
 	var optionValuesTime  = document.getElementById("courseTime").options;
 	var selectIndexTime   = document.getElementById("courseTime").selectedIndex;
 	var selectValueTime   = optionValuesTime[selectIndexTime].value;

 	var optionValuesStage = document.getElementById("courseStage").options;
 	var selectIndexStage  = document.getElementById("courseStage").selectedIndex;
 	var selectValueStage  = optionValuesStage[selectIndexStage].value;
 
 	if(selectValueDay == "::요일::"){
 		alert("요일을 선택해주세요");
 		return false;
 	} 
 	if(selectValueTime == "::수업시간::"){
 		alert("수업 시간을 선택해 주세요.");
 		return false;
 	}
 	if(selectValueStage == "::장소::"){ 
 		alert("장소를 선택해주세요");
 		return false;
 	}
 	//courseStory
 	if(document.getElementById("courseStory").value == ""){
 		alert("개요 작성은 필수입니다.");
 		return false;
 	}

 	//courseEditContent
 	if(document.getElementById("courseEditContent").value == ""){
 		alert("강좌 상세 내용 작성은 필수입니다.");
 		return false;
 	}	 
}
//-------------------------------------------------------------------------
//업무일지 체크

//업무일지 수정체크
function manageEditCheck(){ 
	//classSubject  classClass
	var selectSubjectIndex = document.getElementById("classSubject").selectedIndex;
	var optionSubjectValue = document.getElementById("classSubject").options;
	var selectValueSubject = optionSubjectValue[selectSubjectIndex].value;

	var selectClassIndex = document.getElementById("classSelect").selectedIndex;
	var optionClassValue = document.getElementById("classSelect").options;
	var selectValueClass = optionClassValue[selectClassIndex].value;
	

	if(selectValueSubject == "::과목::"){
		alert("과목을 선택해 주세요.");
		return false;
	}  

	if(selectValueClass == "::반::"){
		alert("반을 선택해 주세요");
		return false;
	}
	
	var date_pattern = "";
	//courseDate
 	date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
  	if(!date_pattern.test(document.getElementById("courseDate").value)){
  		alert("날짜를 선택해 주세요");
  		return false;
  	}	
  	//------------
	var reg ="";
	//courseAbsent
	reg = /^[0-9]{1,2}$/;
	if(!reg.test(document.getElementById("courseAbsent").value)){
		alert("몇 명이 결석 했는지 적어주세요.");
		return false;
	} 
	//absentReason
	if(document.getElementById("courseAbsent").value != 0 &&
	   document.getElementById("absentReason").value == ""){
		alert("결석의 사유를  적어주세요.");
		return false;
	} 
	//------------
	//courselateness
	reg = /^[0-9]{1,2}$/;
	if(!reg.test(document.getElementById("courselateness").value)){
		alert("몇 명이 지각했는지 적어주세요.");
		return false;
	} 
	//latenessReason
	if(document.getElementById("courselateness").value != 0 &&
	   document.getElementById("latenessReason").value == ""){
		alert("지각의 사유를 적어주세요."); 
		return false;
	}
	//--------------
	//courseEarlyLeave 
	reg = /^[0-9]{1,2}$/;
	if(!reg.test(document.getElementById("courseEarlyLeave").value)){
		alert("몇 명이 조퇴 했는지 적어주세요.");
		return false;
	} 
	//earlyLeaveReason
	if(document.getElementById("courseEarlyLeave").value != 0 &&
	   document.getElementById("earlyLeaveReason").value == ""){
		alert("조퇴의  사유를 적어주세요."); 
		return false;
	}
	//-----------------
	//courseCanceler
	reg = /^[0-9]{1,2}$/;
	if(!reg.test(document.getElementById("courseCanceler").value)){
		alert("몇 명이 휴강 했는지 적어주세요.");
		return false;
	} 
	//cancelerReason
	if(document.getElementById("courseCanceler").value != 0 &&
	   document.getElementById("cancelerReason").value == ""){
		alert("휴강의  사유를 적어주세요."); 
		return false;
	}
	//-------------------
	//courseClassMove
	reg = /^[0-9]{1,2}$/;
	if(!reg.test(document.getElementById("courseClassMove").value)){
		alert("몇 명이 반을 이동 했는지 적어주세요.");
		return false;
	} 
	//classMoveReason
	if(document.getElementById("courseClassMove").value != 0 &&
	   document.getElementById("classMoveReason").value == ""){
		alert("반을 이동한  사유를 적어주세요."); 
	    return false;
	}
	//-------------------
	//courseStudentNum
	reg = /^[0-9]{1,2}$/;
	if(!reg.test(document.getElementById("courseStudentNum").value)){
		alert("총원을 적어주세요");
		return false;
	} 
	//-------------------------------------------
	//counselingReason
	if(document.getElementById("counselingReason").value == ""){
		alert("상담한 인원이 없더라도, 상담내역 없음! 이라고 적어야 합니다.");
		return false;
	}
	//-------------------
	//todayWork 
	if(document.getElementById("todayWork").value == ""){
		alert("오늘 진행한 업무를 적어주세요.");
		return false;
	}
}

//====================================================================
//업무일지 등록 체크
function manageRegiCheck(){ 
	//classSubject  classClass
	var selectSubjectIndex = document.getElementById("classSubject").selectedIndex;
	var optionSubjectValue = document.getElementById("classSubject").options;
	var selectValueSubject = optionSubjectValue[selectSubjectIndex].value;

	var selectClassIndex = document.getElementById("classSelect").selectedIndex;
	var optionClassValue = document.getElementById("classSelect").options;
	var selectValueClass = optionClassValue[selectClassIndex].value;
	

	reg = /^[가-힣]{2,7}$/;
	if(!reg.test(document.getElementById("teacherName").value)){
		console.log("안와?");
		alert("이름은 한글 2~7글자로 작성하셔야 합니다.");
		return false;
	}
	
	
	if(selectValueSubject == "::과목::"){
		alert("과목을 선택해 주세요.");
		return false;
	}  
	 
	if(selectValueClass == "::반::"){
		alert("반을 선택해 주세요");
		return false;
	}
	
	var date_pattern = "";
	//courseDate
 	date_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/; 
  	if(!date_pattern.test(document.getElementById("courseDate").value)){
  		alert("날짜를 선택해 주세요");
  		return false;
  	}	
  	//------------
	var reg ="";
	//courseAbsent
	reg = /^[0-9]{1,2}$/;
	if(!reg.test(document.getElementById("courseAbsent").value)){
		alert("몇 명이 결석 했는지 적어주세요.");
		return false;
	} 
	//absentReason
	if(document.getElementById("courseAbsent").value != 0 &&
	   document.getElementById("absentReason").value == ""){
		alert("결석의 사유를  적어주세요.");
		return false;
	} 
	//------------
	//courselateness
	reg = /^[0-9]{1,2}$/;
	if(!reg.test(document.getElementById("courselateness").value)){
		alert("몇 명이 지각했는지 적어주세요.");
		return false;
	} 
	//latenessReason
	if(document.getElementById("courselateness").value != 0 &&
	   document.getElementById("latenessReason").value == ""){
		alert("지각의 사유를 적어주세요."); 
		return false;
	}
	//--------------
	//courseEarlyLeave 
	reg = /^[0-9]{1,2}$/;
	if(!reg.test(document.getElementById("courseEarlyLeave").value)){
		alert("몇 명이 조퇴 했는지 적어주세요.");
		return false;
	} 
	//earlyLeaveReason
	if(document.getElementById("courseEarlyLeave").value != 0 &&
	   document.getElementById("earlyLeaveReason").value == ""){
		alert("조퇴의  사유를 적어주세요."); 
		return false;
	}
	//-----------------
	//courseCanceler
	reg = /^[0-9]{1,2}$/;
	if(!reg.test(document.getElementById("courseCanceler").value)){
		alert("몇 명이 휴강 했는지 적어주세요.");
		return false;
	} 
	//cancelerReason
	if(document.getElementById("courseCanceler").value != 0 &&
	   document.getElementById("cancelerReason").value == ""){
		alert("휴강의  사유를 적어주세요."); 
		return false;
	}
	//-------------------
	//courseClassMove
	reg = /^[0-9]{1,2}$/;
	if(!reg.test(document.getElementById("courseClassMove").value)){
		alert("몇 명이 반을 이동 했는지 적어주세요.");
		return false;
	} 
	//classMoveReason
	if(document.getElementById("courseClassMove").value != 0 &&
	   document.getElementById("classMoveReason").value == ""){
		alert("반을 이동한  사유를 적어주세요."); 
	    return false;
	}
	//-------------------
	//courseStudentNum
	reg = /^[0-9]{1,2}$/;
	if(!reg.test(document.getElementById("courseStudentNum").value)){
		alert("총원을 적어주세요");
		return false;
	} 
	//-------------------------------------------
	//counselingReason
	if(document.getElementById("counselingReason").value == ""){
		alert("상담한 인원이 없더라도, 상담내역 없음! 이라고 적어야 합니다.");
		return false;
	}
	//-------------------
	//todayWork 
	if(document.getElementById("todayWork").value == ""){
		alert("오늘 진행한 업무를 적어주세요.");
		return false;
	}
}
//---------------------------------------------------------------------------------------------
//사내 공지사항
	//수정
function noticeEditCheck(){
	if(document.getElementById("noticeSubject").value == ""){
		alert("글의 제목을 작성해주세요.");
		return false;
	}
	 
	var content = document.getElementById("noticEditContent").value;
	
	if(content == ""){
		alert("글의 내용은 필수입니다.");
		return false;
	}
	
}

function noticeRegiCheck(){
	var reg = "";
	
	//noticeWriteSubject
	if(document.getElementById("noticeWriteSubject").value == ""){
		alert("글의 제목을 작성해주세요.");
		return false;
	}
	//selectNoticeCategory
	
	var optionValue = document.getElementById("selectNoticeCategory").options;
	var selectIndex = document.getElementById("selectNoticeCategory").selectedIndex;
	var selectValue = optionValue[selectIndex].value;
	
	if(selectValue == "::선택::"){
		alert("카테고리를 선택해주세요.");
		return false; 
		
	}
	
	//noticeWriteContent
	var content = document.getElementById("noticeWriteContent").value;
	
	if(content == ""){
		alert("글의 내용은 필수입니다.");
		return false;
	}
	//noticeWritePw
	reg = /^[0-9]{4,8}$/;
	
	if(!reg.test(document.getElementById("noticeWritePw").value)){
		alert("임시 비밀번호는 숫자 4~8글자로만 가능합니다.");
		return false;
	}
}
//---------------------------------------------------------------------------------------------
//강사 정보
function teacherEditCheck(){
	var reg = ""; 
	//belong
	var optionValue = document.getElementById("belong").options;
	var selectIndex = document.getElementById("belong").selectedIndex;
	var selectValue = optionValue[selectIndex].value;
	//teacherRank(select)
	var optionValueRank = document.getElementById("teacherRank").options;
	var selectIndexRank = document.getElementById("teacherRank").selectedIndex;
	var selectValueRank = optionValueRank[selectIndexRank].value; 
	//teacherAuthority(select) 
	var optionValueAuthority = document.getElementById("teacherAuthority").options;
	var selectIndexAuthority = document.getElementById("teacherAuthority").selectedIndex;
	var selectValueAuthority = optionValueAuthority[selectIndexAuthority].value;  
	
	
	if(selectValue == "::담당::"){
		alert("어떤 반을 담당하는지 선택해주세요.");
		return false;
	}else if(selectValueRank == "::직급::"){
		alert("해당 직원의 직급을 선택해주세요");
		return false;
	}else if(selectValueAuthority == "::권한::"){
		alert("해당 직원의 권한을 선택해주세요.");
		return false;
	}
	//teacherTel_01 teacherTel_02 teacherTel_03
	var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
	var telPhone = "010" + "-" + document.getElementById("teacherTel_02").value + "-" + document.getElementById("teacherTel_03").value;
	//teacherTel_01 teacherTel_02 teacherTel_03
	if(document.getElementById("teacherTel_02").value == "" ){
		alert("연락처의 중간이 비었습니다.");
		return false;
	} if(document.getElementById("teacherTel_03").value == "" ){
		alert("연락처의 마지막 부분이 비었습니다.");
		return false;
	} if(!regExp.test(telPhone)){
		alert("연락처의 규정에 맞춰주세요. 숫자로만 작성이 가능하며, 중간은 숫자 3~4개, 마지막은 숫자 네 개가 필요합니다.");
		return false; 
	}
	//emailId
	if(document.getElementById("emailId").value == ""){
		alert("이메일 작성 부분이 비었습니다.");
		return false;
	}
	if(document.getElementById("domain").value == ""){
		alert("도메인 작성 부분이 비었습니다.");
		return false;
	}
	
	var email = document.getElementById("emailId").value + "@" + document.getElementById("domain").value;
	emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;//이메일 정규식
	
	if(!emailRule.test(email)) {             
	    alert("이메일 양식에 맞춰서 작성해주세요. 특수문자 -,_ ,. 는 한번까지 가능합니다.");
	    return false;
	}
}

function teacherRegiCheck(){
	var reg="";
	
	//teacherName
	reg = /^[가-힣]{2,7}$/;
	if(!reg.test(document.getElementById("teacherName").value)){
		alert("이름은 한글 2~7글자로 작성하셔야 합니다.");
		return false;
	}
	//belong
	var optionValue = document.getElementById("belong").options;
	var selectIndex = document.getElementById("belong").selectedIndex;
	var selectValue = optionValue[selectIndex].value;
	
	if(selectValue == "::담당::"){
		alert("어떤 반을 담당하는지 선택해주세요.");
		return false;
	}
	//teacherRank(select)
	var optionValueRank = document.getElementById("teacherRank").options;
	var selectIndexRank = document.getElementById("teacherRank").selectedIndex;
	var selectValueRank = optionValueRank[selectIndexRank].value; 
	
	if(selectValueRank == "::직급::"){
		alert("작성 대상자의 직급을 선택해주세요");
		return false;
	}
	//teacherAuthority
	var optionValueAuthority = document.getElementById("teacherAuthority").options;
	var selectIndexAuthority = document.getElementById("teacherAuthority").selectedIndex;
	var selectValueAuthority = optionValueAuthority[selectIndexAuthority].value; 
	
	if(selectValueRank == "::권한::"){
		alert("해당 직원의 권한을 선택해주세요.");
		return false;
	}
	//teacherId
	var id = document.getElementById("teacherId");
	var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;//이메일 정규식
	 
	if(!emailRule.test(id.value)) {            
	    alert("id는 이메일 형식으로 작성하셔야 합니다. 회원가입 했던 id(email)을 입력해주세요");
	    return false;
	}

	//teacherTel_01 teacherTel_02 teacherTel_03
	var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
	var telPhone = "010" + "-" + document.getElementById("teacherTel_02").value + "-" + document.getElementById("teacherTel_03").value;
	
	if(document.getElementById("teacherTel_01").value == "" ){
		alert("연락처의 가장 앞부분이 비었습니다.");
		return false;
	}else if(document.getElementById("teacherTel_02").value == "" ){
		alert("연락처의 중간이 비었습니다.");
		return false;
	}else if(document.getElementById("teacherTel_03").value == "" ){
		alert("연락처의 마지막 부분이 비었습니다.");
		return false;
	}else if(!regExp.test(telPhone)){
		alert("연락처의 규정에 맞춰주세요. 숫자로만 작성이 가능하며, 중간은 숫자 3~4개, 마지막은 숫자 네 개가 필요합니다.");
		return false;
	}
	//emailId
	if(document.getElementById("emailId").value == ""){
		alert("이메일 작성 부분이 비었습니다.");
		return false;
	}
	if(document.getElementById("domainSelect").value == ""){
		alert("도메인 작성 부분이 비었습니다.");
		return false;
	}
	
	var email = document.getElementById("emailId").value + "@" + document.getElementById("domainSelect").value;
	var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;//이메일 정규식
	
	if(!emailRule.test(email)) {             
	    alert("이메일 양식에 맞춰서 작성해주세요. 특수문자 -,_ ,. 는 한번까지 가능합니다.");
	    return false;
	}
}

//===============================================================
	//로그인
function adminLoginChek(){
	//adminId
	if(document.getElementById("adminId").value == "") {             
	    alert("id가 비었습니다.");
	    return false;
	} 
	//adminPw 
	if(document.getElementById("adminPw").value == "") {             
	    alert("비밀번호가  비었습니다.");
	    return false;
	}
} 
	//회원가입 체크
function adminIdRegiChek(){
	//adminName
 	var reg = /^[가-힣]{2,7}$/;
	if(document.getElementById("adminName").value == ""){
		alert("이름을 입력해주세요.");
		return false;
	}else if(!reg.test(document.getElementById("adminName").value)){
		alert("이름은 한글 2~7글자로 작성하셔야 합니다.");
		return false;
	}
	//adminId
	var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;//이메일 정규식
	if(document.getElementById("adminId").value == "") {             
	    alert("id가 비었습니다.");
	    return false;
	}else if(!emailRule.test(document.getElementById("adminId").value)) {             
	    alert("id는 이메일 형식으로 작성되어야 합니다.");
	    return false;
	} 
	//adminPw
	//최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자
	var pw = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
	
	if(document.getElementById("adminPw").value == ""){
		 alert("비밀번호가 비었습니다.");
		    return false;
	}else if(!pw.test(document.getElementById("adminPw").value)){
	    alert("pw는 최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자로 작성하셔야 합니다.");
	    return false;
	} 
	
	//confirmPw
	if(document.getElementById("confirmPw").value == ""){
		alert("비밀번호 확인이 필요합니다.");
	    return false;
	}
	if(document.getElementById("adminPw").value != document.getElementById("confirmPw").value){
		alert("비밀번호가 다릅니다. 확인해주세요.");
	    return false;
	}
}
