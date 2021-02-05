package co.mok.pro.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.UserDao;

public class UserIdCheck implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response) {
		UserDao dao = new UserDao();
		String id = request.getParameter("user_id");
		boolean bool = dao.isidCheck(id);
		String message = null;
		if(bool) {
			message = id + " 은(는) 사용할 수 있는 아이디입니다.";
		}else {
			message = id + " 은(는) 사용할 수 없는 아이디입니다.";
		}
		request.setAttribute("msg", message); 
		request.setAttribute("check", bool);
		
		return "/member/idCheck"; //결과를 받을 수 있는 페이지
	}

}
