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

import co.mok.pro.board.AskDelete;
import co.mok.pro.board.AskEdit;
import co.mok.pro.board.AskEditForm;
import co.mok.pro.board.AskList;
import co.mok.pro.board.AskListView;
import co.mok.pro.board.BoardDelete;
import co.mok.pro.board.BoardEdit;
import co.mok.pro.board.BoardEditForm;
import co.mok.pro.board.BoardList;
import co.mok.pro.board.BoardListView;
import co.mok.pro.board.ConsultList;
import co.mok.pro.board.ConsultListView;
import co.mok.pro.board.NewAsk;
import co.mok.pro.board.NewAskForm;
import co.mok.pro.board.NewBoard;
import co.mok.pro.board.NewBoardForm;
import co.mok.pro.board.NewConsult;
import co.mok.pro.board.NewConsultForm;
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
		map.put("/boardEdit.do", new BoardEdit()); //공지사항 글 수정
		map.put("/boardDelete.do", new BoardDelete()); //공지사항 삭제
		//
		map.put("/askList.do", new AskList()); //자주묻는 질문리스트
		map.put("/askListView.do", new AskListView()); //묻는질문 상세페이지
		map.put("/newAsk.do", new NewAsk()); //질문 새글 작성
		map.put("/newAskForm.do", new NewAskForm()); //질문  작성폼 이동
		map.put("/askEditForm.do", new AskEditForm()); //질문 수정폼 이동
		map.put("/askEdit.do", new AskEdit()); //질문 수정
		map.put("/askDelete.do", new AskDelete()); //질문삭제
		//
		map.put("/consultList.do", new ConsultList()); //문의페이지
		map.put("/consultListView.do", new ConsultListView()); //문의 상세페이지(댓글방식으로 답변)
		map.put("/newConsultForm.do", new NewConsultForm()); //문의하기 작성폼 이동
		map.put("/newConsult.do", new NewConsult()); //문의하기 글 작성
		
	
		
		
		

		
		
		
		
		
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
