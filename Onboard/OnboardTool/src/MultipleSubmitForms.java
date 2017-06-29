

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MultipleSubmitForms
 */
@WebServlet("/MultipleSubmitForms")
public class MultipleSubmitForms extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException   
	  {
	    res.setContentType( "text/html" ) ;
	    ServletOutputStream sos = res.getOutputStream(); 	 
	                                                
	    String date1;
	    Date date = Calendar.getInstance().getTime();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    date1=sdf.format(date);
	  
	    String month=req.getParameter("input1");
	    String p3id=req.getParameter("input3");
	  				                
	    String str1 = req.getParameter("a1");       
	    String str2 = req.getParameter("p1");     
	    String str3 = req.getParameter("c1");    
	    sos.println("<h3>");
	 
	    if(str1 != null)                            
	    {    
	      sos.println("Total no of orders on this day were<br>");
	      try
		    {
		      String myDriver = "org.gjt.mm.mysql.Driver";
		      String myUrl = "jdbc:mysql://localhost:8888/students";
		      Class.forName(myDriver);
		      Connection conn = DriverManager.getConnection(myUrl, "root", "root");
		    
		     
		      String query1 = "SELECT COUNT(*) FROM emp where DATE(date_ordered)=? AND food='NI'";
		      

		      //Scanner sin=new Scanner(System.in);
		     
		      //sos.println("Enter the date you want in format(YYYY-MM-DD)");
		      //date=sin.next();
		      PreparedStatement preparedStmt1 = conn.prepareStatement(query1);
		      
		     
		      preparedStmt1.setString (1, date1);
		      		      
		 	      preparedStmt1.execute();
		 	  		 	      
		      ResultSet rs1 = preparedStmt1.executeQuery();
		      
		      while(rs1.next())
		      {
		    	  int count  = rs1.getInt(1);
		    	  sos.println("NORTH INDIAN FOOD COUNT :");
		    	  sos.println(count);
		    	 
		      }
		      
 String query2 = "SELECT COUNT(*) FROM emp where DATE(date_ordered)=? AND food='SI'";
		      

		      //Scanner sin=new Scanner(System.in);
		     
		      //sos.println("Enter the date you want in format(YYYY-MM-DD)");
		      //date=sin.next();
		      PreparedStatement preparedStmt2 = conn.prepareStatement(query2);
		      
		     
		      preparedStmt2.setString (1, date1);
		      		      
		 	      preparedStmt2.execute();
		 	  		 	      
		      ResultSet rs2 = preparedStmt2.executeQuery();
		      
		      while(rs2.next())
		      {
		    	  int count  = rs2.getInt(1);
		    	  sos.println("NORTH INDIAN FOOD COUNT :");
		    	  sos.println(count);
		      }
		      
 String query3 = "SELECT COUNT(*) FROM emp where DATE(date_ordered)=? AND extra='y'";
		      

		      //Scanner sin=new Scanner(System.in);
		     
		      //sos.println("Enter the date you want in format(YYYY-MM-DD)");
		      //date=sin.next();
		      PreparedStatement preparedStmt3 = conn.prepareStatement(query3);
		      
		     
		      preparedStmt3.setString (1, date1);
		      		      
		 	      preparedStmt3.execute();
		 	  		 	      
		      ResultSet rs3 = preparedStmt3.executeQuery();
		      
		      while(rs3.next())
		      {
		    	  int count  = rs3.getInt(1);
		    	  sos.println("EXTRA FOOD COUNT :");
		    	  sos.println(count);
		      }
		    
		      conn.close();
		    }
		    catch (Exception e)
		    {
		    	 System.out.println("Sorry Your order for today has been already taken");
		  	    }
	    }			                         
	    else if(str2 != null)                       
	    { 
	    sos.println("Total No of orders for this month is<br>");
	    try
	    {
	      String myDriver = "org.gjt.mm.mysql.Driver";
	      String myUrl = "jdbc:mysql://localhost:8888/students";
	      Class.forName(myDriver);
	      Connection conn = DriverManager.getConnection(myUrl, "root", "root");
	    
	     
	      String query = "SELECT COUNT(*) FROM emp where MONTH(date_ordered)=? ";

	      
	      
	      
	      
	      
	      PreparedStatement preparedStmt = conn.prepareStatement(query);
	      preparedStmt.setString (1, month);  
	     	 	      preparedStmt.execute();
	      ResultSet rs = preparedStmt.executeQuery();
	      while(rs.next())
	      {
	    	  int count  = rs.getInt(1);
	    	  sos.println(count);
	      }
	      conn.close();
	    }
	    catch (Exception e)
	    {
	    	 System.out.println("Sorry Your order for today has been already taken");
	  	    }	  
	    
	    }
	    else if(str3 !=null)
	    {
	        sos.println("Total No of orders he made<br>");
		    try
		    {
		      String myDriver = "org.gjt.mm.mysql.Driver";
		      String myUrl = "jdbc:mysql://localhost:8888/students";
		      Class.forName(myDriver);
		      Connection conn = DriverManager.getConnection(myUrl, "root", "root");
		    
		     
		      String query = "SELECT COUNT(*) FROM emp where p3id=?";

		      
		      
		      
		      
		      
		      PreparedStatement preparedStmt = conn.prepareStatement(query);
		       
		       
		      preparedStmt.setString(1, p3id);
		 	      preparedStmt.execute();
		      ResultSet rs = preparedStmt.executeQuery();
		      while(rs.next())
		      {
		    	  int count  = rs.getInt(1);
		    	  sos.println(count);
		      }
		      conn.close();
		    }
		    catch (Exception e)
		    {
		    	 System.out.println("Sorry Your order for today has been already taken");
		  	    }
	    }
	 
	    sos.println("</h3>");
	    sos.close( );
	  }        

}
