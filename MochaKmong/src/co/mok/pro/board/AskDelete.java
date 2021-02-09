package co.mok.pro.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.BoardDao;
import co.mok.pro.vo.BoardVo;

public class AskDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		BoardDao dao =  new BoardDao();
		BoardVo vo = new BoardVo();
		
		vo.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		int n = dao.delete(vo);
		String viewPage = null;
				
		if (n != 0) {
			viewPage = "askList.do";
		}else {
			viewPage = "askList.do";
		}
		
		
		return viewPage;
	}

}
