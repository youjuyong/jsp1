package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlConnectionUtil {
	//오라클 연결하는 메소드 작성
	public static Connection connect() {
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3307/jcpdev"; //데이터베이스 URL - 디비버에서 확인가능합니다.
		String driver="com.mysql.cj.jdbc.Driver";  //오라클 드라이버 클래스(패키지명.클래스명)
		String user = "jcpdev";
		String password = "1234";
		
		
		try {
			Class.forName(driver);
			
			//DriverManager 클래스의 메모리에 로드된 드라이버 클래스 관리하고
			//DriverManager 
			
			conn = DriverManager.getConnection(url,user,password);
			
			
			
		} catch (ClassNotFoundException e) {
			System.out.println("데이터베이스 드라이버 로드에 문제가 발생 : " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("데이터베이스 연결 및 사용에 문제가 생겼습니다. : " + e.getMessage());
		} 
		
		return conn; //생성된 connect 객체 리턴합니
	}
	
	
	public static void close(Connection conn) {
		if(conn != null)
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println("�����ͺ��̽� ���� ���ῡ ������ �ֽ��ϴ�. : " + e.getMessage());
			}
	}

}