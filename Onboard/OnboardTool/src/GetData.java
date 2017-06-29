

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Calendar;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetData
 */
@WebServlet("/GetData")
public class GetData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetData() {
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
		  // read form fields
        String p3id = request.getParameter("p3id");
        String food = request.getParameter("food");
       
        String extra = request.getParameter("extra");
         
        System.out.println("username: " + p3id);
        System.out.println("food: " + food);
       
        System.out.println("food: " + extra);
 
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
          String myUrl = "jdbc:mysql://localhost:8888/students";
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(myUrl, "root", "root");
        
          // create a sql date object so we can use it in our INSERT statement
          Calendar calendar = Calendar.getInstance();
          java.sql.Date startDate = new java.sql.Date(calendar.getTime().getTime());
          	
          // the mysql insert statement
          String query = " insert into emp (p3id, date_ordered, food, extra)"
            + " values (?, ?, ?, ?)";

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
          preparedStmt.setString (1, p3id);
          preparedStmt.setDate   (2, startDate);
          preparedStmt.setString (3, food);
          preparedStmt.setString(4, extra);
          
          

          // execute the preparedstatement
          preparedStmt.execute();
          
          conn.close();
        }
        catch (Exception e)
        {
        	 System.out.println("Sorry Your order for today has been already taken");
          System.err.println("Got an exception!");
          System.err.println(e.getMessage());
        }
        // return response
       
		
	}

}
