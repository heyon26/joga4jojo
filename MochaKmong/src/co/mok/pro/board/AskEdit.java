package co.mok.pro.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.BoardDao;
import co.mok.pro.vo.BoardVo;

public class AskEdit implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		BoardDao dao = new BoardDao();
		BoardVo vo= new BoardVo();
		
	
		vo.setbBoard(request.getParameter("bBoard"));
		vo.setbName(request.getParameter("bName"));
		vo.setbContent(request.getParameter("bContent"));
		vo.setbCategoryA(request.getParameter("bCategoryA"));
		vo.setbCategoryB(request.getParameter("bCategoryB"));
		
		vo.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		
		String viewPage = null;
		int n = dao.update(vo);
		if(n != 0) {
			viewPage= "askList.do";
		}else {
			viewPage= "askList.do";
		}
		return viewPage;
	}

}
