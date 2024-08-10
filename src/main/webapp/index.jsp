<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Safest Logistics - Home</title>

<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	color:white;
}

body {
	background-image: url("https://images.pexels.com/photos/1095814/pexels-photo-1095814.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
    background-size: cover; /* Cover the entire viewport */
    background-repeat: no-repeat; /* Prevent the image from repeating */
    background-position: center; /* Center the image */
    font-family: Arial, sans-serif;
}

/* Basic styling for header, main, and footer */
header {
	background-color: rgba(51, 51, 51, 0.8); /* Semi-transparent background for better text visibility */
	color: #fff;
	padding: 10px 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.logo{
font-family: font-family: "Times New Roman", Times, serif;
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
/* 	background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background for readability */
 */	border-radius: 8px;
}

.welcome {
	text-align: center;
	margin-bottom: 40px;
}

.login {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #fffcfc40;
}

form{
	color:black;
	font-weight: bold;
}

.login h2 {
	text-align: center;
	margin-bottom: 20px;
	color:black;
	
}

.login form {
	display: flex;
	flex-direction: column;
	color:black;
}

.login label {
	margin-bottom: 10px;
	color:black;
	
}

.login input[type="text"], .login input[type="password"] {
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	font-size: 1em;
	color:black;
	
}

.register{
font-weight: bold;
color:black;
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
		color:white;
	
}

.footer-links a {
	margin: 0 10px;
	color: #333;
	text-decoration: none;
		color:white;
	
}

footer {
/* 	background-color: #f9f9f9;
 */	padding: 10px 20px;
	text-align: center;
}

</style>

<script type="text/javascript">
	function myFunction() {
		var uname = document.getElementById("username").value;
		var pas = document.getElementById("password").value;
		var username = uname.trim();
		var password = pas.trim();

		if (username == "") {
			alert("Please fill the User Name Field!!");
			return false;
		}
		if (password == "") {
			alert("Please fill Password Field!!");
			return false;
		}
	}
</script>
</head>
<body>
	<header>
		<div class="logo">Safest Logistics</div>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="services.jsp">Services</a></li>
				<li><a href="AboutUs.jsp">About Us</a></li>
				<li><a href="ContactUs.jsp">Contact Us</a></li>
			</ul>
		</nav>
	</header>

	<main>
		<section class="welcome">
			<h1>Welcome to Safest Logistics</h1>
			<p>Your trusted partner in safe and reliable logistics solutions.</p>
		</section>

		<section class="login">
			<h2>Login</h2>
			<form action="logincheck" method="post" onsubmit="return myFunction()">
				<label for="username">Username or Email:</label>
				<input type="text" id="username" name="username">
				<label for="password">Password:</label>
				<input type="password" id="password" name="password">
				<input type="submit" name="submit" value="Login" id="submit">
			</form>
			<p class="register">
				Don't have an account? <a href="register.jsp" class="register">Register here</a>.
			</p>
		</section>
	</main>

	<footer>
		<div class="footer-links">
			<a href="#">Terms of Service</a> <a href="#">Privacy Policy</a>
		</div>
		<p>&copy; 2024 Safest Logistics. All rights reserved.</p>
	</footer>
</body>
</html>
