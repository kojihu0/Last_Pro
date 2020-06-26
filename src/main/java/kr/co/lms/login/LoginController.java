package kr.co.lms.login;



import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import kr.co.lms.main.DAO.MemberDAOImp;
import kr.co.lms.main.VO.MemberVO;
@Controller
public class LoginController {
	SqlSession sqlsession;
	
	
	
	
	


	public SqlSession getSqlsession() {
		return sqlsession;
	}
	
	@Autowired
	public void setSqlsession(SqlSession sqlsession) {
		this.sqlsession = sqlsession;
	}

	@RequestMapping(value="/loginOk",method=RequestMethod.POST)
	public ModelAndView login(MemberVO vo , HttpServletRequest req) {//�α���
		ModelAndView mav = new ModelAndView();
		MemberDAOImp dao = sqlsession.getMapper(MemberDAOImp.class);
		MemberVO vo2 = dao.memberLogin(vo);
		
		  if(vo2!=null) { 
			  HttpSession s = req.getSession();
			  s.setAttribute("username",vo2.getStudent_name_ko());
			  s.setAttribute("student_no",vo2.getStudent_no());
			  s.setAttribute("student_id",vo2.getStudent_id());
			  s.setAttribute("logStatus","Y"); mav.setViewName("redirect:/"); 
		  }else {
			  mav.setViewName("redirect:/"); }
		 
		return mav;
	}

	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req) {
		req.getSession().invalidate();
		return"redirect:/";
	}
}
