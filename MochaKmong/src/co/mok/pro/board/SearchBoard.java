package co.mok.pro.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.BoardDao;
import co.mok.pro.vo.BoardVo;

public class SearchBoard implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		BoardDao dao = new BoardDao();
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		
		String str = request.getParameter("searchWord");
		String str2 = request.getParameter("keyword");
		list = dao.getBoardSearch(str2, str);
		request.setAttribute("list", list);
		return "board/boardList";
	}

}
