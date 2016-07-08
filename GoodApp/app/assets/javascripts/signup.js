function allalphabetic(inputtxt)
    {
      var alphabets = /^[a-z]+$/;
      if(inputtxt.value.match(alphabets))
      {
			return true;
      }
      else
      {
      alert('Please input alphabets only');
      document.registration.firstname.focus();
      return false;
      }
    }
function requiredemail()
	{
		var empt = document.forms["registration"]["email"].value;
		if (empt == "")
		{
			alert("Please input a Value for email");
			document.registration.email.focus();
			return false;
		}
		else 
		{
			return true; 
		}
	}
function checkpass()
{
	var pass = document.forms["registration"]["pass"].value;
	if(pass.length<8)
	{
		alert("Password minimum 8 characters");
		return false;
	}
	else
	{
		return true;
	}	
}
function confirmpass(pass,cpass)
{
	if(cpass.value.match(pass))
      {
			return true;
      }
      else
      {
      alert('Passwords dont match');
      document.registration.pass.focus();
      return false;
      }
}
