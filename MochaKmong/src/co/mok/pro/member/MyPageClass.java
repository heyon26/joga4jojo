package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;

public class MyPageClass implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// Message 탭 호출
		return "member/myPageClass";
	}

}
