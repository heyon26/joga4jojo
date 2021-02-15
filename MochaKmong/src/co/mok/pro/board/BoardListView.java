 package co.mok.pro.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.BoardDao;
import co.mok.pro.vo.BoardVo;

public class BoardListView implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 공지사항 글 상세보기
		BoardDao dao = new BoardDao();
		BoardVo vo = new BoardVo();
		
		vo.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		vo = dao.select(vo);
		dao = new BoardDao();
		
		request.setAttribute("vo", vo);
		
		//페이지 리스트
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		list = dao.selectList();
		request.setAttribute("list", list);
		
		return "board/boardListView";
	}

}
