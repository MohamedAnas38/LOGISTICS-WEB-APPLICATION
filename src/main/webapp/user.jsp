<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Page - Safest Logistics</title>
<style type="text/css">
/* Reset default styles */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
body{
background-image: url("https://images.pexels.com/photos/3057960/pexels-photo-3057960.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
    background-size: cover; /* Cover the entire viewport */
    background-repeat: no-repeat; /* Prevent the image from repeating */
    background-position: center; /* Center the image */
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

.logo {
	font-size: 1.5rem;
}

.menu-toggle {
	background: none;
	border: none;
	color: #fff;
	cursor: pointer;
	font-size: 1rem;
}

.sidebar {
	position: fixed;
	left: -250px;
	top: 0;
	bottom: 0;
	width: 250px;
	background-color: #333;
	transition: left 0.3s ease;
}

.sidebar.open {
	left: 0;
}

nav ul {
	list-style-type: none;
	padding: 20px;
}

nav ul li {
	margin-bottom: 10px;
}

nav ul li a {
	color: #fff;
	text-decoration: none;
	font-size: 1rem;
}

main {
	/*  margin-left: 250px; */ /* Adjust for sidebar width */
	width: 100%;
	padding: 20px;
	display: flex;
	flex-wrap: wrap;
	gap: 20px;
	justify-content: center; /* Center align cards horizontally */
}

.card {
	flex: 1 1 300px; /* Adjust card width */
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #fffcfc40;
	text-align: center; /* Center align content inside the card */
}

.card h2 {
	margin-bottom: 10px;
}

.card p {
	margin-bottom: 20px;
}

.card-link {
	display: inline-block;
	padding: 10px 20px;
	background-color: #333;
	color: #fff;
	text-decoration: none;
	border-radius: 3px;
}

.card-link:hover {
	background-color: #555;
}

.footer-links {
	text-align: center;
	margin-bottom: 10px;
	font-weight: bold;
	
}

.footer-links a {
	margin: 0 10px;
	color: white;
	text-decoration: none;
	font-weight: bold;
}
.copywrite{
font-weight: bold;
color: white;
}

footer {
	background-color: #fffcfc40;
	padding: 10px 20px;
	text-align: center;
	
}
</style>
</head>
<body>
	<header>
		<div class="logo">Safest Logistics User</div>
		<button class="menu-toggle" aria-expanded="false"
			aria-controls="sidebar">Menu</button>
	</header>

	<div id="sidebar" class="sidebar">
		<nav>
			<ul>
				<li><a href="bookshipment.jsp">Book Shipment</a></li>
				<li><a href="ViewShipmentStatus.jsp">Shipment Status</a></li>
				<li><a href="UpdateUserDetails.jsp?id=">Update Own Details</a></li>
				<li><a href="#cancel-shipment">Cancel Shipment</a></li>
				<li><a href="logout">Logout</a></li>
				<!-- Link to logout.php for logout functionality -->
			</ul>
		</nav>
	</div>

	<main>
		<section id="book-shipment" class="card">
			<h2>Book Shipment</h2>
			<p>Click here to book a new shipment.</p>
			<a href="bookshipment.jsp" class="card-link">Book Shipment</a>
		</section>

		<section id="shipment-status" class="card">
			<h2>Shipment Status</h2>
			<p>Check the status of your shipments.</p>
			<a href="ViewShipmentStatus.jsp" class="card-link">Shipment Status</a>
		</section>

		<section id="update-details" class="card">
			<h2>Update Own Details</h2>
			<p>Update your personal information.</p>
			<%
			session = request.getSession(false);
			String username=(String)session.getAttribute("username");
			

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logistics",
					"root", "anas5925");
			Statement stmt = con.createStatement();

			ResultSet rs = stmt.executeQuery("select id from userlogistics where uname='" + username + "'");
			while(rs.next()){
			String id=rs.getString("id");
		
			%> 
			<a href="UpdateUserDetails.jsp?id=<%= id %>" class="card-link">Update
				Details</a>
		</section>
		<%
			}
			
		%>
	
		<section id="cancel-shipment" class="card">
			<h2>Cancel Shipment</h2>
			<p>Cancel a scheduled shipment.</p>
			<a href="cancelShipment.jsp" class="card-link">Cancel Shipment</a>
		</section>
	</main>

	<footer>
		<div class="footer-links">
			<a href="#">Terms of Service</a> <a href="#">Privacy Policy</a>
		</div>
		<p class="copywrite">&copy; 2024 Safest Logistics. All rights reserved.</p>
	</footer>

	<script>
        // JavaScript to handle sidebar toggle
        const menuToggle = document.querySelector('.menu-toggle');
        const sidebar = document.getElementById('sidebar');

        menuToggle.addEventListener('click', () => {
            const expanded = menuToggle.getAttribute('aria-expanded') === 'true' || false;
            menuToggle.setAttribute('aria-expanded', !expanded);
            sidebar.classList.toggle('open');
        });
    </script>
</body>
</html>