package co.mok.pro.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ImageDAO;
import co.mok.pro.vo.ImageVO;

public class ProfileUpdate implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 프로필 수정 사항 전달
		
		ImageDAO dao = new ImageDAO();
		ImageVO vo = new ImageVO();
		
		vo.setImgCode(Integer.parseInt(request.getParameter("uploadFile")));
		vo.setUserId(request.getParameter("userId"));
		int n = dao.updateImage(vo);
		
		String viewPage = null;
		if(n != 0) {
			viewPage = "myPage.do";
		}
		
		return viewPage;
	}

}
