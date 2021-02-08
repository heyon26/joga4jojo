package co.mok.pro.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;

public class MainService implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return "main/main";
	}

}
