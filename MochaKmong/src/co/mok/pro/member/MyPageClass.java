package co.mok.pro.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;

public class MyPageClass implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// Message 탭 호출
			
		ClassDao dao = new ClassDao();
		ClassVo vo = new ClassVo();
		ArrayList<ClassVo> list = new ArrayList<ClassVo>();
		
		list = dao.selectFavClass();
		System.out.println("선택된 클래스 정보" + list);
		
		vo.setClassCode(Integer.parseInt(request.getParameter("classCode")));
		int n = dao.confirmFavClass(vo);
		String viewPage = null;
		if(n != 0) {
			viewPage = "member/myPageClass";
			request.setAttribute("list", list);
		}
		
		return viewPage;
	}

}
