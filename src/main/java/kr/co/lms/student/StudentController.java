package kr.co.lms.student;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {
	@RequestMapping("/student_current_situation")
	public String student_current_situation() {
		return "admin/student_current_situation";
	}
	@RequestMapping("/registration_member")
	public String registration_member() {
		return "admin/registration_member";
	}
	
	@RequestMapping("/student_by_course")
	public String student_by_course() {
		return "admin/student_by_course";
	}
	
	@RequestMapping("/attendance_grade")
	public String Attendance_grade() {
		return "admin/attendance_grade";
	}
	
	@RequestMapping("/table_attendance_grade")
	public String table_attendance_grade() {
		return "admin/table_attendance_grade";
	}
	
	@RequestMapping("/modify_table_attendance_grade")
	public String modify_table_attendance_grade() {
		return "admin/modify_table_attendance_grade";
	}
	
	@RequestMapping("/management_of_student")
	public String management_of_student() {
		return "admin/management_of_student";
	}
	
	@RequestMapping("/class_transfer")
	public String class_transfer() {
		return "admin/class_transfer";
	}
	
	@RequestMapping("/class_transferOk")
	public ModelAndView class_transferOk() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:management_of_student");
		
		return mav;
	}
	@RequestMapping("/leave_out")
	public ModelAndView leave_out() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/leave_out");
		
		return mav;
	}
	
	@RequestMapping("/refund")
	public ModelAndView refund() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/refund");
		
		return mav;
	}
	
	@RequestMapping("/refundDetail")
	public ModelAndView refundDetail() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/refundDetail");
		
		return mav;
	}
	
	@RequestMapping("/refundDetailOk")
	public ModelAndView refundDetailOk() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:refund");
		
		return mav;
	}
	
	@RequestMapping("/modify_receive")
	public ModelAndView modify_receive() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/modify_receive");
		
		return mav;
	}
	
	@RequestMapping("/modify_receiveOk")
	public ModelAndView modify_receiveOk() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:refund");
		
		return mav;
	}
	@RequestMapping("/modify_return")
	public ModelAndView modify_return() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/modify_return");
		
		return mav;
	}
	
	@RequestMapping("/modify_returnOk")
	public ModelAndView modify_returnOk() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:refund");
		
		return mav;
	}
	
	@RequestMapping("/student_detail")
	public ModelAndView stdent_detail() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/student_detail");
		
		return mav;
	}
	
	@RequestMapping("/modify_basicInfo")
	public ModelAndView modify_basicInfo() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:student_detail");
		
		return mav;
	}
	
	@RequestMapping("/counseling_registration")
	public ModelAndView counseling_registration() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:student_detail");
		
		return mav;
	}
	
	@RequestMapping("/modify_counselingOk")
	public ModelAndView modify_counselingOk() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:student_detail");
		
		return mav;
	}
}
