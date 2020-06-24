package kr.co.lms.main.VO;

public class CourseReviewVO {
	private int review_no;
	private int student_no;
	private int payment_no;
	private String review_content;
	private String review_date;
	private int review_rank;
	
	private String student_id;
	private int course_no;
	private int review_cnt;
	private int totalRecord;
	private double percentage = Math.round((double)review_cnt/(double)totalRecord*100.0);

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public int getStudent_no() {
		return student_no;
	}

	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}

	public int getPayment_no() {
		return payment_no;
	}

	public void setPayment_no(int payment_no) {
		this.payment_no = payment_no;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public String getReview_date() {
		return review_date;
	}

	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}

	public int getReview_rank() {
		return review_rank;
	}

	public void setReview_rank(int review_rank) {
		this.review_rank = review_rank;
	}

	public String getStudent_id() {
		return student_id.substring(student_id.length()-1, student_id.length())+"****";
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public int getCourse_no() {
		return course_no;
	}

	public void setCourse_no(int course_no) {
		this.course_no = course_no;
	}

	public int getReview_cnt() {
		return review_cnt;
	}

	public void setReview_cnt(int review_cnt) {
		this.review_cnt = review_cnt;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public double getPercentage() {
		return percentage;
	}

	public void setPercentage(double percentage) {
		this.percentage = percentage;
	}
	
}
