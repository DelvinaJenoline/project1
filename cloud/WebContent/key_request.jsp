<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,databaseconnection.*"%>
<% 
String a=(String)session.getAttribute("uid");
String b=(String)session.getAttribute("username");
String fid1=request.getParameter("fid1");
String fname1=request.getParameter("fname1");
String c=(String)session.getAttribute("email");
String k=(String)session.getAttribute("fkey");
String status="pending";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try
{
   Connection con=databasecon.getconnection();
   Statement st=con.createStatement();
   int x=st.executeUpdate("insert into file_request(uid,uname,fid,fname,fkey,status,email) values('"+a+"','"+b+"','"+fid1+"','"+fname1+"','"+k+"','"+status+"','"+c+"')");
   if(x>0)
   {
  %>
  <script>
  alert("Request Send Successfully");
  window.location="download_file.jsp";
  </script>
<% 
}
   else
   {
	   %>
	   <script>
	   alert("Request Error");
	   window.location="download_file.jsp";
	   </script>
	 <%   
   }
}
catch(Exception e)
{
	e.printStackTrace();
}%>
</body>
</html>