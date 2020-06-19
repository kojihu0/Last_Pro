package kr.co.lms.course;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.CourseDAOImp;
import kr.co.lms.main.VO.CourseVO;
import kr.co.lms.main.VO.PagingVO;

@Controller
public class CourseController {
	SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@RequestMapping(value = "/course/courseList", method = RequestMethod.GET)
	public ModelAndView courseList(@RequestParam(required = false, defaultValue = "1") int pageNum,
			@RequestParam(required = false, defaultValue = "") String search_text) {
		CourseDAOImp dao = sqlSession.getMapper(CourseDAOImp.class);
		PagingVO pvo = new PagingVO();
		pvo.setOnePageRecord(8);
		if(!search_text.isEmpty() && search_text!=null) {
			pvo.setSearch_text(search_text);
		}
		
		if(pageNum>0) {
			pvo.setPageNum(pageNum);
		}
		else {
			pvo.setPageNum(1);
		}
		pvo.setTotalRecord(dao.getTotalCoureses(search_text));
		
		if((pvo.getPageNum() < pvo.getTotalPage())) { //현재 페이지번호가 마지막페이지 번호보다 작을 때
			pvo.setLastPageRecord(pvo.getOnePageRecord());
		}
		
		List<CourseVO> courseList = dao.courseList(pvo);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list", courseList);
		mav.addObject("pvo", pvo);
		mav.addObject("crrPageNum", pvo.getPageNum());
		mav.addObject("search_text", search_text);
		mav.setViewName("main/course/courseList");
		return mav;
	}
	
	@RequestMapping("/course/courseDetail")
	public ModelAndView courseDetail(int course_no) {
		CourseDAOImp dao = sqlSession.getMapper(CourseDAOImp.class);
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", dao.selectCourse(course_no));
		mav.setViewName("main/course/courseDetail");
		return mav;
	}
}
