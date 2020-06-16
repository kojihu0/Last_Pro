package kr.co.lms.admin;



import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
//-------------------------------------------------------------
	//admin
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String admin() {
		
		return "adminStart/adminLogin";
	}
	//admin
	@RequestMapping(value="/adminStart/adminJoin", method=RequestMethod.GET)
	public String adminJoin() {
		
		return "adminStart/adminJoin";
	}
	//admin
	@RequestMapping(value="/adminStart/adminLogout", method=RequestMethod.GET)
	public String adminLogout() {
		
		return "adminStart/adminLogin";
	}
//-------------------------------------------------------------
	//admin(HOME)
	@RequestMapping(value="/admin/adminMain")
	public String adminMain() {
		
		return "admin/adminMain";
	}
//-------------------------------------------------------------	
	//adminManagementInfo(�濵���� ����-�����������)
	@RequestMapping(value="/admin/adminManagementInfo")
	public String adminManagementInfo() { 
		return "admin/adminManagementInfo";
	}
//	/adminManageView(����������� �� ���� ����)
	@RequestMapping("/admin/adminManageView")
	public String adminManageView() {
		return "admin/adminManageView";
	}
	//adminManageRegi ���� ���� ���� ����ϱ�
	@RequestMapping("/admin/adminManageRegi")
	public String adminManageRegi(){
		return "admin/adminManageRegi";
	}
	//adminManageEdit ���� ���� ���� �����ϱ�.
	@RequestMapping("/admin/adminManageEdit")
	public String adminMangeEdit() {
		return "admin/adminManageEdit";
	}
//-------------------------------------------------------------		
	//�濵���� - ��������
	@RequestMapping("/admin/adminNotice")
	public String adminNotice() { 
		return "admin/adminNotice";
	}
	//���� �������� �۾���
	@RequestMapping("/admin/adminNoticeWrite")
	public String adminNoticeWrite() {
		return "admin/adminNoticeWrite";
	}
	//���� �������� �� ����
	@RequestMapping("/admin/adminNoticeView")
	public String adminNoticeView() {
		return "admin/adminNoticeView";
	}
	//���� �������� �� ����
	@RequestMapping("/admin/adminNoticeEdit")
	public String adminNoticeEdit() {
		return "admin/adminNoticeEdit";
	}
	//���� �������� �� ��
	@RequestMapping("/admin/adminNoticeDel")
	public String adminNoticeDel() {
		return "admin/adminNotice";
	}
//-------------------------------------------------------------	
	//���� ���� ����Ʈ
	@RequestMapping("/admin/adminTeacherList")
	public String adminTeacherList() {
		return "admin/adminTeacherList";
	}
	//���� ���� ���
	@RequestMapping("/admin/adminTeacherRegi")
	public String adminTeacherRegi() {
		return "admin/adminTeacherRegi";
	}
	//���� ���� ����
	@RequestMapping("/admin/adminTeacherEdit")
	public String adminTeacherEdit() {
		
		return "admin/adminTeacherEdit";
	}
	//���� ���� ����
	@RequestMapping("/admin/adminTeacherDel")
	public String adminTeacherDel() {
		 
		return "admin/adminTeacherList";
	}
//-------------------------------------------------------------	
	//��������
	//���� ����Ʈ
	@RequestMapping("/admin/adminCourseList")
	public String adminCourseList() {
		
		return "admin/adminCourseList";
	}
	//���� ����
	@RequestMapping("/admin/adminCourseEdit")
	public String adminCourseEdit() {
		return "admin/adminCourseEdit"; 
	}
	//���� ����
	@RequestMapping("/admin/adminCourseDel")
	public String adminCourseDel() {
		return "admin/adminCourseList";
	}
	//���� ���
	@RequestMapping("/admin/adminCourseRegi")
	public String adminCourseRegi() {
		
		return "admin/adminCourseRegi";
	}
//------------------------------------------------------------
 	
}//controller end
