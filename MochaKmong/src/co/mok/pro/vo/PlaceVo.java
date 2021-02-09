package co.mok.pro.vo;

import java.sql.Clob;
import java.sql.Date;

public class PlaceVo {
	private int placeCode;
	private String userId;
	private int areaCode;
	private String placeName;
	private String placeAddress;
	private Clob placeContent;
	private Date placeDate;
	private String placeTel;
	
	
	public int getPlaceCode() {
		return placeCode;
	}
	public void setPlaceCode(int placeCode) {
		this.placeCode = placeCode;
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
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public String getPlaceAddress() {
		return placeAddress;
	}
	public void setPlaceAddress(String placeAddress) {
		this.placeAddress = placeAddress;
	}
	public Clob getPlaceContent() {
		return placeContent;
	}
	public void setPlaceContent(Clob placeContent) {
		this.placeContent = placeContent;
	}
	public Date getPlaceDate() {
		return placeDate;
	}
	public void setPlaceDate(Date placeDate) {
		this.placeDate = placeDate;
	}
	public String getPlaceTel() {
		return placeTel;
	}
	public void setPlaceTel(String placeTel) {
		this.placeTel = placeTel;
	}
	
	
	
		
}
