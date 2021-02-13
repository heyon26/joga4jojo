package co.mok.pro.vo;

public class CRegisterVo {
	private int registerCode;
	private String userId; //m_user 외래키
	private int timeCode; //c_time 외래키 - 클래스 여러번 등록할 수도 있기 때문에?
	private int registerNumber;
	

	public CRegisterVo() {
		// TODO Auto-generated constructor stub
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

	public int getTimeCode() {
		return timeCode;
	}

	public void setTimeCode(int timeCode) {
		this.timeCode = timeCode;
	}
	
	public int getRegisterNumber() {
		return registerNumber;
	}
	
	public void setRegisterNumber(int registerNumber) {
		this.registerNumber = registerNumber;
	}
	
}
