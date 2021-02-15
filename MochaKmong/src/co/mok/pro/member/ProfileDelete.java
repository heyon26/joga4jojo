package co.mok.pro.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ImageDAO;
import co.mok.pro.vo.ImageVo;

public class ProfileDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 프로필 이미지 삭제
		
		ImageDAO dao = new ImageDAO();
		ImageVo vo = new ImageVo();
		HttpSession session = request.getSession();
		
		vo.setUserId(session.getAttribute("user_id").toString());
		
		int n = dao.deleteImage(vo);
		String viewPage = null;
		if(n != 0) {
			viewPage = "member/myPage";
		}
		return viewPage;
	}

}
