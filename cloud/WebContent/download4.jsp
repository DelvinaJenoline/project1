<%@ page import="java.sql.*, javax.sql.*,databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.sql.*,java.io.*"  %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<% String uname=(String)session.getAttribute("uname");
String devid=(String)session.getAttribute("devid");
String email=(String)session.getAttribute("email");
String c=(String)session.getAttribute("fid");
String d=(String)session.getAttribute("fname");
String k=(String)session.getAttribute("filename");
%>
<html>
<head>
<title>multicloud</title>
<script language="JavaScript">
</script>
</head>
<body>
<%
Blob file= null;
String fname=null;

String id=null;

PreparedStatement ps = null;
ResultSet rs = null;
	String sql=null;
	Connection con=null;
 sql = "select filename from fileupload where fid='"+c+"'";

try
{   
	
	con = databasecon.getconnection();
	ps = con.prepareStatement(sql);
	rs = ps.executeQuery();
	rs.next();
	file = rs.getBlob("photourl");
	
	session.setAttribute("resumeBlob",file);
	 response.sendRedirect("download3.jsp");
}
catch(Exception e)
{

out.println("Exception :"+e);
}
finally
{
	if(con != null)
		con.close();
	if(ps != null)
		ps.close();
	if(rs != null)
		rs.close();
}

//}
//else
//{//response.sendRedirect("cost_recharge2.jsp");
//}

	%>
</body>
</html>