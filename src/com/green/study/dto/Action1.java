package com.green.study.dto;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.green.study.dto.RegistrtionDto;

import mybatis.Map;

public class Action1 {
	static Action1 model = new Action1();
	public static Action1 instance(){
		return model;
	}

	private SqlSessionFactory factory = Map.getSqlSession(); 

	public void insert_registrtion(String studyTitle, String studyType, String language1, String language2,
			int people_num, int start, int start_birthm, int start_birthd, int end, int end_birthm, int end_birthd,
			String summary, String expect, String effect, String id, String startDay, String lastDay, int readcount) {
		
		RegistrtionDto dto = new RegistrtionDto();
		
		dto.setS_title(studyTitle);
		dto.setS_type(studyType);
		dto.setMain_language(language1);
		dto.setSecound_language(language2);
		dto.setS_summary(summary);
		dto.setS_expect(expect);
		dto.setS_effect(effect);
		dto.setPeople_num(people_num);
		dto.setS_firsty(start);
		dto.setS_firstm(start_birthm);
		dto.setS_firstd(start_birthd);
		dto.setS_lasty(end);
		dto.setS_lastm(end_birthm);
		dto.setS_lastd(end_birthd);
		dto.setMemberid(id);
		dto.setS_num(people_num);
		dto.setDate(startDay);
		dto.setDate2(lastDay);
		dto.setReadcount(readcount);
		
		SqlSession sqlSession = factory.openSession();
		sqlSession.insert("insert_Registrtion",dto);
	    sqlSession.commit();
		sqlSession.close();
		
	}

	public List<RegistrtionDto> studylist(){
		List<RegistrtionDto> list = null;
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("all_study");
		sqlSession.close();
		return list;
	}

	public List<RegistrtionDto> studyArchive(){
		List<RegistrtionDto> list = null;
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("studyArchive");
		sqlSession.close();
		return list;
	}

	public List<RegistrtionDto> projectArchive(){
		List<RegistrtionDto> list = null;
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("projectArchive");
		sqlSession.close();
		return list;
	}
	
	public List<RegistrtionDto> myStudySelect(String id){
		RegistrtionDto dto = new RegistrtionDto();
		dto.setId(id);
		
		List<RegistrtionDto> list = null;
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("myStudySelect",dto);
		sqlSession.commit();
		sqlSession.close();
		return list;
	}
	
	public void studydelete(int s_num2){		
		RegistrtionDto dto = new RegistrtionDto();
		dto.setS_num(s_num2);
		
		System.out.println(s_num2);
		SqlSession sqlSession = factory.openSession();
		sqlSession.delete("delete_study",dto);
	    sqlSession.commit();
		sqlSession.close();
			
		}	
	
	public void readcount(int s_num2){
		RegistrtionDto dto = new RegistrtionDto();
		dto.setS_num(s_num2);
		
		SqlSession sqlSession = factory.openSession();
		sqlSession.update("studycount",dto);
	    sqlSession.commit();
		sqlSession.close();
		
	}
}



