package kr.co.lms.main.DAO;

import java.util.List;

import kr.co.lms.main.VO.NewsVO;

public interface NewsDAOImp {
	//공지사항 게시판 리스트 가져오기
	public List<NewsVO> newsAllSelectRecord(NewsVO vo);
	//공지사항 폼 가져오기
	public NewsVO newsSelectRecord(int no);
	//이벤트 게시판 리스트 가져오기 
	public List<NewsVO> eventsAllSelectRecord(NewsVO vo);
	//이벤트 폼 가져오기 
	public NewsVO eventsSelectRecord(int no);
	//페이징 공지사항테이블에 있는 게시물 갯수 세워오기 
	public int getTotalRecord();

}
