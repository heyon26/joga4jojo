package co.mok.pro.vo;

public class CRegisterVo {
	private int registerCode;
	private String userId; //m_user 외래키
	private int classCode; //class 외래키
	
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

	public int getClassCode() {
		return classCode;
	}

	public void setClassCode(int classCode) {
		this.classCode = classCode;
	}
	
	
}
