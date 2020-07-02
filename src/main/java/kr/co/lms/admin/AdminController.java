package kr.co.lms.admin;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.admin.DAO.AdminRegiInterface;
import kr.co.lms.admin.VO.AdminCourseVO;
import kr.co.lms.admin.VO.AdminManageInfoVO;
import kr.co.lms.admin.VO.AdminNoticeVO;
import kr.co.lms.admin.VO.AdminRegiVO;
import kr.co.lms.admin.VO.AdminTeacherVO;

@Controller
public class AdminController {

//-------------------------------------------------------------
	SqlSession sqlSession;
	

	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
//-------------------------------------------------------------
	//로그인창
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String admin() {
		
		return "adminStart/adminLogin";
	}
	//관리자 및 강사 로그인
	@RequestMapping(value="/adminStart/adminLoginOk", method=RequestMethod.POST)
	public ModelAndView adminLoginOk(AdminRegiVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);	
		AdminRegiVO resultVo = adminRegiInter.selectAdminId(vo); 
		
		if(resultVo != null) {  
			HttpSession sess = request.getSession();
			
			sess.setAttribute("employee_name", resultVo.getEmployee_name());
			sess.setAttribute("admin_id", resultVo.getAdmin_id());	
		 
			mav.setViewName("redirect:/admin/adminMain"); 
		}else {
			mav.setViewName("redirect:/admin");  
		} 
		
		return mav;
	}
	//회원가입창
	@RequestMapping(value="/adminStart/adminJoin", method=RequestMethod.GET)
	public String adminJoin() {
		return "adminStart/adminJoin";
	}
	 //관리자 및 강사 회원가입.
	@RequestMapping(value="/adminStart/adminJoinOk", method=RequestMethod.POST)
	public ModelAndView adminJoinOk(AdminRegiVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		//아이디 중복 체크
		AdminRegiInterface checkId = sqlSession.getMapper(AdminRegiInterface.class);
		
		AdminRegiVO resultVo = checkId.selectAdminIdCheck(vo);
		
		if(resultVo == null) { 
			//아이디 등록
			AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
			int insertResult = adminRegiInter.insertAdminID(vo);
			
			if(insertResult > 0) {
				mav.addObject("overlap", "N");
				mav.setViewName("redirect:/admin");
			}else {
				mav.setViewName("redirect:adminStart/adminJoin");
			}
		}else {
			String str = "Y";
			System.out.println("1번 : 중복상태");
			mav.addObject("overlap", str);   
			mav.setViewName("/adminStart/adminJoin");
		}
		return mav;
	}
	//로그아웃
	@RequestMapping(value="/adminStart/adminLogout", method=RequestMethod.GET)
	public String adminLogout(HttpServletRequest request) {
		
		HttpSession sess = request.getSession();
		
		sess.invalidate();
		
		return "adminStart/adminLogin";
	}
//======================================================================================
	//업무일지 등록 파트
	
		//업무일지 메인(리스트)로 이동. 
	@RequestMapping(value="/admin/adminManagementInfo", method=RequestMethod.GET)
	public ModelAndView adminManagementInfo(AdminManageInfoVO vo, HttpServletRequest request) { 
		
		ModelAndView mav = new ModelAndView();
		
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		
		List<AdminManageInfoVO> resultList = adminRegiInter.selectManageInfo();		
		

			mav.addObject("resultList", resultList);
			mav.setViewName("/admin/adminManagementInfo"); 

		return mav;
	}
		//업무일지 보러가는 곳.
	@RequestMapping("/admin/adminManageView")
	public ModelAndView adminManageView(AdminManageInfoVO vo) {
		ModelAndView mav = new ModelAndView();
		
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		AdminManageInfoVO result_Vo = adminRegiInter.selectOneRecord(vo.getAdmin_manageinfo_no()); 
		
		mav.addObject("result_Vo", result_Vo);
		mav.setViewName("/admin/adminManageView");  
		
		return mav;
	}
		//업무일지 등록하는 곳으로 이동.
	@RequestMapping("/admin/adminManageRegi")
	public String adminManageRegi(){
		
		return "admin/adminManageRegi";
	}

		//업무일지 등록OK
	@RequestMapping(value="/admin/adminMangeRegiOk", method=RequestMethod.POST)
	public ModelAndView adminManageRegiOk(AdminManageInfoVO vo, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		
		int result_Int = adminRegiInter.insertAdminManageInfo(vo);
		
		if(result_Int > 0) {
			System.out.println("업무일지 등록 성공");
			mav.setViewName("redirect:/admin/adminManagementInfo");
		}else {
			System.out.println("업무일지 등록 실패");
			mav.setViewName("/admin/adminManagementInfo"); 
		}
		return mav;
	}
	
	//수정폼에서, 데이터 불러오기.
	@RequestMapping(value="/admin/adminManageEdit", method= {RequestMethod.GET ,RequestMethod.POST})
	public ModelAndView adminMangeEdit(AdminManageInfoVO vo, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		AdminRegiInterface  adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		
		AdminManageInfoVO result_Vo = adminRegiInter.selectOneRecord(vo.getAdmin_manageinfo_no()); 
		
		mav.addObject("result_Vo", result_Vo);
		mav.setViewName("/admin/adminManageEdit");   
	
		return mav;
	}
	//업무일지 수정ok
	@RequestMapping(value="/admin/adminManageEditOk", method= RequestMethod.POST)
	public ModelAndView adminMangeEditOk(AdminManageInfoVO vo, HttpServletRequest request) {
			ModelAndView mav = new ModelAndView();
			AdminRegiInterface  adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
			
			int result_Int = adminRegiInter.updateAdminManageInfo(vo);
			
			if(result_Int > 0) {
				mav.setViewName("redirect:/admin/adminManagementInfo"); 
			}else {
				mav.setViewName("redirect:/admin/adminManageEdit"); 
			}
		return mav;
	} 
	//업무일지 결제
	@RequestMapping(value="/admin/adminManagementInfoOk", method=RequestMethod.POST)
	public ModelAndView adminManageInfoOk(AdminManageInfoVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		int result_Int = adminRegiInter.updateAdminManageInfoOk(vo);
		
		if(result_Int > 0) {
			mav.setViewName("redirect:/admin/adminManagementInfo");  
		}else {
			mav.setViewName("redirect:/admin/adminManageView");  
		}
		return mav;
	}
	
