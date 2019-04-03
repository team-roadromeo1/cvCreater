<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Information</title>
  <link href="css/collapsible.css" rel="stylesheet">
 <style>
 
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
 width:415px;
 height:62px;
 font-size: 1.25em;
 font-weight: 350;
 margin-top:18px;
 margin-left:20px;
 padding:10px 8px;
 border-radius:15px;
 border-color:transparent;
 }
 
 .txt{
 width:200px;
 height:18px;
 padding:10px 8px;
 border-radius:15px;
 border-color:transparent;
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
 

<br>
<br>


<form method="post" action="com.cv.info.InfoSer">

<button class="collapsible">Personal Information</button>
<!-- Personal Information  -->
<div class="content">
<center>
<table>
<tr>
<td>
<input type="text" name="fname" placeholder="First Name" required>
</td>
<td>
<input type="text" name="lname" placeholder="Last Name" required>
</td>
</tr>

<tr>

<td>
<input type="email" name="email" placeholder="Your Email." required>
</td>

<td>
<input type="text" name="no" placeholder="Your Contact no." required>
</td>

</tr>
</table>
<table>
<tr>
<td>
<textarea cols="120" rows="10" name="address" placeholder="Your Address*" required></textarea>
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
<center>
<table>
<tr>
<td>
<input type="radio" name="edu1" value="10th" title="if you did class 10th">10th
</td>

<td>
<input type="text" name="ssc" placeholder="Your 10th percentage." required>
</td>

<td>
<input type="text" name="ssc_ins" placeholder="Name of the Institute." required>
</td>

</tr>

<tr>
<td>
<input type="radio" name="edu2" title="If you did diploma" value="diploma">Diploma(optional)
</td>

<td>
<input type="text" name="hsc" placeholder="Your Overall Diploma percentage.">
</td>

<td>
<input type="text" name="hsc_ins" placeholder="Name of the Institute." >
</td>
	

<tr>
<td>
<input type="radio" name="edu2" title="if you did class 12th" value="12th">12th
</td>

<td>
<input type="text" name="hsc" placeholder="Your 12th percentage." >
</td>

<td>
<input type="text" name="hsc_ins" placeholder="Name of the Institute." >
</td>

</tr>

<tr>
<td>
<select name="edu3">


<option>
Dgree/Course
</option>

<option>
BE
</option>

<option>
B.Tech
</option>

<option>
ME
</option>

<option>
M.Tech
</option>

<option>
Others
</option>

</select>
</td>

<td>
<input type="text" name="dgree" placeholder="Your Dgree/Course Overall Percentage." required>
</td>

<td>
<input type="text" name="dgree_ins" placeholder="Name of the Institute." required>
</td>

</tr>

</table>
</center>
<br>
</div>


<br>
<br>
<br>



<button class="collapsible">Objective</button>
<!--Objective  -->
<div class="content">
<br>
<textarea cols="120" rows="10" name="obj" placeholder="Your Objective*" required></textarea>
<br>
</div>


<br>
<br>





<table>
<tr>
<td>
</td>
</tr>
</table>
</div>
</center>
<br>
<center><input type="submit" class="btn" value="Save">&nbsp<input type="reset" class="btn" value="Reset">

</center>
</form>
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
</form>
</body>
</html>