package co.mok.pro.web;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.CTimeDao;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.CTimeVo;
import co.mok.pro.vo.ClassVo;

public class ClassViewForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//TODO class_code값 받아서 클래스 상세보기form 으로 이동
		ClassVo vo = new ClassVo();
		ArrayList<CTimeVo> list = new ArrayList<CTimeVo>();
		
		ClassDao dao = new ClassDao();
		CTimeDao cdao = new CTimeDao();
		
		vo.setClassCode(Integer.parseInt(request.getParameter("classCode")));
		int code = Integer.parseInt(request.getParameter("classCode"));
		
		vo = dao.selectClass(vo);
		list= cdao.applyOption(code);
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id");
		
		request.setAttribute("id", id); //신청하기 버튼 클릭시 로그인 여부 확인용 
		
		request.setAttribute("vo", vo); //클래스 상세보기 정보
		
		request.setAttribute("list", list); //클래스신청 가능 날짜와 클래스 신청 가능 인원수 설정용

		return "class/classViewForm";
	}

}
