package kr.co.lms.main.DAO;

import java.util.List;

import kr.co.lms.main.VO.NewsVO;
import kr.co.lms.main.VO.PagingVO;

public interface NewsDAOImp {
	//�������� �Խ��� ����Ʈ ��������
	public List<NewsVO> newsAllSelectRecord(PagingVO vo);
	//�������� �� ��������
	public NewsVO newsSelectRecord(int no);
	//�̺�Ʈ �Խ��� ����Ʈ �������� 
	public List<NewsVO> eventsAllSelectRecord(PagingVO vo);
	//�̺�Ʈ �� �������� 
	public NewsVO eventsSelectRecord(int no);
	//����¡ �����������̺��� �ִ� �Խù� ���� �������� 
	public int getTotalRecord();

}