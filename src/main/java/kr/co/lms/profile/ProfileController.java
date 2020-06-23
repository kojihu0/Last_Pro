package kr.co.lms.profile;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.MypageDAOImp;
import kr.co.lms.main.VO.MypageVO;


@Controller
public class ProfileController {
	SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@RequestMapping(value="/courseOfStudy",method=RequestMethod.GET)
	public ModelAndView courseOfStudy(HttpServletRequest req, int no){//수강중인강좌
		ModelAndView mav = new ModelAndView();
		MypageDAOImp dao =sqlSession.getMapper(MypageDAOImp.class); 
		List<MypageVO> courseList =dao.courseRecord(no);
		mav.addObject("courseList",courseList);
		mav.setViewName("main/profile/courseOfStudy");
		return mav;
				
	}
	@RequestMapping(value="/completionCourse",method=RequestMethod.GET)
	public ModelAndView completionCourse(HttpServletRequest req, int no) {//수료강좌
		ModelAndView mav = new ModelAndView();
		MypageDAOImp dao =sqlSession.getMapper(MypageDAOImp.class);
		List<MypageVO> completionCourse = dao.completionCourseRecord(no);
		mav.addObject("completionCourse",completionCourse);
		mav.setViewName("main/profile/completionCourse");
		return mav;
	}
	@RequestMapping(value="/inCompletionCourse",method=RequestMethod.GET)
	public ModelAndView inCompletionCourse(HttpServletRequest req, int no) {//미수료강좌
		ModelAndView mav = new ModelAndView();
		MypageDAOImp dao =sqlSession.getMapper(MypageDAOImp.class);
		List<MypageVO> incompleteCourse = dao.inCompleteCourseRecord(no);
		mav.addObject("incompleteCourse",incompleteCourse);
		mav.setViewName("main/profile/inCompletionCourse");
		return mav;
	}
	@RequestMapping(value="/schedule", method=RequestMethod.GET)
	public String schedule() {//시간표
		return "main/profile/schedule";
	}
	@RequestMapping(value="/profile", method=RequestMethod.GET)
	public String profile() {//내정보 변경 및 사진 
		return "main/profile/profile";
	}
	@RequestMapping(value="/wishList", method=RequestMethod.GET)
	public String wishList() {//찜목록
		return "main/profile/wishList";
	}
}
