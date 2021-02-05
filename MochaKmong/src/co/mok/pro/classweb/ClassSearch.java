package co.mok.pro.classweb;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mok.pro.common.Command;
import co.mok.pro.dao.ClassDao;
import co.mok.pro.vo.ClassVo;

public class ClassSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ClassVo vo = new ClassVo();
		ClassDao dao = new ClassDao();
		return null;
	}

}
