package co.mok.pro.classes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.mok.pro.common.Command;

public class CreateClassView implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//세션으로 값받아오기?
		HttpSession session = request.getSession();
		
		

		return "class/createClass";
	}

}
