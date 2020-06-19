package kr.co.lms.register;


import java.nio.charset.CodingErrorAction;

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
	public String register() {//유저 회원가입 
		return"main/register/register";
	}
	@RequestMapping(value="/registerOk", method=RequestMethod.POST)
	public ModelAndView register(MemberVO vo) {//유저 회원가입
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
	
	@RequestMapping("/subjectRegister")
	public String subjectRegister() {
		return "admin/subjectRegister";
	}
	@RequestMapping("/cancelRegister")
	public String cancelRegister() {
		return "admin/cancelRegister";
	}
}
