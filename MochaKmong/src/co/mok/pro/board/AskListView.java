package co.mok.pro.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.BoardDao;
import co.mok.pro.vo.BoardVo;

public class AskListView implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		BoardDao dao = new BoardDao();
		BoardVo vo = new BoardVo();
		
		vo.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		vo = dao.select(vo);
		dao = new BoardDao();
		
		request.setAttribute("vo", vo);
		
		
		return "board/askListView";
	}

}
