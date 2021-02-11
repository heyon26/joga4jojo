package co.mok.pro.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;

public class ExpertPage implements Command {

	@Override
<<<<<<< HEAD
	public String execute(HttpServletRequest request, HttpServletResponse response) {
=======
	public String exec(HttpServletRequest request, HttpServletResponse response) {
>>>>>>> refs/remotes/origin/changon
		// 강사 페이지 호출
		
		ArrayList<ClassVo> list = new ArrayList<ClassVo>();
		ClassDao dao = new ClassDao();
		
		HttpSession session = request.getSession();
		String id = session.getAttribute("user_id").toString();
		System.out.println("아이디" + id);
		list = dao.selectUserClassList(id);
		System.out.println("유저정보" + list);
		request.setAttribute("list", list);
		
		return "member/myPageExpert";
	}


}
