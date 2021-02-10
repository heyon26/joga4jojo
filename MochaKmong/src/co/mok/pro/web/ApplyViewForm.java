package co.mok.pro.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;

public class ApplyViewForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id"); //유저아이디 세션값으로 
		
		String classCode = request.getParameter("classCode"); //클래스코드
		String className = request.getParameter("className");
		int timeCode = Integer.parseInt(request.getParameter("timeCode")); //타임코드
		String startTime= request.getParameter("startTime"); //신청할 클래스 시간 
		int registerNumber = Integer.parseInt(request.getParameter("add2")); //신청인원
		int totalPrice = Integer.parseInt(request.getParameter("total")); //총 결제금액
		
		
		request.setAttribute("id", id);
		request.setAttribute("classCode", classCode);
		request.setAttribute("className", className);
		request.setAttribute("startTime", startTime);
		request.setAttribute("timeCode", timeCode);
		request.setAttribute("registerNumber", registerNumber);
		request.setAttribute("totalPrice", totalPrice);
		
		return "class/applyViewForm";
	}

}
