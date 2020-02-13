package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Cominterface {
	String insertData(HttpServletRequest request, HttpServletResponse response) throws Exception;

	String showData(HttpServletRequest request, HttpServletResponse response) throws Exception;

	String studyArchive(HttpServletRequest request, HttpServletResponse response) throws Exception;

	String projectArchive(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	String deleteData(HttpServletRequest request, HttpServletResponse response) throws Exception;

	String myStudySelect(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	String readcount(HttpServletRequest request, HttpServletResponse response) throws Exception;

}




