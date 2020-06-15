package kr.co.lms.profile;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ProfileController {
	@RequestMapping(value="/courseOfStudy",method=RequestMethod.GET)
	public String courseOfStudy(){
		return "main/profile/courseOfStudy";
				
	}
	@RequestMapping(value="/completionCourse",method=RequestMethod.GET)
	public String completionCourse() {
		return "main/profile/completionCourse";
	}
	@RequestMapping(value="/inCompletionCourse",method=RequestMethod.GET)
	public String inCompletionCourse() {
		return "main/profile/inCompletionCourse";
	}
	@RequestMapping(value="/schedule", method=RequestMethod.GET)
	public String schedule() {
		return "main/profile/schedule";
	}
	@RequestMapping(value="/profile", method=RequestMethod.GET)
	public String profile() {
		return "main/profile/profile";
	}
	@RequestMapping(value="/wishList", method=RequestMethod.GET)
	public String wishList() {
		return "main/profile/wishList";
	}
}
