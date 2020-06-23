package kr.co.lms.main.DAO;

import java.util.List;

import kr.co.lms.main.VO.CourseReviewVO;
import kr.co.lms.main.VO.CourseVO;
import kr.co.lms.main.VO.PagingVO;

public interface CourseDAOImp {
	//강좌리스트
	public List<CourseVO> courseList(PagingVO pvo);
	//강좌선택
	public CourseVO selectCourse(int course_no);
	//강좌개수
	public int getTotalCoureses(String search_text);
	//구매번호 선택
	public int selectPaymentNo(int course_no, int student_no);
	//수강후기 리스트
	public List<CourseReviewVO> reviewList(PagingVO rpvo);
	//수강후기 개수
	public int getTotalReviews(int course_no);
	//수강후기 등록
	public int insertReview(CourseReviewVO vo);
	//수강후기 수정
	public int updateReview(CourseReviewVO vo);
	//수강후기 삭제
	public int deleteReview(int review_no);
	//위시리스트 추가
	public int insertWish();
	//위시리스트 삭제
	public int deleteWish();
	
}
