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
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<script>
    $(document).ready(function(){
      var date_input=$('input[name="expdate"]'); //our date input has the name "date"
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
  <body style='margin:30px'>
  <%@page language="java"%>
<%@page import="java.sql.*"%>


<%
try {
Class.forName("org.gjt.mm.mysql.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/strutsdb", "root", "root");
String query = "select * from component where id=(select max(id) from component)";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
{
%>
<form class="form-signin"name="loginForm" method="post" action="Businessdata">
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
                       
                        <li class="active"><a href="business.jsp"><bold>Business</bold></a></li>
                            
                        
                        <li>
                            <a href="sample.jsp">Technical</a>
                        </li>
                        <li>
                            <a href="requirements.jsp">Archival Requirements</a>
                        </li>
                       
                    </ul>
                </div>
                
                
                <div class="col-md-9">
                    <h1 class="page-header">Intake</h1>
                    <h3>Business</h3>
					<div class="panel-group" id="panels1"> 
                       
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse1">Application Information</a> </h4> 
                            </div>                             
                            <div id="collapse1" class="panel-collapse collapse in"> 
                                <div class="panel-body">
                                    <form role="form"> 
                                       <div class="form-group"> 
                                            <label class="control-label" for="formInput198">
                                               Legacy Application Name&nbsp;
</label>
                                            <input type="text" class="form-control" id="formInput198" placeholder="Legacy Application Name" name="legappname" >
                                        </div>
                                        
                                
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput229">References to Application
</label>
                                            <input type="text" class="form-control" id="formInput229" placeholder="References" name="reftoapp" >
                                        </div>
                                       <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Tracking ID</label>
            <input placeholder="ID" id="date" name="tid" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Description</label>
            <input placeholder="Description" id="date" name="descr" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Legacy Application Vendor/Manufacturer</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
                                         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Contract Expiration Date</label>
            <input placeholder="dd/mm/yyyy" id="date" name="expdate" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Notice Period for Expiration of Contract</label>
            <input placeholder="Description" id="date" name="noticeperiod" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Contract Value of Application</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="contractvalue" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="businessunits" value="checked" >Business Units Involved
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="rodch" value="checked" >&nbsp;Read Only Date                       
                                            </label>                                             
                                        </div>
                                        
                                         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Read Only Date</label>
            <input placeholder="dd/mm/yyyy" id="date" name="rod" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Comment</label>
            <input placeholder="Description" id="date" name="cmnt" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">If the applications transitions has dependencies?</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="hasdep" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>    
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">What is the date Range of this Data?</label>
            <input placeholder="dd/mm/yyyy" id="date" name="daterange" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Size of Database</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="dbsize" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Location of Data</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="dataloc" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Site Location of Data</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="siteloc" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>
         <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Does the application needs archival?</label>                                             
                                            <select id="formInput26" class="form-control" name="needarch" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                <option>Other</option>                                                 
                                            </select>
                                        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Reason</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="archreason" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Comments</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="archcmnt" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="sourceoft" value="checked" >Is this Application's data the source of Truth?
                                            </label>                                             
                                        </div> 
                                        
                                       
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2">Legacy Retention Information</a> </h4> 
                            </div>                             
                            <div id="collapse2" class="panel-collapse collapse"> 
                                <div class="panel-body">
                                    <form role="form">
                                    
                                      <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Record code of Application</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="reccode" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
                                        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Trigger Date</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="triggerdate" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Period of Retention</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="retentionperiod" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Table Name/s where Retention need to apply</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="retentiontable" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <label text-align:"left">Retention Requirement</label>
    										<input type="file" name="file" size="60" />
    														
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Name of the Legal Retention & e-Discovery SME</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="retentionname" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        
       
      
         <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Does any Records have legal holds/Tax Holds or any indication?</label>                                             
                                            <select id="formInput26" class="form-control" name="legalholds" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                <option>Other</option>                                                 
                                            </select>
                                        </div>   
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Who or what entity provided legal or tax hold identification</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="wholegal" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Should this application's data be aechived?</label>                                             
                                            <select id="formInput26" class="form-control" name="reason_for_access" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                           
                                            </select>
                                        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Brief Explanation</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="archexp" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>                                 
                                    </form>
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse3">Archive Data Management</a> </h4> 
                            </div>                             
                            <div id="collapse3" class="panel-collapse collapse"> 
                                <div class="panel-body">
                                    <form role="form"> 
                                         <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Is this application's been used for BI report?</label>                                             
                                            <select id="formInput26" class="form-control" name="useforBI" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                           
                                            </select>
                                        </div>  
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Is BI aware of using new/alternate target application data to support operational report                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">)- BI Engagement should be initiated by Application owner and completed prior archiving     </label>
                                        </div>
                                                                              
                                    </form>
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse4">System Requirements</a> </h4> 
                            </div>                             
                            <div id="collapse4" class="panel-collapse collapse"> 
                                <div class="panel-body">
                                    <form role="form"> 
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="creditacc" value="checked" >Account Credit Card
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="financialacc" value="checked" >Account Number - Financial
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="dob" value="checked" >Date of Birth
                                            </label>
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="driverlic" value="checked" >Driver's License Number
                                                <br>
                                            </label>                                             
                                        </div> 
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="email" value="checked" >Email Address
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="family" value="checked" >family Status
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="gender" value="checked" >Gender
                                            </label>
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="geoloc" value="checked" >Geo Location
                                                <br>
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="img" value="checked" >Image/Video
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="income" value="checked" >Income
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="ipadrs" value="checked" >IP Address
                                            </label>
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="martialstatus" value="checked" >Martial Status
                                                <br>
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="mobid" value="checked" >Mobile Device Id
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="name" value="checked" >Name
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="phno" value="checked" >Phone Number
                                            </label>
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="mailadrs" value="checked" >Physical/Mailing Address
                                                <br>
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="phsic" value="checked" >Physical Description
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="race" value="checked" >Race/Ethnicity
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="religion" value="checked" >Religion
                                            </label>
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="sexualpref" value="checked" >Sexual Preference
                                                <br>
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="ssn" value="checked" >SSN/SIN
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="others" value="checked" >Others
                                            </label>                                             
                                        </div>
                                         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Brief Explanation</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="expl" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <h5>Security Information:
                                         <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Does the application have localization requirement/ regulations</label>                                             
                                            <select id="formInput26" class="form-control" name="localreq" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                           
                                            </select>
                                        </div> 
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput26">List of Countries where localization requirement/ regulations apply</label>                                             
                                            <select id="formInput26" class="form-control" name="localcountry" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                           
                                            </select>
                                        </div> 
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Are the Localization requirements/regulations enforced with infrastructure or geofencing</label>                                             
                                            <select id="formInput26" class="form-control" name="localinf" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                           
                                            </select>
                                        </div> 
                                         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Infrastructure Localization enforcement, please list the locations of the datacenters</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="datacenters" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput26">External access required for archived data</label>                                             
                                            <select id="formInput26" class="form-control" name="extaccess" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                           
                                            </select>
                                        </div>  
                                         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Describe who or what external entity needs access </label>
            <input placeholder="Vendor/Manufacturer" id="date" name="who" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">User Name</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="uname" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Role Description</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="roledesc" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Reason for Access</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="accreason" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Frequency of Access</label>
            <input placeholder="Vendor/Manufacturer" id="date" name="accfreq" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Additional System Requirements</label>
            <input placeholder="Countries/Modules" id="date" name="sysreq" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
                                                                               
                                    </form>
                                </div>                                 
                            </div>                             
                        </div>
                    </div>
       
					       <button type="submit" class="btn btn-primary btn pull-left" >Save</button>&nbsp;

                    <button type="button" class="btn btn-default" onclick="location.href = 'grid.jsp';">Cancel</button> 
       </div>
                
            </div>
            
            
      
        <%
}
}
catch(Exception e){}
%>
</form>
  </body>
  <center>
      <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link" href="grid.jsp" tabindex="-1">Previous</a>
    </li>
    
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
</center>
</html>