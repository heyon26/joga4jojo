package co.mok.pro.classes;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;

public class ClassView implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		int option = 1; //카테고리 OR 지역
		String condition = "all"; //카테고리명 OR 지역코드
		
		ArrayList<ClassVo> list= new ArrayList<ClassVo>();
		ClassDao dao = new ClassDao();
		list=dao.selectClassList(option, condition);	
		request.setAttribute("condition", condition);
		request.setAttribute("list", list);
		
		return "class/viewSearchClass";
	}

}