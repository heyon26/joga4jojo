package co.mok.pro.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;

public class MyPageClassExpert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 강사 탭에서 등록한 클래스 페이지 호출
		
		
		
		return "member/myPageClassExpert";
	}

}
