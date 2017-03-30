<!DOCTYPE html>
<html lang="en">
<head>
<title>Ticket Management System</title>
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
<body id="page6">
<div class="main">
  <!--header -->
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
        <li><a href="login.jsp"><span><span>Login</span></span></a></li>
        <li  id="menu_active"><a href="contactus.jsp"><span><span>Raise Ticket</span></span></a></li>
        
      </ul>
      </form>
    </nav>
  
    <script type="text/javascript">
    
    
    function performAction(viewType) {
    	document.linkForm.viewType.value=viewType;
    	document.linkForm.action = "offersServlet";
    	document.linkForm.submit();
    }
        
    
    </script>

  </header>
  <!-- / header -->
  <!--content -->
  <section id="content">
    <div class="wrapper pad1">
      <article class="col1">
       
      </article>
      <article class="col2">
        <h3 class="pad_top1" align="center">Raise Ticket</h3>
        <form id="ContactForm" action="enquiryServlet" method="post">
         <input type="hidden" class="input" name="viewType" value="enquirysubmit">
          <div>
          
           <div  class="wrapper"> 
              <core:if test="${not empty errorMsg}">
           <font color="red"> <core:out value="${errorMsg}"></core:out> </font>
            </core:if>
            </div>
            
        <div  class="wrapper"> <span>Ticket Type:</span>
        <select name="servicetype" id="servicetype">
        <option value="select">Select</option>
         <option value="Class room issues">Class room issues</option>
        <option value="Library Support">Library Support</option>
        <option value="Course Issues">Course Issues</option>
        <option value="Scholarships">Scholarships</option>
        <option value="College facilities">College facilities</option>
        <option value="Student Services">Student Services</option>
        <option value="Auxiliary Services">Auxiliary Services</option>
        </select>            
        </div>
                
		    
            <div  class="wrapper"> <span>Name:</span>
              <input type="text" class="input" name="custname" value="customer">
            </div>
            
            <div  class="wrapper"> <span>Email:</span>
              <input type="text" class="input" name="emailid" value="customer@gmail.com">
            </div>
            <div  class="textarea_box"> <span>Description:</span>
              <textarea name="message" cols="1" rows="1">Clarification on....</textarea>
            </div>
         <div  align="center">   <input type="submit" value="Submit" /> </div> </div>
        </form>
      </article>
    </div>
  </section>
  <!--content end-->
  
</div>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>