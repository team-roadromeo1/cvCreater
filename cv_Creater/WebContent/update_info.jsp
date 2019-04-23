<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/collapsible.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="js/collapsible.js"></script>
<style>

table {
	table-layout: fixed;
	width: 100%;
	border-collapse: collapse;
	
}

table td {
    color:white;
    font-size:20px;
    font-style:italic;
    width: 25%;
	padding: 10px;
	text-align: center;
	
}
 
 table th{
    text-align: center;
      font-size: 20px;
      font-style: italic;
      color: white;
 }

table caption {
	font-style: italic;
}

.collapsible {
  background:linear-gradient(to bottom,#22abe9 5%,#36caf0 100%);
  box-shadow:inset 0 1px 0 0 #7bdcf4;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
background:linear-gradient(to bottom,#36caf0 5%,#22abe9 100%)
	}

.content {
  padding: 0 18px;
  display: block;
  /* overflow: hidden; */
  background-color: #333;
}

.navbar .navbar-nav {
    color:white;
    font-size: 18px;
    margin: 8px 0;
    float:right;
}

.navbar  .navbar-brand {
    color: white !important;
    font-size: 25px;
    margin: 8px 0;
}

.navbar  .nav-link{
color:white;
}

.div {
    background:none!important;
     border:none; 
     padding:0!important;
    
    /*optional*/
    font-family:arial,sans-serif; /*input has OS specific font-family*/
     color:white;
     text-decoration:none;
     cursor:pointer;
}

.div:hover {
	text-decoration: underline;
	color: #069;
}



/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close div */
.close {
  color: #aaaaaa;
;
  float: right;
  font-size: 40px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  text-decoration: none;
  cursor: pointer;
}
    
  .btn{
  background:linear-gradient(to bottom,#22abe9 5%,#36caf0 100%);
  box-shadow:inset 0 1px 0 0 #7bdcf4;
  border-radius:5px;
  border-color:white;
  background-color:#333;
  height:35px;
  width:100px;
  font-style:color="white";
 }
 
 .btn:hover{
background:linear-gradient(to bottom,#36caf0 5%,#22abe9 100%)
 }
 

.b{
background:linear-gradient(to bottom,#22abe9 5%,#36caf0 100%);
box-shadow:inset 0 1px 0 0 #7bdcf4;
border:1px solid #0F799E;
color:#fff;
width:306px;
height:40px;
margin-top:15px;
font-size:18px;
font-weight:700;
cursor:pointer;
text-shadow:0 1px 0 #13506D
	
}

.txt{
 width:306px;
 height:50px;
 padding:10px 8px;
 border-radius:15px;
 border-color:transparent;
 font-size: 15px;
 }

.sel{
border-radius: 15px;
height: 50px;
}

body{
background-color:F1F1F1;
}
<link href="showhide.css" rel="stylesheet">

</style>

</head>
<body onload="noback();" onpageshow="if (event.persisted) noback();" onunload="">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="showhide.js"></script>


<% 

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setDateHeader("Expires", 0);
response.setHeader("Pragma","no-cache");


String name=(String)session.getAttribute("name");
String id=(String)session.getAttribute("id");
if(name==null&&id==null){
	System.out.print("Attempt of Unauthenticated Access failed.");
	out.println("<script type=\"text/javascript\">");
	out.println("alert('You have to login first.');");
	out.println("location='Login';");
	out.println("</script>");
}
else{
	session.setAttribute("name", name);
	session.setAttribute("id", id);
/*     System.out.println("Successfully logged in now at profile key value are name is "+name+" and id is "+id);
 */}
%>






<nav class="navbar navbar-expand-sm  bg-dark  fixed-top ">
  <a class="navbar-brand" href="#">cv_Creater</a>
  <ul class="navbar-nav">

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>


    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>


    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>


    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>










    <li class="nav-item">
      <a class="nav-link" href="ServiceProfile">Home</a>
    </li>


    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>






    <li class="nav-item">
      <a class="nav-link" href="Information">Create</a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>



    <li class="nav-item">
      <a class="nav-link" href="com.cv.showrecord.History">Open</a>
    </li>


    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>




<li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
       <%out.println(name); %>
      </a>
      
      
      <div class="dropdown-menu">
        <a class="dropdown-item" href="password_reset">Change Password</a>
        <a class="dropdown-item" href="email_reset">Change Email</a>
        <a class="dropdown-item" href="com.cv.showrecord.Histroy_for_updation">Change Cv info</a>
        <a class="dropdown-item" href="cv_preview">Cv Preview</a>
        <a class="dropdown-item" href="com.cv.services.ServiceLogout">Logout</a>
      </div>
    
    </li>

  </ul>
  
  
  
</nav>


<br>



<div class="container-fluid" style="margin-top:80px">

<% out.println("<center><h3>Please fill the information below to update your cv information "+name+".</h3></center>"); %>


<br>
<br>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:if test="${not empty requestScope.record}" var="b">
<c:forEach items="${requestScope.record}" var="a">
 <form action="com.cv.updation.Info_Updation" method="post">
<!-- Personal Information  -->
<div class="collapsible">Personal Information</div>
<div class="content">
<input type="hidden" value="<c:out value='${a.time}'/>" name="time" >

<table>
<tr>
<td>Name</td>
<td>
<input type="text" name="name" class="txt" placeholder="Full Name" value="<c:out value='${a.name}'/>"  required>
</td>

</tr>

<tr>
<td>Email</td>
<td>
<input type="email" name="email" class="txt" placeholder="Your Email.">
</td>


</tr>
<tr>
<td>Contact</td>
<td>
<input type="text" name="no" class="txt" placeholder="Your Contact no." pattern="[0-9]{10}">
</td>
</tr>

</table>
<table>
<tr>
<td>Address</td>
<td>
<textarea cols="60" rows="10" name="address"  placeholder="Your Address*" ></textarea>
</td>
</tr>
</table>
<br>
</div>

<br>
<br>


<div class="collapsible">Educational Information</div>
<!-- Educational Information  -->
<div class="content">
<table>
<tr>
<th>Class</th>
<th>Year of passing</th>
<th>Percentage</th>
<th>Institute</th>
</tr>
<tr>
<td>10th</td>
<td>
<input type="text" name="edu1" class="txt" placeholder="Year of passing"    >
</td>



<td>
<input type="text"  name="ssc" class="txt" placeholder="Your 10th percentage."   >
</td>



<td>
<input type="text" name="ssc_ins" class="txt" placeholder="Name of the Institute."    >
</td>

</tr>
</table>

<table>
<tr>
<td>12th</td>
<td>
<input type="text" name="edu2" class="txt" placeholder="Year of passing"    >
</td>



<td>
<input type="text" name="hsc" class="txt" placeholder="Your 12th percentage."   >
</td>



<td>
<input type="text" name="hsc_ins" class="txt" placeholder="Name of the Institute."   >
</td>

</tr>
</table>


<table>
<tr>
<td>
<select name="dgree_name" class="sel"  >
<option>BE</option>
<option>MBA</option>
<option>Others</option>

</select>
</td>
<td>
<input type="text" name="edu3" class="txt" placeholder="Year of passing"    >
</td>




<td>
<input type="text" name="dgree_per" class="txt" placeholder="Overall percentage(in %)."    >
</td>



<td>
<input type="text" name="dgree_ins" class="txt" placeholder="Name of the institute."    >
</td>


</tr>
<tr>

</tr>

</table>
<br>
</div>

<br>
<br>


<div class="collapsible">Objective</div>
<!--Objective  -->
<div class="content">
<br>
<textarea cols="120" rows="10" class="ta" name="obj" placeholder="Your Objective*"   ></textarea>
<br>
</div>

<br>
<br>

<div class="collapsible" title="Write your skills here">Your Skills</div>
<!-- Skill  -->
<div class="content">
<table>

<tr>
<th>Skills</th>
<th>Skills</th>
</tr>

<tr>


<td>
<input type="text" name="s1" class="txt" placeholder="Skill."   >
</td>

<td>
<input type="text" name="s2" class="txt" placeholder="Skill" >
</td>


</tr>

<tr>


<td>
<input type="text" name="s3" class="txt" placeholder="Skill." >
</td>

<td>
<input type="text" name="s4" class="txt" placeholder="Skill">
</td>


</tr>

<tr>


<td>
<input type="text" name="s5" class="txt" placeholder="Skill." >
</td>

<td>
<input type="text" name="s6" class="txt" placeholder="Skill">
</td>


</tr>

<tr>


<td>
<input type="text" name="s7" class="txt" placeholder="Skill.">
</td>


<td>
<input type="text" name="s8" class="txt" placeholder="Skill" >
</td>


</tr>

<tr>


<td>
<input type="text" name="s9" class="txt" placeholder="Skill.">
</td>


<td>
<input type="text" name="s10" class="txt"  placeholder="Skill">
</td>


</tr>


</table>

</div>


<br>
<br>

<div class="collapsible" title="Write your project details here">Project Details</div>
<!-- Projects  -->
<div class="content">
<div class="collapsible" title="Write your project details here( )">Project-1*</div>
<!-- Project1  -->
<div class="content">
<table>
<tr>
<td>Project Name</td>
<td>
<input type="text" name="p1name" class="txt" placeholder="Project Name"   >
</td>
</tr>

<tr>
<td>Project Duration(in Months)</td>
<td>
<input type="text" name="p1time" class="txt" placeholder="Project Duration(in months)"   >
</td>
</tr>

<tr>
<td>About Project</td>
<td>
<textarea cols="120" rows="10" name="p1desc" class="ta" placeholder="About your project*"   ></textarea>
</td>
</tr>
</table>
</div>

<div class="collapsible" title="Write your project details here">Project-2</div>
<!-- Project2  -->
<div class="content">
<table>
<tr>
<td>Project Name</td>
<td>
<input type="text" name="p2name" class="txt" placeholder="Project Name" >
</td>
</tr>
<tr>
<td>Project Duration(in Months)</td>
<td>
<input type="text" name="p2time" class="txt"  placeholder="Project Duration(in months)">
</td>
</tr>
<tr>
<td>About Project</td>
<td>
<textarea cols="120" rows="10" name="p2desc" class="ta" placeholder="About your project*"></textarea>
</td>
</tr>
</table>

</div>

</div>

<br>
<br>

<div class="collapsible" title="Write your project details here">Achievements</div>
<!-- Achievements  -->
<div class="content">

<div class="collapsible" title="Write your achievements here( )">Achievement-1*</div>
<!-- Achievement-1  -->
<div class="content">
<br>
<textarea cols="120" rows="10" name="ach1" class="ta" placeholder="About your Achievement*"   ></textarea>
<br>
</div>

<div class="collapsible" title="Write your achievements here">Achievement-2</div>
<!-- Achievement-2  -->
<div class="content">
<br>
<textarea cols="120" rows="10" name="ach2" class="ta" placeholder="About your Achievement"></textarea>
<br>
</div>

<div class="collapsible" title="Write your achievements here">Achievement-3</div>
<!-- Achievement-3  -->
<div class="content">
<br>
<textarea cols="120" rows="10" name="ach3" class="ta" placeholder="About your Achievement"></textarea>
<br>
</div>

<div class="collapsible" title="Write your achievements here">Achievement-4</div>
<!-- Achievement-4  -->
<div class="content">
<br>
<textarea cols="120" rows="10" name="ach4" class="ta" placeholder="About your Achievement"></textarea>
<br>
</div>

<div class="collapsible" title="Write your achievements here">Achievement-5</div>
<!-- Achievement-5  -->
<div class="content">
<br>
<textarea cols="120" rows="10" name="ach5" class="ta" placeholder="About your Achievement"></textarea>
<br>
</div>

</div>

<br>
<br>

<div class="collapsible" title="Write your industrial training details here">Industrial exposure</div>
<!-- Industrial exposure  -->
<div class="content">
<div class="collapsible" title="Write your industrial training details here( )">Training-1*</div>
<!-- Industrial exposure  -->
<div class="content">
<br>
<table>
<tr>
<td>Training Name</td>
<td>
<input type="text" name="t1name" class="txt" placeholder="Traning Name*"    >
</td>
</tr>

<tr>
<td>Training Institute</td>
<td>
<input type="text" name="t1_ins" class="txt" placeholder="Training Institution*"   >
</td>
</tr>

<tr>
<td>About Training</td>
<td>
<textarea cols="120" rows="10" name="t1desc" class="ta" placeholder="About your Training"  ></textarea>
</td>
</tr>
</table>

<br>
</div>

<div class="collapsible" title="Write your industrial training details here">Training-2</div>
<!-- Industrial exposure  -->
<div class="content">
<br>
<table>
<tr>
<td>Training Name</td>
<td>
<input type="text" name="t2name" class="txt" placeholder="Traning Name" >
</td>
</tr>
<tr>
<td>Training Institution</td>
<td><input type="text" name="t2_ins" class="txt" placeholder="Training Institution" >
</td>
</tr>
<tr>
<td>About Training</td>
<td>
<textarea cols="120" rows="10" name="t2desc" class="ta" placeholder="About your Training" ></textarea>
</td>
</tr>
</table>

<br>
</div>
</div>

<br>
<br>

<div class="collapsible" title="Hobbies">Hobbies</div>
<!-- Hobbies  -->
<div class="content">
<table>
<tr>
<th>Hobbies</th>
<th>Hobbies</th>
</tr>

<tr>
<td>
<input type="text" name="h1" class="txt" placeholder="Hobby" title="Your Hobbie."    >
</td>


<td>
<input type="text" name="h2" class="txt"  placeholder="Hobby"  title="Your Hobbie.">
</td>
</tr>

<tr>
<td>
<input type="text" name="h3" class="txt" placeholder="Hobby"  title="Your Hobbie.">
</td>


<td>
<input type="text" name="h4" class="txt"  placeholder="Hobby"  title="Your Hobbie.">
</td>
</tr>

<tr>
<td>
<input type="text" name="h5" class="txt"  placeholder="Hobby"  title="Your Hobbie.">
</td>
</tr>


</table>

</div>

<br>
<br>

<div class="collapsible" title="verify your information">Declaration</div>
<!-- Declaration  -->
<div class="content">

<h3><font color="white">I hereby declare that the above-mentioned information is correct up to my knowledge and I bear the responsibility
for the correctness of the above-mentioned particulars.  </font></h3>

<br>

<table>
<tr>
<td>
<input type="text" name="place" class="txt" placeholder="Place" title="Your place."    >
</td>


<td>
<input type="text" name="decname" class="txt"  placeholder="Name" title="Your name."    >
</td>
</tr>
</table>

<br>

</div>

<br>
<br>


<center> <input type="submit" class="btn" value="Save">&nbsp<input type="reset" class="btn" value="Reset">
</center>

</form> 
</c:forEach>
</c:if>
</div>
















<script>


/* var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
} */


</script>

</body>
</html>