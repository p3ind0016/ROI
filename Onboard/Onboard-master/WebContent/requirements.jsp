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
 <meta name="keywords" content="jQuery Tree, Tree Widget, TreeView" />
    <meta name="description" content="The jqxTree displays a hierarchical collection of items. You
        can populate it from 'UL' or by using its 'source' property." />

    <link rel="stylesheet" href="jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="scripts/demos.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxpanel.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxtree.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxcheckbox.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxmenu.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // Create jqxTree
            $('#jqxTree').jqxTree({ height: '550px', width: '300px' });
            $('#jqxTree').css('visibility', 'visible');
            var contextMenu = $("#jqxMenu").jqxMenu({ width: '120px',  height: '56px', autoOpenPopup: false, mode: 'popup' });
            var clickedItem = null;
            
            var attachContextMenu = function () {
                // open the context menu when the user presses the mouse right button.
                $("#jqxTree li").on('mousedown', function (event) {
                    var target = $(event.target).parents('li:first')[0];
                    var rightClick = isRightClick(event);
                    if (rightClick && target != null) {
                        $("#jqxTree").jqxTree('selectItem', target);
                        var scrollTop = $(window).scrollTop();
                        var scrollLeft = $(window).scrollLeft();
                        contextMenu.jqxMenu('open', parseInt(event.clientX) + 5 + scrollLeft, parseInt(event.clientY) + 5 + scrollTop);
                        return false;
                    }
                });
            }
            attachContextMenu();
            $("#jqxMenu").on('itemclick', function (event) {
                var item = $.trim($(event.args).text());
                switch (item) {
                    case "Add Item":
                        var selectedItem = $('#jqxTree').jqxTree('selectedItem');
                        if (selectedItem != null) {
                            $('#jqxTree').jqxTree('addTo', { label: 'Item' }, selectedItem.element);
                            attachContextMenu();
                        }
                        break;
                    case "Remove Item":
                        var selectedItem = $('#jqxTree').jqxTree('selectedItem');
                        if (selectedItem != null) {
                            $('#jqxTree').jqxTree('removeItem', selectedItem.element);
                            attachContextMenu();
                        }
                        break;
                }
            });
            // disable the default browser's context menu.
            $(document).on('contextmenu', function (e) {
                if ($(e.target).parents('.jqx-tree').length > 0) {
                    return false;
                }
                return true;
            });
            function isRightClick(event) {
                var rightclick;
                if (!event) var event = window.event;
                if (event.which) rightclick = (event.which == 3);
                else if (event.button) rightclick = (event.button == 2);
                return rightclick;
            }
        });
    </script>
     <style>
    .bar {
  background-color: lightblue;
  height: 100%;
  text-align:center;
} 

</style>

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
<style>
.bs-wizard {margin-top: 40px;}

