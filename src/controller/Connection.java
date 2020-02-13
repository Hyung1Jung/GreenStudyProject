package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Connection extends HttpServlet {

	@Override

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String command = request.getParameter("command");
		
		Cominterface inter = null;

		String viewName = "";
		int viewName2 = 0;
		
		String id = (String)request.getSession().getAttribute("id");
		HttpSession session = request.getSession();
		session.setAttribute("id", id);

		
		try {
			if (command.equals("insert")) {
				inter = Service1.instance();
				viewName = inter.insertData(request, response);
				viewName = viewName;
				request.getRequestDispatcher(viewName).forward(request, response);
			} else if (command.equals("select")) {
				inter = Service1.instance();
				viewName = inter.showData(request, response);
				viewName = viewName;
				request.getRequestDispatcher(viewName).forward(request, response);
			} else if (command.equals("studyArchive")) {
				inter = Service1.instance();
				viewName = inter.studyArchive(request, response);
				viewName = viewName;
				request.getRequestDispatcher(viewName).forward(request, response);
			} else if (command.equals("projectArchive")) {
				inter = Service1.instance();
				viewName = inter.projectArchive(request, response);
				viewName = viewName;
				request.getRequestDispatcher(viewName).forward(request, response);
			}else if(command.equals("delete")){
				inter = Service1.instance();
				viewName = inter.deleteData(request, response);
				viewName = viewName;
				request.getRequestDispatcher(viewName).forward(request, response);
			}else if(command.equals("myStudySelect")){
				inter = Service1.instance();
				viewName = inter.myStudySelect(request, response);
				viewName = viewName;
				request.getRequestDispatcher(viewName).forward(request, response);
			}else if(command.equals("readcount")){
				inter = Service1.instance();
				viewName = inter.readcount(request, response);
				viewName = viewName;
				request.getRequestDispatcher(viewName).forward(request, response);
			}else {
				// viewName = "error.html";
				// response.sendRedirect(viewName);
			}
		} catch (Exception e) {
			System.out.println("service err : " + e);
		}
	}
}
