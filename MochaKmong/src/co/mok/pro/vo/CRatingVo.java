package co.mok.pro.vo;

public class CRatingVo {
	private int ratingCode;
	private int registerCode; //c_register 외래키
	private String user_id; //멤버 외래키
	private int rating_star; //(숫자:0~5로 별 갯수)
	private String rating_content; //짧은 리뷰(500자)

	public CRatingVo() {
	// TODO Auto-generated constructor stub
}

	public int getRatingCode() {
		return ratingCode;
	}

	public void setRatingCode(int ratingCode) {
		this.ratingCode = ratingCode;
	}

	public int getRegisterCode() {
		return registerCode;
	}

	public void setRegisterCode(int registerCode) {
		this.registerCode = registerCode;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getRating_star() {
		return rating_star;
	}

	public void setRating_star(int rating_star) {
		this.rating_star = rating_star;
	}

	public String getRating_content() {
		return rating_content;
	}

	public void setRating_content(String rating_content) {
		this.rating_content = rating_content;
	}
	
	
}
