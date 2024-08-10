<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Successful</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f4f4f4;
            text-align: center;
            padding: 20px;
        }

        header {
            width: 100%;
            background-color: #333;
            color: #fff;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .menu-toggle {
            background-color: #333;	
            border: none;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 250px;
            background-color: #333;
            color: #fff;
            padding: 15px;
            display: none;
            z-index: 1000;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        }

        .sidebar nav ul {
            list-style-type: none;
        }

        .sidebar nav ul li {
            margin-bottom: 10px;
        }

        .sidebar nav ul li a {
            color: #fff;
            text-decoration: none;
            display: block;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .sidebar nav ul li a:hover {
            background-color: #575757;
        }

        .sidebar.show {
            display: block;
        }

        main {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
            margin: 20px auto;
        }

        h2 {
            color: #4CAF50;
            margin-bottom: 20px;
        }

        a.button {
            display: inline-block;
            padding: 10px 20px;
            color: #fff;
            background-color: #007BFF;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a.button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
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
                <li><a href="logout">Logout</a></li>
            </ul>
        </nav>
    </div>

    <main>
        <h2>Shipment status updated successfully!</h2>
        <a href="UpdateShipmentStatus.jsp" class="button">Update another shipment</a>
    </main>

    <script>
        document.querySelector('.menu-toggle').addEventListener('click', function() {
            var sidebar = document.getElementById('sidebar');
            sidebar.classList.toggle('show');
        });
    </script>
</body>
</html>
