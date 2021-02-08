package co.mok.pro.web;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;

public class ClassSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//TODO 메인화면 selectbox에서 선택 후 검색
		
		int option = Integer.parseInt(request.getParameter("select1")); //카테고리 OR 지역
		String condition = request.getParameter("select2"); //카테고리명 OR 지역코드
		
		System.out.println(option);
		System.out.println(condition);
		
		ArrayList<ClassVo> list= new ArrayList<ClassVo>();
		ClassDao dao = new ClassDao();
		list=dao.selectClassList(option, condition);	
		request.setAttribute("condition", condition);
		request.setAttribute("list", list);
		
		return "class/viewSearchClass";
	}

}
