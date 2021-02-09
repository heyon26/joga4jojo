package co.mok.pro.vo;

import oracle.sql.DATE;

public class CTimeVo {
	private int timeCode;
	private String startTime; //시간
	private int classCode; //클래스코드
	private int fixedNumber; //정원
	
	public CTimeVo() {
		// TODO Auto-generated constructor stub
	}

	public int getTimeCode() {
		return timeCode;
	}

	public void setTimeCode(int timeCode) {
		this.timeCode = timeCode;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public int getClassCode() {
		return classCode;
	}

	public void setClassCode(int classCode) {
		this.classCode = classCode;
	}

	public int getFixedNumber() {
		return fixedNumber;
	}

	public void setFixedNumber(int fixedNumber) {
		this.fixedNumber = fixedNumber;
	}
}
