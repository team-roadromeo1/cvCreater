<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<title>Information</title>

  <link href="css/collapsible.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="css/showhide.css" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="js/showhide.js"></script>


 <style>
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

 
   body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.link{
color: black;
font-style: italic;
}

.link:hover {
	color: red;
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
  display: none;
  overflow: hidden;
  background-color: #333;
}
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.active {
  background-color: #4CAF50;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}



@media screen and (max-width: 600px) {
  .topnav.responsive {position: relative;}
  .topnav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .topnav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
}


.sel{
 width:150px;
 height:60px;
 margin-top:18px;
 margin-left:20px;
 padding:10px 8px;
 border-radius:15px;
 border-color:transparent;
 font-size: 16px;
 }

 
 .txt{
 width:250px;
 height:40px;
 padding:10px 8px;
 border-radius:15px;
 border-color:transparent;
 }

 .txtedu{
 width:350px;
 height:40px;
 padding:10px 8px;
 border-radius:15px;
 border-color:transparent;
 font-size: 15px;
 }

.test{
 width:150px;
 height:40px;
 padding:10px 8px;
 border-radius:15px;
 border-color:transparent;
 font-size: 15px;
 }

 
.ta{

 border-radius:15px;
 border-color:transparent;
 font-size: 15px;

}

.r{
font-size: 22px;
height: 18px;
width: 18px;
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

table {
	width: 50%;
	border-collapse: separate;
	table-layout: fixed;
	
}
 </style> 
  
</head>
<body>
 <script src="js/collapsible.js"></script>
 


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
	/* System.out.println("We are at infromation view and key assets are: "+name+" and "+id);
	 */session.setAttribute("name", name);
	session.setAttribute("id", id);
	
}
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
      <a class="nav-link" href="ServiceProfile">Home</a>
    </li>


    <li class="nav-item">
      <a class="nav-link" href="#"> </a>
    </li>



<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
<div id="main">
<!-- Create Div First For Login Form -->
<div id="first">
   <span class="close" title="close the tab">&times;</span>
  <form action="com.cv.templates.temp1" method="post">
  <br>
  <br>
  

<center><input name="filename" placeholder="File Name"  class="txt" type="text" title="Save your cv with your desired name." required><br>
<input  type="submit" class="b" value="Save">
<br>
<br>
</center>
</form>
</div>
  </div>
     </div>

    <li class="nav-item">
      <a class="nav-link" href="#">Create</a>
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
        <a class="dropdown-item" href="Edit_Profile">Edit Account info</a>
        <a class="dropdown-item" href="com.cv.services.ServiceLogout">Logout</a>
      </div>
    
    </li>

  </ul>
  
  
  
</nav>


<br>


<div class="container-fluid" style="margin-top:80px">
<% out.println("<center><h3>Please fill the information below to make save your cv "+name+".</h3></center>"); %>


<br>


<form method="post" action="com.cv.info.InfoSer">

<button class="collapsible">Personal Information</button>
<!-- Personal Information  -->
<div class="content">

<table>
<tr>
<td>
<input type="text" name="fname" class="txt" placeholder="First Name"  required>
</td>
<td>
<input type="text" name="lname" class="txt" placeholder="Last Name"  required>
</td>
</tr>

<tr>

<td>
<input type="email" name="email" class="txt" placeholder="Your Email."  required>
</td>

<td>
<input type="text" name="no" class="txt" placeholder="Your Contact no." pattern="[0-9]{10}"  required>
</td>

</tr>
</table>
<table>
<tr>
<td>
<textarea cols="120" rows="10" name="address" class="ta" placeholder="Your Address*"  required></textarea>
</td>
</tr>
</table>
<br>
</div>



<br>
<br>
<br>


<button class="collapsible">Educational Information</button>
<!-- Educational Information  -->
<div class="content">
<table>
<tr>
<td>

<select name="edu1" class="sel" required>
<option>Year of passing</option>
<option>Pursuing</option>
<option>1990</option>
<option>1991</option>
<option>1992</option>
<option>1993</option>
<option>1994</option>
<option>1995</option>
<option>1996</option>
<option>1997</option>
<option>1998</option>
<option>1999</option>
<option>2000</option>
<option>2001</option>
<option>2002</option>
<option>2003</option>
<option>2004</option>
<option>2005</option>
<option>2006</option>
<option>2007</option>
<option>2008</option>
<option>2009</option>
<option>2010</option>
<option>2011</option>
<option>2012</option>
<option>2013</option>
<option>2014</option>
<option>2015</option>
<option>2016</option>
<option>2017</option>
<option>2018</option>
</select>
</td>

<td>

</td>
<td>

</td>


<td>
<input type="text"  name="ssc" class="txtedu" placeholder="Your 10th percentage."  required>
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
<input type="text" name="ssc_ins" class="txtedu" placeholder="Name of the Institute."  required>
</td>

</tr>
</table>

<table>
<tr>
<td>
<select name="edu2" class="sel" required>
<option>Year of passing</option>
<option>Pursuing</option>
<option>1990</option>
<option>1991</option>
<option>1992</option>
<option>1993</option>
<option>1994</option>
<option>1995</option>
<option>1996</option>
<option>1997</option>
<option>1998</option>
<option>1999</option>
<option>2000</option>
<option>2001</option>
<option>2002</option>
<option>2003</option>
<option>2004</option>
<option>2005</option>
<option>2006</option>
<option>2007</option>
<option>2008</option>
<option>2009</option>
<option>2010</option>
<option>2011</option>
<option>2012</option>
<option>2013</option>
<option>2014</option>
<option>2015</option>
<option>2016</option>
<option>2017</option>
<option>2018</option>
</select>
</td>

<td>

</td>
<td>

</td>


<td>
<input type="text" name="hsc" class="txtedu" placeholder="Your 12th percentage." required>
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
<input type="text" name="hsc_ins" class="txtedu" placeholder="Name of the Institute." required>
</td>

</tr>
</table>


<table>
<tr>

<td>
<select name="edu3" class="sel" required>
<option>Year of passing</option>
<option>Pursuing</option>
<option>Not Done</option>
<option>1990</option>
<option>1991</option>
<option>1992</option>
<option>1993</option>
<option>1994</option>
<option>1995</option>
<option>1996</option>
<option>1997</option>
<option>1998</option>
<option>1999</option>
<option>2000</option>
<option>2001</option>
<option>2002</option>
<option>2003</option>
<option>2004</option>
<option>2005</option>
<option>2006</option>
<option>2007</option>
<option>2008</option>
<option>2009</option>
<option>2010</option>
<option>2011</option>
<option>2012</option>
<option>2013</option>
<option>2014</option>
<option>2015</option>
<option>2016</option>
<option>2017</option>
<option>2018</option>
</select>
</td>


<td>

</td>
<td>

</td>


<td>
<input type="text" name="dgree_per" class="txtedu" placeholder="Overall percentage(in %)."  required>
</td>

<td></td>
<td></td>
<td></td>
<td></td>
<td></td>


<td>
<input type="text" name="dgree_ins" class="txtedu" placeholder="Name of the institute."  required>
</td>


</tr>
<tr>

<td>
<select name="dgree_name" class="sel" required>
<option>BE</option>
<option>BSC</option>
<option>B.Com</option>
<option>Other</option>
</select>
</td>

</tr>

</table>
<br>
</div>


<br>
<br>
<br>



<button class="collapsible">Objective</button>
<!--Objective  -->
<div class="content">
<br>
<textarea cols="120" rows="10" class="ta" name="obj" placeholder="Your Objective*"  required></textarea>
<br>
</div>


<br>
<br>
<br>


<button class="collapsible" title="Write your skills here">Your Skills</button>
<!-- Skill  -->
<div class="content">

<table>
<tr>


<td>
<input type="text" name="s1" class="txtedu" placeholder="Skill."  required>
</td>

<td> </td>
<td> </td>
<td> </td>

<td>
<input type="text" name="s2" class="txtedu" placeholder="Skill" >
</td>


</tr>

<tr>


<td>
<input type="text" name="s3" class="txtedu" placeholder="Skill.">
</td>

<td> </td>
<td> </td>
<td> </td>

<td>
<input type="text" name="s4" class="txtedu" placeholder="Skill" >
</td>


</tr>

<tr>


<td>
<input type="text" name="s5" class="txtedu" placeholder="Skill.">
</td>

<td> </td>
<td> </td>
<td> </td>

<td>
<input type="text" name="s6" class="txtedu" placeholder="Skill" >
</td>


</tr>

<tr>


<td>
<input type="text" name="s7" class="txtedu" placeholder="Skill.">
</td>

<td> </td>
<td> </td>
<td> </td>

<td>
<input type="text" name="s8" class="txtedu" placeholder="Skill" >
</td>


</tr>

<tr>


<td>
<input type="text" name="s9" class="txtedu" placeholder="Skill.">
</td>

<td> </td>
<td> </td>
<td> </td>

<td>
<input type="text" name="s10" class="txtedu"  placeholder="Skill" >
</td>


</tr>


</table>

</div>


<br>
<br>
<br>

<button class="collapsible" title="Write your project details here">Project Details</button>
<!-- Projects  -->
<div class="content">

<button class="collapsible" title="Write your project details here( )">Project-1*</button>
<!-- Project1  -->
<div class="content">

<table>
<tr>
<td>
<input type="text" name="p1name" class="txt" placeholder="Project Name"  required>
</td>
<td>
<input type="text" name="p1time" class="txt" placeholder="Project Duration(in months)"  required>
</td>
</tr>

</table>
<table>
<tr>
<td>
<textarea cols="120" rows="10" name="p1desc" class="ta" placeholder="About your project*"  required></textarea>
</td>
</tr>
</table>

</div>


<button class="collapsible" title="Write your project details here">Project-2</button>
<!-- Project2  -->
<div class="content">
<table>
<tr>
<td>
<input type="text" name="p2name" class="txt" placeholder="Project Name"  >
</td>
<td>
<input type="text" name="p2time" class="txt" placeholder="Project Duration(in months)"  >
</td>
</tr>

</table>
<table>
<tr>
<td>
<textarea cols="120" rows="10" name="p2desc" class="ta" placeholder="About your project*"  ></textarea>
</td>
</tr>
</table>

</div>

<br>
</div>

<br>
<br>
<br>

<button class="collapsible" title="Write your project details here">Achievements</button>
<!-- Achievements  -->
<div class="content">

<button class="collapsible" title="Write your achievements here( )">Achievement-1*</button>
<!-- Achievement-1  -->
<div class="content">
<br>
<textarea cols="120" rows="10" name="ach1" class="ta" placeholder="About your Achievement*"  required></textarea>
<br>
</div>

<button class="collapsible" title="Write your achievements here">Achievement-2</button>
<!-- Achievement-2  -->
<div class="content">
<br>
<textarea cols="120" rows="10" name="ach2" class="ta" placeholder="About your Achievement"></textarea>
<br>
</div>

<button class="collapsible" title="Write your achievements here">Achievement-3</button>
<!-- Achievement-3  -->
<div class="content">
<br>
<textarea cols="120" rows="10" name="ach3" class="ta" placeholder="About your Achievement"></textarea>
<br>
</div>

<button class="collapsible" title="Write your achievements here">Achievement-4</button>
<!-- Achievement-4  -->
<div class="content">
<br>
<textarea cols="120" rows="10" name="ach4" class="ta" placeholder="About your Achievement"></textarea>
<br>
</div>

<button class="collapsible" title="Write your achievements here">Achievement-5</button>
<!-- Achievement-5  -->
<div class="content">
<br>
<textarea cols="120" rows="10" name="ach5" class="ta" placeholder="About your Achievement"></textarea>
<br>
</div>

</div>

<br>
<br>
<br>

<button class="collapsible" title="Write your industrial training details here">Industrial exposure</button>
<!-- Industrial exposure  -->
<div class="content">
<button class="collapsible" title="Write your industrial training details here( )">Training-1*</button>
<!-- Industrial exposure  -->
<div class="content">
<br>
<table>
<tr>
<td>
<input type="text" name="t1name" class="txt" placeholder="Traning Name*"  required>
</td>
<td>
<input type="text" name="t1_ins" class="txt" placeholder="Training Institution*"  required>
</td>
</tr>

</table>
<table>
<tr>
<td>
<textarea cols="120" rows="10" name="t1desc" class="ta" placeholder="About your Training" required></textarea>
</td>
</tr>
</table>

<br>
</div>

<button class="collapsible" title="Write your industrial training details here">Training-2</button>
<!-- Industrial exposure  -->
<div class="content">
<br>
<table>
<tr>
<td>
<input type="text" name="t2name" class="txt" placeholder="Traning Name"  >
</td>
<td>
<input type="text" name="t2_ins" class="txt" placeholder="Training Institution"  >
</td>
</tr>

</table>
<table>
<tr>
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
<br>


<button class="collapsible" title="verify your information">Hobbies</button>
<!-- Hobbies  -->
<div class="content">
<table>
<tr>
<td>
<input type="text" name="h1" class="txtedu" placeholder="Hobby" title="Your Hobbie."  required>
</td>

<td> </td>
<td> </td>
<td> </td>

<td>
<input type="text" name="h2" class="txtedu"  placeholder="Hobby" title="Your Hobbie.">
</td>
</tr>

<tr>
<td>
<input type="text" name="h3" class="txtedu" placeholder="Hobby" title="Your Hobbie.">
</td>

<td> </td>
<td> </td>
<td> </td>

<td>
<input type="text" name="h4" class="txtedu"  placeholder="Hobby" title="Your Hobbie.">
</td>
</tr>

<tr>
<td>
<input type="text" name="h5" class="txtedu"  placeholder="Hobby" title="Your Hobbie.">
</td>
</tr>


</table>

</div>

<br>
<br>
<br>


<button class="collapsible" title="verify your information">Declaration</button>
<!-- Declaration  -->
<div class="content">

<h3><font color="white">I hereby declare that the above-mentioned information is correct up to my knowledge and I bear the responsibility
for the correctness of the above-mentioned particulars.  </font></h3>

<br>

<table>
<tr>
<td>
<input type="text" name="place" class="txtedu" placeholder="Place" title="Your place."  required>
</td>

<td> </td>
<td> </td>
<td> </td>

<td>
<input type="text" name="decname" class="txtedu"  placeholder="Name" title="Your name."  required>
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

</div>

<script type="text/javascript">
var coll = document.getElementsByClassName("collapsible");
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
}
</script>

</body>
</html>