<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>DataOwner File UploadForm</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Employee Feedback Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- font files -->
<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- /font files -->
<!-- css files -->
   <!-- <link href="css5/font-awesome.min.css" rel="stylesheet">
 <link href="css5/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
   <link href="css5/style.css" rel='stylesheet' type='text/css' media="all">-->
<link href="css2/style.css" rel='stylesheet' type='text/css' media="all" />
<link href="css2/style.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css files -->
</head>
<body>
<br><br><br><br><br><br>
<center>
<div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
               <%
               String name=(String)session.getAttribute("userName");
	           session.setAttribute("userName", name);
	           String name1=(String)session.getAttribute("userName");
	            %>
	            <a href="editor.jsp?name=<%=name1%>">Home</a>
                  <span>/ /</span>
               </li>
               <li>UploadSuccess</li>
            </ul>
         </div>
      </div>
      </center><br/><br/>
	
<br><br>
<center><h1 class="header-w3ls">UploadedSuccessfully</h1></center>
<center><i class="fa fa-cloud-upload" style="font-size:48px;color:skyblue"></i></center>
</body>
</html>
