package kr.co.lms.main.DAO;

import java.util.List;

import kr.co.lms.main.VO.LeadLagVO;
import kr.co.lms.main.VO.NewsVO;
import kr.co.lms.main.VO.PagingVO;

public interface NewsDAOImp {
	//공지사항 게시판 리스트 가져오기
	public List<NewsVO> newsAllSelectRecord(PagingVO vo);
	//공지사항 폼 가져오기
	public NewsVO newsSelectRecord(int no);
	//이벤트 게시판 리스트 가져오기 
	public List<NewsVO> eventsAllSelectRecord(PagingVO vo);
	//이벤트 폼 가져오기 
	public NewsVO eventsSelectRecord(int no);
	//페이징 공지사항테이블에 있는 게시물 갯수 세워오기
	//이벤트페이징
	public int eventGetTotalRecord();
	//뉴스 페이징 
	public int newsGetTotalRecord();
	//이벤트디테일창 이전글 다음글
	public LeadLagVO eventRecordList(int no, PagingVO pVo);
	//뉴스 디테일창 이전글 다음글
	public LeadLagVO newsRecordList(int no, PagingVO pVo);

}
