package co.mok.pro.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.CTimeDao;
import co.mok.pro.vo.CRegisterVo;
import co.mok.pro.vo.PaymentVo;

public class PayResultInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		String id = (String) session.getAttribute("user_id");
		int cCode = Integer.parseInt(request.getParameter("classCode"));
		String sTime = request.getParameter("startTime");//신청하는 클래스 날짜
		int rNumber =Integer.parseInt(request.getParameter("registerNumber"));//신청인원
		
		PaymentVo vo= new PaymentVo();
		vo.setMoney(Integer.parseInt(request.getParameter("totalPrice"))); //결제금액 
		vo.setUserId(id); //결제하는 아이디
		
		//결제 후 클래스 신청 저장(c_register 테이블 insert)
		CTimeDao tdao=new CTimeDao(); 
		tdao.registerClass(id,sTime,cCode,rNumber); //register 테이블에 등록된 클래스 추가
		
		//결제 테이블 값 저장(payment 테이블 insert)
		CTimeDao dao=new CTimeDao();
		dao.payResultInto(vo);
		
		
		
		
		return "myPage.do";
	}

}
