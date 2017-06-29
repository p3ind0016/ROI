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
            $('#jqxTree').jqxTree({ height: '400px', width: '300px' });
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
  <body>
  <%@page language="java"%>
<%@page import="java.sql.*"%>


<%
try {
Class.forName("org.gjt.mm.mysql.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/strutsdb", "root", "password123");
{
%>
<form class="form-signin"name="loginForm" method="post" action="Technical">
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
                     <div id='jqxWidget'>
        <div id='jqxTree' style='visibility: hidden;  padding-top:40px; float:left;  margin-left: -45px; padding-left:0 '>
                    <ul class="nav nav-sidebar">
                          <ul>
                <li id='home' item-selected='true'> <a href="project.jsp">Home </a></li>
                <li >App Emphasize Module
                    <ul>
                       <li>Project Details
                    <ul>
                        <li><a href="editproject.jsp">Project Information</a></li>
                        <li><a href="application1.jsp">Application Details</a></li>
                        </ul>
                        </li>
                        <li> <a href="tree.jsp">Application Prioritization</a>
                         <ul>
                                <li>Parameters</li>
                                <li>Archival Complexity Calculation</li>
                                <li>Archival Cost Estimate</li>
                            </ul>
                        </li>
                        
                       <li> <a href="demo.jsp">ROI Calculation</a></li>
                       <li>Estimates</li>

                    </ul>
                </li>
                <li>Intake Module
                <ul>
                <li><a href="business.jsp">Business</a></li>
                <li item-selected='true'><a href="component.jsp">Technical</a></li>
                <li><a href="requirements.jsp">Archival Requirements</a></li>
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
                    
                
                <div class="col-md-9">
                <br><br><br><br><br>
<div class="panel-group" id="panels1"> 
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#panels1" href="#collapse1">                            Application Data Information                            </a> </h4> 
                            </div>                             
                            <div id="collapse1" class="panel-collapse collapse"> 
                                <div class="panel-body text-left">
                               
                                  <form role="form"> 
           <div class="form-group"> 
                                            <label class="control-label"> 
                                                Datatype Characteristics
                                            </label>      
                                            <br />
                                            &nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox">Structured &nbsp;      
                                            <input type="checkbox">Unstructured &nbsp;
                                            <input type="checkbox">Hybrid      &nbsp;                         
                                        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">If the Data Type is Unstructured or Hybrid, process for extracting unstructured data? </label>
            <input placeholder="Process Name"  name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>
         <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Does Unstructured or Hybrid business objects needs to be archived?</label>                                             
                                            <select id="formInput26" class="form-control" name="reason_for_access" > 
                                           
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                                
                                            </select>
                                        </div>  
       
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Please specify the formats</label>
            <input placeholder="Format Name" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
          <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Any Special/ Multi Language characters or Foreign Language contained in the application?
                                            </label>                                             
                                        </div> 
                                          <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">If the legacy application contains local language, should the local language be maintained in the archive? 
                                            </label>                                             
                                        </div> 
                                          <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">Based on the application data and date range of the data, is all or part of the data required to be retained beyond application retirement or repurposing?
                                            </label>                                             
                                        </div> 
         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">System Documentation and its Location
                                            </label>                                             
                                        </div> 
                                        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">User Documentation</label>
            <input placeholder="User Documentation" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Technical Documentation</label>
            <input placeholder="Technical Documentation" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Training Documentation</label>
            <input placeholder="Training Documentation" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Support Documentation</label>
            <input placeholder="Support Documentation" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Data Dictionary</label>
            <input placeholder="Data Dictionary" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Test Case Documentation</label>
            <input placeholder="Test Case Documentation" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Testing Records</label>
            <input placeholder="Testing Records" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Design Specification</label>
            <input placeholder="Design Specification" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Requirements Specification</label>
            <input placeholder="Requirements Specification" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Validation Plan</label>
            <input placeholder="Validation Plan" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
                                       
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2">Infrastructure & Environment Information</a> </h4> 
                            </div>                             
                            <div id="collapse2" class="panel-collapse collapse"> 
                                <div class="panel-body">
                                    <form role="form">
                                    
                                    <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">&nbsp;Location of Data                       
                                            </label>                                             
                                        </div>
                                        
                        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Server Name</label>
            <input placeholder="Server Name" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Production Instances</label>
            <input placeholder="Production Instances" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Location of Production Instances</label>
            <input placeholder="Location of Production Instances" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        
        
        
        
                                      <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Contact Name or Entity for Infrastructure Engagement </label>
            <input placeholder="Contact Name or Entity for Infrastructure Engagement " id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        
        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                &nbsp;Do you need to archive source code?   <input type="checkbox">                    
                                            </label>                                             
                                        </div>
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Is this Application a Hosted Service ?</label>                                             
                                            <select id="formInput26" class="form-control" name="reason_for_access" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                         
                                            </select>
                                        </div>  
                                           
                                        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Duration for retention agreements with the vendor</label>
            <input placeholder="" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Does the legacy application’s data need to be archived in the client archive application </label>
            <input placeholder="" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Is the Application external customer facing or have a component of being external customer facing</label>
            <input placeholder="" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         										
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">If external facing, web apps/website URLs</label>
            <input placeholder="" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
                                        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Database size of the application</label>
            <input placeholder="" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Estimated No of Table in the application</label>
            <input placeholder="" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Estimated No of Records(volume) in the application</label>
            <input placeholder="" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
     
    														
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">XML counts for the database</label>
            <input placeholder="" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Does this application utilize any VPN environments (E.g. Citrix) for access</label>
            <input placeholder="" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        
       <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">&nbsp;VPN access required for application access                        
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox">&nbsp;Does data in the Application integrate to or from other systems?                        
                                            </label>                                             
                                        </div>
      
        
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Specify the application to integrate</label>
            <input placeholder="" id="date" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
                       <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Ready Date for Complete Server decommission and Application Retirement</label>
            <input placeholder="dd/mm/yyyy" id="date" name="expdate" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>                    
                                    </form>
                                </div>                                 
                            </div>                             
                        </div>
                        <div class="panel panel-default"> 
                            <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse3">Technical Information</a> </h4> 
                            </div>                             
                            <div id="collapse3" class="panel-collapse collapse"> 
                                <div class="panel-body">
                                    <form role="form"> 
                                        <label text-align:"left">Downloadable Attachment1</label>
    										<input type="file" name="file" size="60" />
    										
    										<label text-align:"left">Downloadable Attachment2</label>
    										<input type="file" name="file" size="60" />
    										
    										<label text-align:"left">Downloadable Attachment3</label>
    										<input type="file" name="file" size="60" />
    										
    										<label text-align:"left">Downloadable Attachment4</label>
    										<input type="file" name="file" size="60" />                        
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