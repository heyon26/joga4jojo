package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;

public class MyPageClassExpert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 등록한 클래스 페이지 호출
		return "member/myPageClassExpert";
	}

}
