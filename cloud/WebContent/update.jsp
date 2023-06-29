<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/cloud";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
String securitykey= request.getParameter("securitykey");
System.out.println(securitykey);
char[] chars = "abcdefghijklmnopqrstuvwxyz".toCharArray();
StringBuilder sb = new StringBuilder(6);
Random random = new Random();
for (int i = 0; i < 6; i++) {
    char c = chars[random.nextInt(chars.length)];
    sb.append(c);
}
securitykey= sb.toString();
System.out.println(securitykey);
if((id != null)&&(securitykey!=null))
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
//String sql="Update users set securitykey='+output' where id="+id;
String sql = "UPDATE members set securitykey=? where id=?";
System.out.println(sql);
ps = con.prepareStatement(sql);

ps.setString(1,securitykey);
ps.setInt(2,personID);
int i=ps.executeUpdate();
if(i>0)
{
request.getRequestDispatcher("updatesuccess.jsp").forward(request, response);
}
else
{
request.getRequestDispatcher("updatefailure.jsp").forward(request, response);
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
System.out.println(sql);
}
}
%>


