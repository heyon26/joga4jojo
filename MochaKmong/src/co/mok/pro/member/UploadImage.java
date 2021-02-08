package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ImageDAO;
import co.mok.pro.vo.ImageVO;

public class UploadImage implements Command {
	
	private static final String userImage_dir = "./assets/img/mypage";

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 프로필 이미지 업로드 실행
		
		
		return null;
	}

}
