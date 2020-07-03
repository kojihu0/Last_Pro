package kr.co.lms.student;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.RequestWrapper;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.admin.DAO.CancelRegisterDAOImp;
import kr.co.lms.admin.DAO.LeaveOfAbsenceDAOImp;
import kr.co.lms.admin.DAO.StudentAttendanceDAOImp;
import kr.co.lms.admin.DAO.StudentByCourseDAOImp;
import kr.co.lms.admin.DAO.StudentInfoDAOImp;
import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.CancelRegisterVO;
import kr.co.lms.admin.VO.LeaveOfAbsenceVO;
import kr.co.lms.admin.VO.RegisterVO;
import kr.co.lms.admin.VO.StudentAttendanceArrayVO;
import kr.co.lms.admin.VO.StudentAttendanceVO;
import kr.co.lms.admin.VO.StudentByCourseVO;
import kr.co.lms.admin.VO.StudentClassInfoVO;
import kr.co.lms.admin.VO.StudentCounselingVO;
import kr.co.lms.admin.VO.StudentInfoVO;
import kr.co.lms.admin.VO.StudentPaymentInfoVO;

@Controller
public class StudentController {
	SqlSession sqlSession;
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@RequestMapping("/student_current_situation")
	public ModelAndView student_current_situation(@RequestParam(value="pageNum",defaultValue="1") int pageNum, AdminStudentPagingVO PageVO) {
		List<StudentInfoVO> list = new ArrayList<StudentInfoVO>();
		ModelAndView mav = new ModelAndView();
		StudentInfoDAOImp dao =  sqlSession.getMapper(StudentInfoDAOImp.class);
		PageVO.setPageNum(pageNum);
		PageVO.setTotalRecord(dao.getStudentSelectAll(PageVO));
		
		list=dao.studentSelectAll(PageVO);
		mav.addObject("list", list);
		mav.addObject("pageVO", PageVO);
		mav.setViewName("admin/student_current_situation");
		return mav;
	}
	
	@RequestMapping("/leave_of_absence")
	public ModelAndView leave_of_absence(@RequestParam(value="pageNum",defaultValue="1") int pageNum, AdminStudentPagingVO PageVO) {
		List<LeaveOfAbsenceVO> list = new ArrayList<LeaveOfAbsenceVO>();
		ModelAndView mav = new ModelAndView();
		LeaveOfAbsenceDAOImp dao =  sqlSession.getMapper(LeaveOfAbsenceDAOImp.class);
		PageVO.setPageNum(pageNum);
		PageVO.setTotalRecord(dao.getSelectLeaveOfAbsence(PageVO));
		
		list = dao.selectLeaveOfAbsence(PageVO);
		mav.addObject("list", list);
		mav.addObject("pageVO", PageVO);
		mav.setViewName("admin/leave_of_absence");
		return mav;
	}
	
	@RequestMapping("/registration_member")
	public String registration_member() {
		return "admin/registration_member";
	}
	
	@RequestMapping(value="/registration_memberOk", method=RequestMethod.POST)
	public ModelAndView registration_memberOk(StudentInfoVO vo, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		StudentInfoDAOImp dao =  sqlSession.getMapper(StudentInfoDAOImp.class);
		
		String path = req.getSession().getServletContext().getRealPath("/img");
		String paramName = vo.getImg_file().getName();
		String img = vo.getImg_file().getOriginalFilename();
		
		try {
			if(img!=null) {
				vo.getImg_file().transferTo(new File(path, img));
			}
		}catch(Exception e) {}
		vo.setStudent_img(img);
		
		int cnt = dao.memberInsert(vo);
		if(cnt>0) {
			mav.setViewName("admin/memberInsertOk");
		}else {
			if(img!=null) {
				deleteFile(path, img);
			}
			mav.setViewName("redirect:registration_member");
		}
		
		return mav;
	}
	
