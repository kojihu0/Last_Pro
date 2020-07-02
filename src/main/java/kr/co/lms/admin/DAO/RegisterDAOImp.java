package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.RegisterVO;
import kr.co.lms.admin.VO.StudentByCourseVO;

public interface RegisterDAOImp {
	
	public List<RegisterVO> selectAll(AdminStudentPagingVO PageVO);
	
	public int getSelectAll(AdminStudentPagingVO PageVO);
}
