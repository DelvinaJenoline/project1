<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<%@page import="java.util.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
      <title>Cloud Authority</title>
      <!--meta tags -->
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Economy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="css5/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css5/font-awesome.min.css" rel="stylesheet">
      <!-- //font-awesome icons -->
      <!--stylesheets-->
      <link href="css5/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Titillium+Web:400,600,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600" rel="stylesheet">
   </head>
   <style>
   body {
    font-size: 50px;
}
   </style>
   <body>
      <div class="banner-inner" id="home">
         <!-- header -->
         <div class="headder-top">
            <div class="container-fluid">
               <!-- nav -->
               <nav>
                  <div id="logo">
                     <h1><a class="" href="index.html"><span class="fa fa-ravelry mr-2" aria-hidden="true"></span>Cloud Authority</a></h1>
                  </div>
                  <label for="drop" class="toggle">Menu</label>
                  <input type="checkbox" id="drop">
                  <ul class="menu mt-2">
                     <li><a href="index.html">Home</a></li>
                     <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a class="active" href="admin.jsp">Activate DataOwners</a></li>
                     <li><a href="service.html">Activate DataUsers</a></li>
                         <li>	<a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></li>
                  </ul>
               </nav>
               <!-- //nav -->
            </div>
         </div>
         <!-- //header -->
      </div>
      <!-- page details -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="admin.jsp">Home</a>
                  <span>/ /</span>
               </li>
               <li>Activate Dataowners</li>
            </ul>
         </div>
      </div><br/><br/>
 <center>updated successfully &#9786;</center>
 </body>
 </html>

 
 
 
 
 
 
 
 
 
 
 
 