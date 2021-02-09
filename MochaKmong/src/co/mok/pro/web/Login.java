package co.mok.pro.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.dao.UserDao;
import co.mok.pro.vo.UserVo;

@WebServlet("/login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Login() {
        super();
       
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		
		UserDao dao = new UserDao();
		UserVo vo = new UserVo();
		vo.setUserId(request.getParameter("userId"));
		vo.setUserPw(request.getParameter("userPw"));
		
		vo = dao.UserLogin(vo);
		
		String viewPage = null;
		
		
		if(vo.getUserAuth() != null) {
			HttpSession session= request.getSession(); 
			session.setAttribute("user_id", vo.getUserId()); 
			session.setAttribute("user_auth", vo.getUserAuth()); 
			request.setAttribute("vo", vo);
			viewPage = "ok";
		}else {
			viewPage = "ng";
		}

		response.getWriter().append(viewPage);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		doGet(request, response);
	}

}