	private void deleteFile(String path, String img) {
		File f = new File(path, img);
		f.delete();
	}
	@RequestMapping("/student_by_course")
	public ModelAndView student_by_course(@RequestParam(value="pageNum",defaultValue="1") int pageNum, AdminStudentPagingVO PageVO) {
		ModelAndView mav = new ModelAndView();
		StudentByCourseDAOImp dao =  sqlSession.getMapper(StudentByCourseDAOImp.class);
		List<StudentByCourseVO> list = new ArrayList<StudentByCourseVO>();
		PageVO.setPageNum(pageNum);
		PageVO.setTotalRecord(dao.getSelectStudentByCourse(PageVO));
		
		list = dao.selectStudentByCourse(PageVO);
		mav.addObject("list", list);
		mav.addObject("pageVO", PageVO);
		mav.setViewName("admin/student_by_course");
		
		return mav;
	}
	
	@RequestMapping("/attendance_grade")
	public ModelAndView Attendance_grade(@RequestParam(value="pageNum",defaultValue="1") int pageNum, AdminStudentPagingVO PageVO) {
		ModelAndView mav = new ModelAndView();
		StudentAttendanceDAOImp dao =  sqlSession.getMapper(StudentAttendanceDAOImp.class);
		List<StudentByCourseVO> list = new ArrayList<StudentByCourseVO>();
		PageVO.setPageNum(pageNum);
		PageVO.setTotalRecord(dao.getSelectCorseByAttendance(PageVO));
		
		list = dao.selectCorseByAttendance(PageVO);
		mav.addObject("list", list);
		mav.addObject("pageVO", PageVO);
		mav.setViewName("admin/attendance_grade");
		return mav;
	}
	
	@RequestMapping("/admin/table_attendance_grade")
	public ModelAndView table_attendance_grade(int course_no) {
		ModelAndView mav = new ModelAndView();
		StudentAttendanceDAOImp dao =  sqlSession.getMapper(StudentAttendanceDAOImp.class);
		List<StudentByCourseVO> list = new ArrayList<StudentByCourseVO>();
		list=dao.selectStudentAttendance(course_no);
	
		mav.addObject("list", list);
		mav.addObject("course_no", course_no);
		mav.addObject("vo2", dao.studentCountByAttendance(course_no));
		mav.addObject("vo3", dao.studentCountByAttendance2(course_no));
		mav.setViewName("admin/table_attendance_grade");
		return mav;
	}
	
	@RequestMapping(value="/admin/table_attendance_grade2")
	public ModelAndView table_attendance_grade(AdminStudentPagingVO PageVO) {
		ModelAndView mav = new ModelAndView();
		StudentAttendanceDAOImp dao =  sqlSession.getMapper(StudentAttendanceDAOImp.class);
		List<StudentByCourseVO> list = new ArrayList<StudentByCourseVO>();
		list=dao.selectStudentAttendance2(PageVO);
		
		mav.addObject("list", list);
		mav.addObject("course_no", PageVO.getCourse_no());
		mav.addObject("vo2", dao.studentCountByAttendance(PageVO.getCourse_no()));
		mav.addObject("vo3", dao.studentCountByAttendance2(PageVO.getCourse_no()));
		mav.setViewName("admin/table_attendance_grade");
		return mav;
	}
	
	@RequestMapping("/admin/modify_table_attendance_grade")
	public ModelAndView modify_table_attendance_grade(int course_no) {
		ModelAndView mav = new ModelAndView();
		StudentAttendanceDAOImp dao =  sqlSession.getMapper(StudentAttendanceDAOImp.class);
		List<StudentByCourseVO> list = new ArrayList<StudentByCourseVO>();
		
		list = dao.selectSettingStudentAttendance(course_no);
		mav.addObject("list", list);
		mav.addObject("vo", dao.studentCountByAttendance3(course_no));
		mav.setViewName("admin/modify_table_attendance_grade");
		return mav;
	}
	
