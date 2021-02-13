package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;

public class InsertFavClass implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 클래스 찜하기
		
		ClassDao dao = new ClassDao();
		ClassVo vo = new ClassVo();

		vo.setCateGoryA(request.getParameter("categoryA"));
		vo.setClassName(request.getParameter("className"));
		int classCode = Integer.parseInt(request.getParameter("classCode"));
		
		request.setAttribute("vo", vo);
		
		int n = dao.insertFavClass(classCode);
		String viewPage = null;
		if(n != 0) {
			viewPage = "member/myPage";
		}
		
		return viewPage;
	}

}
