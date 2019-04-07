package com.cv.templates;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cv.DataFetch.CandidateDataFetch;
import com.cv.cvWriter.cvWriter1;
import com.cv.data.InfoData;


@WebServlet("/com.cv.templates.temp1")
public class temp1 extends HttpServlet {
	
	private static final long serialVersionUID = 949796162383868771L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter pw=response.getWriter();
	
	HttpSession session=request.getSession(true);
	String filename=request.getParameter("filename");
	String id=(String)session.getAttribute("id");
	System.out.println("id checked at controller side value is: "+id);
	
	List<InfoData> list=CandidateDataFetch.getFetch(id);
	
	if(list.isEmpty()) {
    System.out.println("Data is not available due to some problem at temp1");	
	pw.println("<script type=\"text/javascript\">");
	pw.println("alert('You cv is not save please check it out after some time.');");
	pw.println("location='ServiceProfile';");
	pw.println("</script>");
	}
	else {
	try {
		int status=cvWriter1.getWrite(list, filename);
		if(status>0) {
			System.out.println("Data is writed in the pdf at profile now.");
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('You cv is save in your machine please check it out.');");
			pw.println("location='ServiceProfile';");
			pw.println("</script>");
			
		}
		else {
			System.out.println("Data is not writed some error happended we are at controller.");
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('You cv is not saved please check it out after some time.');");
			pw.println("location='ServiceProfile';");
			pw.println("</script>");
			
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	}
	
	}

}
