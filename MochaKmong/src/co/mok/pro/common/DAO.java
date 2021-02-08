package co.mok.pro.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	/* private String url ="jdbc:oracle:thin:@39.116.34.40:1521:orcl"; */

	
	private String url ="jdbc:oracle:thin:@192.168.0.87:1521:xe";
	 	
	private String user ="mokapro";
	private String password = "1234";
	
	public Connection conn;
	
	public DAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("연결성공");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}