package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;

public class InsertImageForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 프로필 이미지 삽입 폼 호출
		return "member/insertImageForm";
	}

}
