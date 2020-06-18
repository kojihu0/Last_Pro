package kr.co.lms.main.VO;

public class PagingVO {
	private int pageNum = 1;		//���� ������
	private int onePageRecord = 4;	//�� �������� ���� ���ڵ��� ��
	private int totalPage;			//�� �������� ��
	private int totalRecord;		//�� ���ڵ��� ��
	private int startPage = 1;		//������ ����
	private int pageCount = 5;		//��µǴ� �������� ��
	private int lastPageRecord = onePageRecord; //������ �������� �����ִ� ���ڵ��� ��
	private String arrayKey;
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getOnePageRecord() {
		return onePageRecord;
	}
	public void setOnePageRecord(int onePageRecord) {
		this.onePageRecord = onePageRecord;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
		totalPage = (int)Math.ceil((double)totalRecord / onePageRecord);

		if(totalRecord % onePageRecord == 0) { //������ ������ ���ڵ� �� ���ϱ�
			lastPageRecord = onePageRecord;
		}else { 
			lastPageRecord = totalRecord % onePageRecord;
		}
//		System.out.println("�ѷ��ڵ��" + totalRecord);
//		System.out.println("1���������ڵ��" + onePageRecord);
//		System.out.println("���������ڵ��" + lastPageRecord);
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
		startPage = ((pageNum - 1) / pageCount ) * pageCount + 1;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getLastPageRecord() {
		return lastPageRecord;
	}
	public void setLastPageRecord(int lastPageRecord) {
		this.lastPageRecord = lastPageRecord;
	}
	public String getArrayKey() {
		return arrayKey;
	}
	public void setArrayKey(String arrayKey) {
		this.arrayKey = arrayKey;
	}
}