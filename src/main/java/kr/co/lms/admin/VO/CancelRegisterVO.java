package kr.co.lms.admin.VO;

public class CancelRegisterVO {
	private int student_no;//회원번호
	private String employee_name;//담당자
	private int payment_state;//결제구분 0:결제 1:환불 및 취소
	private int payment_no;//결제번호
	private int payment_price;//결제금액
	private String payment_name;//회원명
	private String payment_date;//등록일
	private String payment_method;//결제방법
	private String payment_card_name;//카드명
	private String payment_memo;//비고
	private String payment_division;//신규, 재등록
	private String course_name;//강좌명
	private int course_price;//결제액
	private String course_start_date;//강좌 시작일
	private String course_end_date;//강좌 종강일
	private String course_time; //강좌 시간
	private String refund_method;//반환방법
	private String refund_reason;//반환사유
	private String refund_date;//반환일자
	private int refund_price;//반환금액
	private String refund_memo;//반환비고
	private int refund_no;//환불번호
	
	public int getStudent_no() {
		return student_no;
	}
	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}
	public int getPayment_state() {
		return payment_state;
	}
	public void setPayment_state(int payment_state) {
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
	public String getRefund_method() {
		return refund_method;
	}
	public void setRefund_method(String refund_method) {
		this.refund_method = refund_method;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public int getCourse_price() {
		return course_price;
	}
	public void setCourse_price(int course_price) {
		this.course_price = course_price;
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
	public String getRefund_reason() {
		return refund_reason;
	}
	public void setRefund_reason(String refund_reason) {
		this.refund_reason = refund_reason;
	}
	public String getRefund_date() {
		return refund_date;
	}
	public void setRefund_date(String refund_date) {
		this.refund_date = refund_date;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	public String getCourse_start_date() {
		return course_start_date;
	}
	public void setCourse_start_date(String course_start_date) {
		this.course_start_date = course_start_date;
	}
	public String getCourse_end_date() {
		return course_end_date;
	}
	public void setCourse_end_date(String course_end_date) {
		this.course_end_date = course_end_date;
	}
	public int getRefund_price() {
		return refund_price;
	}
	public void setRefund_price(int refund_price) {
		this.refund_price = refund_price;
	}
	public String getRefund_memo() {
		return refund_memo;
	}
	public void setRefund_memo(String refund_memo) {
		this.refund_memo = refund_memo;
	}
	public int getRefund_no() {
		return refund_no;
	}
	public void setRefund_no(int refund_no) {
		this.refund_no = refund_no;
	}
	public String getPayment_memo() {
		return payment_memo;
	}
	public void setPayment_memo(String payment_memo) {
		this.payment_memo = payment_memo;
	}
	public int getPayment_no() {
		return payment_no;
	}
	public void setPayment_no(int payment_no) {
		this.payment_no = payment_no;
	}
	public String getPayment_division() {
		return payment_division;
	}
	public void setPayment_division(String payment_division) {
		this.payment_division = payment_division;
	}
	public int getPayment_price() {
		return payment_price;
	}
	public void setPayment_price(int payment_price) {
		this.payment_price = payment_price;
	}
	public String getCourse_time() {
		return course_time;
	}
	public void setCourse_time(String course_time) {
		this.course_time = course_time;
	}
	
	
}
