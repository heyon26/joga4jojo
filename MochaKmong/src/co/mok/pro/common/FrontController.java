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

import co.mok.pro.main.MainService;
import co.mok.pro.member.ExpertPage;
import co.mok.pro.member.InsertImage;
import co.mok.pro.member.InsertImageForm;
import co.mok.pro.member.MyPage;
import co.mok.pro.member.MyPageClassExpert;
import co.mok.pro.member.MyPageEdit;
import co.mok.pro.member.MyPageExpertEdit;
import co.mok.pro.member.MyPageClass;
import co.mok.pro.member.ProfileUpdate;
import co.mok.pro.member.UploadImage;
import co.mok.pro.member.UploadImageForm;
import co.mok.pro.web.Login;
import co.mok.pro.web.LoginForm;
import co.mok.pro.web.UserIdCheck;
import co.mok.pro.web.UserJoin;
import co.mok.pro.web.UserJoinForm;
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
		
		// 메인페이지 호출
		map.put("/main.do", new MainService());
		
		// 로그인 기능
		map.put("/loginForm.do", new LoginForm());
		map.put("/login.do", new Login());
		map.put("/userJoinForm.do", new UserJoinForm()); 
		map.put("/userJoin.do", new UserJoin());
		map.put("/idCheck.do", new UserIdCheck()); 
		
		// 회원가입
		map.put("/userJoinForm", new UserJoinForm());
		map.put("/userJoin.do", new UserJoin());
		
		// 마이페이지_수강생
		map.put("/myPage.do", new MyPage()); // 마이페이지 호출
		map.put("/myPageClass.do", new MyPageClass()); // 신청한 클래스 페이지 호출
		map.put("/myPageEdit.do", new MyPageEdit()); // 프로필 수정 페이지 호출
		
		// 마이페이지_강사
		map.put("/expertPage.do", new ExpertPage()); // 강사 페이지 호출
		map.put("/myPageClassExpert.do", new MyPageClassExpert()); // 등록한 클래스 페이지 호출
		map.put("/myPageExpertEdit.do", new MyPageExpertEdit());
		
		// 프로필 수정 기능
		map.put("/profileUpdate.do", new ProfileUpdate()); // 프로필 업데이트
		map.put("/uploadImageForm.do", new UploadImageForm()); // 프로필 이미지 업로드 폼 호출
		map.put("/uploadImage.do", new UploadImage()); // 프로필 이미지 업로드 실행
		map.put("/insertImageForm.do", new InsertImageForm()); // 프로필 이미지 삽입 폼 호출
		map.put("/insertImage.do",new InsertImage()); // 프로필 이미지 삽입 실행

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String contextPath = request.getContextPath();
		String uri = request.getRequestURI();
		String path = uri.substring(contextPath.length());

		Command command = map.get(path); 
		String viewPage = command.execute(request, response); 
		if (!viewPage.endsWith(".do"))
			viewPage = "/WEB-INF/jsp/" + viewPage + ".jsp";

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);

	}

}
