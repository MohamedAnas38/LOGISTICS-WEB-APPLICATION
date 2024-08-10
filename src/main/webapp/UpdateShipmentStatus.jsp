<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Shipment Status</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body and Layout */
        body {
        
    background-image: url(" https://images.pexels.com/photos/6169638/pexels-photo-6169638.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
    background-size: cover; /* Cover the entire viewport */
    background-repeat: no-repeat; /* Prevent the image from repeating */
    background-position: center; 
       
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            height: 100vh;
            margin: 0;
        }

        /* Header Styling */
        header {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: relative;
            z-index: 1000;
        }

        .header-logo {
            font-size: 1.5rem;
        }

        .menu-toggle {
            background: none;
            border: none;
            color: #fff;
            cursor: pointer;
            font-size: 1.25rem;
            display: block; /* Show toggle button */
        }

        /* Sidebar Styling */
        .sidebar {
            position: fixed;
            top: 0;
            left: -250px;
            width: 250px;
            height: 100%;
            background-color: #333;
            color: #fff;
            transition: left 0.3s ease;
            overflow-y: auto;
            z-index: 999;
        }

        .sidebar.open {
            left: 0;
        }

        .sidebar h2 {
            text-align: center;
            margin: 20px 0;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar ul li {
            margin: 20px 0;
        }

        .sidebar ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            display: block;
            padding: 10px;
            text-align: center;
        }

        .sidebar ul li a:hover {
            background-color: #575757;
        }

        /* Main Content Styling */
        .main-content {
            margin-left: 0;
            padding: 20px;
            transition: margin-left 0.3s ease;
        }

        .main-content.with-sidebar {
            margin-left: 250px;
        }

        /* Container Styling */
        .container {
            background-color: #fffcfc30;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 0 auto;
            font-weight: bold;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: white;
            font-weight: bold;
        }

        input[type="number"],
        input[type="text"],
        select {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            background-color: #fffcfc30;
            font-weight: bold;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <div class="header-logo">
            Safest Logistics
        </div>
        <button class="menu-toggle" aria-expanded="false" aria-controls="sidebar">
            &#9776; <!-- Hamburger icon -->
        </button>
    </header>

    <!-- Sidebar -->
    <div id="sidebar" class="sidebar">
        <h2>Navigation</h2>
        <ul>
            <li><a href="viewuser.jsp">View Users</a></li>
            <li><a href="UpdateShipmentStatus.jsp">Update Shipment Status</a></li>
            <li><a href="Adminaddshipment.jsp">Add Shipment</a></li>
            <li><a href="viewshipmentdetails.jsp">View All Shipments</a></li>
            <li><a href="logout">Logout</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div id="main-content" class="main-content">
        <div class="container">
            <h2>Update Shipment Status</h2>
            <form action="UpdateShipmentStatus" method="post">
                <label for="id">Shipment ID:</label>
                <input type="number" id="id" name="id" required>

                <label for="status">Status:</label>
                <select id="status" name="status" required>
                    <option value="Ready for Delivery">Ready for Delivery</option>
                    <option value="In Transit">In Transit</option>
                    <option value="Delivered">Delivered</option>
                </select>

                <label for="place">Place:</label>
                <input type="text" id="place" name="place" required>

                <label for="estimatedDays">Estimated Days to Reach:</label>
                <input type="number" id="estimatedDays" name="estimatedDays" required>

                <input type="submit" value="Update Shipment">
            </form>
        </div>
    </div>

    <script>
        // JavaScript to handle sidebar toggle
        const menuToggle = document.querySelector('.menu-toggle');
        const sidebar = document.getElementById('sidebar');
        const mainContent = document.getElementById('main-content');

        menuToggle.addEventListener('click', () => {
            const expanded = menuToggle.getAttribute('aria-expanded') === 'true' || false;
            menuToggle.setAttribute('aria-expanded', !expanded);
            sidebar.classList.toggle('open');
            mainContent.classList.toggle('with-sidebar');
        });
    </script>

</body>
</html>
