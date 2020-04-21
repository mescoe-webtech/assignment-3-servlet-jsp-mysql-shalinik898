<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="mycss1.css">

		<h1> LOGIN FORM</h1>
		<div id="topnav">
			<ul>
  				<li><a class="active" href="#home">Home</a></li>
  				<li><a href="#news">News</a></li>
  				<li><a href="#contact">Contact</a></li>
  				<li><a href="#about">About</a></li>
			</ul>
	  	</div>
		<marquee behavior="scroll" direction="left"><h2 >LOGIN HERE!!</h2></marquee>
		<script>
	function formValidation()
	{
		var uname=document.registration.uname;
		var pass=document.registration.pass;
		if(uname_validation(uname,4,15))
		{
			if(pass_validation(pass,5,12))
				{
			
				}
		}
		return false;
		function uname_validation(uname,mx,my)
		{
		var uname_len = uname.value.length;
		if (uname_len == 0 || uname_len >= my || uname_len < mx)
		{
		alert("UserName should not be empty / length be between "+mx+" to "+my);
		uname.focus();
		return false;
		}
		return true;
		}


		function pass_validation(pass,mx,my)
		{
		var pass_len = pass.value.length;
		if (pass_len == 0 ||pass_len >= my || pass_len < mx)
		{
		alert("Password should not be empty / length be between "+mx+" to "+my);
		pass.focus();
		return false;
		}

		alert('Login Succesfull ');
		return true;
		}

	}
		</script>


</body>
	<form name='registration' onSubmit="return formValidation();">
			<div id="login1">
			<br><br>
			<img src="login.png">
			<br><br>
				USER NAME:
					<input type="text" name="uname" ><br><br>	
				PASSWORD:
					<input type="text" name="pass" ><br><br>
			
			
				<div id="d2">
					<button style="width: 140px; height: 30px"type="submit" name="submit" value="Submit"><b>LOGIN</b></button>
					<button style="width: 140px; height: 30px"><b>CANCEL</b></button>
				</div>
			<br><br>
			</div>
		</form>
</html>