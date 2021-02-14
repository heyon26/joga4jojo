package co.mok.pro.places;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.PlaceDao;
import co.mok.pro.vo.CTimeVo;
import co.mok.pro.vo.PlaceVo;

public class CreatePlace implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		PlaceDao dao = new PlaceDao();
		PlaceVo vo = new PlaceVo();

		HttpSession session = request.getSession();
		vo.setUserId((String) session.getAttribute("user_id"));
		//vo.setUserId("hong");
		String area = request.getParameter("area");
		switch (area) { //지역코드
		case "서울": area = "1";break;
		case "부산": area = "2";break;
		case "대구": area = "3";break;
		case "인천": area = "4";break;
		case "대전": area = "5";break;
		case "광주": area = "6";break;
		case "울산": area = "7";break;
		case "세종특별자치시": area = "8";break;
		case "강원": area = "9";break;
		case "경기": area = "10";break;
		case "충남": area = "11";break;
		case "충북": area = "12";break;
		case "전북": area = "13";break;
		case "전남": area = "14";break;
		case "경북": area = "15";break;
		case "경남": area = "16";break;
		case "제주특별자치도": area = "17";break;
			
        default: area = "1";
        break;
		}

		vo.setAreaCode(Integer.parseInt(area));
		vo.setPlaceName(request.getParameter("placeName"));

		vo.setPlaceContent(request.getParameter("summernote"));
		vo.setPlaceAddress(request.getParameter("address")+request.getParameter("detailAddress"));
		vo.setPlaceTel(request.getParameter("tel"));
//		vo.setClassEmail(request.getParameter("email"));
//		vo.setClassZipcode(request.getParameter("zipcode"));

		
		vo = dao.PlaceInsert(vo);
		
		
		



		return "main.do";
	}


}
