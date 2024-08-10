

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/AdminAddShipment")
public class AdminAddShipment extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		   response.setContentType("text/html");
	        
	        int id = Integer.parseInt(request.getParameter("id"));
	        String status = request.getParameter("status");
	        String place = request.getParameter("place");
	        int estimatedDays = Integer.parseInt(request.getParameter("estimatedDays"));

	        Connection con = null;
	        Statement stm = null;
	        
	        try {
	            // Load MySQL JDBC Driver
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            
	            // Establish connection
	            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logistics", "root", "anas5925");
	            
	            // Create SQL statement
	            stm = con.createStatement();
	            String sql = "insert into shipmentstatus values"
	            		+ "('"+id+"','"+status+"','"+place+"','"+estimatedDays+"')";
	            
	            // Execute update
	            int val = stm.executeUpdate(sql);

	            // Redirect based on result
	            if (val == 1) {
	                response.sendRedirect("updateSuccess.jsp");
	            } else {
	                response.sendRedirect("admin.jsp");
	            }
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	            response.sendRedirect("admin.jsp");
	        } finally {
	            try {
	                if (stm != null) stm.close();
	                if (con != null) con.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }

	

}

