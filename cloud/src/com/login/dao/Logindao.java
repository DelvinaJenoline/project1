package com.login.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import com.login.bean.LoginBean;
import com.login.util.DBConnection;
public class Logindao {
public String authenticateUser(LoginBean loginBean)
{
String userName = loginBean.getUserName();
String password = loginBean.getPassword();
String securitykey= loginBean.getSecuritykey();
Connection con = null;
Statement statement = null;
ResultSet resultSet = null;
String userNameDB = "";
String passwordDB = "";
String roleDB = "";

try
{
con = DBConnection.createConnection();
statement = con.createStatement();
resultSet = statement.executeQuery("select uname,pass,role,securitykey from members");
while(resultSet.next())
{
userNameDB = resultSet.getString("uname");
passwordDB = resultSet.getString("pass");
roleDB = resultSet.getString("role");
securitykey= resultSet.getString("securitykey");
System.out.print("securitykey:"+securitykey);
if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("admin"))
return "Admin_Role";
else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("dataowner") && !securitykey.equals(""))
return "Editor_Role";
else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("datauser") && !securitykey.equals(""))
return "User_Role";
}
}
catch(SQLException e)
{
e.printStackTrace();
}
return "Invalid user credentials";
}
}