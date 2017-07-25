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
  
<script type="text/javascript">
    function EnableDisableTextBox(chkROD) {
        var txtROD = document.getElementById("txtROD");
        txtROD.disabled = chkROD.checked ? false : true;
        if (!txtROD.disabled) {
            txtROD.focus();
        }
        
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
<script language="javascript">
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='display.jsp?id='+id;
    f.submit();
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
  <body style='margin:30px'>
  <%@page language="java"%>
<%@page import="java.sql.*"%>

	
<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/strutsdb", "root", "root");
String query = "select * from app_info where id=max(id)";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<form class="form-signin"name="loginForm" method="post" action="Onb">
<div class="container">
<nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                
                    
                    <a class="navbar-brand" href="#">Project name</a>
              
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
                            <a href="#">Help</a>
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
                            <a href="first.jsp">Home </a>
                        </li>
                        <li >
                            <a href="display.jsp">Functional</a>
                        </li>
                        <li>
                            <a href="component.jsp">Component</a>
                        </li>
                        <li>
                            <a href="sample.jsp">Technical</a>
                        </li>
                        <li>
                            <a href="business.jsp">Business</a>
                        </li>
                    </ul>
                </div>
                
                <div class="col-md-9">
                    <h1 class="page-header">Intake</h1>
                    <h3>Functional</h3>
                    <div class="panel-group" id="panels1"> 
                                                <div class="panel panel-default">
        <div class="panel-heading"> 
                                <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#panels1" href="#collapse1">                            Application Information                            </a> </h4> 
                            </div>                             
                            <div id="collapse1" class="panel-collapse collapse"> 
                                <div class="panel-body text-left">
                                
                                 
                                    <form role="form">
                                    
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Application Name:</label>
                                            <input type="text" class="form-control" id="formInput526" placeholder="Application Name" name="app_name" value="<%=rs.getString("app_name")%>">
                                        </div>
                                       
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">References to Application:</label>
                                            <input type="text" class="form-control" id="formInput526" placeholder="References to Application" name="ref_to_app" value="<%=rs.getString("ref_to_app")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput139">Description :</label>                                             
                                            <textarea class="form-control" rows="3" id="formInput139"><%=rs.getString("app_desc")%></textarea>
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Application Vendor/Manufacturer</label>
                                            <input type="text" class="form-control" id="formInput526" placeholder="Application Vendor/Manufacturer" name="app_vendor" value="<%=rs.getString("app_vendor")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput316">Contract Expiration Date</label>
                                            <div class="input-group"> 
                                                <span class="input-group-addon glyphicon glyphicon-calendar"></span> 
                                                <input type="text" class="form-control" placeholder="Contract Expiration Date" name="contract_exp_date" value="<%=rs.getString("contract_exp_date")%>"> 
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="formInput526">Notice Period for Termination of Contract</label>
                                            <input type="text" class="form-control" id="formInput526" placeholder="Notice Period for Termination of Contract" name="notice_period" value="<%=rs.getString("notice_period")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Contract Value of the Application</label>
                                            <input type="text" class="form-control" id="formInput526" placeholder="Contract Value of the Application" name="contract_value" value="<%=rs.getString("contract_value")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Business Units involved</label>
                                            <input type="text" class="form-control" id="formInput526" placeholder="Business Units involved" name="business_units" value="<%=rs.getString("business_units")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput663">Separate Modules involved in Transactions</label>                                             
                                            <select id="formInput663" class="form-control"> 
                                                <option><%=rs.getString("txn_module")%></option>                                                 
                                                                                              
                                            </select>
                                        </div>
                                         <label for="chkROD">
    										<input type="checkbox" id="chkROD" onclick="EnableDisableTextBox(this)" checked/>
    														Read Only Date
												</label>
												<br />
												Date:
												<input type="date" class="form-control" id="txtROD" disabled="disabled" name="readonly_date" value="<%=rs.getString("readonly_date")%>" />
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Size of the Database</label>
                                            <input type="text" class="form-control" id="formInput526" placeholder="Size of the Database" name="db_size" value="<%=rs.getString("db_size")%>">
                                        </div>
                                       
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Location of Data&nbsp;</label>
                                            <input type="text" class="form-control" id="formInput526" placeholder="Location of Data " name="loc_data" value="<%=rs.getString("loc_data")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Site Location of the Data&nbsp;</label>
                                            <input type="text" class="form-control" id="formInput526" placeholder="Site Location of the Data " name="site_location_data" value="<%=rs.getString("site_location_data")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Production Instances</label>
                                            <input type="text" class="form-control" id="formInput526" placeholder="Production Instances" name="prod_instance" value="<%=rs.getString("prod_instance")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput526">Location of Production Instances</label>
                                            <input type="text" class="form-control" id="formInput526" placeholder="Location of Production Instances" name="loc_prod_instance" value="<%=rs.getString("loc_prod_instance")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput95">Information Security Classification of the Data
                                                in the application&nbsp;
</label>                                             
                                            <select id="formInput95" class="form-control"> 
                                                <option><%=rs.getString("info_sec_classification")%></option>                                                 
                                                                                               
                                            </select>
                                        </div>
                                         
                                        <label class="control-label">Application Data-Migrated to New/Alternative App?</label>
     <select id="datamig" class="form-control">
<option value="_">select</option>
<option value="yes">Yes</option>
<option value="no">No</option>
</select>
<label class="control-label">New/Target Application Name</label>
<input type="text" id="textbox" class="form-control" name="target_app_name" disabled="true"/>
<label class="control-label">Date of Migration</label>
<input type="date" id="textbox1" class="form-control" name="date_migration" disabled="true"/>

<label class="control-label">Does this Application needs archival?</label>
    <select id = "arcNeed" onchange = "ShowHideDiv()" class="form-control">
    <option><%=rs.getString("archive_reqd_flg")%></option>
        <option value="N">No</option>
        <option value="Y">Yes</option>   
        <option value="O">Other</option>         
    </select>
<hr />
<div id="arcReason" style="display: none">
    Reason:
    <input type="text" id="txtreason" class="form-control" name="reason_archive_no" value="<%=rs.getString("reason_archive_no")%>"/>
   
</div>      
<div id="arcComment" style="display: none">
    Comment:
    <input type="text" id="txtComment" class="form-control" name="gen_comment" value="<%=rs.getString("gen_comment")%>"/>
    </div>                                 
                                  
                                
                                </div>                                 
                            </div>                             
                        </div> 
                               <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2">                                Legacy Retention                                </a> </h4> 
                            </div>                             
                            <div id="collapse2" class="panel-collapse collapse"> 
                                <div class="panel-body text-left">
                                 
                                  
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput664">Record Code of the Application</label>
                                            <input type="text" class="form-control" id="formInput664" placeholder="Record Code of the Application" name="rec_code" value="<%=rs.getString("rec_code")%>" >
                                        </div>                                         
                                        <div class="form-group">
                                            <label class="control-label">Retention Requirement</label>                                             
                                            <input type="text" id="exampleInputFile" name="retent_reqmt" value="<%=rs.getString("retent_reqmt")%>"> 
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput679">Name of the Legal Retention &amp; e-Discovery
                                                SME&nbsp;
</label>
                                            <input type="text" class="form-control" id="formInput679" placeholder="Name of the Legal Retention & e-Discovery SME " name="final_backup" value="<%=rs.getString("final_backup")%>">
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput694">When Application decommissioned will Final
                                                Backups be executed
</label>                                             
                                            <select id="formInput694" class="form-control">
                                              <option><%=rs.getString("app_final_backup")%></option> 
                                                <option>1</option>                                                 
                                                <option>2</option>                                                 
                                                <option>3</option>                                                 
                                            </select>
                                        </div>  
                                                                             
                                   
                                                                 
                                </div>                                 
                            </div>                             
                        </div>  
                                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse3">                                Archive Data Management                                </a> </h4> 
                            </div>                             
                            <div id="collapse3" class="panel-collapse collapse"> 
                                <div class="panel-body">
                                    <b>Business Intelligence:</b>
                                    <h6></h6>
                                    
                                   
                                     
                                        <div class="form-group">
                                            <label class="control-label" for="formInput823">Is
                                                this Application’s be used for BI Reports:
</label>
                                            <select id="formInput823" class="form-control" name="it_backup_retent_std">
                                            <option><%=rs.getString("it_backup_retent_std")%></option> 
                                                <option>Yes</option>                                                 
                                                <option>No</option>                                                 
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="formInput823">
                                                <b>Master Data Management &amp; Governance:<br></b>
                                                <br>Data source in Legacy system a master copy of
                                                data:
                                            </label>
                                            <select id="formInput823" class="form-control" name="why" >
                                            <option><%=rs.getString("why")%></option> 
                                                <option>Yes</option>
                                                <option>No</option>                                                 
                                            </select>
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput846">Application is a source of ERP Master Data</label>                                             
                                            <select id="formInput846" class="form-control" name="Legal_Holds_Indication" value="<%=rs.getString("Legal_Holds_Indication")%>"> 
                                                <option>1</option>                                                 
                                                <option>2</option>                                                 
                                                <option>3</option>                                                 
                                            </select>
                                        </div>  
                                                                               
                                  
                                    
                                </div>                                 
                            </div>                             
                        </div>                         
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse4">                                Privacy and Security Management                                </a> </h4> 
                            </div>                             
                            <div id="collapse4" class="panel-collapse collapse "> 
                                <div class="panel-body">
                                    <label class="control-label">Privacy Information:&nbsp;
                                        <br>
                                    </label>
                                     
                                    
                                    
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="acc_no_credit" <%=rs.getString("acc_no_credit")%>>Account number – Credit card
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="acc_no_financial" <%=rs.getString("acc_no_financial")%>>Account number – Financial (Bank)
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="DOB" <%=rs.getString("DOB")%>>Date of Birth
                                            </label>
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="License_no" <%=rs.getString("License_no")%>>Driver’s License Number
                                                <br>
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="email_addr" <%=rs.getString("email_addr")%>>E-mail Address
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="Family_status" <%=rs.getString("Family_status")%>> Family Status
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="gender" <%=rs.getString("gender")%>> Gender                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="geo_location" <%=rs.getString("geo_location")%>> Geo-location                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="image" value="<%=rs.getString("image")%>"> Image/Video                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="income" <%=rs.getString("income")%>> Income                       
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="ip_addr" <%=rs.getString("ip_addr")%>>IP Address                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="marital_status" <%=rs.getString("marital_status")%>> Marital Status                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="mobile_device_id" value="<%=rs.getString("mobile_device_id")%>"> Mobile Device ID                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="name" value="<%=rs.getString("name")%>"> Name                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="ph_no" <%=rs.getString("ph_no")%>> Phone Number                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="mailing_addr" <%=rs.getString("mailing_addr")%>> Physical/Mailing Address                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="physical_description" <%=rs.getString("physical_description")%>> Physical Description                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="race" <%=rs.getString("race")%>> Race/Ethnicity                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="religion" <%=rs.getString("religion")%>> Religion                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="sexual_preference" <%=rs.getString("sexual_preference")%>> Sexual Preference                      
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="ssn" <%=rs.getString("ssn")%>> SSN/SIN                       
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="other_flag" <%=rs.getString("other_flag")%>> Other                        
                                            </label>                                             
                                        </div>                                         
                                    </form>
                                 
                                        <label class="control-label"> 
                                            Security Information:
</label>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Does the application have localization requirement/ regulations</label>                                             
                                            <select id="formInput26" class="form-control" name="reason_for_access" > 
                                            <option><%=rs.getString("reason_for_access")%></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>                                                 
                                            </select>
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Access to data by Business users once it is archived</label>                                             
                                            <select id="formInput26" class="form-control" name="<%=rs.getString("access_frequency")%>"> 
                                            <option><%=rs.getString("access_frequency")%></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>                                                 
                                            </select>
                                        </div>        
                                                                        
                                   
                                </div>                                 
                            </div>                             
                        </div>                       
                  
                        
                    </div> 
        <button type="submit" class="btn btn-primary btn pull-left" >Save</button>&nbsp;
        <button type="button" class="btn btn-primary">Submit</button>&nbsp;
                    <button type="button" class="btn btn-default" href="index.html">Cancel</button> 
       </div>
                
            </div>
            
      
        <%
}
}
catch(Exception e){}
%>
</form>
  </body>
</html>