//-------------------------------------------------------------		

	@RequestMapping("/admin/adminNotice")
	public ModelAndView adminNotice(AdminNoticeVO vo, HttpServletRequest request) { 
		ModelAndView mav = new ModelAndView();
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		
		List<AdminNoticeVO> result_List = adminRegiInter.selectNoticeAll();
		
		if(result_List != null) {
			mav.addObject("list", result_List);
			mav.setViewName("/admin/adminNotice");
		}else {
			mav.setViewName("/admin/adminNotice");
		}
		return mav;
	}

	@RequestMapping("/admin/adminNoticeWrite")
	public String adminNoticeWrite() {
		return "admin/adminNoticeWrite";
	}
	
	@RequestMapping(value="/admin/adminNoticeWriteOk", method=RequestMethod.POST)
	public ModelAndView adminNoticeWriteOk(AdminNoticeVO vo, HttpServletRequest request) {
	
		ModelAndView mav = new ModelAndView();
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		
		HttpSession sess = request.getSession();
		
		String admin_Id		 = (String)sess.getAttribute("admin_id");
		String employee_Name = (String)sess.getAttribute("employee_name");
		//임플로이 넘버 구하기.
		int adminNo = adminRegiInter.selectEmployeeNo(admin_Id);
		
		vo.setEmployee_no(adminNo);
		
		System.out.println(vo.getAdmin_notice_hit());
		System.out.println(vo.getEmployee_no());
		System.out.println(vo.getAdmin_notice_date());
		System.out.println(vo.getAdmin_notice_title());
		System.out.println(vo.getAdmin_notice_content());
		
		int result_Int = adminRegiInter.insertNotice(vo); 
		
		if(result_Int>0) {
			mav.setViewName("redirect:/admin/adminNotice");
		}else {
			mav.setViewName("redirect:/admin/adminNotice");
		}

		
		return mav;
	}
	
	//사내일정 보기
	@RequestMapping("/admin/adminNoticeView")
	public ModelAndView adminNoticeView(@RequestParam("admin_notice_no") int admin_notice_no, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);

		AdminNoticeVO result_Vo = adminRegiInter.selectNoticeOne(admin_notice_no);
				
		if(result_Vo != null){
			mav.addObject("list", result_Vo);
			mav.setViewName("admin/adminNoticeView");
		}else {
			mav.setViewName("admin/adminNoticeView");
		}
		return mav;
	}
	//사내일정 수정으로 이동하기.
	@RequestMapping("/admin/adminNoticeEdit")
	public ModelAndView adminNoticeEdit(@RequestParam("admin_notice_no") int admin_notice_no, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		 
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		
		AdminNoticeVO result_Vo = adminRegiInter.selectNoticeOne(admin_notice_no);

		System.out.println("vo 확인 시작 : " + result_Vo.getAdmin_category());
		System.out.println("vo 확인 시작 : " + result_Vo.getAdmin_notice_content());
		System.out.println("vo 확인 시작 : " + result_Vo.getAdmin_notice_no());
		System.out.println("vo 확인 시작 : " + result_Vo.getEmployee_name());
		
		
		if(result_Vo != null){ 
			mav.addObject("list", result_Vo);
			mav.setViewName("admin/adminNoticeEdit");
		}
		return mav; 
	}
	//수정 실행.
	@RequestMapping(value="/admin/adminNoticeEditOk", method=RequestMethod.POST)
	public ModelAndView adminNoticeEditOk(AdminNoticeVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
	
		 
		System.out.println(vo.getAdmin_notice_no());
		
		
		int result_Int = adminRegiInter.updateNotice(vo); 
		if(result_Int > 0) {
			mav.setViewName("redirect:/admin/adminNotice"); 
		}else {
			mav.setViewName("redirect:/admin/adminNoticeEdit");
		}
		return mav;
	}

	@RequestMapping("/admin/adminNoticeDel")
	public String adminNoticeDel() {
		return "admin/adminNotice";
	}
