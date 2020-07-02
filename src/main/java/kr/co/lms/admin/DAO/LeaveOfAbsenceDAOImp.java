package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.LeaveOfAbsenceVO;

public interface LeaveOfAbsenceDAOImp {
	
	public List<LeaveOfAbsenceVO> selectLeaveOfAbsence(AdminStudentPagingVO PageVO);
	
	public int getSelectLeaveOfAbsence(AdminStudentPagingVO PageVO);
}
