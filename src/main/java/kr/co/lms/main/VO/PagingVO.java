package kr.co.lms.main.VO;

public class PagingVO {
	
	private int pageNum = 1;		//현재 페이지
	private int onePageRecord = 4;	//한 페이지에 들어가는 레코드의 수
	private int totalPage;			//총 페이지의 수
	private int totalRecord;		//총 레코드의 수
	private int startPage = 1;		//페이지 시작
	private int pageCount = 5;		//출력되는 페이지의 수
	private int lastPageRecord = onePageRecord; //마지막 페이지에 남아있는 레코드의 수
	private String search_text;
	private int course_no;
	private int category_no;
	
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
		if(totalRecord % onePageRecord == 0) { //마지막 페이지 레코드 수 구하기
			lastPageRecord = onePageRecord;
		}else { 
			lastPageRecord = totalRecord % onePageRecord;
		}
		System.out.println("총레코드수" + totalRecord);
		System.out.println("마지막레코드수" + lastPageRecord);
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
	public String getSearch_text() {
		return search_text;
	}
	public void setSearch_text(String search_text) {
		this.search_text = search_text;
	}
	public int getCourse_no() {
		return course_no;
	}
	public void setCourse_no(int course_no) {
		this.course_no = course_no;
	}
	public int getCategory_no() {
		return category_no;
	}
	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}
	
}
