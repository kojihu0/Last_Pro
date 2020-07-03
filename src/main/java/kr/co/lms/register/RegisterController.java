 package kr.co.lms.register;

import javax.inject.Inject;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.password.PasswordEncoder;
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

	@Autowired
	PasswordEncoder pwEncoder;
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register() {
		return"main/register/register";
	}
	
	@RequestMapping(value="/registerOk", method=RequestMethod.POST)
	public ModelAndView register(MemberVO vo) {
		ModelAndView mav = new ModelAndView();
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		
		//패스워드 암호화
		String get_studentPw = vo.getStudent_pw();
		String student_pw = pwEncoder.encode(get_studentPw);
		vo.setStudent_pw(student_pw);
		
		int cnt = dao.memberRegister(vo);
		if(cnt>0) {
			mav.setViewName("redirect:registerComplete");
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
		String email = req.getParameter("student_email");
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		int cnt = dao.emailCheck(email);
		String response ="error";
		if(cnt>0) {
			response="duplicate";
		}
		else {
			String sesId = req.getSession().getId();
			String body ="EduCamp 인증코드="+sesId;
			String subject ="EduCamp 회원가입 인증메일입니다. ";
			try {
				MimeMessage message = mailSender2.createMimeMessage();
				System.out.println(email);
				MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8"); 
				helper.setFrom(new InternetAddress("insunok0715@naver.com", "Educamp")); 
				helper.setTo(new InternetAddress(email)); 
				helper.setSubject(subject); 
				helper.setText(body); 
				mailSender2.send(message);
				
				response="ok";
				System.out.println("이메일 발송함");
			}catch(Exception e) {
				response="error";
				System.out.println(e.getMessage());
			}
		}
		
		return response;	
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
	
	@RequestMapping(value="/registerDelOk",method=RequestMethod.POST)
	public ModelAndView registerDelOk(HttpServletRequest req) {
		MemberVO vo  = new MemberVO();
		ModelAndView mav = new ModelAndView();
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		vo.setStudent_id(req.getParameter("delId"));		
		vo.setStudent_pw(req.getParameter("delPw"));
		MemberVO loginVO = dao.memberLogin(vo);
		boolean pwMatch = pwEncoder.matches(vo.getStudent_pw(), loginVO.getStudent_pw());
		if(loginVO!=null && pwMatch == true) {
			int cnt = dao.memberDataDel(vo);
			if(cnt>0){
				mav.setViewName("redirect:/");
			}else {
				mav.addObject("response","회원탈퇴에 실패 하셨습니다.");
				mav.setViewName("main/profile/profile");
			}
		}else {
			mav.addObject("response","회원탈퇴에 실패 하셨습니다.");
			mav.setViewName("main/profile/profile");
		}
		
		
		return mav;
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
