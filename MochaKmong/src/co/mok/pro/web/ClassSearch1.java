package co.mok.pro.web;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;

public class ClassSearch1 implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//TODO 클래스list화면에서 직접 입력한 값으로 검색
		String word = request.getParameter("word");
		
		System.out.println(word);
		
		ClassDao dao = new ClassDao();
		ArrayList<ClassVo> list = new ArrayList<ClassVo>();
		
		list= dao.selectClassList(word);
		
		request.setAttribute("list", list);
		
		return "class/viewSearchClass";
	}

}
