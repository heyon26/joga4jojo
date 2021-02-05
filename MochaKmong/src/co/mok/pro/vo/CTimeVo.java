package co.mok.pro.vo;

import oracle.sql.DATE;

public class CTimeVo {
	private int timeCode;
	private DATE startDate;
	private DATE endDate;
	
	public CTimeVo() {
		// TODO Auto-generated constructor stub
	}

	public int getTimeCode() {
		return timeCode;
	}

	public void setTimeCode(int timeCode) {
		this.timeCode = timeCode;
	}

	public DATE getStartDate() {
		return startDate;
	}

	public void setStartDate(DATE startDate) {
		this.startDate = startDate;
	}

	public DATE getEndDate() {
		return endDate;
	}

	public void setEndDate(DATE endDate) {
		this.endDate = endDate;
	}
	
	
}
