package co.mok.pro.member;

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
		
		vo.setClassCode(Integer.parseInt(request.getParameter("classCode")));
		vo = dao.selectFavClass(vo);
		request.setAttribute("vo", vo);
		
		
		
		return "member/myPageClass";
	}

}
