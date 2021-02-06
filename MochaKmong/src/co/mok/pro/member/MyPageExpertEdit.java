package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;

public class MyPageExpertEdit implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 강사 프로필 수정 페이지 호출
		return "member/myPageExpertEdit";
	}

}
