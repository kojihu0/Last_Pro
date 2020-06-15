package kr.co.lms.news;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewsController {
	@RequestMapping(value="/news", method=RequestMethod.GET)
	public String news() {
		return"main/news/news";
	}
	@RequestMapping(value="/noticeForm", method=RequestMethod.GET)
	public String noticeForm(){
		return "main/news/noticeForm";
	}
	
}