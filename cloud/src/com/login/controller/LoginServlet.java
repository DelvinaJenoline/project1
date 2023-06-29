package com.login.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.login.bean.LoginBean;
import com.login.dao.Logindao;
public class LoginServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
public LoginServlet() {
}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException                       
{
String userName = request.getParameter("uname");
String password = request.getParameter("pass");
LoginBean loginBean = new LoginBean();
loginBean.setUserName(userName);
loginBean.setPassword(password);
Logindao loginDao = new Logindao();
try
{
String userValidate = loginDao.authenticateUser(loginBean);
if(userValidate.equals("Admin_Role"))
{
System.out.println("Admin's Home");
HttpSession session = request.getSession(); //Creating a session
session.setAttribute("admin", userName); //setting session attribute
request.setAttribute("userName", userName);
request.getRequestDispatcher("admin.jsp").forward(request, response);
}
else if(userValidate.equals("Editor_Role"))
{
System.out.println("Editor's Home");
HttpSession session = request.getSession();
session.setAttribute("dataowner", userName);
request.setAttribute("userName", userName);
session.setAttribute("dataowner", password);
request.setAttribute("password", password);
request.getRequestDispatcher("editor.jsp").forward(request, response);
}
else if(userValidate.equals("User_Role"))
{
System.out.println("User's Home");
HttpSession session = request.getSession();
session.setMaxInactiveInterval(10*60);
session.setAttribute("datauser", userName);
request.setAttribute("userName", userName);
session.setAttribute("datauser", password);
request.setAttribute("password", password);
request.getRequestDispatcher("user.jsp").forward(request, response);
}
else
{
System.out.println("Error message = "+userValidate);
request.setAttribute("errMessage", userValidate);
request.getRequestDispatcher("index.jsp").forward(request, response);
}
}
catch (IOException e1)
{
e1.printStackTrace();
}
catch (Exception e2)
{
e2.printStackTrace();
}
}
}

