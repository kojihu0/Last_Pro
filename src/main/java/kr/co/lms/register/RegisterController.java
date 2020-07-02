package kr.co.lms.register;



import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import kr.co.lms.main.DAO.MemberDAOImp;
import kr.co.lms.main.VO.MemberVO;
 
@Controller
public class RegisterController {
	SqlSession sqlSession;
	@Inject
	JavaMailSenderImpl mailSender2;
	
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
	@RequestMapping(value="/registerOk", method=RequestMethod.POST)
	public ModelAndView register(MemberVO vo) {
		ModelAndView mav = new ModelAndView();
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		
		int cnt = dao.memberRegister(vo);
		if(cnt>0) {
			mav.setViewName("main/register/registerComplete");
		}else {
			mav.setViewName("redirect:register");
		}
		return mav;
	}
	
	
	
	@RequestMapping(value="/idCheck" ,method=RequestMethod.GET)
	public ModelAndView idCheck(String userid) {
		ModelAndView mav = new ModelAndView();
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		
		int cnt = dao.idCheck(userid);
		mav.addObject("userid",userid);
		mav.addObject("cnt",cnt);
		mav.setViewName("main/register/idCheck");
		return mav; 
	}
	

	@RequestMapping("/emailSend")
	@ResponseBody
	public String sendMail(HttpServletRequest req){
		String sesId = req.getSession().getId();
		
		String body ="EduCamp �쉶�썝媛��엯�뿉 �븘�슂�븳 �씠硫붿씪 �씤利� 肄붾뱶 �엯�땲�떎.\n �씤利앹퐫�뱶="+sesId;
		String subject ="EduCamp �쉶�썝媛��엯�뿉 �븘�슂�븳 �씠硫붿씪 �씤利� 肄붾뱶 �엯�땲�떎. ";
		String ok ="";
		try {
			
			MimeMessage message = mailSender2.createMimeMessage();
				String email = req.getParameter("student_email");
				System.out.println(email);
				MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8"); 
				helper.setFrom("insunok0715@naver.com"); 
				helper.setTo(email); 
				helper.setSubject(subject); 
				helper.setText(body); 
				mailSender2.send(message);
				
				ok="ok";
				System.out.println("�씠硫붿씪 �쟾�넚 �꽦怨�");
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return ok;	
	}	
	@RequestMapping("/emailCodeCheck")
	@ResponseBody
	public String emailCodeCheck(HttpServletRequest req) {
		String yes = "";
		String sesId = req.getSession().getId();
		System.out.println(sesId);
		String emailCode = req.getParameter("useremailCode");
		System.out.println(emailCode);
		if(sesId.equals(emailCode)) {
			yes = "yes";
		}else {
			yes="no";
		}
		return yes;
	}
	@RequestMapping("/registerComplete")
	public String registerComplete() {
		
		return "main/register/registerComplete";
	}
	@RequestMapping("/registerDel")
	public String registerDel() {
		
		return "main/register/registerDel";
	}
	@RequestMapping("/subjectRegister")
	public String subjectRegister() {
		return "admin/subjectRegister";
	}
	@RequestMapping("/cancelRegister")
	public String cancelRegister() {
		return "admin/cancelRegister";
	}
}