	@RequestMapping(value="/admin/table_attendance_gradeOk", method=RequestMethod.POST)
	@Transactional
	public ModelAndView table_attendance_gradeOk(StudentAttendanceArrayVO vo, @RequestParam("attendance_cnt") int attendance_cnt) {
		ModelAndView mav = new ModelAndView();
		StudentAttendanceDAOImp dao =  sqlSession.getMapper(StudentAttendanceDAOImp.class);
		int cnt=0;
		if(attendance_cnt==0) {
			for(int i=0; i<vo.getStudent_no().length; i++) {
				cnt += dao.studentAttendanceOk(vo.getStudent_no()[i], vo.getAttendance_state()[i], vo.getAttendance_reason()[i], vo.getCourse_no()[i]);
			}
		}else if(attendance_cnt>0){
			for(int i=0; i<vo.getStudent_no().length; i++) {
				cnt += dao.studentAttendanceOk2(vo.getStudent_no()[i], vo.getAttendance_state()[i], vo.getAttendance_reason()[i], vo.getCourse_no()[i]);
			}
		}
		
		mav.addObject("course_no", vo.getCourse_no()[0]);
		if(cnt==vo.getStudent_no().length) {
			mav.setViewName("admin/tableAttendanceOk");
		}else {
			mav.setViewName("redirect:modify_table_attendance_grade");
		}
		return mav;
	}
	
	@RequestMapping("/admin/modify_table_attendance_grade_individual")
	public ModelAndView modify_table_attendance_grade_individual(int student_no, int course_no) {
		ModelAndView mav = new ModelAndView();
		StudentAttendanceDAOImp dao =  sqlSession.getMapper(StudentAttendanceDAOImp.class);
		mav.addObject("vo", dao.selectAttendanceIndividual(student_no, course_no));
		mav.setViewName("admin/modify_table_attendance_grade_individual");
		return mav;
	}
	
	@RequestMapping(value="/admin/table_attendance_grade_individualOk", method=RequestMethod.POST)
	public ModelAndView table_attendance_grade_individualOk(StudentByCourseVO vo) {
		ModelAndView mav = new ModelAndView();
		StudentAttendanceDAOImp dao =  sqlSession.getMapper(StudentAttendanceDAOImp.class);
		mav.addObject("course_no", vo.getCourse_no());

		if(vo.getDeleteRecord()==null) {
			int cnt = dao.studentAttedanceUpdate(vo);
			if(cnt>0) {
				mav.setViewName("admin/table_attendance_grade_individualUpdateOk");
			}else {
				mav.addObject("student_no", vo.getStudent_no());
				mav.setViewName("redirect:modify_table_attendance_grade_individual");
			}
		}else if(vo.getDeleteRecord().equals("del")) {
			int cnt2 = dao.studentAttendanceDelete(vo);
			if(cnt2>0) {
				mav.setViewName("admin/table_attendance_grade_individualDeleteOk");
			}else {
				mav.addObject("student_no", vo.getStudent_no());
				mav.setViewName("redirect:modify_table_attendance_grade_individual");
			}
		}
		return mav;
	}
	
	@RequestMapping("/admin/management_of_student")
	public ModelAndView management_of_student(int course_no, int course_student_count) {
		ModelAndView mav = new ModelAndView();
		StudentByCourseDAOImp dao =  sqlSession.getMapper(StudentByCourseDAOImp.class);
		List<StudentByCourseVO> list = new ArrayList<StudentByCourseVO>();
		
		list = dao.selectCourseByStudent(course_no);
		mav.addObject("vo", dao.selectCourseInfo(course_no));
		mav.addObject("course_student_count", course_student_count);
		mav.addObject("list", list);
		mav.setViewName("admin/management_of_student");
		return mav;
	}
	
	@RequestMapping("/admin/class_transfer")
	public ModelAndView class_transfer(int student_no, int course_no) {
		ModelAndView mav = new ModelAndView();
		StudentByCourseDAOImp dao =  sqlSession.getMapper(StudentByCourseDAOImp.class);
		mav.addObject("vo", dao.selectStudentName(student_no));
		mav.addObject("course_no", course_no);
		mav.setViewName("admin/class_transfer");
		return mav;
	}
	
