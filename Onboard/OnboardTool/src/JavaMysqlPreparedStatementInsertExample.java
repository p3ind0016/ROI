import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;


public class JavaMysqlPreparedStatementInsertExample
{
	public String getBackupFolderName() {
	    Date date = Calendar.getInstance().getTime();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd.hhmmss");
	    return sdf.format(date);
	}

  public static void main(String[] args)
  {
    try
    {
      // create a mysql database connection
      //String myDriver = "org.gjt.mm.mysql.Driver";
      //String myUrl = "jdbc:mysql://localhost:8888/students";
      //Class.forName(myDriver);
      //Connection conn = DriverManager.getConnection(myUrl, "root", "root");
    
      // create a sql date object so we can use it in our INSERT statement
      //Calendar calendar = Calendar.getInstance();
     // java.sql.Date startDate = new java.sql.Date(calendar.getTime().getTime());

      // the mysql insert statement
      //String query = " insert into emp (p3id, date_ordered, food, extra)"
       // + " values (?, ?, ?, ?)";

      // create the mysql insert preparedstatement
      //Scanner sin=new Scanner(System.in);
      //String id,food,extra;
      //System.out.println("Enter Your id");
      //id=sin.next();
      //System.out.println("Please tell what food you want");
      //food=sin.next();
      //System.out.println("would you like to have extra food today say y or n");
      //extra=sin.next();
      //PreparedStatement preparedStmt = conn.prepareStatement(query);
      //preparedStmt.setString (1, id);
     // preparedStmt.setDate   (2, startDate);
     // preparedStmt.setString (3, food);
      //preparedStmt.setString(4, extra);
      
      Date date = Calendar.getInstance().getTime();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	  System.out.println(sdf.format(date));

      // execute the preparedstatement
     // preparedStmt.execute();
      
     // conn.close();
    }
    catch (Exception e)
    {
    	 System.out.println("Sorry Your order for today has been already taken");
      System.err.println("Got an exception!");
      System.err.println(e.getMessage());
    }
  }
}