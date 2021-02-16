package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.UserDao;
import co.mok.pro.vo.UserVo;

public class UpdateName implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 프로필 이름 수정
		
		UserDao dao = new UserDao();
		UserVo vo = new UserVo();
		HttpSession session = request.getSession();
		String userId = session.getAttribute("user_id").toString();
		
		vo.setUserName(request.getParameter("userName"));
		vo.setUserId(userId);
		
		int n = dao.UpdateName(vo);
		String viewPage = null;
		if(n != 0) {
			viewPage = "member/myPage";
		}
		
		return viewPage;
	}

}
