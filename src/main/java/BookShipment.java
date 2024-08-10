

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class BookShipment
 */
@WebServlet("/BookShipment")
public class BookShipment extends HttpServlet {
    private static final long serialVersionUID = 1L;
   
    private ShipmentDAO shipmentDAO = new ShipmentDAO();
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
    
        response.setContentType("text/html");
        
        try(PrintWriter out=response.getWriter()){
        	
        	  String fromname = request.getParameter("fromname");
        	  String fromcontact = request.getParameter("fromcontact");
        	  String depature = request.getParameter("depature");
            
              String toname = request.getParameter("toname");
              String tocontact = request.getParameter("tocontact");
              String destination = request.getParameter("destination");
              
              String address = request.getParameter("address");
              String shipmenttype = request.getParameter("shipmenttype");
              String weight = request.getParameter("weight");
              
              
              
				/* int id= Integer.parseInt(request.getParameter("id")); */
              int id= parseInt(request.getParameter("id"));
              Shipment shipment = new Shipment();
              shipment.setFromName(fromname);
              shipment.setDestination(destination);
              shipment.setDepature(depature);
              shipment.setToName(toname);
              
              
              shipmentDAO.addShipment(shipment);
              
              
              Class.forName("com.mysql.cj.jdbc.Driver");
  			Connection con=DriverManager
  			.getConnection("jdbc:mysql://localhost:3306/logistics","root","anas5925");
  			Statement stm=con.createStatement();
  			int value=stm.executeUpdate("insert into bookshipment values"
+ "('"+id+"','"+fromname+"','"+fromcontact+"','"+depature+"','"+toname+"',"
		+ "'"+tocontact+"','"+destination+"','"+address+"','"+shipmenttype+"','"+weight+"')");
  			if(value == 1) {
  				response.sendRedirect("Success.jsp");
  			}
  			else {
  				out.println("Sorry,something went wrong...");
  				out.println("Please try again..");

  				response.sendRedirect("user.jsp");
  			}
        	
        }
        catch(ClassNotFoundException cf) {
        	System.out.println(cf);
        }
        catch(SQLException se) {
        	System.out.println(se);
        }
    }

	private int parseInt(String parameter) {
		// TODO Auto-generated method stub
		return 0;
	}
}
