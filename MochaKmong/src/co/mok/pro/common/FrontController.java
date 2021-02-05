package co.mok.pro.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.board.BoardEdit;
import co.mok.pro.board.BoardEditForm;
import co.mok.pro.board.BoardList;
import co.mok.pro.board.BoardListView;
import co.mok.pro.board.NewBoard;
import co.mok.pro.board.NewBoardForm;
import co.mok.pro.main.MainService;
import co.mok.pro.main.MainServiceTest;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();


	public FrontController() {
		super();

	}


	public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new MainService());
		map.put("/mainTest.do", new MainServiceTest());
		map.put("/boardList.do", new BoardList()); //공지사항페이지
		map.put("/boardListView.do", new BoardListView()); //공지사항상세페이지
		map.put("/newBoardForm.do", new NewBoardForm()); //공지사항 새글 작성폼 이동
		map.put("/newBoard.do", new NewBoard()); //공지사항 새글 작성
		map.put("/boardEditForm.do", new BoardEditForm()); //공지사항 글 수정폼
		map.put("/boardEdit.do", new BoardEdit()); //공지사항 글 수정폼
		

		
		
		
		
		
	}


	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String contextPath = request.getContextPath();
		String uri = request.getRequestURI();
		String path = uri.substring(contextPath.length());
		
		Command command = map.get(path);
		String viewPage = command.exec(request, response);
		
		if(!viewPage.endsWith(".do")) viewPage = "/WEB-INF/jsp/" +viewPage +".jsp"; 
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	}

}
