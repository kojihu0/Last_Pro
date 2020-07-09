package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminCalendarVO;
import kr.co.lms.admin.VO.AdminCourseVO;
import kr.co.lms.admin.VO.AdminMainHomeVO;
import kr.co.lms.admin.VO.AdminManageInfoVO;
import kr.co.lms.admin.VO.AdminNoticeVO;
import kr.co.lms.admin.VO.AdminRegiVO;
import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.AdminTeacherVO;

public interface AdminRegiInterface {
	
	//코스 이름 뽑아오기
	public List<AdminCourseVO> selectAdminCourseName(String employee_name);
	//선생 전공 뽑아오기.
	public AdminTeacherVO selectTeacherClass(String employee_name); 

	public String totalPrice();
	public String totalTeacher();
	public String totalStudent();
	public String totalCourse();
	
	public List<AdminMainHomeVO> paymentTeacher();
	public List<AdminMainHomeVO> paymentCourse();
	


	public AdminRegiVO selectAdminId(AdminRegiVO vo);
	//계정등록 전, 중복하는 아이디가 있는지 체크
	public AdminRegiVO selectAdminIdCheck(AdminRegiVO vo);
	//admin 계정 등록을 위한 것.
	public int insertAdminID(AdminRegiVO vo);
	 
	
	

	public List<AdminTeacherVO> selectAdminAllRecord(AdminStudentPagingVO pVo);

	public int selectTeacherTotal(AdminStudentPagingVO pVo);

	public int insertAdminTeacher(AdminTeacherVO vo);
	//직원 소개글 뽑아오기.
	public AdminTeacherVO selectTeacherOverView(AdminTeacherVO vo);
	//직원 정보 수정
	public int updateAdminTeacherEdit(AdminTeacherVO vo); 
	//삭제
	public int deleteTeacher(AdminTeacherVO vo); 

	
	

	public int selectTotalRecordManageInfo(AdminStudentPagingVO pVo);

	public List<AdminManageInfoVO> selectManageInfoName();

	public AdminManageInfoVO selectManageinfoNameAndNo(String id);
	

	public List<AdminManageInfoVO> selectManageInfo(AdminStudentPagingVO pVo);

	public AdminManageInfoVO selectOneRecord(int no);
	//업무일지 등록.
	public int insertAdminManageInfo(AdminManageInfoVO vo);
	//업무일지 수정
	public int updateAdminManageInfo(AdminManageInfoVO vo);
	//업무일지 결제 승인.
	public int updateAdminManageInfoOk(AdminManageInfoVO vo);
	
	
	

	public int selectCourseTotal(AdminStudentPagingVO pVo);

	public List<AdminCourseVO> selectCourseAll(AdminStudentPagingVO pVo);

	public AdminCourseVO selectCourseOne(int course_no_check);
	//강좌 수정
	public int updateCourse(AdminCourseVO vo);
	//강좌 삭제
	public int delRecord(AdminCourseVO vo);

	public int checkTeacherId(String id);
	//등록 -> 해당 강사가 로그인해서 하게끔. 세션에서 강사 이름과 아이디를 가져온다.
	public int insertCourse(AdminCourseVO vo); 
	
	
	

	public int selectNoticeTotalRecord(AdminStudentPagingVO pVo);

	public List<AdminNoticeVO> selectNoticeAll(AdminStudentPagingVO pVo);

	public AdminNoticeVO selectNoticeOne(int no);
	//조회수 업.
	public int AdminNoticeHitUpdate(int no);
	//들어온 사람 임플로이 번호 구하기.
	public int selectEmployeeNo(String id);
	//사내일정 등록.
	public int insertNotice(AdminNoticeVO vo);
	//사내일정 수정
	public int updateNotice(AdminNoticeVO vo);
	//사내일정 삭제.
	public int delNotice(int no); 
	
	
	
	//메인페이지 관련 데이터 뽑기.
	public List<AdminCalendarVO> selectAllCalendar();

	public int insertEvent(AdminCalendarVO vo);

	public int updateCalender(AdminCalendarVO vo);

	public int deleteCalender(AdminCalendarVO vo);

	public int dropUpdateCalender(AdminCalendarVO vo);
	
}