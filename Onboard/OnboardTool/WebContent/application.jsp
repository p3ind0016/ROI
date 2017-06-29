
<!DOCTYPE html>
<html lang="en">
<head>
<script type='text/javascript'
  src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<script>
    $(document).ready(function(){
      var date_input=$('input[name="Startdate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'yyyy/mm/dd',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
    $(document).ready(function(){
      var date_input=$('input[name="Intdate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'yyyy/mm/dd',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
    $(document).ready(function(){
      var date_input=$('input[name="Plandate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'yyyy/mm/dd',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
    $(document).ready(function(){
      var date_input=$('input[name="Execdate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'yyyy/mm/dd',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
    $(document).ready(function(){
      var date_input=$('input[name="Hyperdate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'yyyy/mm/dd',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
    $(document).ready(function(){
      var date_input=$('input[name="Enddate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'yyyy/mm/dd',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script> 
<script type="text/javascript">
    function EnableDisableTextBox(chkROD) {
        var txtROD = document.getElementById("txtROD");
        txtROD.disabled = chkROD.checked ? false : true;
        if (!txtROD.disabled) {
            txtROD.focus();
        }
        
    }
</script>
<script type="text/javascript">

    var link,color;

 function disable_link() { 

  document.getElementById('testlink').disabled=true;

  link = document.getElementById('testlink').href;

  document.getElementById('testlink').removeAttribute('href');
  //document.getElementById('testlink').style.color = "grey";

   } 


 function enable_link() { 

  document.getElementById('testlink').setAttribute("href",link);

   } 


</script>
<script>

$(function() {
    $("#datamig").change(function() {
        if ($(this).val() == "yes") {
            console.log(true);
            $("#textbox").removeAttr("disabled");
        }
        else {
            console.log(false);
            $("#textbox").attr("disabled", "disabled");
        }
    });
});
$(function() {
    $("#datamig").change(function() {
        if ($(this).val() == "yes") {
            console.log(true);
            $("#textbox1").removeAttr("disabled");
        }
        else {
            console.log(false);
            $("#textbox1").attr("disabled", "disabled");
        }
    });
});


</script>
<script type="text/javascript">
    function ShowHideDiv() {
        var adMigrated = document.getElementById("adMigrated");
        var adMigratedDet = document.getElementById("adMigratedDet");
        adMigratedDet.style.display = adMigrated.value == "Y" ? "block" : "none";
    }
</script>

<script type="text/javascript">
    function ShowHideDiv() {
        var arcNeed = document.getElementById("arcNeed");
        var arcReason = document.getElementById("arcReason");
        arcReason.style.display = arcNeed.value == "N" ? "block" : "none";
        var arcComment = document.getElementById("arcComment");
        arcComment.style.display = arcNeed.value == "O" ? "block" : "none";
    }
</script>


  </head><!--from  w  w w  . ja  va 2 s.co  m-->
  <body style='padding-top:40px'>
  <%
String apid= request.getParameter("prid");
int no=Integer.parseInt(apid);
System.out.println(apid);
%>

<%@page import="java.sql.*"%>
<%@page import="java.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>

	
<%

try {
	
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/strutsdb", "root", "root");
String query = "select * from projinfo where pid='"+no+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
if(rs.next()){
%>

 

<div class="container">
<nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                
                    
                    <a class="navbar-brand" href="#">Onboard</a>
              
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
</li>
                        <li>
                            <a href="#">Settings</a>
                        </li>
                        <li>
                            <a href="#">Profile</a>
                        </li>
                        <li>
                            <a href="Login.html">Logout</a>
                        </li>
                    </ul>
                    
                </div>
            </div>
        </nav>
        </div>
       
           
                 <div class="row">
            <br>
                <div class="col-sm-2 col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active">
                            <a href="project.jsp">Home </a>
                        </li>
                        <li class="active">
                            <a href="editproject.jsp">Project Details</a>
                        </li>
                        <li>
                            <a href="appemp.jsp">Application Prioritization</a>
                        </li>
                        <li>
                            <a href="demo.jsp">ROI Calculation</a>
                        </li>
                        
                    </ul>
                </div>
                <div class="col-md-9">
                    <h1 class="page-header">App Emphasize Module</h1>
                    <h3>Project Details</h3>
                    <div class="panel-group" id="panels1"> 
                                                 
                        <%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "strutsdb";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="root";

int sumcount=0;
Statement st1;
try{
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
String query1 = "select * from appinfo where pid='"+apid+"'";
st1 = con.createStatement();
ResultSet rs1 = st1.executeQuery(query1);
%>             
<div class="panel panel-default">
        <div class="panel-heading"> 
                                <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#panels1" href="#collapse2"> Application Information  </a> </h4> 
                            </div>  
                                                       
                            <div id="collapse2" class="panel-collapse collapse"> 
                                <div class="panel-body text-left">
        
<div class="table-responsive" id="table-scroll"> 
    
    <!-- Initialization 
                * js-dynamitable => dynamitable trigger (table)
                -->
    <table class="js-dynamitable     table table-bordered" id="myTable">
      
      <!-- table heading -->
      <thead>
        
        <!-- Sortering
                        * js-sorter-asc => ascending sorter trigger
                        * js-sorter-desc => desending sorter trigger
                        -->
        <tr>
          <th>Application Name <span class="js-sorter-desc     glyphicon glyphicon-chevron-down pull-right"></span> <span class="js-sorter-asc     glyphicon glyphicon-chevron-up pull-right"></span> </th>
         
        </tr>
        
        <!-- Filtering
                        * js-filter => filter trigger (input, select)
                        -->
       
      </thead>
      
      <!-- table body -->
      <tbody>
      <%
while(rs1.next()){
%>
        <tr>
        
          <td class="edit_row" style="cursor:pointer"><%=rs1.getString(3) %></td>
         
         
        </tr>
      <%
}
%>      
      </tbody>
    </table>
    <%

}
catch(Exception e){
e.printStackTrace();
}
%>
  </div>
  <br />
                
                 <form class="form-signin" name="loginForm" method="post" action="Namealone">
                   <div class="form-group"> 
                                            <label class="control-label" for="formInput198">
                                               Project ID&nbsp;
</label>
                                            <input type="text" class="form-control" id="formInput198" placeholder="Project ID" name="projectid" value="<%= apid%>" >
                                        </div>                       
                                
                                            <label class="control-label" for="formInput198">
                                               Application Name&nbsp;
</label>
                                            <input type="text" class="form-control" id="formInput198" placeholder="Application Name" name="appname" >
                                                                               <button type="submit" class="btn btn-primary btn pull-left" onClick ="window.location.reload();">ADD</button>
                 </form>     
                            
                                </div>                                 
                            </div>                             
                        </div>            
                       <input type="submit" class="btn btn-primary btn pull-left" name="a1" value="Save">
                    <button type="button" class="btn btn-default" ;">Back</button>
                                        
                                                                                                         
                   
                                                                                        
                             
        
                    
                  
        
 
 
                    
         
       </div>
   <center>
      <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link" href="grid.jsp" tabindex="-1">Previous</a>
    </li>
    
    <li class="page-item">
      <a class="page-link" href="application.jsp?prid=<%=rs.getString("pid") %>';">Next</a>
    </li>
    <%
}
}
catch(Exception e){}
%>    
     
  </ul>
</nav>
</center>
</body>
</html>


