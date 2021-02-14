package co.mok.pro.places;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.PlaceDao;
import co.mok.pro.vo.PlaceVo;

public class PlaceView implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		ArrayList<PlaceVo> list= new ArrayList<PlaceVo>();
		PlaceDao dao = new PlaceDao();
		list=dao.PlaceList();
		
		request.setAttribute("list", list);
		
		return "class/viewSearchClass";
	}

}