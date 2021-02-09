package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;

public class MyPage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
//		HttpSession session = request.getSession();
//		String id = (String)session.getAttribute("user_id");
//		System.out.println(id);
//		
//		UserDao dao = new UserDao();
//		UserVo vo = new UserVo();
//		
//		vo = dao.getUserInfo(id);
//		System.out.println(vo);
//		request.setAttribute("vo", vo);
		
		return "member/myPage";
	}

}
