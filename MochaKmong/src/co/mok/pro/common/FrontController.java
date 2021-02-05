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

import co.mok.pro.web.Login;
import co.mok.pro.web.LoginForm;
import co.mok.pro.web.UserIdCheck;
import co.mok.pro.web.UserJoin;
import co.mok.pro.web.UserJoinForm;



@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();

	}

	public void init(ServletConfig config) throws ServletException {
		map.put("/loginForm.do", new LoginForm());
		map.put("/login.do", new Login());
		map.put("/userJoinForm.do", new UserJoinForm()); 
		map.put("/userJoin.do", new UserJoin());
		map.put("/idCheck.do", new UserIdCheck()); 

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String contextPath = request.getContextPath();
		String uri = request.getRequestURI();
		String path = uri.substring(contextPath.length());

		Command command = map.get(path); 
		String viewPage = command.excute(request, response); 

		if (!viewPage.endsWith(".do"))
			viewPage = "/WEB-INF/views/" + viewPage + ".jsp";

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);

	}

}
