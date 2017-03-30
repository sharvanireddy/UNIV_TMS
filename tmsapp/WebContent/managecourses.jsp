<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Cabin_400.font.js"></script>
<script type="text/javascript" src="js/tabs.js"></script>
<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/script.js"></script>

<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://jakarta.apache.org/taglibs/datetime-1.0" prefix="dt" %>

</head>
<body id="page4">
<div class="main">
<header>
    <div class="wrapper">
      <h1>  </h1>
       <h1>&nbsp  </h1>
	   <h1>&nbsp  </h1>
	   <br/>
	   
	   <br/>
	   <h1>&nbsp  </h1>
    </div>
    <nav>
    <form name="linkForm" method="post">
    <input type="hidden"  class="input"  name="viewType" value=""/>
                    <ul id="menu">
		   <li  id="menu_active"><a href="#" onClick="performAction('managecourses');"><span><span>Manage Tickets</span></span></a></li>
		  <li ><a href="#" onClick="performAction('services');"><span><span>Raise Tickets</span></span></a></li>
        	<li><a href="#" onClick="performAction('viewprofile');"><span><span>Manage Profile</span></span></a></li>
         <li class="end"><a href="#" onClick="logoutAction('logout');"><span><span>Logout</span></span></a></li>
       
      </ul>
      </form>
    </nav>
    <script type="text/javascript">
    
    function logoutAction(viewType) {
    	
    	document.linkForm.viewType.value=viewType;
    	document.linkForm.action = "loginServlet";
    	document.linkForm.submit();
    }
    
    function performAction(viewType) {
    	document.linkForm.viewType.value=viewType;
    	document.linkForm.action = "servicesServlet";
    	if(viewType=='viewprofile') {
    		document.linkForm.action = "profileServlet";
    	}
    	document.linkForm.submit();
    }
        
    function deleteCourse(id) {
    	document.ContactForm.viewType.value="dropcoursedetails";
    	document.ContactForm.selectedid.value=id;
    	var r = confirm("Are you sure to drop the course ? ");
    	if(r==true) {
    		document.ContactForm.submit();
    	}else {
    		return false;
    	}
    
    }
    </script>

  </header>
  <!-- / header -->
  <!--content -->
  <section id="content">
    <div class="wrapper pad1">
	
	    </div>
    <form name="ContactForm" id="ContactForm" method="post" action="servicesServlet">
    <input type="hidden" name="viewType" value="" />
    <input type="hidden" name="selectedid" value="" />
   
    <table width="100%" >
    
            <tr><td colspan="2">&nbsp;</td></tr>
            <tr>
            <td colspan="7"> 
            <core:if test="${not empty errorMsg}">
             <font color="red"><core:out value="${errorMsg}"></core:out></font>
            </core:if>
            
            </td>
              </tr>
              <tr><td>&nbsp;</td></tr>
    
        <tr>
        <td colspan="7"> <h4>Ticket Details</h4> </td>
            </tr>
            <tr><td>&nbsp;</td></tr>
     <tr>
     <th>Ticket Type</th>
     <th>Name</th>
     <th>Mail Id</th>
     <th>Description</th>
     <th>Resolution</th>
     <th>Posted Date</th>
     <th>Status</th>
    <!--  <th>Action</th> -->
      </tr>  
         
    
    
      <tr><td colspan="7">&nbsp;</td></tr> 
    <core:forEach var="enquiry" items="${enquiryList}">
    <tr align="center">
    <td><core:out value="${enquiry.serviceType}"></core:out> </td>
    <td><core:out value="${enquiry.name}"></core:out> </td>
     <td><core:out value="${enquiry.emailId}"></core:out> </td>
     <td><core:out value="${enquiry.message}"></core:out> </td>
     <td><core:out value="${enquiry.response}"></core:out> </td>
     <td><core:out value="${enquiry.enquiryDate}"></core:out> </td>
     <td><core:out value="${enquiry.status}"></core:out> </td>
    <%-- <td><a href="#"  onClick="updateEnquiry('<core:out value="${enquiry.id}"/>');">Edit</a></td> --%>
    </tr>
    
    </core:forEach>
  
  
    </table>
        </form>
  </section>
  
</div>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>