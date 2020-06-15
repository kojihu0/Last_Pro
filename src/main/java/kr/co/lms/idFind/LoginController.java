package kr.co.lms.idFind;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@RequestMapping(value="/idFind",method=RequestMethod.GET)
	public String idFind() {
		return"main/login/idFind";
	}
}
