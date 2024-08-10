<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Update</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-image: url("https://images.pexels.com/photos/4480988/pexels-photo-4480988.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
    background-size: cover; /* Cover the entire viewport */
    background-repeat: no-repeat; /* Prevent the image from repeating */
    background-position: center; 
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            text-align: center;
        }

        main {
            flex: 1;
            padding: 20px;
            max-width: 900px;
            margin: 20px auto;
            background-color: #fffcfc40;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow-x: auto; /* Add this line for horizontal scrolling */
            font-weight: bold;
        }

        h1 {
            margin-bottom: 20px;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: #fffcfc40;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #fffcfc40;
            color: black;
        }

        td {
            vertical-align: middle;
        }

        form {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: #fffcfc40;
        }

        form input[type="text"],
        form input[type="password"],
        form input[type="submit"] {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            background-color: #fffcfc40;
            color: black;
            font-weight: bold;
        }

        form input[type="submit"] {
            background-color: #333;
            color: #fff;
            cursor: pointer;
        }

        form input[type="submit"]:hover {
            background-color: #555;
        }

        footer {
            background-color: #fffcfc40;
            padding: 10px 20px;
            text-align: center;
            box-shadow: 0 -1px 10px rgba(0, 0, 0, 0.1);
        }

        .footer-links {
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
        <h1>Update User Details</h1>
    </header>

    <main>
        <table >
            <tr>
                <th>Id</th>
                <th>User Name</th>
                <th>Password</th>
                <th>Email Id</th>
                <th>Mobile Number</th>
                <th>Action</th>
            </tr>
            <%
            String id = request.getParameter("id");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logistics", "root", "anas5925");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM userlogistics WHERE id= '" + id + "'");
            while(rs.next()) {
                String idd = rs.getString("id");
                String username = rs.getString("uname");
                String password = rs.getString("password");
                String emailid = rs.getString("emailid");
                String mobnum = rs.getString("mobilenumber");
            %>  
            <form action="UpdateUserDetails" method="post">
                <tr>
                    <td><input type="text" value="<%= idd %>" disabled></td>
                    <td><input type="text" name="username" value="<%= username %>" required></td>
                    <td><input type="password" name="password" value="<%= password %>" required></td>
                    <td><input type="text" name="emailid" value="<%= emailid %>" required></td>
                    <td><input type="text" name="mobnum" value="<%= mobnum %>" required></td>
                    <input type="hidden" name="id" value="<%= idd %>">
                    <td><input type="submit" value="Update"></td>
                </tr>
            </form>
            <%
            }
            %>
        </table>
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
