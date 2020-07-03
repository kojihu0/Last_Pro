package kr.co.lms.admin.DAO;

import java.util.List;

import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.RegisterVO;
import kr.co.lms.admin.VO.StudentByCourseVO;

public interface RegisterDAOImp {
	//접수현황 리스트
	public List<RegisterVO> selectAll(AdminStudentPagingVO PageVO);
	//접수현황 리스트 갯수
	public int getSelectAll(AdminStudentPagingVO PageVO);
}
