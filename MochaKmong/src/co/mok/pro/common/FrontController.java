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
import co.mok.pro.board.NewAnswer;
import co.mok.pro.board.NewAsk;
import co.mok.pro.board.NewAskForm;
import co.mok.pro.board.NewBoard;
import co.mok.pro.board.NewBoardForm;
import co.mok.pro.board.NewConsult;
import co.mok.pro.board.NewConsultForm;
import co.mok.pro.board.SearchBoard;
import co.mok.pro.classes.CreateClass;
import co.mok.pro.classes.CreateClassView;
import co.mok.pro.main.MainService;
import co.mok.pro.main.MainServiceTest;
import co.mok.pro.member.ExpertPage;
import co.mok.pro.member.InsertImage;
import co.mok.pro.member.InsertImageForm;
import co.mok.pro.member.MyPage;
import co.mok.pro.member.MyPageClass;
import co.mok.pro.member.MyPageClassExpert;
import co.mok.pro.member.MyPageEdit;
import co.mok.pro.member.MyPageExpertEdit;
import co.mok.pro.member.ProfileUpdate;
import co.mok.pro.member.UploadImage;
import co.mok.pro.member.UploadImageForm;
import co.mok.pro.places.CreatePlaceView;
import co.mok.pro.web.ClassSearch;
import co.mok.pro.web.ClassSearch1;
import co.mok.pro.web.ClassSearch2;
import co.mok.pro.web.FindPw;
import co.mok.pro.web.FindPwForm;
import co.mok.pro.web.Login;
import co.mok.pro.web.LoginForm;
import co.mok.pro.web.Logout;
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

		map.put("/mainTest.do", new MainServiceTest());
		map.put("/boardList.do", new BoardList()); //공지사항페이지
		map.put("/boardListView.do", new BoardListView()); //공지사항상세페이지
		map.put("/newBoardForm.do", new NewBoardForm()); //공지사항 새글 작성폼 이동
		map.put("/newBoard.do", new NewBoard()); //공지사항 새글 작성
		map.put("/boardEditForm.do", new BoardEditForm()); //공지사항 글 수정폼
		map.put("/boardEdit.do", new BoardEdit()); //공지사항 글 수정
		map.put("/boardDelete.do", new BoardDelete()); //공지사항 삭제
		map.put("/searchBoard.do", new SearchBoard()); //공지사항 삭제
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
		map.put("/newAnswer.do", new NewAnswer()); //문의하기 답변 작성
		

		// 로그인 기능
		map.put("/loginForm.do", new LoginForm());


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

		map.put("/logout.do", new Logout()); //로그아웃
		map.put("/findPwForm.do", new FindPwForm()); //비밀번호 찾기 폼
		map.put("/findPw.do", new FindPw()); //비밀번호 찾기 기능

	

		map.put("/myPage.do", new MyPage()); // 마이페이지 호출
		map.put("/expertPage.do", new ExpertPage()); // 강사 페이지 호출
		//map.put("/profileEdit.do", new ProfileEdit()); // 프로필 수정 페이지 호출
		//map.put("/profileEditUpdate.do", new ProfileEditUpdate()); // 프로필 수정 값 전달
		map.put("/classSearch.do", new ClassSearch()); //메인페이지에서 클래스 검색 
		map.put("/classSearch1.do", new ClassSearch1()); //클래스 list 페이지에서 단어입력 후 검색 
		map.put("/classSearch2.do", new ClassSearch2()); //클래스 list 페이지에서 radio로 검색
		map.put("/createClassView.do", new CreateClassView());
		map.put("/createClass.do", new CreateClass());

		map.put("/createPlaceView.do", new CreatePlaceView());


		map.put("/insertImageForm.do", new InsertImageForm()); // 프로필 이미지 삽입 폼 호출
		//map.put("/insertImage.do",new InsertImage()); // 프로필 이미지 삽입 실행


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
