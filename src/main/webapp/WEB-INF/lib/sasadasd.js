
		function regExpChk(){
			//아이디 검사.
			//기준을 잡아야 한다.
			
			//^처음부터   $ MxRkwl
			
			//1. 첫번째 문자는 영문자, 영, 숫자,  _만을 허용, 8~12글자까지 허용.
			reg = /^[a-zA-Z]{1}\w{7,11}$/; //\w는 
			//[a-zA-Z0m9] 
			if(!reg.test(document.getElementById("id").value)){
				alert("아이디 첫번째 문자는 영어, 영, 숫자, _만 허용, 8~12글자까지만 허용.");
				return false;
			}
			 
			reg = /^[가-힣]{2,7}$/;
			if(!reg.test(document.getElementById("username").value)){
				alert("이름은 2~7글자까지 가능.");
				return false;//->다음페이지로 가면 안되니까. ㅇㅇ.
			}
			//주민번호 검사.
			reg = /[0-9][0-9][01][0-9][0-3][0-9][-][1-8]{1}[0-9]{6}/;
			var jumin = document.getElementById("jumin_01").value + "-";
			jumin += document.getElementById("jumin_02").value;
			
			if(!reg.test(jumin)){
				alert("주민번호 잘못입력했소.");
				return false;
			}
			//이메일검사.										 ()? : 있어도 되고, 없어도 되는 것.
			reg = /^\w{6,20}[@][a-zA-Z]{2,10}[.][a-zA-Z]{2,3}([.][a-zA-Z]{2, 3})?$/; 
			
			if(!reg.test(document.getElementById("email").value)){
				alert("잘못입력했다. 이메일.");
				return false;
			}
			
			var tel = document.getElementById("tel1").value+"-";
				tel+= document.getElementById("tel2").value+"-";
				tel+= document.getElementById("tel3").value;
				
				reg = /^(010|02|032|031|041|054|011|018)[-][0-9]{3,4}[-][0-9]{4}$/;
				
				if(!reg.test(tel)){
					alert("번호가 잘못 기입되었습니다.");
					return false;
				}
			
		}	
/**
 * 
 */