//-------------------------------------------------------------	
		//강사 리스트 뿌리기
	@RequestMapping(value="/admin/adminTeacherList", method= RequestMethod.GET)
	public ModelAndView adminTeacherList(HttpServletRequest request, AdminTeacherVO vo) {
		ModelAndView mav = new ModelAndView();

		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		
		List<AdminRegiVO> resultList = adminRegiInter.selectAdminAllRecord();
		
		if(resultList != null) {
			System.out.println("성공");
			mav.addObject("list", resultList); 
			mav.setViewName("/admin/adminTeacherList");
		}else {
			System.out.println("실패");
			mav.setViewName("redirect:/admin");
		}
		return mav;
	}
	//강사 등록.
	@RequestMapping("/admin/adminTeacherRegi")
	public String adminTeacherRegi() {
		return "admin/adminTeacherRegi";
	}
	//강사 등록ok.
	@RequestMapping(value="/admin/adminTeacherRegiOk", method= {RequestMethod.GET ,RequestMethod.POST})
	public ModelAndView adminTeacherRegiOk(AdminTeacherVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		  
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		
		HttpSession  sess = request.getSession();
		String 		check = (String)sess.getAttribute("employee_name");
		
		
		if(check.equals("관리자")) { 
			int insertResult = adminRegiInter.insertAdminTeacher(vo);			 
			if(insertResult > 0) {
				 mav.setViewName("redirect:/admin/adminTeacherList");
			}else {
				mav.setViewName("/admin/adminTeacherRegi");
			}
		}else{
			mav.setViewName("redirect:/admin");
		}
		return mav;
	}
	//강사 정보 수정 폼
	@RequestMapping(value="/admin/adminTeacherEdit", method= {RequestMethod.GET ,RequestMethod.POST})
	public ModelAndView adminTeacherEdit(HttpServletRequest request, AdminTeacherVO vo) {
								
		ModelAndView  mav = new ModelAndView();
	
		AdminRegiInterface  adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		//수정해야하는 사람의 정보를  가져옴.
		
		AdminTeacherVO tempVo = adminRegiInter.selectTeacherOverView(vo);
		System.out.println("tempVo " + tempVo);
		System.out.println("tempVo.getEmployee_email() " + tempVo.getEmployee_email());
		 
		if(tempVo != null) { 
			vo.setEmployee_overview(tempVo.getEmployee_overview() ); 
			//도메인, 아이디 분리.
			String email = tempVo.getEmployee_email(); 
			int      cut   = email.indexOf("@");
			String emailId = email.substring(0,cut); 
			String  domain = email.substring(cut+1); 
			
			//전화번호 분리 
			String tel = tempVo.getEmployee_tel();
			
			String[] telSplitData = tel.split("-");

			String telAndEmailList[]  = new String[4]; 
				   telAndEmailList[0] = emailId;
				   telAndEmailList[1] = domain;
				   telAndEmailList[2] = telSplitData[1];
				   telAndEmailList[3] = telSplitData[2]; 
			
			mav.addObject("data", telAndEmailList);
		
		}
	
		mav.addObject("vo", vo);
		mav.setViewName("/admin/adminTeacherEdit");  
		
		return mav;
	}
	
	//강사 정보 수정OK
	@RequestMapping(value="/admin/adminTeacherEditOk", method={RequestMethod.POST, RequestMethod.GET}) 
	public ModelAndView adminTeacherEditOk(HttpServletRequest request, AdminTeacherVO vo) {
		ModelAndView mav = new ModelAndView();
		
		AdminRegiInterface adminRegiInter	= sqlSession.getMapper(AdminRegiInterface.class);
		
		int result_Int = adminRegiInter.updateAdminTeacherEdit(vo);
		
		if(result_Int > 0) {  
			mav.setViewName("redirect:/admin/adminTeacherList");	
		}else {
			mav.setViewName("redirect:/admin/adminTeacherEdit"); 
		}
		
		return mav;
	} 
	@RequestMapping("/admin/adminTeacherDel")
	public ModelAndView adminTeacherDel(HttpServletRequest request, AdminTeacherVO vo) {
		ModelAndView mav = new ModelAndView();
		AdminRegiInterface adminRegiInter	= sqlSession.getMapper(AdminRegiInterface.class);
		
	int result_Int = adminRegiInter.deleteTeacher(vo);
		
		if(result_Int > 0) {  
			mav.setViewName("redirect:/admin/adminTeacherList");	
		}else {
			mav.setViewName("redirect:/admin/adminTeacherEdit"); 
		} 
		 
		return mav;
	}  
