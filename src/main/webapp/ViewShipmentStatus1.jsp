<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shipment Status - Safest Logistics</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
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

        .company-name {
            font-size: 24px;
            font-weight: bold;
        }

        .menu-button {
            background-color: #007BFF;
            border: none;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        .sidebar {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 250px;
            height: 100%;
            background-color: #333;
            color: #fff;
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.5);
            z-index: 1000;
        }

        .sidebar a {
            display: block;
            color: #fff;
            text-decoration: none;
            padding: 10px 0;
            border-bottom: 1px solid #444;
        }

        .sidebar a:hover {
            background-color: #444;
        }

        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #007BFF;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <header>
        <div class="company-name">Safest Logistics</div>
        <button class="menu-button" onclick="toggleSidebar()">Menu</button>
    </header>

    <div class="sidebar" id="sidebar">
        <a href="index.html">Home</a>
        <a href="services.html">Services</a>
        <a href="about.html">About Us</a>
        <a href="contact.html">Contact Us</a>
    </div>

    <div class="container">
        <table>
            <tr>
                <th>Id</th>
                <th>Status</th>
                <th>Place</th>
                <th>Estimated Days</th>
            </tr>
            <%
                String id = request.getParameter("id");
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logistics", "root", "anas5925");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select * from shipmentstatus where id='" + id + "'");

                while (rs.next()) {
                    String idd = rs.getString("id");
                    String status = rs.getString("status");
                    String place = rs.getString("place");
                    String estimateddays = rs.getString("estimateddays");
            %>
            <tr>
                <td><%= idd %></td>
                <td><%= status %></td>
                <td><%= place %></td>
                <td><%= estimateddays %></td>
            </tr>
            <%
                }
                rs.close();
                stmt.close();
                con.close();
            %>
        </table>
    </div>

    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById('sidebar');
            if (sidebar.style.display === 'block') {
                sidebar.style.display = 'none';
            } else {
                sidebar.style.display = 'block';
            }
        }
    </script>
</body>
</html>
