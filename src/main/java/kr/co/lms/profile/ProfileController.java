package kr.co.lms.profile;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import kr.co.lms.main.DAO.MemberDAOImp;
import kr.co.lms.main.DAO.MypageDAOImp;
import kr.co.lms.main.VO.CourseVO;
import kr.co.lms.main.VO.MemberVO;
import kr.co.lms.main.VO.MypageVO;


@Controller
public class ProfileController {
	SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@RequestMapping(value="/profile", method=RequestMethod.GET)
	public ModelAndView profile(HttpServletRequest req,MemberVO vo) {//맵핑
		ModelAndView mav = new ModelAndView();
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		HttpSession ses = req.getSession();
		vo.setStudent_no((Integer)ses.getAttribute("student_no"));
		MemberVO vo2 = dao.memberDataSelect(vo);
		mav.addObject("student_name_ko",vo2.getStudent_name_ko());
		mav.addObject("student_img",vo2.getStudent_img());
		mav.addObject("student_info",vo2.getStudent_info());
		mav.setViewName("main/profile/profile");
		return mav;
	}
	@RequestMapping(value="/courseOfStudy",method=RequestMethod.GET)
	public ModelAndView courseOfStudy(HttpServletRequest req, int no,MemberVO vo){//수강중인강좌
		ModelAndView mav = new ModelAndView();
		MypageDAOImp dao =sqlSession.getMapper(MypageDAOImp.class); 
		List<MypageVO> courseList =dao.courseRecord(no);
		
		MemberDAOImp memberDao = sqlSession.getMapper(MemberDAOImp.class);
		HttpSession ses = req.getSession();
		vo.setStudent_no((Integer)ses.getAttribute("student_no"));
		MemberVO vo2 = memberDao.memberDataSelect(vo);
		
		
		mav.addObject("student_name_ko",vo2.getStudent_name_ko());
		mav.addObject("student_info",vo2.getStudent_info());
		mav.addObject("student_img",vo2.getStudent_img());
		mav.addObject("courseList",courseList);
		mav.setViewName("main/profile/courseOfStudy");
		return mav;
				
	}
	@RequestMapping(value="/completionCourse",method=RequestMethod.GET)
	public ModelAndView completionCourse(HttpServletRequest req, int no,MemberVO vo) {//수료강좌
		ModelAndView mav = new ModelAndView();
		MypageDAOImp dao =sqlSession.getMapper(MypageDAOImp.class);
		List<MypageVO> completionCourse = dao.completionCourseRecord(no);
		MemberDAOImp memberDao = sqlSession.getMapper(MemberDAOImp.class);
		HttpSession ses = req.getSession();
		vo.setStudent_no((Integer)ses.getAttribute("student_no"));
		MemberVO vo2 = memberDao.memberDataSelect(vo);
		
		mav.addObject("student_img",vo2.getStudent_img());
		mav.addObject("student_name_ko",vo2.getStudent_name_ko());
		mav.addObject("student_info",vo2.getStudent_info());
		mav.addObject("completionCourse",completionCourse);
		mav.setViewName("main/profile/completionCourse");
		return mav;
	}
	@RequestMapping(value="/inCompletionCourse",method=RequestMethod.GET)
	public ModelAndView inCompletionCourse(HttpServletRequest req, int no,MemberVO vo) {//미수료강좌
		ModelAndView mav = new ModelAndView();
		MypageDAOImp dao =sqlSession.getMapper(MypageDAOImp.class);
		List<MypageVO> incompleteCourse = dao.inCompleteCourseRecord(no);
		
		MemberDAOImp memberDao = sqlSession.getMapper(MemberDAOImp.class);
		HttpSession ses = req.getSession();
		vo.setStudent_no((Integer)ses.getAttribute("student_no"));
		MemberVO vo2 = memberDao.memberDataSelect(vo);
		
		mav.addObject("student_img",vo2.getStudent_img());
		mav.addObject("student_name_ko",vo2.getStudent_name_ko());
		mav.addObject("student_info",vo2.getStudent_info());
		mav.addObject("incompleteCourse",incompleteCourse);
		mav.setViewName("main/profile/inCompletionCourse");
		return mav;
	}
	
	@RequestMapping(value="/schedule", method=RequestMethod.GET)
	public ModelAndView schedule(HttpServletRequest req,MemberVO vo) {//시간표
		ModelAndView mav = new ModelAndView();
		MemberDAOImp memberDao = sqlSession.getMapper(MemberDAOImp.class);
		HttpSession ses = req.getSession();
		vo.setStudent_no((Integer)ses.getAttribute("student_no"));
		MemberVO vo2 = memberDao.memberDataSelect(vo);
		
		mav.addObject("student_img",vo2.getStudent_img());
		mav.addObject("student_name_ko",vo2.getStudent_name_ko());
		mav.addObject("student_info",vo2.getStudent_info());
		mav.setViewName("main/profile/schedule");
		return mav;
	}
	
