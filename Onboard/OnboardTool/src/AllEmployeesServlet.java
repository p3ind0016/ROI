

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class AllEmployeesServlet
 */
@WebServlet("/AllEmployeesServlet")
public class AllEmployeesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllEmployeesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
		    PrintWriter out = response.getWriter();
		    out.println("<html>");
		    out.println("<head><title>All Employees</title></head>");
		    out.println("<body>");
		    out.println("<center><h1>All Employees</h1>");
		    
		    Statement stmt = null;
		    try 
		    {
		    	 String myDriver = "com.mysql.jdbc.Driver";
		          String myUrl = "jdbc:mysql://localhost:8888/students";
		          Class.forName(myDriver);
		          Connection conn = DriverManager.getConnection(myUrl, "root", "root");
		        
		      String orderBy = request.getParameter("sort");
		      if ((orderBy == null) || orderBy.equals("")) 
		      {
		        orderBy = "id";
		      }
		      String orderByDir = request.getParameter("sortdir");
		      if ((orderByDir == null) || orderByDir.equals("")) 
		      {
		        orderByDir = "asc";
		      }
		      String query = "SELECT emp.id, emp.p3id, " + "emp.date_ordered, "
		          + "emp.food, emp.extra " + "FROM emp " 
		          + "ORDER BY " + orderBy + " " + orderByDir
		          + ";";
		      ResultSet rs = stmt.executeQuery(query);
		      while (rs.next()) 
		      {
		        int employeeid = rs.getInt("id");
		        String employeep3id = rs.getString("p3id");
		        Date employeedateordered = rs.getDate("date_ordered");
		        String employeefood = rs.getString("food");
		        String employeeExtra = rs.getString("extra");
		        out.print(employeeid + "::");
		        out.print(employeep3id + "::");
		        out.print(employeedateordered + "::");
		        out.print(employeefood + "::");
		        out.print(employeeExtra + "::");
		      }
		      conn.close();
		    } catch (SQLException e) 
		    {
		      out.println("An error occured while retrieving " + "all employees: " 
		          + e.toString());
		    } 
		    
		    catch (ClassNotFoundException e) {
		      throw (new ServletException(e.toString()));
		    } finally {
		      try {
		        if (stmt != null) {
		          stmt.close();
		        }
		       
		          
		        
		      } catch (SQLException ex) {
		      }
		    }
		    out.println("</center>");
		    out.println("</body>");
		    out.println("</html>");
		    out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
