package co.mok.pro.web;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;

public class ClassSearch2 implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		//TODO 클래스list화면에서 radio버튼 값으로 검색
		String region = request.getParameter("region");
		String category = request.getParameter("categorys");
		ClassDao dao = new ClassDao();
		ArrayList<ClassVo> list = new ArrayList<ClassVo>();
		
		System.out.println(region);
		System.out.println(category);
		
		if(region.equals("all")&&category!=null) {			
			list= dao.searchClassList1(region, category);
		}else if(region!=null && category.equals("all")) {
			list=dao.searchClassList2(region);
		}else {
			list= dao.searchClassList1(region, category);
		}
		
		request.setAttribute("region", region);
		request.setAttribute("category", category);
		
		request.setAttribute("list", list);
		
		return "class/viewSearchClass";
	}

}
