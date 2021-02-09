package co.mok.pro.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.UserDao;
import co.mok.pro.vo.UserVo;

public class Login implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		UserDao dao = new UserDao();
		UserVo vo = new UserVo();
		vo.setUserId(request.getParameter("userId"));
		vo.setUserPw(request.getParameter("userPw"));
		
		vo = dao.UserLogin(vo);
		System.out.println(vo);
		
		String viewPage = null;
		
		
		if(vo.getUserAuth() != null) {
			HttpSession session= request.getSession(); 
			session.setAttribute("user_id", vo.getUserId()); 
			session.setAttribute("user_auth", vo.getUserAuth()); 
			request.setAttribute("vo", vo);
			viewPage = "main.do";
		}else {
			viewPage = "member/loginFail";
		}
		return viewPage;
	}

}
