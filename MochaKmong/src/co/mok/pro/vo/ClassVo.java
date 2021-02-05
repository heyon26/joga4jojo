package co.mok.pro.vo;

import java.sql.Date;

public class ClassVo {
	
	private int classCode; //클래스코트-시퀀스
	private String userId; //클래스 등록 유저아이디(전문가)
	private int areaCode; //지역코드 -area외래키. area참조
	private String className; //클래스 이름
	private String cateGoryA; //클래스 카테고리 
	private String cateGoryB; //소카테고리로 만들었는데 필요없을것같아요
	private String classIntroduce; //짧은 클래스 소개
	private String curriculum; //짧은 커리큘럼 소개
	private String classContent; //클래스 소개(긴글)
	private String classAddress; //클래스 상세주소
	private int registerMember; //c_register 에 class_code로 셀렉트해서 갯수 받아오기
	private int classPrice; //클래스 가격
	private Date classDate; //클래스 등록일. default sysdate
	private int ratingCode; // 별점 받아오기용
	private String classTel; //클래스 주소. 불러올때는 m_user에서
	
	public ClassVo() {
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

	public int getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(int areaCode) {
		this.areaCode = areaCode;
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

	public String getCateGoryB() {
		return cateGoryB;
	}

	public void setCateGoryB(String cateGoryB) {
		this.cateGoryB = cateGoryB;
	}

	public String getClassIntroduce() {
		return classIntroduce;
	}

	public void setClassIntroduce(String classIntroduce) {
		this.classIntroduce = classIntroduce;
	}

	public String getCurriculum() {
		return curriculum;
	}

	public void setCurriculum(String curriculum) {
		this.curriculum = curriculum;
	}

	public String getClassContent() {
		return classContent;
	}

	public void setClassContent(String classContent) {
		this.classContent = classContent;
	}

	public String getClassAddress() {
		return classAddress;
	}

	public void setClassAddress(String classAddress) {
		this.classAddress = classAddress;
	}

	public int getRegisterMember() {
		return registerMember;
	}

	public void setRegisterMember(int registerMember) {
		this.registerMember = registerMember;
	}

	public int getClassPrice() {
		return classPrice;
	}

	public void setClassPrice(int classPrice) {
		this.classPrice = classPrice;
	}

	public Date getClassDate() {
		return classDate;
	}

	public void setClassDate(Date classDate) {
		this.classDate = classDate;
	}

	public int getRatingCode() {
		return ratingCode;
	}

	public void setRatingCode(int ratingCode) {
		this.ratingCode = ratingCode;
	}

	public String getClassTel() {
		return classTel;
	}

	public void setClassTel(String classTel) {
		this.classTel = classTel;
	}
	
	
	
	
	
	
	
	
	
	
}
