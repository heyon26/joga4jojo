package co.mok.pro.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.UserDao;


public class FindPw implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		UserDao dao = new UserDao();
		String userId = request.getParameter("userId");
		String userName = request.getParameter("userName");
		String userEmail = request.getParameter("userEmail");
		String pw = dao.findPw(userId, userName, userEmail);

		String viewPage = null;

		if (pw != null) {
			request.setAttribute("pw", pw);
			viewPage = "member/findPwAfterForm";

		} else {
			viewPage = "member/findPwFail";
		}
		return viewPage;
	}

}
