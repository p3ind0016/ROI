

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Namealone
 */
@WebServlet("/Namealone")
public class Namealone extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Namealone() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("projectid");
        String appname = request.getParameter("appname");
        
        
        // do some processing here...
         
        // get response writer
        PrintWriter writer = response.getWriter();
         
        // build HTML code
        String htmlRespone = "<html>";
        htmlRespone += "<h2>Your Order Has been Taken</h2>";  
        htmlRespone += "</html>";
        writer.println(htmlRespone);
        try
        {
          // create a mysql database connection
          String myDriver = "org.gjt.mm.mysql.Driver";
          String myUrl = "jdbc:mysql://localhost:3306/strutsdb";
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(myUrl, "root", "root");
        
         
          // the mysql insert statement
          String query = " insert into appinfo (pid, appname)"
            + " values (?, ?)";

          // create the mysql insert preparedstatement
          //Scanner sin=new Scanner(System.in);
          //String id,food,extra;
          //System.out.println("Enter Your id");
          //id=sin.next();
          //System.out.println("Please tell what food you want");
          //food=sin.next();
          //System.out.println("would you like to have extra food today say y or n");
          //extra=sin.next();
          PreparedStatement preparedStmt = conn.prepareStatement(query);
          preparedStmt.setString (1, pid);
          preparedStmt.setString   (2, appname);
         
          
          		          
          
          

          // execute the preparedstatement
          preparedStmt.execute();
          
          conn.close();
        }
        catch (Exception e)
        {
        	 
          System.err.println("Got an exception!");
          System.err.println(e.getMessage());
        }
       
		
	}

}
