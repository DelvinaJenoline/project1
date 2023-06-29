<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,databaseconnection.*"%>
    <% 
String a=(String)session.getAttribute("uid");
String b=(String)session.getAttribute("username");
String c=(String)session.getAttribute("fid");
String d=(String)session.getAttribute("fname");
String e1=request.getParameter("fkey");
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

String sql="select * from file_request where uid='"+a+"' and uname='"+b+"' and fid='"+c+"' and fkey='"+e1+"'";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
//String file=rs.getString("filename");
//session.setAttribute("filename",file);
if(rs.next())
{
	response.sendRedirect("download2.jsp");
}
else
{
%>
	<script>
	alert("You key is wrong");
	window.location="download4.jsp";
	</script>
<% }

st.close();

con.close();

}

catch(Exception e)

        {

out.println(e);

}

%>
</body>
</html>