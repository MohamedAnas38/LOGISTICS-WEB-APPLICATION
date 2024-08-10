

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logincheck")
public class logincheck extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	  String username=	request.getParameter("username");
		String password=request.getParameter("password");
		if("admin".equals(username) && "admin123".equals(password)) {
			HttpSession session = request.getSession(true);
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			response.sendRedirect("admin.jsp");
		}
		else {
			try(PrintWriter out=response.getWriter()){
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager
				.getConnection("jdbc:mysql://localhost:3306/logistics","root","anas5925");
				Statement stm=con.createStatement();
			  ResultSet rs=	stm.executeQuery("select * from userlogistics");
			  while(rs.next()) {
			      String uname=rs.getString("uname");
			      String pswd=rs.getString("password");
			      if(uname.equals(username) && pswd.equals(password)) {
			    	  HttpSession session= request.getSession(false);
			    	  session.setAttribute("username", username);
						session.setAttribute("password", password);
						response.sendRedirect("user.jsp");
			      }
			  }
			}
			catch(ClassNotFoundException cf) {
				System.out.println(cf);
			}
			catch(SQLException s) {
				System.out.println(s);
			}
		}
	}

}
