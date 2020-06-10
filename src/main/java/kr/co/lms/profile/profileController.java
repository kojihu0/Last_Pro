package kr.co.lms.profile;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class profileController {
	@RequestMapping(value="/courseOfStudy",method=RequestMethod.GET)
	public String profile(){
		return "profile/courseOfStudy";
				
	}
}
