package co.mok.pro.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.FavClassDao;
import co.mok.pro.vo.FavClassVo;

public class MyPageClassDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 찜한 클래스 취소(category_b값 '찜한 클래스' -> null로 변경)

		FavClassDao dao = new FavClassDao();
		FavClassVo vo = new FavClassVo();
		int classCode = Integer.parseInt(request.getParameter("classCode"));
		
		vo.setClassCode(classCode);
		int n = dao.deleteFavClass(vo);
		String viewPage = null;

		if (n != 0) {
			viewPage = "member/myPageClass";
		}
		return viewPage;
	}

}
