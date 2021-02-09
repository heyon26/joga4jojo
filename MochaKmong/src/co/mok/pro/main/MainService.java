package co.mok.pro.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;

public class MainService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		return "main/main";
	}

}
