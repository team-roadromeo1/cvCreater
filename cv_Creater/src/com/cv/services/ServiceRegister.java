package com.cv.services;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cv.dao.RegisterDao;
import com.cv.data.RegisterData;


@WebServlet("/com.cv.services.ServiceRegister")
public class ServiceRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      response.setContentType("text/html");
       	  PrintWriter pw=response.getWriter();
       	  
       	  String name=request.getParameter("name");
       	  String email=request.getParameter("email");
       	  String password=request.getParameter("password");
       	  String contact=request.getParameter("contact");
       	  
       	  
       	  RegisterData r=new RegisterData();
          r.setName(name);
       	  r.setEmail(email);
       	  r.setPassword(password);
       	  r.setContact(contact);
       	  
       	  int i=RegisterDao.register(r);
       	  
       	  try {
       	    if(i==1) {
       	    	pw.println("<script type=\"text/javascript\">");	
   				pw.println("alert('Congratulation!!! you are now regitered.');");
   				pw.println("location='Login';");
   				pw.println("</script>");
	        	
       	    }
       	    else if(i==2) {
       	    	pw.println("<script type=\"text/javascript\">");	
   				pw.println("alert('you are already registered with us please login.');");
   				pw.println("location='Login';");
   				pw.println("</script>");
	        	
       	    }
       	  }catch (Exception e) {
		
       	  System.out.println("Error");
       	  }
	       
       	}

}
