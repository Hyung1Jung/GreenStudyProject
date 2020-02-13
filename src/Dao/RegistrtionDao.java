package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.green.study.dto.RegistrtionDto;

public class RegistrtionDao {

	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String DB_URl = "jdbc:mysql://localhost/db01?useSSL=false&useUnicode=true&characterEncoding=utf8"; // ??
	// 데이터베이스
	// 이름,
	// cmd에서
	// use
	// 데이터베이스명
	// 하고
	// 같음

	private final String USER_NAME = "root";
	private final String PASSWORD = "a88658860@";

	Connection conn = null;
	Statement state = null;

	public void RegistrtionDao() { // mysql연결 메소드 , 한 번만 쓰면 되니까 생성자와 동시에 초기화
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

	public ArrayList<RegistrtionDto> studySelect(String id) {

		ArrayList<RegistrtionDto> dtos = new ArrayList<RegistrtionDto>();
		try {
			RegistrtionDao();
			DbConnect();
			state = conn.createStatement(); // state 연결

			String input = "select * from study";// 출력 테이블 대입
			ResultSet aa = state.executeQuery(input);

			while (aa.next()) {

				RegistrtionDto dto = new RegistrtionDto();

				dto.setS_title(aa.getString("s_title"));
				dto.setS_type(aa.getString("s_type"));
				dto.setMain_language(aa.getString("main_language"));
				dto.setSecound_language(aa.getString("secound_language"));
				dto.setS_summary(aa.getString("s_summary"));
				dto.setS_expect(aa.getString("s_expect"));
				dto.setS_effect(aa.getString("s_effect"));
				dto.setPeople_num(aa.getInt("people_num"));
				dto.setS_firsty(aa.getInt("s_firsty"));
				dto.setS_firstm(aa.getInt("s_firstm"));
				dto.setS_firstd(aa.getInt("s_firstd"));
				dto.setS_lasty(aa.getInt("s_lasty"));
				dto.setS_lastm(aa.getInt("s_lastm"));
				dto.setS_lastd(aa.getInt("s_lastd"));
				dto.setMemberid(aa.getString("memberid"));
				dto.setS_num(aa.getInt("s_num"));
				dto.setDate(aa.getString("date"));
				dto.setDate2(aa.getString("date2"));
				dto.setReadcount(aa.getInt("readcount"));
				dtos.add(dto);
			}

		} catch (Exception e) {
			System.out.println(e);
		} finally {
			Close();
		}
		return dtos;
	}

	public ArrayList<RegistrtionDto> studySelect2(int s_num) {

		ArrayList<RegistrtionDto> dtos = new ArrayList<RegistrtionDto>();
		try {
			RegistrtionDao();
			DbConnect();
			state = conn.createStatement(); // state 연결

			String input = "select * from study where s_num ='" + s_num + "'";// 출력 테이블 대입
			ResultSet aa = state.executeQuery(input);

			if (aa.next()) {

				RegistrtionDto dto2 = new RegistrtionDto();

				dto2.setS_title(aa.getString("s_title"));
				dto2.setS_type(aa.getString("s_type"));
				dto2.setMain_language(aa.getString("main_language"));
				dto2.setSecound_language(aa.getString("secound_language"));
				dto2.setS_summary(aa.getString("s_summary"));
				dto2.setS_expect(aa.getString("s_expect"));
				dto2.setS_effect(aa.getString("s_effect"));
				dto2.setPeople_num(aa.getInt("people_num"));
				dto2.setS_firsty(aa.getInt("s_firsty"));
				dto2.setS_firstm(aa.getInt("s_firstm"));
				dto2.setS_firstd(aa.getInt("s_firstd"));
				dto2.setS_lasty(aa.getInt("s_lasty"));
				dto2.setS_lastm(aa.getInt("s_lastm"));
				dto2.setS_lastd(aa.getInt("s_lastd"));
				dto2.setMemberid(aa.getString("memberid"));
				dto2.setS_num(aa.getInt("s_num"));
				dto2.setDate(aa.getString("date"));
				dto2.setDate2(aa.getString("date2"));
				dto2.setReadcount(aa.getInt("readcount"));
				dtos.add(dto2);
			}

		} catch (Exception e) {
			System.out.println(e);
		} finally {
			Close();
		}
		return dtos;
	}

	public ArrayList<RegistrtionDto> studySelect3(String id) {

		ArrayList<RegistrtionDto> dtos = new ArrayList<RegistrtionDto>();
		try {
			RegistrtionDao();
			DbConnect();
			state = conn.createStatement(); // state 연결

			String input = "select * from study where id ='" + id + "'";// 출력 테이블 대입
			ResultSet aa = state.executeQuery(input);

			while (aa.next()) {

				RegistrtionDto dto2 = new RegistrtionDto();

				dto2.setS_title(aa.getString("s_title"));
				dto2.setS_type(aa.getString("s_type"));
				dto2.setMain_language(aa.getString("main_language"));
				dto2.setSecound_language(aa.getString("secound_language"));
				dto2.setS_summary(aa.getString("s_summary"));
				dto2.setS_expect(aa.getString("s_expect"));
				dto2.setS_effect(aa.getString("s_effect"));
				dto2.setPeople_num(aa.getInt("people_num"));
				dto2.setS_firsty(aa.getInt("s_firsty"));
				dto2.setS_firstm(aa.getInt("s_firstm"));
				dto2.setS_firstd(aa.getInt("s_firstd"));
				dto2.setS_lasty(aa.getInt("s_lasty"));
				dto2.setS_lastm(aa.getInt("s_lastm"));
				dto2.setS_lastd(aa.getInt("s_lastd"));
				dto2.setId(aa.getString("id"));
				dto2.setS_num(aa.getInt("s_num"));
				dto2.setDate(aa.getString("date"));
				dto2.setDate2(aa.getString("date2"));
				dtos.add(dto2);
			}

		} catch (Exception e) {
			System.out.println(e);
		} finally {
			Close();
		}
		return dtos;
	}

	public void Insert(String n1, String n2, String n3, String n4, int n5, int n6, int n7, int n8, int n9, int n10,
			int n11, String n12, String n13, String n14, String n15, String n16, String n17) {
		try {
			RegistrtionDao();
			DbConnect();
			state = conn.createStatement();
			String input = String.format(
					"Insert into study(s_title, s_type, main_language, secound_language, people_num, s_firsty, s_firstm, s_firstd, s_lasty, s_lastm, s_lastd, s_summary, s_expect, s_effect, id, date, date2) values('%s','%s','%s','%s','%d','%d','%d','%d','%d','%d','%d','%s','%s','%s','%s', '%s', '%s')",
					n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17);
			state.executeUpdate(input);

		} catch (Exception e) {
		} finally {
			Close();
		}
	}

	public int studyNum() {
		int n = 0;
		try {
			RegistrtionDao();
			DbConnect();
			state = conn.createStatement();
			String input = "select count(s_title) from study";
			ResultSet aa = state.executeQuery(input);
			if (aa.next()) {
				n = aa.getInt("count(s_title)");
			}

		} catch (Exception e) {
		} finally {
			Close();
		}
		return n;
	}

	public void studyDelete() {

		ArrayList<RegistrtionDto> dtos = new ArrayList<RegistrtionDto>();
		try {
			RegistrtionDao();
			DbConnect();
			state = conn.createStatement(); // state 연결

			String input = "delete * from study where date2 = now()";// 출력 테이블 대입
			ResultSet aa = state.executeQuery(input);

		} catch (Exception e) {
			System.out.println(e);
		} finally {
			Close();
		}
	}

	public ArrayList<RegistrtionDto> StudyArchive() {
		
		ArrayList<RegistrtionDto> dtos = new ArrayList<RegistrtionDto>();
		try {
			RegistrtionDao();
			DbConnect();
			state = conn.createStatement(); // state 연결

			String input = "select * from study where date2 <= now() AND s_type = 'abilityStudy'";// 출력 테이블 대입
			ResultSet aa = state.executeQuery(input);

			while (aa.next()) {

				RegistrtionDto dto = new RegistrtionDto();

				dto.setS_title(aa.getString("s_title"));
				dto.setS_type(aa.getString("s_type"));
				dto.setMain_language(aa.getString("main_language"));
				dto.setSecound_language(aa.getString("secound_language"));
				dto.setS_summary(aa.getString("s_summary"));
				dto.setS_expect(aa.getString("s_expect"));
				dto.setS_effect(aa.getString("s_effect"));
				dto.setPeople_num(aa.getInt("people_num"));
				dto.setS_firsty(aa.getInt("s_firsty"));
				dto.setS_firstm(aa.getInt("s_firstm"));
				dto.setS_firstd(aa.getInt("s_firstd"));
				dto.setS_lasty(aa.getInt("s_lasty"));
				dto.setS_lastm(aa.getInt("s_lastm"));
				dto.setS_lastd(aa.getInt("s_lastd"));
				dto.setId(aa.getString("id"));
				dto.setS_num(aa.getInt("s_num"));
				dto.setDate(aa.getString("date"));
				dto.setDate2(aa.getString("date2"));
				dtos.add(dto);
			}

		} catch (Exception e) {
			System.out.println(e);
		} finally {
			Close();
		}
		return dtos;

	}
	
	public ArrayList<RegistrtionDto> ProjectArchive() {
		
		ArrayList<RegistrtionDto> dtos = new ArrayList<RegistrtionDto>();
		try {
			RegistrtionDao();
			DbConnect();
			state = conn.createStatement(); // state 연결

			String input = "select * from Registrtion where date2 <= now() AND s_type = 'projectStudy'";// 출력 테이블 대입
			ResultSet aa = state.executeQuery(input);

			while (aa.next()) {

				RegistrtionDto dto = new RegistrtionDto();

				dto.setS_title(aa.getString("s_title"));
				dto.setS_type(aa.getString("s_type"));
				dto.setMain_language(aa.getString("main_language"));
				dto.setSecound_language(aa.getString("secound_language"));
				dto.setS_summary(aa.getString("s_summary"));
				dto.setS_expect(aa.getString("s_expect"));
				dto.setS_effect(aa.getString("s_effect"));
				dto.setPeople_num(aa.getInt("people_num"));
				dto.setS_firsty(aa.getInt("s_firsty"));
				dto.setS_firstm(aa.getInt("s_firstm"));
				dto.setS_firstd(aa.getInt("s_firstd"));
				dto.setS_lasty(aa.getInt("s_lasty"));
				dto.setS_lastm(aa.getInt("s_lastm"));
				dto.setS_lastd(aa.getInt("s_lastd"));
				dto.setId(aa.getString("id"));
				dto.setS_num(aa.getInt("s_num"));
				dto.setDate(aa.getString("date"));
				dto.setDate2(aa.getString("date2"));
				dtos.add(dto);
			}

		} catch (Exception e) {
			System.out.println(e);
		} finally {
			Close();
		}
		return dtos;

	}

}
