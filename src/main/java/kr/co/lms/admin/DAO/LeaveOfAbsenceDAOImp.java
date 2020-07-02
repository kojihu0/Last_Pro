package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.LeaveOfAbsenceVO;

public interface LeaveOfAbsenceDAOImp {
	//휴학생 리스트
	public List<LeaveOfAbsenceVO> selectLeaveOfAbsence(AdminStudentPagingVO PageVO);
	//휴학생 전체 수
	public int getSelectLeaveOfAbsence(AdminStudentPagingVO PageVO);
}
