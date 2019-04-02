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
</table>
<table>
<tr>
<td>
<textarea cols="120" rows="10" name="address" placeholder="Your Address*" required></textarea>
</td>
</tr>
</table>
<br>

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
<center><input type="submit" value="Save">&nbsp<input type="reset" value="Reset">

</center
</form>
</body>
</html>