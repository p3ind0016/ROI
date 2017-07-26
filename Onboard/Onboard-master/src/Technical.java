

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class comp
 */
@WebServlet("/Technical")
public class Technical extends HttpServlet {
private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Technical() {
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
// TODO Auto-generated method stub
String datatype = request.getParameter("datatype");
       String pname = request.getParameter("pname");
       String archneed = request.getParameter("archneed");
       String formatsp = request.getParameter("formatsp");
       String mlang = request.getParameter("mlang");
       String loclang = request.getParameter("loclang");
       String dataretain = request.getParameter("dataretain");
       String systemdoc = request.getParameter("systemdoc");
       String userdoc = request.getParameter("userdoc");
       String techdoc = request.getParameter("techdoc");
       String traindoc = request.getParameter("traindoc");
       String supportdoc = request.getParameter("supportdoc");
       String datadic = request.getParameter("datadic");
       String testcasedoc = request.getParameter("testcasedoc");
       String testrec = request.getParameter("testrec");
       String designspec = request.getParameter("designspec");
       String validityplan = request.getParameter("validityplan");
       String dataloc = request.getParameter("dataloc");
       String servername = request.getParameter("servername");
       String prodinstance = request.getParameter("prodinstance");
       String prodinstanceloc = request.getParameter("prodinstanceloc");
       String infraengage = request.getParameter("infraengage");
       String sourcearch = request.getParameter("sourcearch");
       String apphost = request.getParameter("apphost");
       String retenduration = request.getParameter("retenduration");
       String clientapp = request.getParameter("clientapp");
       String extcustfacing = request.getParameter("extcustfacing");
       String url = request.getParameter("url");
       String dbsize = request.getParameter("dbsize");
       String nooftable = request.getParameter("nooftable");
       String noofrec = request.getParameter("noofrec");
       String xmlcount = request.getParameter("xmlcount");
       String anyvpn = request.getParameter("anyvpn");
       String vpnacces = request.getParameter("vpnacces");
       String appintegrate = request.getParameter("appintegrate");
       String integname = request.getParameter("integname");
       String decomdate = request.getParameter("decomdate");
    
        
       
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
         Connection conn = DriverManager.getConnection(myUrl, "root", "password123");
       
   
         
         // the mysql insert statement
         String query = " insert into technical (datatype, pname, archneed, formatsp, mlang, loclang, dataretain, systemdoc, userdoc, techdoc, traindoc, supportdoc, datadic, testcasedoc, testrec, designspec, validityplan, dataloc, servername, prodinstance, prodinstanceloc, infraengage, sourcearch, apphost, retenduration, clientapp, extcustfacing, url, dbsize, nooftable, noofrec, xmlcount, anyvpn, vpnacces, appintegrate, integname, decomdate)"
           + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

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
         preparedStmt.setString (1, datatype);
         preparedStmt.setString   (2, pname);
         preparedStmt.setString (3, archneed);
         preparedStmt.setString(4, formatsp);
         preparedStmt.setString(5, mlang);
         preparedStmt.setString (6, loclang);
         preparedStmt.setString   (7, dataretain);
         preparedStmt.setString (8, systemdoc);
         preparedStmt.setString(9, userdoc);
         preparedStmt.setString(10, techdoc);
         preparedStmt.setString (11, traindoc);
         preparedStmt.setString   (12, supportdoc);
         preparedStmt.setString (13, datadic);
         preparedStmt.setString(14, testcasedoc);
         preparedStmt.setString(15, testrec);
         preparedStmt.setString (16, designspec);
         preparedStmt.setString   (17, validityplan);
         preparedStmt.setDate (18, java.sql.Date.valueOf(dataloc));
         preparedStmt.setString (1, servername);
         preparedStmt.setString   (2, prodinstance);
         preparedStmt.setString (3, prodinstanceloc);
         preparedStmt.setString(4, infraengage);
         preparedStmt.setString(5, sourcearch);
         preparedStmt.setString (6, apphost);
         preparedStmt.setString   (7, retenduration);
         preparedStmt.setString (8, clientapp);
         preparedStmt.setString(9, extcustfacing);
         preparedStmt.setString(10, url);
         preparedStmt.setString (11, dbsize);
         preparedStmt.setString   (12, nooftable);
         preparedStmt.setString (13, noofrec);
         preparedStmt.setString(14, xmlcount);
         preparedStmt.setString(15, anyvpn);
         preparedStmt.setString (16, vpnacces);
         preparedStmt.setString   (17, appintegrate);
         preparedStmt.setDate (18, java.sql.Date.valueOf(integname));
         preparedStmt.setDate (19, java.sql.Date.valueOf(decomdate));
        
         
         
         

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
       response.sendRedirect("component.jsp");


}

}

