package co.mok.pro.common;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandP {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException;
	//TODO 페이징 처리 실행위한 인터페이스
}



