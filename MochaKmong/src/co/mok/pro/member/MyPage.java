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
		
		// 클래스 정보 전달
		
//		ClassDao dao = new ClassDao();
//		ClassVo cvo = new ClassVo();
//		
//		HttpSession session = request.getSession();
//		cvo.setUserId((String)session.getAttribute("user_id"));
//		System.out.println("유저 아이디:" + cvo);
//
//		cvo = dao.selectUserClass(cvo);
//		System.out.println("클래스 정보 " + cvo);
//		request.setAttribute("cvo", cvo);
//		
//		return "member/myPage";
		
		ArrayList<ClassVo> list = new ArrayList<ClassVo>();
		ClassDao dao = new ClassDao();
		
		HttpSession session = request.getSession();
		String id = session.getAttribute("user_id").toString();
		System.out.println("아이디" + id);

		list = dao.selectUserClassList(id);
		
		request.setAttribute("list", list);

		return "member/myPage";
		
		
	}

}