	@RequestMapping("/class_transferOk")
	public ModelAndView class_transferOk(StudentByCourseVO vo) {
		ModelAndView mav = new ModelAndView();
		StudentByCourseDAOImp dao =  sqlSession.getMapper(StudentByCourseDAOImp.class);
		mav.addObject("student_no", vo.getStudent_no());
		
		int cnt = dao.studentClassUpdate(vo);
		if(cnt>0) {
			mav.setViewName("admin/classTransferOk");
		}else {
			mav.setViewName("admin/classTransferFail");
		}	
		return mav;
	}
	@RequestMapping("/admin/leave_out")
	public ModelAndView leave_out(int student_no) {
		ModelAndView mav = new ModelAndView();
		StudentByCourseDAOImp dao =  sqlSession.getMapper(StudentByCourseDAOImp.class);
		
		mav.addObject("vo", dao.selectStudentName(student_no));
		mav.setViewName("admin/leave_out");
		
		return mav;
	}
	@RequestMapping("/admin/student_leaveOutOk")
	public ModelAndView student_leaveOutOk(StudentByCourseVO vo) {
		ModelAndView mav = new ModelAndView();
		StudentByCourseDAOImp dao =  sqlSession.getMapper(StudentByCourseDAOImp.class);
		int cnt = dao.studentLeaveOutUpdate(vo);
		mav.addObject("student_no", vo.getStudent_no());
		if(cnt>0) {
			mav.setViewName("admin/studentLeaveOutOk");
		}else {
			mav.setViewName("redirect:leave_out");
		}
		return mav;
	}
	
	@RequestMapping(value="/refund" , method=RequestMethod.GET)
	public ModelAndView refund(int student_no, int payment_no) {
		ModelAndView mav = new ModelAndView();
		CancelRegisterDAOImp dao =  sqlSession.getMapper(CancelRegisterDAOImp.class);
		mav.addObject("vo", dao.selectCancelRecord(student_no, payment_no));
		mav.addObject("vo2", dao.selectRefundRecord(student_no, payment_no));
		mav.setViewName("admin/refund");
		return mav;
	}
	
	@RequestMapping("/refundDetail")
	public ModelAndView refundDetail(int student_no, int payment_no) {
		ModelAndView mav = new ModelAndView();
		CancelRegisterDAOImp dao =  sqlSession.getMapper(CancelRegisterDAOImp.class);
		mav.addObject("vo", dao.selectCancelRecord(student_no, payment_no));
		mav.setViewName("admin/refundDetail");
		
		return mav;
	}
	
	@RequestMapping(value="/refundDetailOk", method=RequestMethod.POST)
	public ModelAndView refundDetailOk(CancelRegisterVO vo) {
		ModelAndView mav = new ModelAndView();
		CancelRegisterDAOImp dao =  sqlSession.getMapper(CancelRegisterDAOImp.class);
		
		int cnt = dao.CancelRecordInsert(vo);
		mav.addObject("student_no", vo.getStudent_no());
		mav.addObject("payment_no", vo.getPayment_no());
		if(cnt>0) {	
			mav.setViewName("redirect:refund");
		}else {
			mav.setViewName("redirect:refundDetail");
		}
		
		return mav;
	}
	
	@RequestMapping("/modify_receive")
	public ModelAndView modify_receive(int student_no, int payment_no) {
		ModelAndView mav = new ModelAndView();
		CancelRegisterDAOImp dao =  sqlSession.getMapper(CancelRegisterDAOImp.class);
		mav.addObject("vo", dao.selectPaymentRecord(student_no, payment_no));
		mav.setViewName("admin/modify_receive");
		
		return mav;
	}
	
	@RequestMapping(value="/modify_receiveOk", method=RequestMethod.POST)
	public ModelAndView modify_receiveOk(CancelRegisterVO vo) {
		ModelAndView mav = new ModelAndView();
		CancelRegisterDAOImp dao =  sqlSession.getMapper(CancelRegisterDAOImp.class);
		int cnt = dao.updatePaymentRecord(vo);
		mav.addObject("student_no", vo.getStudent_no());
		mav.addObject("payment_no", vo.getPayment_no());
		if(cnt>0) {
			mav.setViewName("redirect:refund");
		}else {
			mav.setViewName("redirect:modify_receive");
		}
		
		return mav;
	}
	@RequestMapping("/modify_return")
	public ModelAndView modify_return(int student_no) {
		ModelAndView mav = new ModelAndView();
		CancelRegisterDAOImp dao =  sqlSession.getMapper(CancelRegisterDAOImp.class);
		mav.addObject("vo", dao.selectReturnRecord(student_no));
		mav.setViewName("admin/modify_return");
		
		return mav;
	}
	
