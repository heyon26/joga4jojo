package co.mok.pro.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.main.MainService;
import co.mok.pro.web.FindPw;
import co.mok.pro.web.FindPwForm;
import co.mok.pro.web.Login;
import co.mok.pro.web.LoginForm;
import co.mok.pro.web.Logout;
import co.mok.pro.web.UserIdCheck;
import co.mok.pro.web.UserJoin;
import co.mok.pro.web.UserJoinForm;



public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();

	}

	public void init(ServletConfig config) throws ServletException {
		map.put("/main.do", new MainService()); //메인 호출
		map.put("/loginForm.do", new LoginForm()); // 로그인 폼
		map.put("/login.do", new Login()); //로그인
		map.put("/userJoinForm.do", new UserJoinForm()); //회원가입 폼
		map.put("/userJoin.do", new UserJoin()); //회원가입
		map.put("/idCheck.do", new UserIdCheck()); //아이디 중복체크
		map.put("/logout.do", new Logout()); //로그아웃
		map.put("/findPwForm.do", new FindPwForm()); //비밀번호 찾기 폼
		map.put("/findPw.do", new FindPw()); //비밀번호 찾기 기능

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
