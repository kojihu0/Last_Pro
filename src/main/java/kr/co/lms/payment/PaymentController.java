package kr.co.lms.payment;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.CourseDAOImp;
import kr.co.lms.main.DAO.MemberDAOImp;
import kr.co.lms.main.DAO.paymentDAOImp;
import kr.co.lms.main.VO.CourseVO;
import kr.co.lms.main.VO.MemberVO;
import kr.co.lms.main.VO.paymentVO;


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
		ses.setAttribute("course_no", course_no);
		CourseDAOImp dao = sqlSession.getMapper(CourseDAOImp.class);
		MemberDAOImp memDao = sqlSession.getMapper(MemberDAOImp.class);
		
		mav.addObject("vo2",memDao.memberPaymentRecord(vo2));
		mav.addObject("vo",dao.selectCourse(course_no));
		mav.setViewName( "main/payment/paymentProcess");
		
		return mav;
	};
	@RequestMapping(value="/paymentComplete" , method=RequestMethod.POST)
	@ResponseBody
	public String  paymentComplete(HttpServletRequest req, String employee_name,
																 int  amount,
																 String pay_method,
																 String buyer_email,
																 String name,
																 String buyer_name,
																 String buyer_tel) {
		paymentVO vo = new paymentVO(); 
		HttpSession ses = req.getSession();
		vo.setStudent_no((Integer)(ses.getAttribute("student_no")));
		vo.setCourse_no((Integer)(ses.getAttribute("course_no")));
		
		vo.setPayment_email(buyer_email);
		vo.setPayment_name(buyer_name);
		vo.setPayment_phone(buyer_tel);
		vo.setPayment_price(amount);
		  if(pay_method.equals("card")) { 
			  vo.setPayment_method("카드결제"); 
		  }else {
			  vo.setPayment_method("계좌이체");   
		  }
		
		paymentDAOImp dao  = sqlSession.getMapper(paymentDAOImp.class);
		dao.paymentInfoInsert(vo);
		String data = "결제 테스트 중";
		return data;
	}
	@RequestMapping(value="/paymentCashComplete" , method=RequestMethod.POST)
	public ModelAndView paymentCashComplete(HttpServletRequest req,String student_id,
																String course_name,
																String student_name_ko,
																String student_email,
																String student_tel_phone ,
																String employee_name,
																String course_start_date,
																int course_price
																) {
		ModelAndView mav =new ModelAndView();
		paymentVO vo = new paymentVO(); 
		HttpSession ses = req.getSession();
		vo.setStudent_no((Integer)(ses.getAttribute("student_no")));
		vo.setCourse_no((Integer)(ses.getAttribute("course_no")));
		System.out.println(course_price);
		vo.setPayment_email(student_email);
		vo.setPayment_name(student_name_ko);
		vo.setPayment_phone(student_tel_phone);
		vo.setPayment_price(course_price);
		vo.setCourse_name(course_name);
		vo.setEmployee_name(employee_name);
		vo.setCourse_start_date(course_start_date);
	
		vo.setPayment_method("현금결제 "); 
		System.out.println(vo.getPayment_name());		
		paymentDAOImp dao = sqlSession.getMapper(paymentDAOImp.class);
		dao.paymentCashInsert(vo);
		
		int payment_no = dao.paymentNumberRecord(vo);
		vo.setPayment_no(payment_no);
		paymentVO vo2 = dao.paymentInfoRecord(vo);
		mav.addObject("course_name",vo2.getCourse_name());
		mav.addObject("employee_name",vo2.getEmployee_name());
		mav.addObject("payment_name",vo2.getPayment_name());
		mav.addObject("payment_date",vo2.getPayment_date());
		mav.addObject("payment_phone",vo2.getPayment_phone());
		mav.addObject("payment_price",vo2.getPayment_price());
		mav.setViewName("main/payment/paymentCashComplete");
		return mav;  
	}
	
	@RequestMapping("/paymentCompleted")
	public ModelAndView payementCompleted(HttpServletRequest req) {
		ModelAndView mav =new ModelAndView();
		paymentDAOImp dao  = sqlSession.getMapper(paymentDAOImp.class);
		paymentVO vo = new paymentVO(); 
		HttpSession ses = req.getSession();
		
		vo.setStudent_no((Integer)(ses.getAttribute("student_no")));
		vo.setCourse_no((Integer)(ses.getAttribute("course_no")));
		System.out.println(vo.getStudent_no());
		System.out.println(vo.getCourse_no());
		int payment_no = dao.paymentNumberRecord(vo);
		vo.setPayment_no(payment_no);
		
		paymentVO vo2 = dao.paymentInfoRecord(vo);
		System.out.println(vo2.getCourse_name());
		
		mav.addObject("course_name",vo2.getCourse_name());
		mav.addObject("employee_name",vo2.getEmployee_name());
		mav.addObject("payment_name",vo2.getPayment_name());
		mav.addObject("payment_date",vo2.getPayment_date());
		mav.addObject("payment_phone",vo2.getPayment_phone());
		mav.addObject("payment_price",vo2.getPayment_price());
		mav.setViewName("main/payment/paymentCompleted");
		return mav;  
	}
}
