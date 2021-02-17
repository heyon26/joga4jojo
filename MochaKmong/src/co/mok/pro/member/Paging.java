package co.mok.pro.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;
import co.mok.pro.vo.PagingVo;

public class Paging implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 유저 아이디에 따른 마이페이지 클래스 출력 및 페이징
		
		ClassDao dao = new ClassDao();
		HttpSession session = request.getSession();
		
		String userId = session.getAttribute("user_id").toString();
		String pageNo = request.getParameter("pageNo"); // goPage 메서드에서 전달한 파라미터값
		pageNo = (pageNo == null) ? "1" : pageNo; // 파라미터값이 null일 때 1 삽입하여 첫번째 페이지부터 호출
		int pg = Integer.parseInt(pageNo);
		PagingVo vo = new PagingVo();
		
		vo.setPageNo(pg); // 출력할 페이지 넘버
		vo.setPageSize(20); // 한 페이지에 출력할 데이터 숫자
		vo.setTotalCount(dao.getTotalCnt()); // 전체 데이터 개수
		
		dao = new ClassDao();
		ArrayList<ClassVo> list = dao.getPagingList(pg, userId);
		
		request.setAttribute("list", list);
		request.setAttribute("params", vo);
		
		return "member/myPage";
	}

}
