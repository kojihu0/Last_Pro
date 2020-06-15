package kr.co.lms;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContactController {
	@RequestMapping("/contact")
	public ModelAndView contact() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/contact");
		return mav;
	}
}
