package co.mok.pro.member;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ImageDAO;
import co.mok.pro.vo.ImageVo;

public class UploadImageDo implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		// 프로필 이미지 수정
		ImageDAO dao = new ImageDAO();
		ImageVo ivo = new ImageVo();
		HttpSession session = request.getSession();
		String fileName = request.getParameter("image"); // uploadImageForm.jpg에 설정한 image 값 호출
		
		ivo.setUserId(session.getAttribute("user_id").toString());
		ivo.setImage(fileName);
		
		//int n = dao.updateImage(ivo);
		int n = 1;
		String viewPage = null;
		if(n != 0) {
			request.setAttribute("ivo", ivo);
			viewPage = "member/uploadSuccess";
		}
	
		return viewPage;
	}

}
