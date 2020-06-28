package kr.co.lms.payment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.CourseDAOImp;
import kr.co.lms.main.DAO.MemberDAOImp;
import kr.co.lms.main.VO.CourseVO;
import kr.co.lms.main.VO.MemberVO;


@Controller
public class PaymentController {
	SqlSession sqlSession;
	
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}

	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}


	@RequestMapping(value="/paymentProcess" , method=RequestMethod.GET)
	public ModelAndView paymentProcess(HttpServletRequest req, int course_no) {//강의 번호
		ModelAndView mav = new ModelAndView();
		CourseVO vo  = new CourseVO();
		MemberVO vo2  = new MemberVO();
		HttpSession ses = req.getSession();
		vo2.setStudent_no((Integer)(ses.getAttribute("student_no")));
		vo.setCourse_no(course_no);
		CourseDAOImp dao = sqlSession.getMapper(CourseDAOImp.class);
		MemberDAOImp memDao = sqlSession.getMapper(MemberDAOImp.class);
		
		mav.addObject("vo2",memDao.memberPaymentRecord(vo2));
		mav.addObject("vo",dao.selectCourse(course_no));
		mav.setViewName( "main/payment/paymentProcess");
		
		return mav;
	};
}
