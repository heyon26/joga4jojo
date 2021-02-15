package co.mok.pro.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.BoardDao;
import co.mok.pro.vo.AnswerVo;

public class AnswerDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 답글 삭제
		BoardDao dao =  new BoardDao();
		AnswerVo vo = new AnswerVo();
		
		vo.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		int n = dao.answerDelete(vo);
		
		String viewPage = null;
		
		if (n != 0) {
			viewPage = "consultListView.do";
		}else {
			viewPage = "consultList.do";
		}
		
		
		return viewPage;
	}

}
