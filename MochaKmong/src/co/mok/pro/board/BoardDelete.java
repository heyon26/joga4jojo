package co.mok.pro.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.BoardDao;
import co.mok.pro.vo.BoardVo;

public class BoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO 공지사항 삭제
		BoardDao dao =  new BoardDao();
		BoardVo vo = new BoardVo();
		
		vo.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		int n = dao.delete(vo);
		String viewPage = null;
				
		if (n != 0) {
			viewPage = "boardList.do";
		}else {
			viewPage = "boardList.do";
		}
		
		
		return viewPage;
	}

}
