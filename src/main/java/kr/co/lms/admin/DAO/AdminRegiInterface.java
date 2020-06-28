package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminCalendarVO;
import kr.co.lms.admin.VO.AdminCourseVO;
import kr.co.lms.admin.VO.AdminManageInfoVO;
import kr.co.lms.admin.VO.AdminNoticeVO;
import kr.co.lms.admin.VO.AdminRegiVO;
import kr.co.lms.admin.VO.AdminTeacherVO;

public interface AdminRegiInterface {
	
	//�α��� üũ
	public AdminRegiVO selectAdminId(AdminRegiVO vo);
	//������� ��, �ߺ��ϴ� ���̵� �ִ��� üũ
	public AdminRegiVO selectAdminIdCheck(AdminRegiVO vo);
	//admin ���� ����� ���� ��.
	public int insertAdminID(AdminRegiVO vo);
	 
	
	
	//���� ���� �̾ƿ���.
	public List<AdminRegiVO> selectAdminAllRecord();
	//���� ���
	public int insertAdminTeacher(AdminTeacherVO vo);
	//���� �Ұ��� �̾ƿ���.
	public AdminTeacherVO selectTeacherOverView(AdminTeacherVO vo);
	//���� ���� ����
	public int updateAdminTeacherEdit(AdminTeacherVO vo); 
	//����
	public int deleteTeacher(AdminTeacherVO vo); 

	
	
	//�������� ���� ����
	public List<AdminManageInfoVO> selectManageInfo();
	//�������� �ϳ��� ����
	public AdminManageInfoVO selectOneRecord(int no);
	//�������� ���.
	public int insertAdminManageInfo(AdminManageInfoVO vo);
	//�������� ����
	public int updateAdminManageInfo(AdminManageInfoVO vo);
	//�������� ���� ����.
	public int updateAdminManageInfoOk(AdminManageInfoVO vo);
	
	
	
	//���¸���Ʈ
	public List<AdminCourseVO> selectCourseAll();
	//���� �ϳ� ����.
	public AdminCourseVO selectCourseOne(int course_no_check);
	//���� ����
	public int updateCourse(AdminCourseVO vo);
	//���� ����
	public int delRecord(AdminCourseVO vo);
	
	//���� ���̵� ���� �ѹ�üũ
	public int checkTeacherId(String id);
	//��� -> �ش� ���簡 �α����ؼ� �ϰԲ�. ���ǿ��� ���� �̸��� ���̵� �����´�.
	public int insertCourse(AdminCourseVO vo); 
	
	
	
	//�系����  ����Ʈ
	public List<AdminNoticeVO> selectNoticeAll();
	//�系���� ��
	public AdminNoticeVO selectNoticeOne(int no);
	//��ȸ�� ��.
	public int AdminNoticeHitUpdate(int no);
	//���� ��� ���÷��� ��ȣ ���ϱ�.
	public int selectEmployeeNo(String id);
	//�系���� ���.
	public int insertNotice(AdminNoticeVO vo);
	//�系���� ����
	public int updateNotice(AdminNoticeVO vo);
	//�系���� ����.
	public int delNotice(int no); 
	
	
	
	//���������� ���� ������ �̱�.
	public List<AdminCalendarVO> selectAllCalendar();
	//�̺�Ʈ �߰�.
	public int insertEvent(AdminCalendarVO vo); 
	
	
}