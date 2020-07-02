package kr.co.lms.admin.VO;

public class RegisterVO {
	private int payment_no;//결제번호
	private String payment_state;//구분 신규 재등록
	private String payment_name;//회원명
	private String payment_division;
	private String course_name;//강좌명
	private String payment_method;//결제방법
	private String payment_card_name;//카드명
	private int payment_account_num;//승인번호
	private String payment_date;//납부일자
	private String employee_name;//담당자
	private String payment_memo;//비고
	
	
	public int getPayment_no() {
		return payment_no;
	}
	public void setPayment_no(int payment_no) {
		this.payment_no = payment_no;
	}
	public String getPayment_state() {
		return payment_state;
	}
	public void setPayment_state(String payment_state) {
		this.payment_state = payment_state;
	}
	public String getPayment_name() {
		return payment_name;
	}
	public void setPayment_name(String payment_name) {
		this.payment_name = payment_name;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}
	public String getPayment_card_name() {
		return payment_card_name;
	}
	public void setPayment_card_name(String payment_card_name) {
		this.payment_card_name = payment_card_name;
	}
	public int getPayment_account_num() {
		return payment_account_num;
	}
	public void setPayment_account_num(int payment_account_num) {
		this.payment_account_num = payment_account_num;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	public String getPayment_memo() {
		return payment_memo;
	}
	public void setPayment_memo(String payment_memo) {
		this.payment_memo = payment_memo;
	}
	public String getPayment_division() {
		return payment_division;
	}
	public void setPayment_division(String payment_division) {
		this.payment_division = payment_division;
	}
	
	
	
}
