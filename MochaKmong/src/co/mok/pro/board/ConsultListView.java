package co.mok.pro.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.BoardDao;
import co.mok.pro.vo.AnswerVo;
import co.mok.pro.vo.BoardVo;

public class ConsultListView implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 문의 상세페이지
		BoardDao dao = new BoardDao();
		BoardVo vo = new BoardVo();
		AnswerVo avo= new AnswerVo();
		ArrayList<AnswerVo> list = new ArrayList<AnswerVo>(); //답변담기
		
		vo.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		avo.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		//
		
		vo = dao.select(vo); //문의글읽기
		dao = new BoardDao();
		list = dao.answerSelect(avo); // 댓글읽기
		
		
		request.setAttribute("vo", vo); // 문의글담기
		request.setAttribute("list", list);
		
		
		
		
		
		return "board/consultListView";
	}

}
