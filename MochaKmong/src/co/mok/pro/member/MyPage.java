package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.UserDao;
import co.mok.pro.vo.UserVo;

public class MyPage implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
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
