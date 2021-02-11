package co.mok.pro.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
<<<<<<< HEAD
	private String driver = "oracle.jdbc.driver.OracleDriver";
=======
>>>>>>> refs/remotes/origin/changon

	private String url = "jdbc:oracle:thin:@39.116.34.40:1521:orcl"; /* 집에서 db연결시 */
	
<<<<<<< HEAD
	/* private String url ="jdbc:oracle:thin:@192.168.0.87:1521:xe"; */


	private String user ="mokapro";
	private String password = "1234";
	
=======
	
	// 학원
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@192.168.0.87:1521:xe";
	private String user="mokapro";
	private String password="1234"; //25일 3교시에 cmd로 만들었던 계정

>>>>>>> refs/remotes/origin/changon
	public Connection conn;
	
	public DAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("연결 성공");
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("연결 실패");
			e.printStackTrace();
			
		}
	}
}
	

