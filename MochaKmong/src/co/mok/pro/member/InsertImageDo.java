package co.mok.pro.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ImageDAO;
import co.mok.pro.vo.ImageVo;

public class InsertImageDo implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 진짜로 이미지 삽입

		ImageDAO dao = new ImageDAO();
		ImageVo ivo = new ImageVo();

		HttpSession session = request.getSession();
		ivo.setUserId(session.getAttribute("user_id").toString());
		
		ivo.setImage("filename");
		System.out.println("업로드 하려는 파일 이름 " + ivo);
		
		String filepath = request.getServletContext().getRealPath("image");
		System.out.println("image 파일 경로입니다 " + filepath);
		
		String viewPage = null;
		int n = dao.InsertImage(ivo);
		if (n != 0) {
			viewPage = "member/myPageInfo";
			request.setAttribute("ivo", ivo);
			request.setAttribute("filepath", filepath);
		}
		
		return viewPage;

	}
}
