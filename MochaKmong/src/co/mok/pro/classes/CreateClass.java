package co.mok.pro.classes;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.CTimeVo;
import co.mok.pro.vo.ClassVo;

public class CreateClass implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ClassDao dao = new ClassDao();
		ClassVo vo = new ClassVo();
		ArrayList<CTimeVo> list = new ArrayList<CTimeVo>();
		CTimeVo tvo= new CTimeVo();
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
		vo.setClassName(request.getParameter("className"));
		vo.setCateGoryA(request.getParameter("cateGoryA"));
		vo.setClassIntroduce(request.getParameter("classIntroduce"));
		//vo.setCurriculum(curriculum);
		vo.setClassContent(request.getParameter("summernote"));
		vo.setClassAddress(request.getParameter("address")+request.getParameter("detailAddress"));
		vo.setClassPrice(Integer.parseInt(request.getParameter("classPrice")));
		vo.setClassTel(request.getParameter("tel"));
//		vo.setClassEmail(request.getParameter("email"));
//		vo.setClassZipcode(request.getParameter("zipcode"));
		System.out.println(vo.getAreaCode()+vo.getClassContent());
		
		vo = dao.insertClass(vo);
		System.out.println(vo.getClassCode());
		
		String[] array = request.getParameterValues("classDates");
		for (int i = 0; i < array.length; i++) {
			tvo = new CTimeVo();
			tvo.setStartTime(array[i]);
			tvo.setClassCode(vo.getClassCode());
			tvo.setFixedNumber(Integer.parseInt(request.getParameter("fixedNumbers")));
			list.add(tvo);


		System.out.println(array[i]);
		}
			
		int classT = dao.classTime(list);
		
		return "main.do";
	}

}
