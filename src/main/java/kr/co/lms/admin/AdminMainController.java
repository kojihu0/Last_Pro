package kr.co.lms.admin;


import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.lms.admin.DAO.AdminRegiInterface;
import kr.co.lms.admin.VO.AdminCalendarVO;

@Controller
public class AdminMainController {
	//-------------------------------------------------------------
		SqlSession sqlSession;
		
		public SqlSession getSqlSession() {
			return sqlSession;
		}
		@Autowired
		public void setSqlSession(SqlSession sqlSession) {
			this.sqlSession = sqlSession;
		}
		
	//-------------------------------------------------------------
		//어드민 메인 이동
		@RequestMapping(value="/admin/adminMain", method= {RequestMethod.GET, RequestMethod.POST}, produces = "application/text; charset=UTF-8")
		public ModelAndView adminMain(AdminCalendarVO vo, HttpServletRequest request) { 
			ModelAndView mav = new ModelAndView();

			mav.setViewName("/admin/adminMain");		
			return mav;  
		}
		//DB에서 일정 읽어오기;
		@RequestMapping(value="/calendar/base", method={RequestMethod.POST, RequestMethod.GET}, produces = "application/text; charset=UTF-8")  	 
		@ResponseBody
		public String base(AdminCalendarVO vo, HttpServletRequest request) {
			AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
			List<AdminCalendarVO> result_List = adminRegiInter.selectAllCalendar();
			String jsonStr = "[";
			for(int i = 0; i < result_List.size(); i++) {  
				//json형식으로 문자열 생성->javascript 필드에서 작업할 것.
				 jsonStr += "{" + "\"start\":"  	    +"\"" + result_List.get(i).getCalendar_start_date()  +"\"" + "," +
								   "\"end\":"   	    +"\"" + result_List.get(i).getCalendar_end_date()	+"\"" + "," + 
								   "\"title\":" 	    +"\"" + result_List.get(i).getCalendar_title() 		+"\"" + "," +
								   "\"color\":" 	    +"\"" + result_List.get(i).getCalendar_color() 	    +"\"" + "," +
								   "\"description\":"   +"\"" + result_List.get(i).getCalendar_content()    +"\"" + "," +
								   "\"id\":"			+"\"" + result_List.get(i).getCalendar_no()  		+"\""
						  + "}";  
				 
				 if(i < result_List.size()-1) {
					 jsonStr += ",";
				 } 
			}	  
			jsonStr += "]";
			System.out.println("vo에는 값이 들어가? 아니 여기는 오냐? : " + jsonStr);
			return jsonStr;  
		}		
		//addevent
		@RequestMapping(value="/calendar/newData", method= RequestMethod.POST, produces = "application/text; charset=UTF-8")  	 
		@ResponseBody
		public String ajaxString(AdminCalendarVO vo, HttpServletRequest request) {
  
			AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
			int result_Int = adminRegiInter.insertEvent(vo); 

			String json_Str = "{" + 
			"\"title\":\""  + vo.getCalendar_title()       + "\"" +
			",\"start\":\"" + vo.getCalendar_start_date()  + "\"" +
			",\"end\":\""   + vo.getCalendar_end_date()    + "\"" +
			",\"color\":\"" +vo.getCalendar_color()        + "\"}";
			
			return json_Str;
		}	
		//editEvent
		@RequestMapping(value="/calendar/editEvent",method= RequestMethod.POST, produces = "application/text; charset=UTF-8")  	 
		@ResponseBody
		public String ajaxEditEvent(AdminCalendarVO vo, HttpServletRequest request) {
			String json_Str = "";
			

			AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
			int result_Int = adminRegiInter.updateCalender(vo);
			
			return "수정완.";
		}
		//delEvent
		@RequestMapping(value="/calendar/delEvent",method= RequestMethod.POST, produces = "application/text; charset=UTF-8")  	 
		@ResponseBody
		public String ajaxDelEvent(AdminCalendarVO vo, HttpServletRequest request) {
			String json_Str = "";

			AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);
			int result_Int = adminRegiInter.deleteCalender(vo);
	
			return "삭제 완.";
		}  
		//dropEvent
		@RequestMapping(value="/calendar/dropUpdate")
		@ResponseBody
		public String ajaxDropUpdate(AdminCalendarVO vo, HttpServletRequest request) {	
			AdminRegiInterface adminRegiInter = sqlSession.getMapper(AdminRegiInterface.class);

			int result_Int = adminRegiInter.dropUpdateCalender(vo);

			return "드랍 수정 완";
		}
}//controller end


