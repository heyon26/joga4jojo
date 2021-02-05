package co.mok.pro.vo;

import java.sql.Date;

public class PaymentVo {
	private int payCode;
	private int registerCode; //클래스 등록코드(c_register)
	private String userId; //유저아이디
	private int money; //결제금액?
	private Date payDate; //결제일
	private String payMethod; //결제방식(현금, 카드 등)
	
	public PaymentVo() {
		// TODO Auto-generated constructor stub
	}

	public int getPayCode() {
		return payCode;
	}

	public void setPayCode(int payCode) {
		this.payCode = payCode;
	}

	public int getRegisterCode() {
		return registerCode;
	}

	public void setRegisterCode(int registerCode) {
		this.registerCode = registerCode;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}
	
}
