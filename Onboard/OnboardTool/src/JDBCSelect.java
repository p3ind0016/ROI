import java.sql.*;
import java.util.Calendar;
import java.util.Scanner;

public class JDBCSelect {
	public static void sinDate()
	{
		try
	    {
	      String myDriver = "org.gjt.mm.mysql.Driver";
	      String myUrl = "jdbc:mysql://localhost:8888/students";
	      Class.forName(myDriver);
	      Connection conn = DriverManager.getConnection(myUrl, "root", "root");
	    
	     
	      String query = "SELECT COUNT(*) FROM emp where DATE(date_ordered)=?";

	      Scanner sin=new Scanner(System.in);
	      String date;
	      System.out.println("Enter the date you want in format(YYYY-MM-DD)");
	      date=sin.next();
	      PreparedStatement preparedStmt = conn.prepareStatement(query);
	      preparedStmt.setString (1, date);     
	 	      preparedStmt.execute();
	      ResultSet rs = preparedStmt.executeQuery();
	      while(rs.next())
	      {
	    	  int count  = rs.getInt(1);
	    	  System.out.println(count);
	      }
	      conn.close();
	    }
	    catch (Exception e)
	    {
	    	 System.out.println("Sorry Your order for today has been already taken");
	  	    }
	}
	public static void forMon()
	{
		try
	    {
	      String myDriver = "org.gjt.mm.mysql.Driver";
	      String myUrl = "jdbc:mysql://localhost:8888/students";
	      Class.forName(myDriver);
	      Connection conn = DriverManager.getConnection(myUrl, "root", "root");
	    
	     
	      String query = "SELECT COUNT(*) FROM emp where DATE(date_ordered) BETWEEN ? AND ?";

	      Scanner sin=new Scanner(System.in);
	      String date1,date2;
	      System.out.println("Enter the two date you want in format(YYYY-MM-DD)");
	      date1=sin.next();
	      date2=sin.next();
	      PreparedStatement preparedStmt = conn.prepareStatement(query);
	      preparedStmt.setString (1, date1); 
	      preparedStmt.setString (2, date2); 
	 	      preparedStmt.execute();
	      ResultSet rs = preparedStmt.executeQuery();
	      while(rs.next())
	      {
	    	  int count  = rs.getInt(1);
	    	  System.out.println(count);
	      }
	      conn.close();
	    }
	    catch (Exception e)
	    {
	    	 System.out.println("Sorry Your order for today has been already taken");
	  	    }
	}
	public static void foodCount()
	{
		try
	    {
	      String myDriver = "org.gjt.mm.mysql.Driver";
	      String myUrl = "jdbc:mysql://localhost:8888/students";
	      Class.forName(myDriver);
	      Connection conn = DriverManager.getConnection(myUrl, "root", "root");
	    
	     
	      String query = "SELECT COUNT(*) FROM emp where DATE(date_ordered)=? AND food=?";

	      Scanner sin=new Scanner(System.in);
	      String date1,food;
	      System.out.println("Enter for which date you want food count format(YYYY-MM-DD)");
	      date1=sin.next();
	      System.out.println("Enter for which food type count");
	      food=sin.next();
	      PreparedStatement preparedStmt = conn.prepareStatement(query);
	      preparedStmt.setString (1, date1); 
	      preparedStmt.setString (2, food); 
	 	      preparedStmt.execute();
	      ResultSet rs = preparedStmt.executeQuery();
	      while(rs.next())
	      {
	    	  int count  = rs.getInt(1);
	    	  System.out.println(count);
	      }
	      conn.close();
	    }
	    catch (Exception e)
	    {
	    	 System.out.println("Sorry Your order for today has been already taken");
	  	    }
	}
	public static void extraCount()
	{
		try
	    {
	      String myDriver = "org.gjt.mm.mysql.Driver";
	      String myUrl = "jdbc:mysql://localhost:8888/students";
	      Class.forName(myDriver);
	      Connection conn = DriverManager.getConnection(myUrl, "root", "root");
	    
	     
	      String query = "SELECT COUNT(*) FROM emp where DATE(date_ordered)=? AND extra='y'";

	      Scanner sin=new Scanner(System.in);
	      String date1;
	      System.out.println("Enter for which date you want food count format(YYYY-MM-DD)");
	      date1=sin.next();
	      PreparedStatement preparedStmt = conn.prepareStatement(query);
	      preparedStmt.setString (1, date1); 
	       
	 	      preparedStmt.execute();
	      ResultSet rs = preparedStmt.executeQuery();
	      while(rs.next())
	      {
	    	  int count  = rs.getInt(1);
	    	  System.out.println(count);
	      }
	      conn.close();
	    }
	    catch (Exception e)
	    {
	    	 System.out.println("Sorry Your order for today has been already taken");
	  	    }
	} 
	public static void userCount()
	{
		try
	    {
	      String myDriver = "org.gjt.mm.mysql.Driver";
	      String myUrl = "jdbc:mysql://localhost:8888/students";
	      Class.forName(myDriver);
	      Connection conn = DriverManager.getConnection(myUrl, "root", "root");
	    
	     
	      String query = "SELECT COUNT(*) FROM emp where p3id=?";

	      Scanner sin=new Scanner(System.in);
	      String uid;
	      System.out.println("Enter for which user you want food count");
	      uid=sin.next();
	     // System.out.println("Enter for which date you want food count");
	     // date=sin.next();
	      PreparedStatement preparedStmt = conn.prepareStatement(query);
	      preparedStmt.setString (1, uid); 
	     // preparedStmt.setString(2, date); 
	 	      preparedStmt.execute();
	      ResultSet rs = preparedStmt.executeQuery();
	      while(rs.next())
	      {
	    	  int count  = rs.getInt(1);
	    	  System.out.println(count);
	      }
	      conn.close();
	    }
	    catch (Exception e)
	    {
	    	 System.out.println("Sorry Your order for today has been already taken");
	  	    }
	} 
	public static void main(String[] args)
	  {
		String co="y";
		while(co=="y")
		{
		 int Ch=0;  
		 System.out.println("Choices for admin");
		 System.out.println("1.Total Orders on Single Date");
		 System.out.println("2.Total orders on single month");
		 System.out.println("3.Per Day Food Counts");
		 System.out.println("4.Extra food orders");
		 System.out.println("5.particular user food count");
		 Scanner sin=new Scanner(System.in);
		 Ch=sin.nextInt();
		    switch(Ch){  
		    case 1: sinDate();
		    		break;  
		    case 2:  forMon();
		    		break;  
		    case 3: foodCount();
		    		break;  
		    case 4:	extraCount();
		    		break;
		    case 5:	userCount();
		    		break;
		    default:System.out.println("Select a case please");  
		    }  
		    System.out.println("Would you like to continue");
		    Scanner cin=new Scanner(System.in);
		    co=cin.next();
	   System.out.println("Thank you admin");
	    
	    
		}
}
}//end JDBCExample