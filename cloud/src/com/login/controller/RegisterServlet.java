package com.login.controller;
import java.io.*;  
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class RegisterServlet extends HttpServlet {  
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
String fname = request.getParameter("fname");
String lname= request.getParameter("lname");
String email= request.getParameter("email");
String uname= request.getParameter("uname");
String pass= request.getParameter("pass");
String a1= request.getParameter("attribute1");
String a2 = request.getParameter("attribute2");
String a3 = request.getParameter("attribute3");
String a4 = request.getParameter("attribute4");
String role= request.getParameter("role");
try{  
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://127.0.0.1:3306/cloud","root","root");
  
PreparedStatement ps=con.prepareStatement(  
"insert into members(first_name,last_name,email,uname,pass,a1,a2,a3,a4,role,securitykey) values (?,?,?,?,?,?,?,?,?,?,?)");  
ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3,email);
ps.setString(4, uname);
ps.setString(5, pass);
ps.setString(6, a1);
ps.setString(7, a2);
ps.setString(8, a3);
ps.setString(9, a4);
ps.setString(10, role);
ps.setString(11, "");
int i=ps.executeUpdate();  
if(i>0)
{
out.print("You are successfully registered...");
RequestDispatcher rd=request.getRequestDispatcher("signin.jsp");  
rd.forward(request,response);  
}
      
          
}
catch (Exception e2) 
{System.out.println(e2);}  
          
out.close();  
}  
}  