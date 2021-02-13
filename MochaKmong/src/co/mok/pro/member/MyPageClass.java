package co.mok.pro.member;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.FavClassDao;
import co.mok.pro.vo.FavClassVo;

public class MyPageClass implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// Message 탭 호출
			
		FavClassDao dao = new FavClassDao();
		ArrayList<FavClassVo> list = new ArrayList<FavClassVo>();
		
		list = dao.selectFavClass();
		request.setAttribute("list", list);
		return "member/myPageClass";
		
	}

}