	@RequestMapping(value="/modify_returnOk", method=RequestMethod.POST)
	public ModelAndView modify_returnOk(CancelRegisterVO vo) {
		ModelAndView mav = new ModelAndView();
		CancelRegisterDAOImp dao =  sqlSession.getMapper(CancelRegisterDAOImp.class);
		int cnt = dao.updateReturnRecord(vo.getStudent_no());
		
		if(cnt>0) {
			mav.setViewName("redirect:refund");
		}else {
			mav.addObject("student_no", vo.getStudent_no());
			mav.setViewName("redirect:modify_return");
		}
		
		return mav;
	}
	
	@RequestMapping("/admin/receiveDel")
	public ModelAndView receiveDel(int student_no, int payment_no) {
		ModelAndView mav = new ModelAndView();
		CancelRegisterDAOImp dao =  sqlSession.getMapper(CancelRegisterDAOImp.class);
		
		int cnt = dao.deleteReceiveRecord(student_no, payment_no);
		mav.addObject("student_no", student_no);
		mav.addObject("payment_no", payment_no);
		if(cnt>0) {
			mav.setViewName("redirect:/cancelRegister");
		}else {
			mav.addObject("student_no", student_no);
			mav.setViewName("redirect:modify_return");
		}
		return mav;
	}
	
	@RequestMapping(value="/admin/returnDel", method=RequestMethod.GET)
	public ModelAndView returnDel(int student_no, int payment_no) {
		ModelAndView mav = new ModelAndView();
		CancelRegisterDAOImp dao =  sqlSession.getMapper(CancelRegisterDAOImp.class);
		
		int cnt = dao.deleteReturnRecord(student_no, payment_no);
		
		mav.addObject("student_no", student_no);
		mav.addObject("payment_no", payment_no);
		mav.setViewName("redirect:/refund");
		return mav;
	}
	
	@RequestMapping("/student_detail")
	public ModelAndView stdent_detail(int student_no) {
		ModelAndView mav = new ModelAndView();
		StudentInfoDAOImp dao =  sqlSession.getMapper(StudentInfoDAOImp.class);
		List<StudentPaymentInfoVO> list = new ArrayList<StudentPaymentInfoVO>();
		List<StudentCounselingVO> list2 = new ArrayList<StudentCounselingVO>();
		List<StudentClassInfoVO> list3 = new ArrayList<StudentClassInfoVO>(); 
		List<StudentAttendanceVO> list4 = new ArrayList<StudentAttendanceVO>();

		list = dao.studentPaymentInfo(student_no);
		list2 = dao.studentCounselingList(student_no);
		list3 = dao.studentClassInfoSelect(student_no);
		list4 = dao.studentAttendace(student_no);
			
		mav.addObject("vo", dao.studentSelectDetail(student_no));
		mav.addObject("list", list);
		mav.addObject("list2", list2);
		mav.addObject("list3", list3);
		mav.addObject("list4", list4);
		mav.setViewName("admin/student_detail");
		
		return mav;
	}
	
	@RequestMapping(value="/modify_basicInfo", method=RequestMethod.POST)
	public ModelAndView modify_basicInfo(StudentInfoVO vo, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		StudentInfoDAOImp dao =  sqlSession.getMapper(StudentInfoDAOImp.class);
		
		String path = req.getSession().getServletContext().getRealPath("/img");
		String paramName = vo.getImg_file().getName();
		String fName1 = vo.getImg_file().getOriginalFilename();
		
		try {
			if(fName1!=null) {
				vo.getImg_file().transferTo(new File(path, fName1));
			}
		}catch(Exception e) {}
		
		vo.setStudent_img(fName1);
		int cnt = dao.studentInfoUpdate(vo);
		mav.addObject("student_no", vo.getStudent_no());
		if(cnt>0) {
			mav.setViewName("admin/modify_basicInfoOk");
		}else {
			if(fName1!=null) {
				deleteFile(path, fName1);
			}
			mav.setViewName("redirect:student_detail");
		}
		
		return mav;
	}
	
	@RequestMapping("/counseling_registration")
	public ModelAndView counseling_registration(StudentCounselingVO vo) {
		ModelAndView mav = new ModelAndView();
		StudentInfoDAOImp dao =  sqlSession.getMapper(StudentInfoDAOImp.class);
		
		int cnt = dao.studentCounselingInsert(vo);
		mav.addObject("student_no", vo.getStudent_no());
		if(cnt>0) {
			mav.setViewName("admin/counseling_registrationOk");
		}else {
			mav.setViewName("redirect:student_detail");
		}
		
		return mav;
	}
	
