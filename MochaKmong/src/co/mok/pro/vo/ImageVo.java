package co.mok.pro.vo;

public class ImageVo {
	private int imageCode;
	private String userId; //업로드 유저아이디
	private String image; //이미지 주소
	
	public ImageVo() {
		// TODO Auto-generated constructor stub
	}

	public int getImageCode() {
		return imageCode;
	}

	public void setImageCode(int imageCode) {
		this.imageCode = imageCode;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
}
