/*마이페이지 위시리스트 이미지 슬라이드 */
$(function(){
    $("#courseCarousel").slick({
    	slidesToShow: 3,
		prevArrow: ".best-section .arrow-prev",
		nextArrow: ".best-section .arrow-next",
	});
});
//로그인 유효성 검사 
$(function(){
	$("#loginBtn").click(function(){
		
		if($("#grid-id").val()==""){
			alert("아이디를 입력해주세요.");
			return false;
		}
		
		if($("#grid-password").val()==""){
			alert("비밀번호를 입력해주세요.");
			return false;
		}
	});
});
/*회원가입 유효성 검사 */
$(function(){
	$("#registerBtn").click(function(){
		if($("#username").val()==""){
			alert("이름을 입력해주세요.");
		};
		if($("#userId").val()==""){
			alert("아이디를 입력해주세요.");
		};
		if($("#userPw").val()==""){}
		alert("비밀번호를 입력해주세요");
	});
});
/* 메뉴 모달 검색창 */
$(function(){
	$('#login-ico').on('click', function(e){
	    e.preventDefault();
	    $($(this).data('target')).fadeIn(function(){
	        $('.loginModal').removeClass('hidden');
	    });
	});
	
	$('.xi-close').on('click', function(){
	
	    $(".xi-close").parents('.loginModal').fadeOut(function(){
	        $(".xi-close").parents('.loginModal').addClass('hidden');
	    });
	});
});

$(function(){
	$("#grade").click(function(){
		
		$("#course>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
		$("#course>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
		
		$("#grade>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
		$("#grade>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
		
		$("#courseList").css("display","none");
		$("#gradeList").css("display","block");
	});
	
	$("#course").click(function(){
		
		$("#course>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
		$("#course>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
		
		$("#grade>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
		$("#grade>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
		
		$("#courseList").css("display","block");
		$("#gradeList").css("display","none");
		
		
	});
	$("#FinalGrade").click(function(){
		
		$("#CompletionCourse>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
		$("#CompletionCourse>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
		
		$("#FinalGrade>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
		$("#FinalGrade>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
		
		$("#CompletionCourseList").css("display","none");
		$("#FinalGradeList").css("display","block");
	});
	
	$("#CompletionCourse").click(function(){
		
		$("#CompletionCourse>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
		$("#CompletionCourse>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
		
		$("#FinalGrade>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
		$("#FinalGrade>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
		
		$("#CompletionCourseList").css("display","block");
		$("#FinalGradeList").css("display","none");
	});
	
	
	
	
	
		$("#avatar").click(function(){
			
			$("#imgUpload").css("display","block");
			$("#passwordUpdate").css("display","none");
			$("#profileUpdate").css("display","none");
			
			$("#avatar>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
			$("#avatar>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
			$("#general>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
			$("#general>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
			$("#password>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
			$("#password>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
			
		});
		
		$("#password").click(function(){
		
			$("#passwordUpdate").css("display","block");
			$("#imgUpload").css("display","none");
			$("#profileUpdate").css("display","none");
			
			$("#password>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
			$("#avatar>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
			$("#general>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
			
			$("#password>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
			$("#avatar>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
			$("#general>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
			
			
		});
		
		$("#general").click(function(){
			
			$("#profileUpdate").css("display","block");
			$("#imgUpload").css("display","none");
			$("#passwordUpdate").css("display","none");
			
			$("#general>a").addClass("border-brand-500").addClass("text-brand-500").addClass("border-t-4");
			$("#avatar>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
			$("#password>a").addClass("text-gray-900").addClass("hover:text-brand-500").addClass("border-t");
			
			$("#general>a").removeClass("text-gray-900").removeClass("hover:text-brand-500").removeClass("border-t");
			$("#avatar>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
			$("#password>a").removeClass("border-brand-500").removeClass("text-brand-500").removeClass("border-t-4");
			
		
			
		});
		
		
});
/*지도의 정보를 표시할 함수*/
//위도 : latitude , 경도 : longitude
var latitude = 37.5729503; 
var longitude = 126.9793578; 

var lati = [37.5729503,37.1111111,50.5729503,38.5711111,60.1234567];

var longi = [126.1793578,126.2793578,126.3793578,126.4793578,126.5793578];
function initMap(){//지도에 대한정보 표시할 함수 
	//지도의 가운데를 지정한다.
	var myCenter = new google.maps.LatLng(latitude,longitude);
	//지도 그릴때 필요한 기타정보를 JSON형식에 데이터 생성한다
	//zoom 지도 확대 축소 
	var mapProperty = {
					   		center :myCenter,
					   		zoom :14, // 0~21사이의 값을 사용한다., 숫자가 클수록 확대 
					   		mapTypeId : google.maps.MapTypeId.ROADMAP//지도종류(ROADMAP,HYBRID,STELLITE,TERRAIN)   
	
					  }

	//map객체 생성하기 					지도를 보여줄 곳 					맵옵션
	var map = new google.maps.Map(document.getElementById("gMap"),mapProperty);
	
	//마커 표시하기 
	var marker = new google.maps.Marker({
		position:myCenter//마커를 표시할 곳
		,map:map//지도선택
		,title:'EduCamp'
	});
	marker.setMap(map);
	
	//마커 클릭시 대화상자 띄우기 
	//대화상자에 표시할 내용 
	var information = "위도:"+latitude+"<br/>경도:"+longitude;
		information +="<br/><img src = '../../img/n1.jpg' width='80'height='50'/>";
	var info = new google.maps.InfoWindow({content:information});
	
	//이벤트 등록 					 이벤트발생대상
	google.maps.event.addListener(marker,	"click",function(){info.open(map,marker)});
	//여러개의 마커 표시 
	for(i=0; i<lati.length;i++){							//Json형식
		var mk= new google.maps.Marker({position:new google.maps.LatLng(lati[i],longi[i]),
										map:map,title:"latitude:"+lati[i]+",longitude:"+longi[i]});
		mk.setMap(map);
	}
	
	//반경표시 							Json형식
	var myCity = new google.maps.Circle({
		center:myCenter //원의 중심 
		,radius:2000//반경 : m 
		,strokeColor:"#f00"//선의 색상
		,strokeOpacity:0.7//선의 투명도 0~1
		,strokeWidth:3//선의 두께 px
		,fillColor:'#0f0'//배경색
		,fillOpacity: 0.5//배경의 투명도 0~1 
	});
	myCity.setMap(map);
}