	@RequestMapping("/modify_counselingOk")
	public ModelAndView modify_counselingOk(StudentCounselingVO vo) {
		ModelAndView mav = new ModelAndView();
		StudentInfoDAOImp dao =  sqlSession.getMapper(StudentInfoDAOImp.class);
		
		int cnt = dao.studentCounselingUpdate(vo);
		mav.addObject("student_no", vo.getStudent_no());
		if(cnt>0) {
			mav.setViewName("admin/counseling_editOk");
		}else {
			mav.setViewName("redirect:student_detail");
		}
		
		return mav;
	}
	
	@RequestMapping("/admin/counselingDel")
	public ModelAndView counselingDel(int student_no, int counseling_no) {
		ModelAndView mav = new ModelAndView();
		StudentInfoDAOImp dao =  sqlSession.getMapper(StudentInfoDAOImp.class);
		
		int cnt = dao.studentCounselingDelete(student_no, counseling_no);
		mav.addObject("student_no", student_no);
		if(cnt>0) {
			mav.setViewName("admin/counseling_delOk");
		}else {
			mav.addObject("counseling_no", counseling_no);
			mav.setViewName("redirect:student_detail");
		}
		return mav;
	}
	
	@RequestMapping("/admin/memberDel")
	public ModelAndView memberDel(int student_no) {
		ModelAndView mav = new ModelAndView();
		StudentInfoDAOImp dao =  sqlSession.getMapper(StudentInfoDAOImp.class);
		
		int cnt = dao.memberDel(student_no);
		if(cnt>0) {
			mav.setViewName("admin/memberDelOk");
		}else {
			mav.addObject("student_no", student_no);
			mav.setViewName("redirect:student_detail");
		}
		return mav;
	}
	
	@RequestMapping(value="/admin/moveClassOk", method=RequestMethod.POST)
	public ModelAndView moveClassOk(StudentClassInfoVO vo) {
		ModelAndView mav = new ModelAndView();
		StudentInfoDAOImp dao =  sqlSession.getMapper(StudentInfoDAOImp.class);
		
		mav.addObject("student_no", vo.getStudent_no());
		int cnt = dao.studentClassMove(vo);
		if(cnt>0) {
			mav.setViewName("admin/studentMoveClassOk");
		}else {
			mav.setViewName("redirect:student_detail");
		}
		
		return mav;
	}
	@RequestMapping("/admin/modifyClosedOutOk")
	public ModelAndView modifyColsedOutOk(StudentClassInfoVO vo) {
		ModelAndView mav = new ModelAndView();
		StudentInfoDAOImp dao =  sqlSession.getMapper(StudentInfoDAOImp.class);
		
		mav.addObject("student_no", vo.getStudent_no());
		int cnt = dao.studentClosedOutEditOk(vo);
		if(cnt>0) {
			mav.setViewName("admin/studentClosedOutOk");
		}else {
			mav.setViewName("redirect:student_detail");
		}
		
		return mav;
	}
	
	@RequestMapping("/admin/closedOutOk")
	public ModelAndView closedOutOk(StudentClassInfoVO vo) {
		ModelAndView mav = new ModelAndView();
		StudentInfoDAOImp dao =  sqlSession.getMapper(StudentInfoDAOImp.class);
		
		mav.addObject("student_no", vo.getStudent_no());
		int cnt = dao.closedOutOk(vo);
		if(cnt>0) {
			mav.setViewName("admin/closedOutOk");
		}else {
			mav.setViewName("redirect:student_detail");
		}
		return mav;
	}
	@RequestMapping("/admin/attendanceArray")
	@ResponseBody
	public List<StudentAttendanceVO> attendanceArray(int payment_no) {
		StudentInfoDAOImp dao =  sqlSession.getMapper(StudentInfoDAOImp.class);
		List<StudentAttendanceVO> list = new ArrayList<StudentAttendanceVO>();
		
		list = dao.studentAttendaceList(payment_no);
		
		return list;
	}
}
