package kr.co.lms.admin.VO;

public class AdminStudentPagingVO {
   private int 		pageNum		  = 1;
   private int 		onePageRecord = 10;
   private int 		totalRecord;
   private int 		totalPage;
   private int 		startPage	    = 1;
   private int 		onePageCount    = 5;
   private int 		lastPageRecords = 10;
   
   private String 	searchKey;
   
   private int  	searchKey_01;
   private String 	searchKey_02;
   private int 	    searchKey_03;
   
   private String 	searchWord; 

   	private String startDate;
	private String endDate;
	private String startDate2;
	private String endDate2;
   	
	private int course_no;
   

   public int getSearchKey_01() {
	return searchKey_01;
}
public void setSearchKey_01(int searchKey_01) {
	this.searchKey_01 = searchKey_01; 
}
public String getSearchKey_02() {
	return searchKey_02;
}
public void setSearchKey_02(String searchKey_02) {
	this.searchKey_02 = searchKey_02;
}
public int getSearchKey_03() {
	return searchKey_03;
}
public void setSearchKey_03(int searchKey_03) {
	this.searchKey_03 = searchKey_03; 
}
public int getPageNum() {
      return pageNum;
   }
   public void setPageNum(int pageNum) {
      this.pageNum = pageNum;
      startPage = ((pageNum-1)/onePageCount)*onePageCount+1;
   }
   public int getOnePageRecord() {
      return onePageRecord;
   }
   public void setOnePageRecord(int onePageRecord) {
      this.onePageRecord = onePageRecord;
   }
   public int getTotalRecord() {
      return totalRecord;
   }
   public void setTotalRecord(int totalRecord) {
      this.totalRecord = totalRecord;
      
      totalPage = (int)Math.ceil((double)totalRecord/onePageRecord);
      if(totalRecord % onePageRecord == 0) {
         lastPageRecords = onePageRecord;
      }else {
         lastPageRecords = totalRecord%onePageRecord;
      }
   }
   public int getTotalPage() {
      return totalPage;
   }
   public void setTotalPage(int totalPage) {
      this.totalPage = totalPage;
   }
   public int getStartPage() {
      return startPage;
   }
   public void setStartPage(int startPage) {
      this.startPage = startPage;
   }
   public int getOnePageCount() {
      return onePageCount;
   }
   public void setOnePageCount(int onePageCount) {
      this.onePageCount = onePageCount;
   }
   public int getLastPageRecords() {
      return lastPageRecords;
   }
   public void setLastPageRecords(int lastPageRecords) {
      this.lastPageRecords = lastPageRecords;
   }
   public String getSearchKey() {
      return searchKey;
   }
   public void setSearchKey(String searchKey) {
      this.searchKey = searchKey;
   }
   public String getSearchWord() {
      return searchWord;
   }
   public void setSearchWord(String searchWord) {
      this.searchWord = searchWord;
   }

   	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getStartDate2() {
		return startDate2;
	}
	public void setStartDate2(String startDate2) {
		this.startDate2 = startDate2;
	}
	public String getEndDate2() {
		return endDate2;
	}
	public void setEndDate2(String endDate2) {
		this.endDate2 = endDate2;
	}

	public int getCourse_no() {
		return course_no;
	}
	public void setCourse_no(int course_no) {
		this.course_no = course_no;
	}
   
}