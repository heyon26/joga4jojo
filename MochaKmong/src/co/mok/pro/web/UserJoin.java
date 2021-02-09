package co.mok.pro.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.UserDao;
import co.mok.pro.vo.UserVo;

public class UserJoin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		UserDao dao = new UserDao();
		UserVo vo = new UserVo();
		
		vo.setUserId(request.getParameter("userId"));
		vo.setUserPw(request.getParameter("userPw"));
		vo.setUserName(request.getParameter("userName"));
		vo.setUserTel(request.getParameter("userTel"));
		vo.setUserEmail(request.getParameter("userEmail"));
		vo.setUserZipcode(request.getParameter("userZipcode"));
		vo.setUserAddress(request.getParameter("userAddress"));
		
		int n = dao.UserInsert(vo);
		String viewPage = null;
		request.setAttribute("vo", vo);
		
		if(n != 0) {
			viewPage = "member/loginForm";
		} else {
			viewPage = "member/userJoinFail";
		}
		
		return viewPage;
	}

}
