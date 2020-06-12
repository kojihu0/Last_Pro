package kr.co.lms.course;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CourseController {
	@RequestMapping("/course/courseList")
	public ModelAndView courseList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/course/courseList");
		return mav;
	}
	
	@RequestMapping("/course/courseDetail")
	public ModelAndView courseDetail() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/course/courseDetail");
		return mav;
	}
}
