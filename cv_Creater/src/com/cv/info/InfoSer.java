package com.cv.info;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cv.dao.InfoDao;
import com.cv.data.InfoData;


@WebServlet("/com.cv.info.InfoSer")
public class InfoSer extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         response.setContentType("text/html");
         PrintWriter pw=response.getWriter();
         
         String name=request.getParameter("fname")+" "+request.getParameter("lname");
         String email=request.getParameter("email");
         String number=request.getParameter("no");
         String ssc=request.getParameter("edu1");
         String ssc_per=request.getParameter("ssc");
         String ssc_ins=request.getParameter("ssc_ins");
         String hsc=request.getParameter("edu2");
         String hsc_per=request.getParameter("hsc");
         String hsc_ins=request.getParameter("hsc_ins");
         String dgree=request.getParameter("edu3");
         String dgree_per=request.getParameter("dgree");
         String dgree_ins=request.getParameter("dgree_ins");
         String obj=request.getParameter("obj");
         
         
         InfoData data=new InfoData();
         data.setName(name);
         data.setEmail(email);
         data.setPhone(number);
         data.setSsc(ssc);
         data.setSsc_per(ssc_per);
         data.setSsc_ins(ssc_ins);
         data.setHsc(hsc);
         data.setHsc_per(hsc_per);
         data.setHsc_ins(hsc_ins);
         data.setDgree(dgree);
         data.setDgree_per(dgree_per);
         data.setDgree_ins(dgree_ins);
         data.setObj(obj);
         
         int i=InfoDao.register(data);
         
         if(i>0) {
        	System.out.println("Data Saved at client end."); 
 			pw.println("<script type=\"text/javascript\">");
 			pw.println("alert('Your Information is saved.');");
 			pw.println("location='ChooseTemplate';");
 			pw.println("</script>");
           }
         else {
        	System.out.println("Data is not Saved.");
        	pw.println("<script type=\"text/javascript\">");
  	        pw.println("alert('Your Information is not saved please try again.');");
  			pw.println("location='ChooseTemplate';");
  			pw.println("</script>");
             
         }
         
	}

}
