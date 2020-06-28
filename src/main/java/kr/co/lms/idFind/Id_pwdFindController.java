package kr.co.lms.idFind;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.lms.main.DAO.MemberDAOImp;
import kr.co.lms.main.VO.MemberVO;

@Controller
public class Id_pwdFindController {
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

	
	
	@RequestMapping(value="/idFind",method=RequestMethod.GET)
	public String idFind() {
		return"main/login/idFind";
	}
	
	@RequestMapping(value="/idFind",method=RequestMethod.POST)
	
	public String idFindEmail(HttpServletRequest req, MemberVO vo) {
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		String findId = dao.memberIdFind(vo);
		String body ="EduCamp 회원님께서 찾으시는 아이디 입니다.\n ID = "+findId;
		String subject ="EduCamp 회원님께서 찾으시는 아이디  입니다.";
		try {
			MimeMessage message = mailSender2.createMimeMessage();
				String email = req.getParameter("useremail");
				System.out.println(email);
				MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8"); 
				helper.setFrom("insunok0715@naver.com"); 
				helper.setTo(email); 
				helper.setSubject(subject); 
				helper.setText(body); 
				mailSender2.send(message);
				System.out.println("아이디 이메일 전송 성공");
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return"home";
	}
	
	@RequestMapping(value="/pwdFind",method=RequestMethod.POST)
	@ResponseBody
	public String pwdFindEmail(HttpServletRequest req, MemberVO vo) {
		
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		String findPwd = dao.memberPwFind(vo);
		String body ="EduCamp 회원님께서 찾으시는 비밀번호 입니다.\n PASSWORD = "+findPwd;
		String subject ="EduCamp 회원님께서 찾으시는 비밀번호 입니다.";
		try {
			MimeMessage message = mailSender2.createMimeMessage();
				String email = req.getParameter("useremail");
				System.out.println(email);
				MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8"); 
				helper.setFrom("insunok0715@naver.com"); 
				helper.setTo(email); 
				helper.setSubject(subject); 
				helper.setText(body); 
				mailSender2.send(message);
				System.out.println("비밀번호 이메일 전송 성공");
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return"home";
	}
}
