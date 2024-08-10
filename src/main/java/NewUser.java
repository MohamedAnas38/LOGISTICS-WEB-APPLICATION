
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

@WebServlet("/NewUser")
public class NewUser extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try(PrintWriter out=response.getWriter();){
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			String mobilenum = request.getParameter("mobile");
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager
			.getConnection("jdbc:mysql://localhost:3306/logistics","root","anas5925");
			Statement stm=con.createStatement();
			int value=stm.executeUpdate("insert into userlogistics "
			+ "(uname,password,emailid,mobilenumber) values"
			+ "('"+username+"','"+password+"','"+email+"','"+mobilenum+"')");
			if(value==1) {
				out.println("User Registerd Sucessfully");
				response.sendRedirect("index.jsp");
			}
			else{
				out.print("Something Went Wrong...");
				response.sendRedirect("index.jsp");
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
