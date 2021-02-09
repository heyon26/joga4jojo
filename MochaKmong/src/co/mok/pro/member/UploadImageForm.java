package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;

public class UploadImageForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 프로필 이미지 업로드
		return "member/uploadImageForm";
	}

}
