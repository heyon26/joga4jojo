package co.mok.pro.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.BoardDao;
import co.mok.pro.vo.AnswerVo;

public class NewAnswer implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 문의하기 답변작성
		BoardDao dao = new BoardDao();
		AnswerVo vo = new AnswerVo();
		
		vo.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		vo.setUserId(request.getParameter("userId"));
		vo.setaContent(request.getParameter("aContent"));
		vo.setaDate(request.getParameter("aDate"));
		String viewPage = null;
		
		int n = dao.insertConsult(vo);
		if(n != 0) {
			viewPage = "consultListView.do";
		}else {
			viewPage = "";
		}
		return viewPage;
		
	}

}
