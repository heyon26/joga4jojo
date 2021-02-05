package co.mok.pro.vo;

import java.sql.Date;

public class BoardVo {
	private int boardCode; // 1.보드코드-pk
	private String userId; // 2.id-fk(user)
	private String bBoard; // 3.대분류(공지/문의)
	private String bName;  // 4.제목
	private String bContent;  // 5.내용
	private String bCategoryA;  // 6.카테고리
	private String bCategoryB;  // 7.카테고리2
	private Date bDate; // 8.작성일자
	public int getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(int boardCode) {
		this.boardCode = boardCode;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getbBoard() {
		return bBoard;
	}
	public void setbBoard(String bBoard) {
		this.bBoard = bBoard;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public String getbCategoryA() {
		return bCategoryA;
	}
	public void setbCategoryA(String bCategoryA) {
		this.bCategoryA = bCategoryA;
	}
	public String getbCategoryB() {
		return bCategoryB;
	}
	public void setbCategoryB(String bCategoryB) {
		this.bCategoryB = bCategoryB;
	}
	public Date getbDate() {
		return bDate;
	}
	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}
	
	
	
}
