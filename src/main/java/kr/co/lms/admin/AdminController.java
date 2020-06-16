package kr.co.lms.admin;



import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
//-------------------------------------------------------------

	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String admin() {
		
		return "adminStart/adminLogin";
	}

	@RequestMapping(value="/adminStart/adminJoin", method=RequestMethod.GET)
	public String adminJoin() {
		
		return "adminStart/adminJoin";
	}

	@RequestMapping(value="/adminStart/adminLogout", method=RequestMethod.GET)
	public String adminLogout() {
		
		return "adminStart/adminLogin";
	}
//-------------------------------------------------------------

	@RequestMapping(value="/admin/adminMain")
	public String adminMain() {
		
		return "admin/adminMain";
	}
//-------------------------------------------------------------	

	@RequestMapping(value="/admin/adminManagementInfo")
	public String adminManagementInfo() { 
		return "admin/adminManagementInfo";
	}

	@RequestMapping("/admin/adminManageView")
	public String adminManageView() {
		return "admin/adminManageView";
	}

	@RequestMapping("/admin/adminManageRegi")
	public String adminManageRegi(){
		return "admin/adminManageRegi";
	}

	@RequestMapping("/admin/adminManageEdit")
	public String adminMangeEdit() {
		return "admin/adminManageEdit";
	}
	
	@RequestMapping("/admin/adminManageEditOk")
	public String adminMangeEditOk() {
		return "admin/adminManagementInfo";
	}
//-------------------------------------------------------------		

	@RequestMapping("/admin/adminNotice")
	public String adminNotice() { 
		return "admin/adminNotice";
	}

	@RequestMapping("/admin/adminNoticeWrite")
	public String adminNoticeWrite() {
		return "admin/adminNoticeWrite";
	}
	@RequestMapping("/admin/adminNoticeView")
	public String adminNoticeView() {
		return "admin/adminNoticeView";
	}

	@RequestMapping("/admin/adminNoticeEdit")
	public String adminNoticeEdit() {
		return "admin/adminNoticeEdit";
	}

	@RequestMapping("/admin/adminNoticeDel")
	public String adminNoticeDel() {
		return "admin/adminNotice";
	}
//-------------------------------------------------------------	

	@RequestMapping("/admin/adminTeacherList")
	public String adminTeacherList() {
		return "admin/adminTeacherList";
	}

	@RequestMapping("/admin/adminTeacherRegi")
	public String adminTeacherRegi() {
		return "admin/adminTeacherRegi";
	}
	
	@RequestMapping("/admin/adminTeacherEdit")
	public String adminTeacherEdit() {
		
		return "admin/adminTeacherEdit";
	}
	 
	@RequestMapping("/admin/adminTeacherDel")
	public String adminTeacherDel() {
		 
		return "admin/adminTeacherList";
	}
//-------------------------------------------------------------	
	 
	@RequestMapping("/admin/adminCourseList")
	public String adminCourseList() {
		
		return "admin/adminCourseList";
	}

	@RequestMapping("/admin/adminCourseEdit")
	public String adminCourseEdit() {
		return "admin/adminCourseEdit";  
	}
	
	@RequestMapping("/admin/adminCourseEditOk")
	public String adminCourseEditOk(){
		return "admin/adminCourseList";
	}
	
	
	@RequestMapping("/admin/adminCourseDel")
	public String adminCourseDel() {
		return "admin/adminCourseList";
	}
	
	@RequestMapping("/admin/adminCourseRegi")
	public String adminCourseRegi() {
		
		return "admin/adminCourseRegi";
	}
	@RequestMapping("/admin/adminCourseRegiOk")
	public String adminCourseRegiOk() {
		return "admin/adminCourseList"; 
	}
//------------------------------------------------------------
 	
}//controller end
