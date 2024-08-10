<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Shipments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            overflow: hidden;
            transition: margin-left .3s;
            background-image: url("https://images.pexels.com/photos/1117211/pexels-photo-1117211.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* Prevent the image from repeating */
            background-position: center;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            text-align: center;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            font-size: 0.7rem; /* Smaller font size for header */
            box-sizing: border-box; /* Ensure padding is included in the height */
        }

        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: -250px; /* Hide sidebar by default */
            background-color: #333;
            color: #fff;
            transition: left 0.3s ease;
            padding-top: 60px; /* Adjust to account for header height */
            overflow-y: auto;
            z-index: 1000;
            box-sizing: border-box; /* Ensure padding is included in width */
        }

        h2 {
            color: white;
        }

        .sidebar a {
            color: #fff;
            text-decoration: none;
            padding: 15px 20px;
            display: block;
            font-size: 1.1rem;
        }

        .sidebar a:hover {
            background-color: #555;
        }

        .main-content {
            margin-left: 0;
            padding: 20px;
            flex: 1;
            transition: margin-left .3s;
            margin-top: 60px; /* Adjust to account for header height */
            width: calc(100% - 250px); /* Adjust to fill space next to sidebar */
            box-sizing: border-box; /* Ensure padding is included in width */
            overflow-y: auto; /* Allow scrolling if content overflows */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fffcfc60; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        thead {
            font-weight: 900;
        }

        tbody {
            font-weight: 500;
        }

        th {
            background-color: #fffcfc60;
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #fffcfc60;
        }

        tr:hover {
            background-color: #fffcfc60;
        }

        .menu-toggle {
            font-size: 24px;
            cursor: pointer;
            position: fixed;
            top: 15px;
            right: 20px;
            z-index: 1001;
        }
    </style>
    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById('sidebar');
            const mainContent = document.querySelector('.main-content');
            const isOpen = sidebar.style.left === '0px';

            if (isOpen) {
                sidebar.style.left = '-250px';
                mainContent.style.marginLeft = '0';
                mainContent.style.width = '100%'; // Full width when sidebar is hidden
            } else {
                sidebar.style.left = '0';
                mainContent.style.marginLeft = '250px';
                mainContent.style.width = 'calc(100% - 250px)'; // Adjust width when sidebar is visible
            }
        }
    </script>
</head>
<body>
    <header>
        <span class="menu-toggle" onclick="toggleSidebar()">&#9776;</span>
        <h1>Safest Logistics</h1>
    </header>

    <div id="sidebar" class="sidebar">
        <a href="viewuser.jsp">View Users</a>
        <a href="UpdateShipmentStatus.jsp">Update Shipment Status</a>
        <a href="Adminaddshipment.jsp">Add Shipment</a>
        <a href="viewshipmentdetails.jsp">View All Shipments</a>
        <a href="logout">Logout</a>
    </div>

    <div class="main-content">
        <h2>All Shipments</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Sender Name</th>
                    <th>Sender Number or Email</th>
                    <th>Pickup Point</th>
                    <th>Receiver Name</th>
                    <th>Receiver Number or Email</th>
                    <th>Drop Point</th>
                    <th>Delivery Location</th>
                    <th>Shipment Type</th>
                    <th>Weight (kg)</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logistics", "root", "anas5925");
                    Statement stm = con.createStatement();
                    ResultSet rs = stm.executeQuery("SELECT * FROM bookshipment");
                    while (rs.next()) {
                        String id = rs.getString("id");
                        String senderName = rs.getString("SenderName");
                        String senderNumberOrEmailId = rs.getString("SenderNumberOrEmailId");
                        String pickupPoint = rs.getString("PickupPoint");
                        String receiverName = rs.getString("RecieverName");
                        String receiverNumberOrEmailId = rs.getString("RecieverNumberOrEmailId");
                        String dropPoint = rs.getString("DropPoint");
                        String deliveryLocation = rs.getString("DeliveryLocation");
                        String shipmentType = rs.getString("ShipmentType");
                        String weight = rs.getString("Weight");
                %>
                <tr>
                    <td><%= id %></td>
                    <td><%= senderName %></td>
                    <td><%= senderNumberOrEmailId %></td>
                    <td><%= pickupPoint %></td>
                    <td><%= receiverName %></td>
                    <td><%= receiverNumberOrEmailId %></td>
                    <td><%= dropPoint %></td>
                    <td><%= deliveryLocation %></td>
                    <td><%= shipmentType %></td>
                    <td><%= weight %></td>
                </tr>
                <% 
                    }
                    rs.close();
                    stm.close();
                    con.close();
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
