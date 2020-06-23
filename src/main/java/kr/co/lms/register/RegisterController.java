package kr.co.lms.register;


import java.nio.charset.CodingErrorAction;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.main.DAO.MemberDAOImp;
import kr.co.lms.main.VO.MemberVO;

@Controller
public class RegisterController {
	SqlSession sqlSession;
	BCryptPasswordEncoder BPd;
	
	
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	
	public BCryptPasswordEncoder getBPd() {
		return BPd;
	}
	@Autowired
	public void setBPd(BCryptPasswordEncoder bPd) {
		BPd = bPd;
	}
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register() {
		return"main/register/register";
	}
	@RequestMapping(value="/registerOk", method=RequestMethod.POST)
	public ModelAndView register(MemberVO vo) {
		ModelAndView mav = new ModelAndView();
		String Encryption = BPd.encode(vo.getStudent_pw());
		vo.setStudent_pw(Encryption);
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		
		int cnt = dao.memberRegister(vo);
		if(cnt>0) {
			mav.setViewName("redirect:/");
		}else {
			mav.setViewName("redirect:register");
		}
		return mav;
	}
	
	
	
	@RequestMapping(value="/idCheck" ,method=RequestMethod.GET)
	public ModelAndView idCheck(String userid) {//아이디 중복 검사
		ModelAndView mav = new ModelAndView();
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		
		int cnt = dao.idCheck(userid);
		mav.addObject("userid",userid);
		mav.addObject("cnt",cnt);
		mav.setViewName("main/register/idCheck");
		return mav; 
	}
	
	
	@RequestMapping("/emailSend")
	public String emailCode(HttpServletRequest req) {
		String email = req.getParameter("useremail");
		String sesId = req.getSession().getId();
		Properties p = new Properties();
		p.put("mail.smtp.host", "smtp.naver.com");
		p.put("mail.smtp.port","465");
		p.put("defaultEncoding","UTF-8");
		p.put("mail.smtp.auth","true");
		try {
			Session ses = Session.getDefaultInstance(p, new Authenticator() {
			String un = "insunok0715@naver.com";
				String pw = "wjd1234!";
				
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(un, pw);
				}
			});
			
			ses.setDebug(false);
			MimeMessage mM = new MimeMessage(ses);
			mM.setFrom(new InternetAddress("insunok0715@naver.com"));
			InternetAddress[] toAddr = new InternetAddress[1];
			toAddr[0] =new InternetAddress(email);
			mM.setRecipients(Message.RecipientType.TO, toAddr);
			mM.setSubject("EduCamp 회원가입에 필요한 인증코드 메일 입니다. "); 
			
			String content = "EduCamp 회원가입에 필요한 인증코드 메일 입니다.\n";
				   content+="인증코드:"+sesId;
			mM.setText(content);
			
			
			
			Transport.send(mM);
			req.setAttribute("code","ok");
			System.out.println("인증코드 전송 완료  -->"+email);
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("이메일 인증 코드 보내기 오류 -->"+e.getMessage());
		}
		return "main/register/emailCheck";
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
