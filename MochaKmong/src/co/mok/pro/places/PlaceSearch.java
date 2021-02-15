package co.mok.pro.places;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.PlaceDao;
import co.mok.pro.vo.PlaceVo;

public class PlaceSearch implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//TODO 클래스list화면에서 radio버튼 값으로 검색
		String word = request.getParameter("word");
		String region = request.getParameter("region");
		
		PlaceDao dao = new PlaceDao();
		ArrayList<PlaceVo> list = new ArrayList<PlaceVo>();
		
		System.out.println(region);
		
		if(region==null || region.equals("all")) {
			list= dao.placeList();
		}

		else {
			list= dao.placeList2(region);
		}
		
		request.setAttribute("region", region);
		request.setAttribute("word", word);
		
		request.setAttribute("list", list);
		
		return "place/viewSearchPlace";
	}

}
