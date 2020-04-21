<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
	function formValidation()
	{
		var prn = document.registration.prn;
		var fname=document.registration.fname;
		var lname=document.registration.lname;
		var mob=document.registration.mob;
		var email=document.registration.email;
		
		var msex=document.registration.m;
		var fsex=document.registration.f;
		var branch=document.registration.branch;
		var uname=document.registration.uname;
		var pass=document.registration.pass;
		if (prn_validation(prn))
		{
			if(fname_validation(fname))
				{
				if(lname_validation(lname))
					{
					if(mob_validation(mob))
						{
						
						}
					}
			
				}
			
		}
		return false;
	}
		
	function prn_validation(prn)
	{
		var letters = /^[0-9a-zA-Z]+$/;
		if(prn.value.match(letters))
		{
		return true;
		}
		else
		{
		alert('PRN must have alphabets or numeric characters only');
		prn.focus();
		return false;
		}
	}
	function fname_validation(fname) 
	{	
		var letters = /^[A-Za-z]+$/;
		if(fname.value.match(letters))
		{
		return true;
		}
		else
		{
		alert('First Name should not be empty/First Name must have alphabet characters only');
		uname.focus();
		return false;
		}
		
	}
	function lname_validation(lname) 
	{	
		var letters = /^[A-Za-z]+$/;
		if(lname.value.match(letters))
		{
		return true;
		}
		else
		{
		alert('Last Name should not be empty/Last Name must have alphabet characters only');
		lname.focus();
		return false;
		}
		
	}
	function mob_validation(mob)
	{
		var numbers = /^[0-9]+$/;
		if(mob.value.match(numbers))
		{
		return true;
		}
		else
		{
		alert('Mobile number must have numeric characters only');
		mob.focus();
		return false;
		}
	}
		
	function email_validation(email)
	{
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if(email.value.match(mailformat))
		{
		return true;
		}
		else
		{
		alert("You have entered an invalid email address!");
		email.focus();
		return false;
		}
	}

	function sex_validation(msex,fsex)
	{
		x=0;

		if(msex.checked) 
			{
			x++;
			} 
		if(fsex.checked)
			{
				x++; 
			}
		if(x==0)
		{
			alert('Select Male/Female');
			msex.focus();
			return false;
		}
		else
		{
		return true;
		}	
	}

	function branch_validation(branch)
	{
		if(branch.value == "Default")
		{
		alert('Select your branch from the list');
		branch.focus();
		return false;
		}
		else
		{
		return true;
		}
	}

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

	alert('Submission Succesfull ');
	return true;
	}


	
	
</script>
<body>

<form name='registration' onSubmit="return formValidation();">
<label for="prn">PRN NUMBER:</label>
<input type="text" name="prn" size="9" ><br><br>
FIRST NAME:
<input type="text" name="fname" ><br><br>	
LAST NAME:
<input type="text" name="lname" ><br><br>
MOBILE NO:
<input type="text" name="mob" ><br><br>



<input style="text-align: center;" type="submit" name="submit" value="Submit" />
</form>

</body>
</html>