package co.mok.pro.web;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.BoardDao;
import co.mok.pro.vo.BoardVo;

public class Testmain implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		BoardDao dao = new BoardDao();
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
		list = dao.selectList();
		request.setAttribute("list", list);
		
		return "main/testmain";
	}

}
