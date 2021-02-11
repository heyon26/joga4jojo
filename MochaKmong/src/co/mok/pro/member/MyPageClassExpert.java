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
		// 등록한 클래스 페이지 호출
		
		/*
		 * ClassDao dao = new ClassDao(); ClassVo vo = new ClassVo(); ArrayList<ClassVo>
		 * list = new ArrayList<ClassVo>();
		 * 
		 * int classCode = Integer.parseInt(request.getParameter("classCode")); list =
		 * dao.selectFavClass(classCode); request.setAttribute("list", list);
		 */
		
		return "member/myPageClassExpert";
	}

}
