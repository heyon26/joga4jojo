package co.mok.pro.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;

public class ClassViewForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//TODO class_code값 받아서 클래스 상세보기form 으로 이동
		ClassVo vo = new ClassVo();
		ClassDao dao = new ClassDao();
		
		vo.setClassCode(Integer.parseInt(request.getParameter("classCode")));
		vo = dao.selectClass(vo);
		request.setAttribute("vo", vo);
		return "class/classViewForm";
	}

}
