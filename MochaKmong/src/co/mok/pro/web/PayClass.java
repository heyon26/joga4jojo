package co.mok.pro.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.CTimeDao;
import co.mok.pro.vo.CRegisterVo;
import co.mok.pro.vo.CTimeVo;
import co.mok.pro.vo.PaymentVo;

public class PayClass implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		int cCode=Integer.parseInt(request.getParameter("cCode")); //클래스코드
		int tCode=Integer.parseInt(request.getParameter("tCode")); //클래스 타임코드
		String cName=request.getParameter("cName");//클래스명
		String sTime = request.getParameter("sTime");//신청하는 클래스 날짜
		String id = request.getParameter("id");//유저아이디
		int rNumber=Integer.parseInt(request.getParameter("rNumber"));//신청인원
		int tPrice = Integer.parseInt(request.getParameter("tPrice"));//결제할 가격
		
		CTimeVo tvo = new CTimeVo();
		tvo.setRegisterNumber(Integer.parseInt(request.getParameter("rNumber")));
		tvo.setClassCode(Integer.parseInt(request.getParameter("cCode")));
		tvo.setStartTime(request.getParameter("sTime"));
		
		
		CRegisterVo rvo = new CRegisterVo();
		rvo.setUserId(request.getParameter("id"));
		rvo.setTimeCode(Integer.parseInt(request.getParameter("tCode")));
		
		CTimeDao tdao=new CTimeDao();
		tdao.updateRgstNum(tvo);
		tdao.registerClass(rvo);
		
		request.setAttribute("cName", cName);
		request.setAttribute("id", id);
		request.setAttribute("tPrice", tPrice);
		
		return "class/payClass";
	}

}
