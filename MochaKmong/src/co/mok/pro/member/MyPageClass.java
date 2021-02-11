package co.mok.pro.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;

public class MyPageClass implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// Message 탭 호출
			
		ClassDao dao = new ClassDao();
		ArrayList<ClassVo> list = new ArrayList<ClassVo>();
		
		String classCode[] = request.getParameterValues("classCode");
		
		System.out.println("선택된 클래스 번호: " + classCode);
		
		list = dao.selectFavClass();
		System.out.println("선택된 클래스 정보" + list);
		request.setAttribute("list", list);
		request.setAttribute("classCode", classCode);
		
		return "member/myPageClass";
	}

}
