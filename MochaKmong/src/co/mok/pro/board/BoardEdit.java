package co.mok.pro.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.BoardDao;
import co.mok.pro.vo.BoardVo;

public class BoardEdit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardDao dao = new BoardDao();
		BoardVo vo= new BoardVo();
		
		vo.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		vo.setbBoard(request.getParameter("bBoard"));
		vo.setbName(request.getParameter("bName"));
		vo.setbContent(request.getParameter("bContent"));
		vo.setbCategoryA(request.getParameter("bCategoryA"));
		vo.setbCategoryB(request.getParameter("bCategoryB"));
		
		String viewPage = null;
		int n = dao.update(vo);
		if(n != 0) {
			viewPage= "boardList.do";
		}else {
			viewPage= "";
		}
		
		return viewPage;
	}

}
