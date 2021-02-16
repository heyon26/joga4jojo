package co.mok.pro.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.UserDao;
import co.mok.pro.vo.UserVo;

public class MyPageEdit implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// Edit 페이지 호출
		
		UserDao dao = new UserDao();
		UserVo vo = new UserVo();
		HttpSession session = request.getSession();
		
		String userId = session.getAttribute("user_id").toString();
		vo.setUserId(userId);
		
		vo = dao.UserSelect(vo);
		request.setAttribute("vo", vo);
		
		return "member/myPageEdit";
	}

}
