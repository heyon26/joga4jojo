package co.mok.pro.places;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.CTimeDao;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.dao.PlaceDao;
import co.mok.pro.vo.CTimeVo;
import co.mok.pro.vo.ClassVo;
import co.mok.pro.vo.PlaceVo;

public class PlaceViewForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		PlaceVo vo = new PlaceVo();

		
		PlaceDao dao = new PlaceDao();

		
		vo.setPlaceCode(Integer.parseInt(request.getParameter("placeCode")));
	
		vo = dao.placeSelect(vo);

		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id");
		
		request.setAttribute("id", id); //신청하기 버튼 클릭시 로그인 여부 확인용 
		
		request.setAttribute("vo", vo); //클래스 상세보기 정보
		
		return "place/placeViewForm";
	}

}