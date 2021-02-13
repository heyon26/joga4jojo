package co.mok.pro.vo;

public class FavClassVo { // 찜한 클래스
	
	private int classCode; //클래스코트-시퀀스
	private String userId; //클래스 등록 유저아이디(전문가)
	private String className; //클래스 이름
	private String cateGoryA; //클래스 카테고리 
	
	public FavClassVo() {
		// TODO Auto-generated constructor stub
	}

	public int getClassCode() {
		return classCode;
	}

	public void setClassCode(int classCode) {
		this.classCode = classCode;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getCateGoryA() {
		return cateGoryA;
	}

	public void setCateGoryA(String cateGoryA) {
		this.cateGoryA = cateGoryA;
	}
	
	
	
	

}
