

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class archive_exec
 */
@WebServlet("/archive_exec")
public class archive_exec extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public archive_exec() {
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

		String seqnum[]=new String[10];
		String name[]=new String[10];
		String mem_as[]=new String[10];
		String act_srt_dat[]=new String[10];
		String act_end_dat[]=new String[10];
		String pln_srt_dat[]=new String[10];
		String pln_end_dat[]=new String[10];
		String progres[]=new String[10];
		String hr[]=new String[10];
		
	
		
		
		for(int i=0;i<10;i++){
			seqnum[i]=request.getParameter("seqnum"+i);
			name[i]=request.getParameter("name"+i);
mem_as[i] = request.getParameter("mem_ass"+i);
act_srt_dat[i]=request.getParameter("act_srt_date"+i);
act_end_dat[i]=request.getParameter("act_end_date"+i);
pln_srt_dat[i]=request.getParameter("pln_srt_date"+i);
pln_end_dat[i]=request.getParameter("pln_end_date"+i);
hr[i]=request.getParameter("hrs"+i);
}
		

	    PrintWriter writer = response.getWriter();
	  
     
        try
        {
          // create a mysql database connection
          String myDriver = "org.gjt.mm.mysql.Driver";
          String myUrl = "jdbc:mysql://localhost:3306/strutsdb";
          Class.forName(myDriver);
          Connection conn = DriverManager.getConnection(myUrl, "root", "password123");
        
       
          
          Statement st=conn.createStatement();
          for(int a=0;a<10;a++){
        	  String seq_num=seqnum[a];
        	  String nam=name[a];
          String mem_ass=mem_as[a];
          String act_srt_date=act_srt_dat[a];
          String act_end_date=act_end_dat[a];
          String pln_srt_date=pln_srt_dat[a];
          String pln_end_date=pln_end_dat[a];
          String hrs=hr[a];
 
      st.executeUpdate("update archive_exec set name='"+nam+"',mem_ass='"+mem_ass+"',act_srt_date='"+act_srt_date+"',act_end_date='"+act_end_date+"',pln_srt_date='"+pln_srt_date+"',pln_end_date='"+pln_end_date+"',hours='"+hrs+"' where seq_num='"+seq_num+"'");
  	
           }
          
          conn.close();
        }
        catch (Exception e)
        {
        	 
          System.err.println("Got an exception!");
          System.err.println(e.getMessage());
        }

		
		 try
	        {
	          // create a mysql database connection
	          String myDriver = "org.gjt.mm.mysql.Driver";
	          String myUrl = "jdbc:mysql://localhost:3306/strutsdb";
	          Class.forName(myDriver);
	          Connection conn = DriverManager.getConnection(myUrl, "root", "password123");
	          
	          
	         
	        String seq_nu=request.getParameter("s");
	        String leve=request.getParameter("l");
	        int seq_num=Integer.parseInt(seq_nu);
	        int level=Integer.parseInt(leve);
	        String id=request.getParameter("r");
	        String rid=request.getParameter("m");
	          int q=Integer.parseInt(id)+1;
	          String x=Integer.toString(q);
	   
	          String namee="";
	          String mem_ass="";
	          String hrs="";

	          if(level>1)
	          {
	        	  System.out.println("subtask");
	        	  String query="update archive_exec  set seq_num=seq_num+1 where seq_num>"+seq_num;
	        	  PreparedStatement preparedStmt = conn.prepareStatement(query);
	        	  preparedStmt.execute();
	        	  String query1 = " insert into archive_exec (seq_num,level,name,mem_ass,id,ref_id)"
	      	            + " values (?,?,?,?,?,?)";
	        	  PreparedStatement preparedStmt1 = conn.prepareStatement(query1);
		          preparedStmt1.setInt (1, seq_num+1);
		          preparedStmt1.setInt (2, level);
		          preparedStmt1.setString (3, namee);
		          preparedStmt1.setString (4, mem_ass);
		          preparedStmt1.setString (5, id);
		          preparedStmt1.setString (6, rid);
		          preparedStmt1.execute();
		 
		          String query2="select * from archive_exec order by seq_num";
		          PreparedStatement preparedStmt2 = conn.prepareStatement(query2);
	        	  preparedStmt2.execute();
	        	  String query3="update dummy set value='"+x+"'";
		             PreparedStatement preparedStmt3 = conn.prepareStatement(query3);
		             preparedStmt3.execute();
		          
	        	  
	          }
	          else{
	        	  System.out.println("task");
	          String query = " insert into archive_exec (seq_num,level,name,mem_ass,id,ref_id)"
	            + " values (?,?,?,?,?,?)";
	          PreparedStatement preparedStmt = conn.prepareStatement(query);
	          preparedStmt.setInt (1, seq_num);
	          preparedStmt.setInt (2, level);
	          preparedStmt.setString (3, namee);
	          preparedStmt.setString (4, mem_ass);
	          preparedStmt.setString (5, id);
	          preparedStmt.setString (6, rid);
	          preparedStmt.execute();
	          
	          String query2="update dummy set value='"+x+"'";
	             PreparedStatement preparedStmt1 = conn.prepareStatement(query2);
	             preparedStmt1.execute();
	          }
	
	          conn.close();
	          }
	        

		 catch (Exception e)
	        {
	        	 
	          System.err.println("Got an exception!");
	          System.err.println(e.getMessage());
	          e.printStackTrace(System.out);
	        }
	        
	        // return response
	        response.sendRedirect("archive_exec_samp.jsp");

}
}