	@RequestMapping(value="/schedule/getTimeTable")
	@ResponseBody
	public String getTimeTable(HttpServletRequest req) {
		HttpSession sess = req.getSession();
		int student_no = (Integer)sess.getAttribute("student_no");
		
		MypageDAOImp dao = sqlSession.getMapper(MypageDAOImp.class);
		List<CourseVO> list = dao.selectTimeTable(student_no);
		
		JsonArray jsonArr = new JsonArray();
		Gson gson = new Gson();
		String jsonVal = "";
		
		for(int i=0; i<list.size(); i++) {
			CourseVO vo = list.get(i);
			JsonObject jsonObj = new JsonObject();
			
			jsonObj.addProperty("", vo.getCourse_name());
			jsonObj.addProperty("", vo.getCourse_start_date());
			jsonObj.addProperty("", vo.getCourse_end_date());
			jsonArr.add(jsonObj);
		}
		
		jsonVal=gson.toJson(jsonArr);
		
		return jsonVal;
	}
	
	@RequestMapping(value="/profileUpdate", method=RequestMethod.POST)
	@ResponseBody
	public String profileUpdate(HttpServletRequest req, MemberVO vo) {//내정보 변경 
		String ok = "";
		
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		HttpSession ses = req.getSession();
		
		vo.setStudent_no((Integer)ses.getAttribute("student_no"));
		int cnt = dao.memberDataUpdate(vo);
		if(cnt<0) {
			System.out.println("내정보 수정 실패!!!");
		}else {
			ok="ok";			
		}
		return ok;
		
	}

	@RequestMapping(value="/profileImgUpdate", method=RequestMethod.POST) 
	public ModelAndView uploadOk1(@RequestParam("student_img") MultipartFile filename1,HttpServletRequest req) {
		String path = req.getSession().getServletContext().getRealPath("/img");
		System.out.println("path="+path);
		//파일업로드
		String paramName= filename1.getName();//매개변수
		String fName1 = filename1.getOriginalFilename();//원래 파일명
		System.out.println(paramName+"="+fName1);
		
		try {
			if(fName1!=null) {
			//파일업로드 
			filename1.transferTo(new File(path,fName1));//파일업로드
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		MemberVO vo = new MemberVO();
		vo.setStudent_img(fName1);
		ModelAndView mav = new ModelAndView();
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		HttpSession s = req.getSession();
		vo.setStudent_no((Integer)s.getAttribute("student_no"));
		int result = dao.memberImgDataSelect(vo);
		
		if(result>0) {
			mav.setViewName("redirect:profile");
		}else {//레코드 추가 실패시 파일 지우기
			if(fName1!=null) {
				deleteFile(path,fName1);
		}
			
		mav.setViewName("main/profile/profile");
		
		}
		return mav;
	}
	  
	  
  	public void deleteFile(String p, String f) {
		File fn = new File(p,f);
		fn.delete();
	}
  	
  	
	@RequestMapping(value="/profilePasswordUpdate",method=RequestMethod.POST)
	@ResponseBody
	public String profilePasswordUpdate(HttpServletRequest req, MemberVO vo,String student_pw) {//패스워드 수정 
		String ok = "";
		vo.setStudent_pw(passwordEncoder.encode(student_pw));
		MemberDAOImp dao = sqlSession.getMapper(MemberDAOImp.class);
		HttpSession ses = req.getSession();
		vo.setStudent_id((String)ses.getAttribute("student_id"));
		int cnt = dao.memberPasswordDataSelect(vo);
		if(cnt>0) {
			ok="ok";
		}else {
			ok="no";
			System.out.println("패스워드 변경 실패!!");		
		}
		return ok;
	}
	@RequestMapping(value="/wishList", method=RequestMethod.GET)
	public ModelAndView wishList(MemberVO vo ,HttpServletRequest req) {//찜목록
		ModelAndView mav = new ModelAndView();
		MemberDAOImp memberDao = sqlSession.getMapper(MemberDAOImp.class);
		HttpSession ses = req.getSession();
		vo.setStudent_no((Integer)ses.getAttribute("student_no"));
		MemberVO vo2 = memberDao.memberDataSelect(vo);
		
		mav.addObject("student_img",vo2.getStudent_img());
		mav.addObject("student_name_ko",vo2.getStudent_name_ko());
		mav.addObject("student_info",vo2.getStudent_info());
		mav.setViewName("main/profile/wishList");
		return mav;
	}
	
}
