package Dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.green.study.dto.Board_Dto;

public class Board_Dao {

	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String DB_URl = "jdbc:mysql://localhost/db01?useSSL=false&useUnicode=true&characterEncoding=utf8"; // ?? 데이터베이스 이름, cmd에서 use 데이터베이스명 하고 같음

	private final String USER_NAME = "root";
	private final String PASSWORD = "a88658860@";

	Connection conn = null;
	Statement state = null;
	
	public void Db_Dao() { 
		try {
			Class.forName(JDBC_DRIVER); 
			} catch (Exception e) {
		}
	}

	public void DbConnect() { 
		try {
			conn = DriverManager.getConnection(DB_URl, USER_NAME, PASSWORD);
		} catch (Exception e) {
		}
	}

	public void Close() { 
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
	
	/* 게시글 셀렉트 메서드를 기능 개발하기 바람 */
	public ArrayList<Board_Dto> BoardSelect(String pn)
	{
		System.out.println(pn);
		ArrayList<Board_Dto> pcont = new ArrayList<Board_Dto>(); 
		
		try {
			Db_Dao();
			DbConnect();
			System.out.println("BoardSelect 메소드실행");
			state = conn.createStatement();
			String s = String.format("select * from qna_board where postid=%s;", pn);
			ResultSet aa = state.executeQuery(s);
			
			if (aa.next()) {
				Board_Dto post = new Board_Dto();
				post.setPosttitle(aa.getString("posttitle"));
				post.setPostcontents(aa.getString("postcontents"));
				post.setPostcategory(aa.getString("postcategory"));
				post.setName(aa.getString("name"));
				pcont.add(post);
				}
		}
		catch (Exception e) {
		System.out.println(e);
	} finally {
		Close();
	}
	return(pcont);
	}
	

	
	
	/* 전체 출력: 셀렉트 메서드를 기능 개발하기 바람 */
	public ArrayList<Board_Dto> Select()
	{
		ArrayList<Board_Dto> bdt = new ArrayList<Board_Dto>(); 
			try {
				Db_Dao();
				DbConnect();
				System.out.println("Select 메소드실행");
				state = conn.createStatement();
				String s = String.format("select * from qna_board order by postid desc;"); 
				ResultSet aa = state.executeQuery(s);
				
				while (aa.next()) {
					Board_Dto post = new Board_Dto();
					post.setPostid(aa.getInt("postid"));
					post.setPosttitle(aa.getString("posttitle"));
					post.setPostcontents(aa.getString("postcontents"));
					post.setName(aa.getString("name"));
					post.setDate(aa.getString("date"));
					post.setPostcategory(aa.getString("postcategory"));
					post.setAnswer(aa.getString("answer"));
					bdt.add(post);
					}
			} catch (Exception e) {
				System.out.println(e);
			} finally {
				Close();
			}
			return(bdt);
	}
	
	
	public void Insert(String n1, String n2, String n3, String n4) {
		try {
			System.out.println("Insert메소드 실행");
			Db_Dao();
			DbConnect();
			Statement state ;
			state=conn.createStatement();
			System.out.println("테이블입력시도");

			String input = String.format("Insert into qna_board (posttitle, postcategory, postcontents, name, date, answer) values ('%s','%s','%s','%s', now(),'미답변');", n1, n2, n3, n4);
			
			int num = state.executeUpdate(input);
			if( num == 1)
				System.out.println("테이블입력완료"); 
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			Close();
		}
	}
}
	
	