//-------------------------------------------------------------	
	 //강좌 리스트 뿌리기
	@RequestMapping("/admin/adminCourseList")
	public ModelAndView adminCourseList(AdminCourseVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		List<AdminCourseVO> courseList = adminRegiInter.selectCourseAll();
		
		mav.addObject("list", courseList);
		mav.setViewName("/admin/adminCourseList");
		
		return mav;
	}
	 //강좌 수정 폼 들어가기.	
	@RequestMapping("/admin/adminCourseEdit")
	public ModelAndView adminCourseEdit(AdminCourseVO vo, HttpServletRequest requet) {
		ModelAndView mav = new ModelAndView();
		
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		
		AdminCourseVO result_Vo = adminRegiInter.selectCourseOne(vo.getCourse_no());
		
		mav.addObject("vo", result_Vo);
		mav.setViewName("/admin/adminCourseEdit");
		
		return mav;  
	}
	
	@RequestMapping(value="/admin/adminCourseEditOk", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView adminCourseEditOk(AdminCourseVO vo, HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView();
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		
		System.out.println("확인 : " + vo.getCourse_state());
		System.out.println("확인 : " + vo.getCourse_end_date());
		System.out.println("확인 : " + vo.getCourse_reception_start());
		System.out.println("확인 : " + vo.getCourse_state());
		System.out.println("확인 : " + vo.getCourse_no());
		System.out.println("확인 : " + vo.getCourse_overview());
		
		int result_Int = adminRegiInter.updateCourse(vo);
		
		System.out.println("확인 : 결과 : " + result_Int); 
		
		if(result_Int > 0) {
			mav.setViewName("redirect:/admin/adminCourseList");   
		}else { 
			mav.addObject("vo", vo);
			mav.setViewName("redirect:/admin/adminCourseEdit");
		}
		
		
		return mav;
	}
	
	
	@RequestMapping("/admin/adminCourseDel")
	public ModelAndView adminCourseDel(AdminCourseVO vo, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		System.out.println("vo" + vo.getCourse_no());
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		
		int result_Int = adminRegiInter.delRecord(vo);
		
		if(result_Int > 0) {
			mav.setViewName("redirect:/admin/adminCourseList");   
		}else { 
			mav.setViewName("redirect:/admin/adminCourseList"); 
		}
		
		return mav;
	}
	
	@RequestMapping("/admin/adminCourseRegi")
	public String adminCourseRegi() {
		return "admin/adminCourseRegi";
	}
	
	@RequestMapping(value="/admin/adminCourseRegiOk", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView adminCourseRegiOk(AdminCourseVO vo, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
		
		//아이디 정보 받아오기 위해 세션 선언
		HttpSession sess = request.getSession();
		//아이디 , 이름, 번호
		String 	employee_Id = (String)sess.getAttribute("admin_id");
		String 	check_Name  = (String)sess.getAttribute("employee_name");
		int 	employee_No_Check =  adminRegiInter.checkTeacherId(employee_Id); 
		
		if(vo.getEmployee_name().equals(check_Name)) {
			
			vo.setEmployee_no(employee_No_Check); 
			vo.setEmployee_name(check_Name);
					
			String price = vo.getCourse_price();
			String priceUncomma = price.replaceAll(",", ""); 

			int result_price = Integer.parseInt(priceUncomma);
		
			vo.setCourse_price(priceUncomma);
			
			int result_Int = adminRegiInter.insertCourse(vo); 
			
			if(result_Int > 0) {
				mav.setViewName("redirect:/admin/adminCourseList");   
			}else { 
				mav.setViewName("redirect:/admin/adminCourseList"); 
			}	
		}
		

		return mav;
	}
//------------------------------------------------------------
 	
}//controller end