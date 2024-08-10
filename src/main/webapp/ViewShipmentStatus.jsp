<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Shipment Status</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
    background-image: url("https://images.pexels.com/photos/4483610/pexels-photo-4483610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
    background-size: cover; /* Cover the entire viewport */
    background-repeat: no-repeat; /* Prevent the image from repeating */
    background-position: center; 
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
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
            z-index: 1000;
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

        .container {
            background-color: #fffcfc40;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            margin: 100px auto 20px auto; /* Adjusted for header height */
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
            font-weight: bolder;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            background-color: #fffcfc40;
            font-weight: bold;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        .footer {
            background-color: #fffcfc40;
            padding: 10px 20px;
            text-align: center;
            box-shadow: 0 -1px 10px rgba(0, 0, 0, 0.1);
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
    </style>
</head>
<body>

    <header>
        <div class="logo">
            Safest Logistics
        </div>
        <button class="menu-toggle" aria-expanded="false" aria-controls="sidebar">
            Menu
        </button>
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

    <div class="container">
        <h2>View Shipment Status</h2>
        <form action="ViewShipmentStatus1.jsp" method="get">
            <label for="id">Shipment ID:</label>
            <input type="text" id="id" name="id" placeholder="Enter Shipment ID" required><br>
            <input type="submit" value="View">
        </form>
    </div>

    <footer class="footer">
        <div class="footer-links">
            <a href="#">Terms of Service</a>
            <a href="#">Privacy Policy</a>
        </div>
        <p>&copy; 2024 Safest Logistics. All rights reserved.</p>
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
