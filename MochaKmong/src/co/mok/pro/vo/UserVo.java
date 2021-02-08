package co.mok.pro.vo;

import java.sql.Date;

public class UserVo {
  private String userId;
  private String userPw;
  private String userName;
  private String userTel;
  private String userEmail;
  private String userZipcode;
  private String userAddress;
  private Date userJoindate;
  private String userAuth;
  
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getUserPw() {
	return userPw;
}
public void setUserPw(String userPw) {
	this.userPw = userPw;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getUserTel() {
	return userTel;
}
public void setUserTel(String userTel) {
	this.userTel = userTel;
}
public String getUserEmail() {
	return userEmail;
}
public void setUserEmail(String userEmail) {
	this.userEmail = userEmail;
}
public String getUserZipcode() {
	return userZipcode;
}
public void setUserZipcode(String userZipcode) {
	this.userZipcode = userZipcode;
}
public String getUserAddress() {
	return userAddress;
}
public void setUserAddress(String userAddress) {
	this.userAddress = userAddress;
}
public Date getUserJoindate() {
	return userJoindate;
}
public void setUserJoindate(Date userJoindate) {
	this.userJoindate = userJoindate;
}
public String getUserAuth() {
	return userAuth;
}
public void setUserAuth(String userAuth) {
	this.userAuth = userAuth;
}
  
  
  
}