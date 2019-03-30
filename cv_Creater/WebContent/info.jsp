<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Information</title>

<style type="text/css">
.d{
}

</style>
</head>
<body>
<br><br>
<form method="post" action="com.cv.info.InfoSer">
<center>
<div class="d">
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


<tr>
<td>
<select name="edu1">


<option>
10th
</option>


</select>

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
<select name="edu2">


<option>
12th
</option>


</select>
</td>

<td>
<input type="text" name="hsc" placeholder="Your 12th percentage." required>
</td>

<td>
<input type="text" name="hsc_ins" placeholder="Name of the Institute." required>
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

</table><br>

<table>
<tr>
<td>
<textarea cols="120" rows="10" name="obj" placeholder="Your Objective*" required></textarea>
</td>
</tr>
</table>
</div>
</center>
<br>
<center><input type="submit" value="Save"></center
</form>
</body>
</html>