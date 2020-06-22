package kr.co.lms.course;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.CourseDAOImp;
import kr.co.lms.main.VO.CourseReviewVO;
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
		pvo.setOnePageRecord(8); //한페이지당 보여질 개수
		
		if(!search_text.isEmpty() && search_text!=null) { //검색어가 존재할때 검색어 셋팅
			pvo.setSearch_text(search_text);
		}
		
		if(pageNum>0) { //페이지번호  세팅
			pvo.setPageNum(pageNum);
		}
		else {
			pvo.setPageNum(1);
		}
		pvo.setTotalRecord(dao.getTotalCoureses(search_text)); //전체 레코드 수 세팅
		
		if((pvo.getPageNum() < pvo.getTotalPage())) { //현재 페이지번호가 마지막페이지 번호보다 작을 때만 lastPageRecord에 onePageRecord적용
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
	
	@RequestMapping(value = "/course/courseDetail", method = RequestMethod.GET)
	public ModelAndView courseDetail(@RequestParam(value = "course_no") int course_no) {
		CourseDAOImp dao = sqlSession.getMapper(CourseDAOImp.class);
		
		PagingVO rpvo = new PagingVO();
		rpvo.setOnePageRecord(5);
		rpvo.setCourse_no(course_no);
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", dao.selectCourse(course_no));
		mav.addObject("reviewList", dao.reviewList(rpvo));
		mav.setViewName("main/course/courseDetail");
		return mav;
	}
	
	@RequestMapping(value = "/course/reviewOk", method = RequestMethod.POST)
	public ModelAndView insertCouresReview(CourseReviewVO vo, HttpServletRequest req) {
		CourseDAOImp dao = sqlSession.getMapper(CourseDAOImp.class);
		
		HttpSession sess = req.getSession();
		
		int student_no = Integer.parseInt((String)sess.getAttribute("student_no"));
		vo.setStudent_no(student_no);
		System.out.println("test"+ vo.getCourse_no()+" "+vo.getStudent_no());
		int payment_no = dao.selectPaymentNo(vo.getCourse_no(), vo.getStudent_no());
		vo.setPayment_no(payment_no);
		
		int cnt = dao.insertReview(vo);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("course_no", vo.getCourse_no());
//		mav.addObject("url", "/course/courseDetail");
//		mav.addObject("hash", "#comments");
//		mav.addObject("cnt", cnt);
		mav.setViewName("redirect:courseDetail");
		return mav;
	}
	
}
