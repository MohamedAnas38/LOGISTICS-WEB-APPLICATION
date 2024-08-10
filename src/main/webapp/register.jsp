<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Safest Logistics - Register</title>
    <style type="text/css">
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Basic styling for header, main, and footer */
header {
    background-color: #333;
    color: #fff;
    padding: 10px 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

nav ul {
    list-style-type: none;
    display: flex;
}

nav ul li {
    margin-right: 20px;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
    font-weight: bold;
}

main {
    padding: 20px;
}

.register {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
}

.register h2 {
    text-align: center;
    margin-bottom: 20px;
}

.register form {
    display: flex;
    flex-direction: column;
}

.register label {
    margin-bottom: 10px;
}

.register input[type="text"],
.register input[type="email"],
.register input[type="tel"],
.register input[type="password"] {
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 3px;
    font-size: 1em;
}

#submit {
    padding: 10px;
    background-color: #333;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    font-size: 1em;
}

#submit:hover {
    background-color: #555;
}

.footer-links {
    text-align: center;
    margin-bottom: 10px;
}

.footer-links a {
    margin: 0 10px;
    color: #333;
    text-decoration: none;
}

footer {
    background-color: #f9f9f9;
    padding: 10px 20px;
    text-align: center;
}
    </style>
    <script type="text/javascript">
function myFunction(){
	
	
	 var uname=document.getElementById("username").value;
	 var pas=document.getElementById("password").value;
	 var cpas=document.getElementById("confirm_password").value;
	 var mobnum=document.getElementById("mobile").value;
	 var mail=document.getElementById("email").value;
	 
	 var username=uname.trim();
	 var password=pas.trim();
	 var confirmpassword=cpas.trim();
	 var mobilenum= mobnum.trim();
	 var email= mail.trim();
	 
	 
	 if(username == ""){
		 alert("Please fill the User Name Feild!!");
		 return false; 
	 }
	 if(password == ""){
		 alert("Please fill Password Feild!!");
		 return false;
	 }
	 if(confirmpassword == ""){
		 alert("Please fill Confrom Password Feild!!");
		 return false;
	 }
	 if(mobilenum == ""){
		 alert("Please fill Mobile Number Feild!!");
		 return false;
	 }
	 if(email == ""){
		 alert("Please fill Email Id Feild!!");
		 return false;
	 }
}  
</script>
</head>
<body>
    <header>
        <div class="logo">
            Safest Logistics
        </div>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="register">
            <h2>Register</h2>
            <form action="NewUser" method="post" onsubmit="return myFunction()">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" >
                
                <label for="email">Email:</label>
                <input type="email" id="email" name="email">
                
                <label for="mobile">Mobile Number:</label>
                <input type="tel" id="mobile" name="mobile" pattern="[0-9]{10}" >
                
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" >
                
                <label for="confirm_password">Confirm Password:</label>
                <input type="password" id="confirm_password" name="confirm_password" >
                
              <!--   <button type="submit">Register</button> -->
                <input type="submit" name="submit" value="Register" id="submit">
            </form>
            <p>Already have an account? <a href="index.jsp">Login here</a>.</p>
        </section>
    </main>

    <footer>
        <div class="footer-links">
            <a href="#">Terms of Service</a>
            <a href="#">Privacy Policy</a>
        </div>
        <p>&copy; 2024 Safest Logistics. All rights reserved.</p>
    </footer>
</body>
</html>