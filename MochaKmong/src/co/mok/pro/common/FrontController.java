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

import co.mok.pro.classweb.ClassSearch;
import co.mok.pro.main.MainService;
import co.mok.pro.member.ExpertPage;
import co.mok.pro.member.MyPage;
import co.mok.pro.member.ProfileEdit;
import co.mok.pro.member.ProfileEditUpdate;
import co.mok.pro.web.CreateClassView;

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
		map.put("/main.do", new MainService()); //메인페이지
		map.put("/myPage.do", new MyPage()); // 마이페이지 호출
		map.put("/expertPage.do", new ExpertPage()); // 강사 페이지 호출
		map.put("/profileEdit.do", new ProfileEdit()); // 프로필 수정 페이지 호출
		map.put("/profileEditUpdate.do", new ProfileEditUpdate()); // 프로필 수정 값 전달
		map.put("/classSearch.do", new ClassSearch()); //메인페이지에서 클래스 검색 

		map.put("/createClassView.do", new CreateClassView());

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
