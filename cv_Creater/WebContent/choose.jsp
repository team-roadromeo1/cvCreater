<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choose Template</title>
</head>
<body>
<center>
<div style="top:0;float:left;"><a href="ServiceProfile">Profile</a></div>
<div style="top:0;float:right;"><a href="ServiceLogout">Logout</a></div>
<h1><u>Choose Template</u></h1>
</center>
<br>
<br>
<% 
%>

<center><h3><%session=request.getSession(false);
String name=(String)session.getAttribute("name");

out.println("Welcome "+name+" please choose any one template.");
%>
 </h3></center>
 <br>
 <br>
 
<center>
<table>
<tr>
<td>
<a href="com.cv.templates.temp1" title="Template1"><img alt="temp1" src="img/portfolio/stud1.jpg"></a>
</td>

<td>
</td>

<td>
</td>

<td>
</td>

<td>
</td>

<td>
</td>

<td>
</td>

<td>
</td>

<td>
</td>

<td>
</td>

<td>
</td>

<td>
</td>

<td>
</td>

<td>
<a href="com.cv.templates.temp2" title="Template2"><img alt="temp2" src="img/portfolio/stud2.jpg"></a>
</td>
</tr>
</table>
</center>
</body>
</html>