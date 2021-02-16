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
		String fileName = request.getParameter("image"); // insertImageForm.jpg에 설정한 image 값 호출
		System.out.println("업로드 하려는 파일 이름 " + fileName);
		
		ivo.setUserId(session.getAttribute("user_id").toString());
		ivo.setImage(fileName);
		
		int n = dao.InsertImage(ivo);
		String viewPage = null;
		
		if (n != 0) {
			viewPage = "member/InsertSuccess";
		}
		return viewPage;

	}
}
