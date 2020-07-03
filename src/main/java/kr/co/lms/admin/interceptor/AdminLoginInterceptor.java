package kr.co.lms.admin.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.lang.Nullable;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminLoginInterceptor extends HandlerInterceptorAdapter {

	//컨트롤러가 호출되기 전에 호출된다.
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession sess = request.getSession();
		String sessId = (String)sess.getAttribute("admin_id");
		
		if(sessId == null || sessId.equals("")) {
	 
			response.sendRedirect(request.getContextPath() + "/admin");
			return false;
		} 
		return true;
	}
	//컨트롤러가 실행 후 뷰 페이지로 이동하기 전에 호출된다.
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable ModelAndView modelAndView) throws Exception {
	}

	//컨트롤러가 실행 후 호출된다.
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable Exception ex) throws Exception {
	}

	
}
