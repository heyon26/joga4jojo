package co.mok.pro.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.BoardDao;
import co.mok.pro.vo.BoardVo;

public class BoardListView implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 공지사항 글 상세보기
		BoardDao dao = new BoardDao();
		BoardVo vo = new BoardVo();
		
		vo.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		vo = dao.select(vo);
		dao = new BoardDao();
		
		request.setAttribute("vo", vo);
		
		
		return "board/boardListView";
	}

}
