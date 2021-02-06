package co.mok.pro.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DAO {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@39.116.34.40:1521:orcl";
	private String user="mokapro";
	private String password="1234"; //25일 3교시에 cmd로 만들었던 계정
	
	public Connection conn;
	
	public DAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("DB 연결 성공 !!!!");
		}catch(ClassNotFoundException | SQLException e){
			e.printStackTrace();
			System.out.println("DB 연결 실패!!!!");
		}
	}
	
}