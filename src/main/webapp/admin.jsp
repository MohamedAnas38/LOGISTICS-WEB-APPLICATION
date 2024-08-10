<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Safest Logistics - Admin Panel</title>
    <style type="text/css">
    /* Reset default styles */
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
    
    body {
	background-image: url("https://images.pexels.com/photos/1117210/pexels-photo-1117210.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=10");
    background-size: cover; /* Cover the entire viewport */
    background-repeat: no-repeat; /* Prevent the image from repeating */
    background-position: center; /* Center the image */
    font-family: Arial, sans-serif;
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
        /* width: 100%; */  
        /* height: 100vh; */
        /*  margin-left: 250px; */ /* Adjust for sidebar width */
        padding: 20px;
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
    }

    .card {
        flex:  300px; /* Adjust card width */
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
         color:#DC143C;
        background-color:#fffcfc60;
        font-weight: bold;
    }

    .card h2 {
        margin-bottom: 10px;
        color:#800000;
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
    }

    .footer-links a {
        margin: 0 10px;
        color: white;
        text-decoration: none;
    }

    footer {
       /*  background-color: #f9f9f9; */
        padding: 10px 20px;
        text-align: center;
        color: white;
    }
    </style>
</head>
<body>

<% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
    <header>
        <div class="logo">
            Safest Logistics Admin
        </div>
        <button class="menu-toggle" aria-expanded="false" aria-controls="sidebar">
            Menu
        </button>
    </header>

    <div id="sidebar" class="sidebar">
        <nav>
            <ul>
                <li><a href="viewuser.jsp">View Users</a></li>
                <li><a href="UpdateShipmentStatus.jsp">Update Shipment Detail</a></li>
                <li><a href="Adminaddshipment.jsp">Add Shipment</a></li>
                <li><a href="viewshipmentdetails.jsp">View All Shipments</a></li>
                <li><a href="logout">Logout</a></li> <!-- Link to logout.php for logout functionality -->
            </ul>
        </nav>
    </div>

    <main>
        <section id="view-users" class="card">
            <h2>View Users</h2>
            <p>Click here to view all registered users.</p>
            <a href="viewuser.jsp" class="card-link">View Users</a>
        </section>

        <section id="update-shipment" class="card">
            <h2>Update Shipment Status</h2>
            <p>Click here to update shipment details.</p>
            <a href="UpdateShipmentStatus.jsp" class="card-link">Update Shipment</a>
        </section>

        <section id="add-shipment" class="card">
            <h2>Add Shipment Details</h2>
            <p>Click here to add a new shipment details.</p>
            <a href="Adminaddshipment.jsp" class="card-link">Add Shipment</a>
        </section>

        <section id="view-shipments" class="card">
            <h2>View All Shipments</h2>
            <p>Click here to view all shipments.</p>
            <a href="viewshipmentdetails.jsp" class="card-link">View Shipments</a>
        </section>
    </main>

    <footer>
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