/*Form Wizard*/
.bs-wizard {border-bottom: solid 1px #e0e0e0; padding: 0 0 10px 0;}
.bs-wizard > .bs-wizard-step {padding: 0; position: relative;}
.bs-wizard > .bs-wizard-step + .bs-wizard-step {}
.bs-wizard > .bs-wizard-step .bs-wizard-stepnum {color: #428bca; font-size: 16px; margin-bottom: 5px;}
.bs-wizard > .bs-wizard-step .bs-wizard-info {color: #999; font-size: 14px;}
.bs-wizard > .bs-wizard-step > .bs-wizard-dot {position: absolute; width: 30px; height: 30px; display: block; background:#428bca; top: 45px; left: 50%; margin-top: -15px; margin-left: -15px; border-radius: 100%;} 
.bs-wizard > .bs-wizard-step > .bs-wizard-dot:after {content: ' '; width: 14px; height: 14px; background: lightblue; border-radius: 50px; position: absolute; top: 8px; left: 8px; } 
.bs-wizard > .bs-wizard-step > .progress {position: relative; border-radius: 0px; height: 8px; box-shadow: none; margin: 20px 0;}
.bs-wizard > .bs-wizard-step > .progress > .progress-bar {width:0px; box-shadow: none; background: #428bca;}
.bs-wizard > .bs-wizard-step.complete > .progress > .progress-bar {width:100%;}
.bs-wizard > .bs-wizard-step.active > .progress > .progress-bar {width:50%;}
.bs-wizard > .bs-wizard-step:first-child.active > .progress > .progress-bar {width:0%;}
.bs-wizard > .bs-wizard-step:last-child.active > .progress > .progress-bar {width: 100%;}
.bs-wizard > .bs-wizard-step.disabled > .bs-wizard-dot {background-color: #f5f5f5;}
.bs-wizard > .bs-wizard-step.disabled > .bs-wizard-dot:after {opacity: 0;}
.bs-wizard > .bs-wizard-step:first-child  > .progress {left: 50%; width: 50%;}
.bs-wizard > .bs-wizard-step:last-child  > .progress {width: 50%;}
.bs-wizard > .bs-wizard-step.disabled a.bs-wizard-dot{ pointer-events: none; }
/*END Form Wizard*/

</style>
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

<script>
function switchColors()  
{  
	links=document.getElementsByTagName("li") ; 	 
var element=document.getElementById("b");
for (var i = 0 ; i < links.length ; i ++)  
	links.item(i).style.backgroundColor = 'white' ; 
element.style.borderRadius="5px";
element.style.marginRight = "70px";
element.style.boxSizing = "content-box";
element.style.borderColor = "#999";
element.style.background="#d1d1d1";
var list = document.getElementsByTagName("OL")[0];
var x=list.getElementsByTagName("LI");
for (var i = 0 ; i < x.length ; i ++)  
	x.item(i).style.backgroundColor = 'black' ; 


} 
</script>
<script>
function switchColors0()  
{  
	links=document.getElementsByTagName("li") ; 	 
var element=document.getElementById("a");
for (var i = 0 ; i < links.length ; i ++)  
	links.item(i).style.backgroundColor = 'white' ; 
element.style.borderRadius="5px";
element.style.marginRight = "70px";
element.style.boxSizing = "content-box";
element.style.borderColor = "#999";
element.style.background="#d1d1d1";
var list = document.getElementsByTagName("OL")[0];
var x=list.getElementsByTagName("LI");
for (var i = 0 ; i < x.length ; i ++)  
	x.item(i).style.backgroundColor = 'black' ; 


} 
</script>

  </head><!--from  w  w w  . ja  va 2 s.co  m-->
  <body>
  <%@page language="java"%>
<%@page import="java.sql.*"%>


<%
try {
	String det=(String)session.getAttribute("theName");
	String idd=(String)session.getAttribute("appidd");
Class.forName("org.gjt.mm.mysql.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/strutsdb", "root", "password123");
String query3 = "select * from projinfo where id = "+det;
Statement st3 = conn.createStatement();
ResultSet rs3 = st3.executeQuery(query3);
String query4 = "select * from appldetail where id = "+idd;
Statement st4 = conn.createStatement();
ResultSet rs4 = st4.executeQuery(query4);
{
%>
<form class="form-signin"name="loginForm" method="post">
<div class="container">
<nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                
                    
                 <% if(rs3.next()){ %>
                 <% if(rs4.next()){ %>
                    <a class="navbar-brand" href="#">Onboarding Tool-<%=rs3.getString("projectname") %>-<%=rs4.getString("appname") %></a>
                    <%} }%>
              
                <div id="navbar" class="navbar-collapse collapse">
                    <ol class="nav navbar-nav navbar-right">
                        <li>
                        <img src="assets/images/Logo sized.jpg" class="img-rounded" height="50" width="80" alt="Avatar">
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
                    </ol>
                    
                </div>
            </div>
        </nav>
        </div>
       
            <div class="row">
            <br>
               <div class="col-md-3 sidebar">
                  <div id='jqxWidget'>
        <div id='jqxTree' style='visibility: hidden;  padding-top:40px; float:left;  margin-left: -45px; padding-left:0 '>
                    <ul class="nav nav-sidebar">
                        

            <ul>
                <li id='home' item-selected='true'> <a href="project.jsp">Home </a></li>
                <li item-expanded='true'>App Emphasize Module
                    <ul>
                       <li item-expanded='true'>Project Details
                    <ul>
                        <li><a href="editproject.jsp">Project Information</a></li>
                        <li><a href="application1.jsp">Application Details</a></li>
                        </ul>
                        </li>
                        <li item-expanded='true'> <a href="tree.jsp">Application Prioritization</a>
                         <ul>
                                <li > Parameters</li>
                                <li>Archival Complexity Calculation</li>
                                <li>Archival Cost Estimate</li>
                               
                            </ul>
                        </li>
                         <li><a href="applnprior.jsp">Application-Prioritized</a></li>
                       <li> <a href="demo.jsp">ROI Calculation</a></li>
                        <li>Estimates</li>

                    </ul>
                </li>
                <li item-expanded='true'><a href='firstinsert.jsp'>Intake Module</a>
                <ul>
                <li item-expanded='true'><a href="business.jsp">Business</a>
                <ul>
                <li>Application Information</li>
                <li>Legacy Retention Information</li>
                <li>Archive Data Management</li>
                <li>System Requirements</li>
                
                </ul></li>
                <li item-expanded='true'><a href="component.jsp">Technical</a>
                <ul>
                <li>Application Data Information</li>
                <li>Infrastructure & Environment Inforamation</li>
                <li>Technical Information</li>
                </ul>
                </li>
                
                 <li item-expanded='true'><a href="requirements.jsp">Archival Requirements</a>
                 <ul>
                 <li id='a'>Screen/Report Requirements</li>
                 <li id='b'>Archive Requirements</li>
                 </ul>
                 </li>
                </ul>
                </li>
                
               
                          </ul>
    
     </ul>
         </div>
   </div>
                </div>
              
   <script>
  $(function () {
    // 6 create an instance when the DOM is ready
    $('#jstree').jstree();
    // 7 bind to events triggered on the tree
    $('#jstree').on("changed.jstree", function (e, data) {
      console.log(data.selected);
    });
    // 8 interact with the tree - either way is OK
    $('button').on('click', function () {
      $('#jstree').jstree(true).select_node('child_node_1');
      $('#jstree').jstree('select_node', 'child_node_1');
      $.jstree.reference('#jstree').select_node('child_node_1');
    });
  });
  </script>
                   
                
                <div class="col-md-8">
                <br><br><br>
                <div class="row">

  <div class="col-md-3">
  <div class="form-group">
  <center><label >Requirement</label></center>
  <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%</div>
</div></div></div>

  <div class="col-md-3">
  <div class="form-group">
  <center><label >Development</label></center>
  <div class="progress">
  <div id="one" class="bar" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">30%</div>
</div></div></div>

  <div class="col-md-3">
  <div class="form-group">
  <center><label >Testing</label></center>
  <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 30%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
</div></div></div>

 <div class="col-md-3">
 <div class="form-group">
 <center><label >Deployement</label></center>
 <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 30%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
</div></div></div>
</div>

<div class="row">
		
        
            <div class="row bs-wizard" style="border-bottom:0;">
                
                <div class="col-xs-2 bs-wizard-step active">
                  <div class="text-center bs-wizard-stepnum">Intake Information</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                
                </div>
                
                <div class="col-xs-2 bs-wizard-step disabled"><!-- complete -->
                  <div class="text-center bs-wizard-stepnum">Summary</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>
                
                <div class="col-xs-2 bs-wizard-step disabled"><!-- complete -->
                  <div class="text-center bs-wizard-stepnum">Review</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>
                
                <div class="col-xs-2 bs-wizard-step disabled"><!-- active -->
                  <div class="text-center bs-wizard-stepnum">Approval</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>
                
                 <div class="col-xs-2 bs-wizard-step disabled"><!-- active -->
                  <div class="text-center bs-wizard-stepnum">Final</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>
            </div>
        
        
        
	</div>


<div class="panel-group" id="panels1"> 
                       <br><br><br>
                       <script>
	links=document.getElementsByTagName("li") ; 	 
var element=document.getElementById("a");
for (var i = 0 ; i < links.length ; i ++)  
	links.item(i).style.backgroundColor = 'white' ; 
element.style.borderRadius="5px";
element.style.marginRight = "70px";
element.style.boxSizing = "content-box";
element.style.borderColor = "#999";
element.style.background="#d1d1d1";
var list = document.getElementsByTagName("OL")[0];
var x=list.getElementsByTagName("LI");
for (var i = 0 ; i < x.length ; i ++)  
	x.item(i).style.backgroundColor = 'black' ; 

</script>
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse1">Screen/Report Requirement</a> </h4> 
                            </div>                             
                            <div id="collapse1" class="panel-collapse collapse in"> 
                                <div class="panel-body">
                                    <form role="form"> 
                                   </form>
                                        
                                   <button type="button"  class="btn btn-primary  pull-right" data-toggle="modal" data-target="#myModal" id="btt" onclick="switchColors();"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2" style="color:white">  Next</a><span class="glyphicon glyphicon-chevron-right"></span></button>
                                       
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2">Archive Requirements</a> </h4> 
                            </div>                             
                            <div id="collapse2" class="panel-collapse collapse"> 
                                <div class="panel-body">
                                    
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="leghpolds" value="checked" >Current Legal holds on the application data must be applied to the application's archived data to override the Retention schedule
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="dataapp" value="checked">Data from application must be retained based on the Client Retention schedule.
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="dataloc" value="checked">Data Localization Laws must be followed where relevant.
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="reconsttools" value="checked">The System has tools to reconstruct the data in its original format
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="viewblob" value="checked">The System allows for user viewing of blob data in its original format in relationship to its structured data
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="fieldprop" value="checked">Archived data maintains its field properties and formats from the source system (i.e. decimals, %, commas, .00x, YYY-MM-DD) to display values defined in Views and schemas
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="filedtype" value="checked">Archived data maintains its field types from the source system (i.e. STRING, Integer, CHAR, VCHAR, Date) to display values defined in Views and schemas
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="splchars" value="checked">The System supports archiving special characters as found in source data to include Foreign characters
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="foreignlang" value="checked">The System supports archiving Foreign Language data and maintains the Language in the archive
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="clob" value="checked">The System Maintains CLOBs from source systems
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="unstructarch" value="checked">The System supports archiving unstructured formats such as word, excel, PowerPoint, pdf.
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="accrole" value="checked">Access to the Archive is role based and controlled through Active Directory.
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="dataview" value="checked">The System allows for configuration of data views.
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="complctrl" value="checked">Completeness Control - record level check (The number of records sent from the Application are compared to the number of records posted to the target.)
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="errctrl" value="checked">Error Handling Control - record level check (During the load, records deemed as errors based on program logic will be written to an exception log in their entirety).
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="metadata" value="checked">The System supports metadata management and indexing.
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox" name="advsearch" value="checked">The System provides advanced search tools to include data parameters and the standard search tools
                                            </label>                                             
                                        </div> 
                                         <div class="checkbox"> 
                                            <label class="control-label" name="searchparam" value="checked"> 
                                                <input type="checkbox">Based on search parameters, data can be exported out of the system for analysis
                                            </label>  
                                             <button type="button"  class="btn btn-default  pull-right" data-toggle="modal" data-target="#myModal" id="btn_new" onclick="switchColors0();"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse1" style="color:black"><span class="glyphicon glyphicon-chevron-left"></span>  Previous</a></button>
                                                  
                                        </div> 
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
 
</html>
