package kr.co.lms.login;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
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
	public ModelAndView login(MemberVO vo , HttpServletRequest req) {//로그인
		ModelAndView mav = new ModelAndView();
		MemberDAOImp dao = sqlsession.getMapper(MemberDAOImp.class);
		MemberVO vo2 = dao.memberLogin(vo);
		if(vo2!=null) {
			HttpSession s = req.getSession();
			s.setAttribute("username",vo2.getStudent_name_ko());
			s.setAttribute("student_id",vo2.getUserid());
			s.setAttribute("student_no",vo2.getStudent_no());
			mav.addObject("message","로그인에 성공 하셨습니다.");
			s.setAttribute("logStatus","Y");
			mav.setViewName("redirect:/");
		}else {
			mav.addObject("message","로그인에 실패하셨습니다 \n 다시 시도해 주세요");
			mav.setViewName("redirect:/");
		}
		
		return mav;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req) {
		req.getSession().invalidate();
		return"redirect:/";
	}
}
