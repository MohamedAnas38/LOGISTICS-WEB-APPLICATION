<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User Logistics</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        overflow-x: hidden;
         background-image: url("https://images.pexels.com/photos/2774568/pexels-photo-2774568.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
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
    }
    .logo {
        font-size: 20px;
    }
    .menu-toggle {
        background-color:#333 ;
        border: none;
         color: white;
        padding: 10px;
        cursor: pointer;
        font-size: 16px;
    }
    .menu-toggle:focus {
        outline: none;
    }
    .sidebar {
        height: 100%;
        width: 0;
        position: fixed;
        top: 0;
        left: 0;
        background-color: #333;
        overflow-x: hidden;
        transition: 0.5s;
        padding-top: 60px;
    }
    .sidebar a {
        padding: 10px 15px;
        text-decoration: none;
        font-size: 18px;
        color: white;
        display: block;
        transition: 0.3s;
    }
    .sidebar a:hover {
        background-color: #575757;
    }
    .main-content {
        transition: margin-left 0.5s;
        padding: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        background-color: #fffcfc40;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    .tablehead{
    font-weight: bolder;
    }
    .tablebody{
    font-weight: 500;
    color: white;
    }
    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #fffcfc40;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #fffcfc40;
    }
    tr:hover {
        background-color: #333;
    }
    td {
        color: #333;
    }
</style>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const menuToggle = document.querySelector('.menu-toggle');
        const sidebar = document.querySelector('.sidebar');
        const mainContent = document.querySelector('.main-content');

        menuToggle.addEventListener('click', function() {
            if (sidebar.style.width === '0px' || sidebar.style.width === '') {
                sidebar.style.width = '200px';
                mainContent.style.marginLeft = '200px';
            } else {
                sidebar.style.width = '0';
                mainContent.style.marginLeft = '0';
            }
        });
    });
</script>
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
    <div class="sidebar" id="sidebar">
        <a href="#">Home</a>
        <a href="#">Profile</a>
        <a href="#">Settings</a>
        <a href="logout.jsp">Logout</a>
    </div>
    <div class="main-content">
        <table>
            <tr class="tablehead">
                <th>Id</th>
                <th>User Name</th>
                <th>Password</th>
                <th>Email Id</th>
                <th>Mobile Number</th>
            </tr>
            <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.
            		getConnection("jdbc:mysql://localhost:3306/logistics", "root", "anas5925");
            Statement stmt = con.createStatement();
            
            ResultSet rs = stmt.executeQuery("select * from userlogistics");
            
            while (rs.next()) {
                String id = rs.getString("id");
                String username = rs.getString("uname");
                String password = rs.getString("password");
                String emailid = rs.getString("emailid");
                String mobnum = rs.getString("mobilenumber");
            %>
                <tr class="tablebody">
                    <td class="tablebody"><%= id %></td>
                    <td class="tablebody"><%= username %></td>
                    <td class="tablebody"><%= password %></td>
                    <td class="tablebody"><%= emailid %></td>
                    <td class="tablebody"><%= mobnum %></td>
                </tr>
            <%
            }
            %>
        </table>
    </div>
</body>
</html>
