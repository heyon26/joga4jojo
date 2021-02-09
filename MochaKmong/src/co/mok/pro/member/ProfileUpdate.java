package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.UserDao;
import co.mok.pro.vo.UserVo;

public class ProfileUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 프로필 업데이트 값 전달
		
		UserDao dao = new UserDao();
		UserVo vo = new UserVo();

		vo.setUserName(request.getParameter("userName"));
		vo.setUserTel(request.getParameter("userTel"));
		vo.setUserEmail(request.getParameter("userEmail"));
		vo.setUserAddress(request.getParameter("userAddress"));
		vo.setUserId(request.getParameter("userId"));
		System.out.println("유저vo" + vo);
		int n = dao.UpdateProfile(vo);
		String viewPage = null;
		
		if(n != 0) {
			viewPage = "member/myPage";
		}
		
		return viewPage;
	}

}
