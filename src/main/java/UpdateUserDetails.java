
import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/UpdateUserDetails")
public class UpdateUserDetails extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		try(PrintWriter out=response.getWriter()){
			String id=request.getParameter("id");
			System.out.println(id);
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String emailid=request.getParameter("emailid");
			String mobilenumber=request.getParameter("mobnum");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager
			.getConnection("jdbc:mysql://localhost:3306/logistics","root","anas5925");
			Statement stm=con.createStatement();
		int val=stm.executeUpdate
("update userlogistics set uname='"+username+"',"
+ "password='"+password+"',emailid='"+emailid+"',mobilenumber= '"+mobilenumber+"' where id='"+id+"'");
		if(val == 1) {
			out.println("Updated Sucessfully");
			RequestDispatcher rd=request.getRequestDispatcher("user.jsp");
			rd.include(request, response);
		}
		else {
			out.println("Sorry,something went wrong...");
			out.println("please try again..");
			RequestDispatcher rd=request.getRequestDispatcher("UpdateUserDetails.jsp");
			rd.include(request, response);
		}
		}
		catch(ClassNotFoundException cs) {
			System.out.println(cs);
		}
		catch(SQLException se) {
			System.out.println(se);
		}
		
	}

}
