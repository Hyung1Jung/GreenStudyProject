package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Db_Dao {

	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String DB_URl = "jdbc:mysql://localhost/db01?useSSL=false&useUnicode=true&characterEncoding=utf8"; // ?? 데이터베이스 이름, cmd에서 use 데이터베이스명 하고 같음

	private final String USER_NAME = "root";
	private final String PASSWORD = "a88658860@";

	Connection conn = null;
	Statement state = null;

	public void Db_Dao() { // mysql연결 메소드 , 한 번만 쓰면 되니까 생성자와 동시에 초기화
		try {
			Class.forName(JDBC_DRIVER); // mysql에 연결, 외부에서 가져오는 것들은 모두 예외처리, 한 번만 쓰면 됨
		} catch (Exception e) {
		}
	}

	public void DbConnect() { // db연결 메소드
		try {
			conn = DriverManager.getConnection(DB_URl, USER_NAME, PASSWORD); // db연결, 작업마다 open
		} catch (Exception e) {
		}
	}

	public void Close() { // 닫기 연결 메소드
		if (state != null) {
			try {
				state.close();
			} catch (Exception e) {
			}

			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {

				}
		}
	}

	public void Insert(String n1, String n2, String n3, String n4, String n5, String n6, String n7, String n8,
			String n9) {
		try {
			Db_Dao();
			DbConnect();
			state = conn.createStatement();
			String input = String.format("Insert into member values('%s','%s','%s','%s','%s','%s','%s','%s','%s','F')", n1,
					n2, n3, n4, n5, n6, n7, n8, n9);
			state.executeUpdate(input);
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			Close();
		}
	}

	public int Jungbok(String s1) {
		int n = 0;
		try {
			Db_Dao();
			DbConnect();
			state = conn.createStatement(); // state 연결
			String s = String.format("select id from member where id = '%s';", s1); // 출력 테이블 대입
			ResultSet aa = state.executeQuery(s);
			if (aa.next()) {
				n = 1;
			} else {
				n = 0;
			}

			aa.close();
		} catch (Exception e) {
		} finally {
			Close();
		}
		return n;
	}

	public String JungbokPw(String s1) {
		String s = null;
		String ss = null;
		try {
			Db_Dao();
			DbConnect();
			state = conn.createStatement(); // state 연결
			s = String.format("select pw from member where id = '%s';", s1); // 출력 테이블 대입
			ResultSet aa = state.executeQuery(s);
			if(aa.next()) {
				ss = aa.getString("pw");
				
			}

		} catch (Exception e) {
		} finally {
			Close();
		}
		return ss;
	}

}
