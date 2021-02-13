package co.mok.pro.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;

public class MyPage implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		ArrayList<ClassVo> list = new ArrayList<ClassVo>();
		ClassDao dao = new ClassDao();
		
		HttpSession session = request.getSession();
		String id = session.getAttribute("user_id").toString();
		System.out.println("아이디" + id);

		list = dao.selectUserClassList(id);
		request.setAttribute("list", list);
		
		request.setAttribute("list", list);

		return "member/myPage";
		
		
	}

}
