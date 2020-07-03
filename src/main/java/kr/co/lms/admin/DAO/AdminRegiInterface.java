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
	
	//main���� ���� �͵�.
	public int totalPrice();
	public int totalTeacher();
	public int totalStudent();
	public int totalCourse();
	
	public List<AdminMainHomeVO> paymentTeacher();
	public List<AdminMainHomeVO> paymentCourse();
	
	
	
	//�α��� üũ
	public AdminRegiVO selectAdminId(AdminRegiVO vo);
	//계정등록 전, 중복하는 아이디가 있는지 체크
	public AdminRegiVO selectAdminIdCheck(AdminRegiVO vo);
	//admin 계정 등록을 위한 것.
	public int insertAdminID(AdminRegiVO vo);
	 
	
	
	//���� ���� �̾ƿ���.
	public List<AdminTeacherVO> selectAdminAllRecord(AdminStudentPagingVO pVo);
	//���� �� ���ڵ�
	public int selectTeacherTotal(AdminStudentPagingVO pVo);
	//���� ���
	public int insertAdminTeacher(AdminTeacherVO vo);
	//직원 소개글 뽑아오기.
	public AdminTeacherVO selectTeacherOverView(AdminTeacherVO vo);
	//직원 정보 수정
	public int updateAdminTeacherEdit(AdminTeacherVO vo); 
	//삭제
	public int deleteTeacher(AdminTeacherVO vo); 

	
	
	//�������� ��Ż ���ڵ� ���ϱ�.
	public int selectTotalRecordManageInfo(AdminStudentPagingVO pVo);
	//�������� �̸� �̾ƿ���.
	public List<AdminManageInfoVO> selectManageInfoName();
	//���� ��ȣ, �̸� �̾ƿ���.
	public AdminManageInfoVO selectManageinfoNameAndNo(String id);
	
	//�������� ���� ����
	public List<AdminManageInfoVO> selectManageInfo(AdminStudentPagingVO pVo);
	//�������� �ϳ��� ����
	public AdminManageInfoVO selectOneRecord(int no);
	//업무일지 등록.
	public int insertAdminManageInfo(AdminManageInfoVO vo);
	//업무일지 수정
	public int updateAdminManageInfo(AdminManageInfoVO vo);
	//업무일지 결제 승인.
	public int updateAdminManageInfoOk(AdminManageInfoVO vo);
	
	
	
	//�� ���� �� ���ϱ�.
	public int selectCourseTotal(AdminStudentPagingVO pVo);
	//���¸���Ʈ
	public List<AdminCourseVO> selectCourseAll(AdminStudentPagingVO pVo);
	//���� �ϳ� ����.
	public AdminCourseVO selectCourseOne(int course_no_check);
	//강좌 수정
	public int updateCourse(AdminCourseVO vo);
	//강좌 삭제
	public int delRecord(AdminCourseVO vo);
	//���� ���̵� ���� �ѹ�üũ
	public int checkTeacherId(String id);
	//등록 -> 해당 강사가 로그인해서 하게끔. 세션에서 강사 이름과 아이디를 가져온다.
	public int insertCourse(AdminCourseVO vo); 
	
	
	
	//�� ���ڵ�
	public int selectNoticeTotalRecord(AdminStudentPagingVO pVo);
	//�系����  ����Ʈ
	public List<AdminNoticeVO> selectNoticeAll(AdminStudentPagingVO pVo);
	//�系���� ��
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
	//�̺�Ʈ �߰�.
	public int insertEvent(AdminCalendarVO vo);
	//�̺�Ʈ ����.
	public int updateCalender(AdminCalendarVO vo);
	//�̺�Ʈ ����.
	public int deleteCalender(AdminCalendarVO vo);
	//����̺�Ʈ ����
	public int dropUpdateCalender(AdminCalendarVO vo);
	
}