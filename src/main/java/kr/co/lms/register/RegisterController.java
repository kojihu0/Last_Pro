 package kr.co.lms.register;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.admin.DAO.CancelRegisterDAOImp;
import kr.co.lms.admin.DAO.RegisterDAOImp;
import kr.co.lms.admin.VO.AdminStudentPagingVO;
import kr.co.lms.admin.VO.CancelRegisterVO;
import kr.co.lms.admin.VO.RegisterVO;

@Controller
public class RegisterController {
	SqlSession sqlSession;
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register() {
		return"main/register/register";
	}
	
	@RequestMapping("/subjectRegister")
	public ModelAndView subjectRegister(@RequestParam(value="pageNum",defaultValue="1") int pageNum, AdminStudentPagingVO PageVO) {
		ModelAndView mav = new ModelAndView();
		RegisterDAOImp dao = sqlSession.getMapper(RegisterDAOImp.class);
		PageVO.setPageNum(pageNum);
		PageVO.setTotalRecord(dao.getSelectAll(PageVO));
		
		mav.addObject("list", dao.selectAll(PageVO));
		mav.addObject("pageVO", PageVO);
		mav.setViewName("admin/subjectRegister");
				
		return mav;
	}
	
	@RequestMapping("/cancelRegister")
	public ModelAndView cancelRegister(@RequestParam(value="pageNum",defaultValue="1") int pageNum, AdminStudentPagingVO PageVO) {
		List<CancelRegisterVO> list = new ArrayList<CancelRegisterVO>();
		ModelAndView mav = new ModelAndView();
		CancelRegisterDAOImp dao =  sqlSession.getMapper(CancelRegisterDAOImp.class);
		PageVO.setPageNum(pageNum);
		PageVO.setTotalRecord(dao.getCancelSelectAll(PageVO));
		
		list = dao.cancelSelectAll(PageVO);
		mav.addObject("list", list);
		mav.addObject("pageVO", PageVO);
		mav.setViewName("admin/cancelRegister");
		
		return mav;
	}
}
