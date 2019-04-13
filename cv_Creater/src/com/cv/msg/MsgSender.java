package com.cv.msg;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cv.dao.MsgDao;
import com.cv.data.MsgData;


@WebServlet("/com.cv.msg.MsgSender")
public class MsgSender extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.setContentType("text/html");
    PrintWriter pw=response.getWriter();
    
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String subject=request.getParameter("subject");
    String message=request.getParameter("message");
    
    MsgData data=new MsgData();
    data.setName(name);
    data.setEmail(email);
    data.setSubject(subject);
    data.setMessage(message);
    
    int i=MsgDao.Register(data);
    int j=MailSender.sendMail("alert.fest@gmail.com","message by name: "+name+" email: "+email, message);
    
    if(i>0&&j>0) {
          	System.out.println("Data Saved at navigated at controller.");
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Message is sent.');");
			pw.println("location='index.html';");
			pw.println("</script>");

    }
    
    
    else {
    	System.out.println("message is not sent due to some problem");
		pw.println("<script type=\"text/javascript\">");
		pw.println("alert('Message is not sent.');");
		pw.println("location='index.html';");
		pw.println("</script>");
      	
    }
    
	}

}
