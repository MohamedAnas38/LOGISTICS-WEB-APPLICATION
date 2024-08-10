

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/CancelShipment")
public class CancelShipment extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ShipmentDAO shipmentDAO = new ShipmentDAO();
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
    	
		try(PrintWriter out=response.getWriter();){
			
			 int id = Integer.parseInt(request.getParameter("id"));
		        shipmentDAO.cancelShipment(id);
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager
			.getConnection("jdbc:mysql://localhost:3306/logistics","root","anas5925");
			Statement stm=con.createStatement();
			int value= stm.executeUpdate("delete from bookshipment where id= '"+id+"'");
			if(value==1) {
				out.println("Shipment Cancelled");
				response.sendRedirect("cancelSuccess.jsp");
			}
			else{
				out.print("Something Went Wrong...");
				response.sendRedirect("user.jsp");
			}
		}
		catch(ClassNotFoundException cs) {
			System.out.println(cs);
		}
		catch(SQLException s) {
			System.out.println(s);
		}
        
    }
}