<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign in/Sign up</title>
<link href="css/showhide.css" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="js/showhide.js"></script>


</head>
<body>


<div id="main">
<!-- Create Div First For Login Form -->
<div id="first">
<h3>Login Here</h3>
<form action="com.cv.services.ServiceLogin" method="post">
<input id="loginemail" placeholder="Email" name="email" type="text">
<input id="loginpassword" placeholder="Password" name="password" type="password">
<input class="b" type="submit" value="Sign In">
<p id="one"><a href="#">Forgot Password ?</a></p>
<p id="two">Don't have account? <a class="signup" href="#" id="signup">Sign up here</a></p>
</form>
</div>
<!-- Create Div Second For Signup Form-->
<div id="second">
<h3>Sing up here</h3>
<form action="com.cv.services.ServiceRegister"  method="post" name="form">
<input id="name" placeholder="Full Name" name="name" type="text">
<input id="email" placeholder="Email" name="email" type="text">
<input id="password" placeholder="Password" name="password" type="password">
<input id="contact" placeholder="Contact Number" name="contact" type="text">
<input  type="submit" class="b" value="Create your account">
<p id="two">Already have an account? <a class="signin" href="#" id="signin">Sign in</a></p>
</form>
</div>
</div>



</body>
</html>