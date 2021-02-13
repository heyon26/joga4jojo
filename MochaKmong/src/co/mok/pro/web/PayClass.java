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
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id");
		
		int cCode = Integer.parseInt(request.getParameter("cCode"));
		String cName=request.getParameter("cName");//클래스명
		String sTime = request.getParameter("sTime");//신청하는 클래스 날짜
		int tPrice = Integer.parseInt(request.getParameter("tPrice"));//결제할 가격
		int rNumber =Integer.parseInt(request.getParameter("rNumber"));//신청인원
		
		CTimeVo tvo = new CTimeVo();
		tvo.setRegisterNumber(Integer.parseInt(request.getParameter("rNumber")));
		tvo.setClassCode(Integer.parseInt(request.getParameter("cCode")));
		tvo.setStartTime(request.getParameter("sTime"));
		
		
		CTimeDao tdao=new CTimeDao();
		tdao.registerClass(id,sTime,cCode,rNumber); //register 테이블에 등록된 클래스 추가
		
		request.setAttribute("sTime", sTime);
		request.setAttribute("cName", cName);
		request.setAttribute("id", id);
		request.setAttribute("tPrice", tPrice);
		
		return "class/payClass";
	}

}
