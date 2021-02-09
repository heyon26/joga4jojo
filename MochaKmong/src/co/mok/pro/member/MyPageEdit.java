package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;

public class MyPageEdit implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// Edit 페이지 호출
		return "member/myPageEdit";
	}

}
