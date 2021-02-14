package co.mok.pro.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.CTimeDao;
import co.mok.pro.vo.CTimeVo;

public class PayClass implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//TODO 결제페이지로 넘길 정보 담고 결제페이지 호출
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id");
		
		int cCode = Integer.parseInt(request.getParameter("cCode"));
		String cName=request.getParameter("cName");//클래스명
		String sTime = request.getParameter("sTime");//신청하는 클래스 날짜
		int tPrice = Integer.parseInt(request.getParameter("tPrice"));//결제할 가격
		int rNumber =Integer.parseInt(request.getParameter("rNumber"));//신청인원
				
		request.setAttribute("rNumber", rNumber);
		request.setAttribute("cCode", cCode);
		request.setAttribute("sTime", sTime);
		request.setAttribute("cName", cName);
		request.setAttribute("id", id);
		request.setAttribute("tPrice", tPrice);
		
		return "class/payView";
	}

}
