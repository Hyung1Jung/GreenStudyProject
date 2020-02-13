package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.green.study.dto.Action1;
import com.green.study.dto.RegistrtionDto;




public class Service1 implements Cominterface {

	static Service1 ser = new Service1();

	public static Service1 instance() {
		return ser;
	}

	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Action1 model = Action1.instance();
		ArrayList<RegistrtionDto> list = (ArrayList<RegistrtionDto>) model.studylist();
		request.setAttribute("data", list);
		
		return "StudyStatus2.jsp";
	}
	
	
	public String readcount(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String s_num = request.getParameter("s_num");
		int s_num2 = Integer.parseInt(s_num); 
		
		Action1 up = Action1.instance();
		up.readcount(s_num2);
		return "studyDetails.jsp";
	}
	
	public String studyArchive(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Action1 model = Action1.instance();
		ArrayList<RegistrtionDto> list = (ArrayList<RegistrtionDto>) model.studyArchive();
		request.setAttribute("data", list);
		
		return "Archive.jsp";
	}
	
	public String projectArchive(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Action1 model = Action1.instance();
		ArrayList<RegistrtionDto> list = (ArrayList<RegistrtionDto>) model.projectArchive();
		request.setAttribute("data", list);
		
		return "Archive2.jsp";
	}
	
	public String myStudySelect(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = (String)request.getSession().getAttribute("id");
		Action1 model = Action1.instance();
		ArrayList<RegistrtionDto> list = (ArrayList<RegistrtionDto>) model.myStudySelect(id);
		request.setAttribute("data", list);
		
		return "MyPageUnderMenu02.jsp";
	}
	
	public String deleteData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String s_num = request.getParameter("s_num");
		int s_num2 = Integer.parseInt(s_num); 
		
		System.out.println(s_num);
		Action1 del = Action1.instance();
		del.studydelete(s_num2);

		return "MyPageUnderMenu02.jsp";
	}
	
	

	

	
	
	
	
	/*
	 * public String projectArchive(HttpServletRequest request, HttpServletResponse
	 * response) throws Exception { Action1 model = Action1.instance();
	 * ArrayList<RegistrtionDto> list = (ArrayList<RegistrtionDto>)
	 * model.projectArchive(); request.setAttribute("data", list);
	 * 
	 * return "StudyStatus2.jsp"; }
	 */
	public String insertData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession(true);
		
		String id = (String) session.getAttribute("idinputLog");
		String studyTitle = request.getParameter("studyTitle");
		String studyType = request.getParameter("studyType");
		String language1 = request.getParameter("language1");
		String language2 = request.getParameter("language2");
		String people_num2 = request.getParameter("people_num");
		int people_num = Integer.parseInt(people_num2);
		String summary = request.getParameter("summary");
		String expect = request.getParameter("expect");
		String effect = request.getParameter("effect");
		
		String start2 = request.getParameter("start");
		int start = Integer.parseInt(start2);
		String start_birthm2 = request.getParameter("start_birthm");
		int start_birthm = Integer.parseInt(start_birthm2);
		String start_birthd2 = request.getParameter("start_birthd");
		int start_birthd = Integer.parseInt(start_birthd2);
		String startDay =  String.format(start + "-" + start_birthm + "-" + start_birthd);
		
		String end2 = request.getParameter("end");
		int end = Integer.parseInt(end2);
		String end_birthm2 = request.getParameter("end_birthm");
		int end_birthm = Integer.parseInt(end_birthm2);
		String end_birthd2 = request.getParameter("end_birthd");
		int end_birthd = Integer.parseInt(end_birthd2);
		String lastDay = String.format(end + "-" + end_birthm + "-" + end_birthd);
		
		int readcount = 0;

		Action1 in = Action1.instance();
		
		in.insert_registrtion(studyTitle, studyType, language1, language2, people_num, start, start_birthm, start_birthd,
				end, end_birthm, end_birthd, summary, expect, effect, id, startDay, lastDay, readcount);

		return "StudyStatus2.jsp";
	}

}
