<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	   
<% 
String a=(String)session.getAttribute("uname");
 %> 
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
                     <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a class="active" href="about.jsp">Activate DataOwners</a></li>
                     <li><a href="about1.jsp">Activate DataUsers</a></li>
                      <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="view_keyrequest.jsp">ViewkeyRequest</a></li>
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
               <li>ViewkeyRequest</li>
            </ul>
         </div>
      </div><br/><br/>
     <div class="container">
	<div style="font-family:georgia;font-size:30px;color:white;margin-left:310px;">Key Request Details</div>
   <div align="center">
		<table border="1" cellpadding="5">
      <tr> 
        <th>Id</th>
        <th>Userid</th>
        <th>Username</th>
         <th>Email</th>
		<th>Fileid</th>
        <th>Filename</th>
	   <th>Status</th>
       <th>Click Here</th>
      </tr>
    
      <% 
String uid=null,fid=null,username=null,fname=null,size=null,file=null,sysdate=null,fkey=null,filename1=null,pack=null,cost=null;;
String brokerstatus=null;
String serverstatus=null;
try
{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
String sql="select * from file_request where status='pending'";
ResultSet rs=st.executeQuery(sql);
while(rs.next())
{
	           
%>
      <tr> 
        <td><%=rs.getString("id")%></td>
        <td><%=rs.getString("uid")%></td>
        <td><%=rs.getString("uname")%></td>
         <td><%=rs.getString("email")%></td>
		<td><%=rs.getString("fid")%></td>
        <td><%=rs.getString("fname")%></td>
        <td><%=rs.getString("status")%></td>
		<td ><a href="send_email.jsp?id1=<%=rs.getString("id")%>&&email=<%=rs.getString("email")%>&&fid=<%=rs.getString("fid")%>&&fkey=<%=rs.getString("fkey") %>" style="color:red;">Click Here</a></td>
<%
}
st.close();
con.close();
}
catch(Exception e)
{
	out.println(e);

}

%>
</tr>
</table>
</div>
</div>
</body>
</html>