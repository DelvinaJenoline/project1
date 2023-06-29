<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String userName=(String)session.getAttribute("userName"); 
String password=(String)session.getAttribute("password"); 
session.setAttribute("userName",userName);
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "cloud";
String userid = "root";
String pass = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, pass);
statement=connection.createStatement();
String sql ="select securitykey from members where uname='" + userName + "' AND pass='"+password+"'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
while(resultSet.next()){ 
%>
<html lang="en">
<head>
<title>DataOwner File UploadForm</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Employee Feedback Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- font files -->
<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<!-- /font files -->
<!-- css files -->
<link href="css2/style.css" rel='stylesheet' type='text/css' media="all" />
<link href="css2/style.css" rel='stylesheet' type='text/css' media="all" />


<!-- /css files -->
</head>
<body>
<h1 class="header-w3ls">File UplaodForm</h1>
<div class="content-w3ls">
<h2>DataOwner Upload Form</h2>
	<div class="form-w3ls">
		<form action="uploadservlet" method="post" enctype="multipart/form-data">
			<div class="content-wthree1">
				<div class="grid-agileits1">
					<div class="form-control"> 
						<!--<table border="1">
						<tr>
                        <th>securitykey</th>
                        </tr>
                        <tr><td id="securitykey"><%=resultSet.getString("securitykey")%></td></tr>-->
                       Securitykey: <input type="text" name="securitykey"value="<%=resultSet.getString("securitykey")%>"readonly/><br><br>
                        <%
                         }
                         connection.close();
                         } catch (Exception e) {
                         e.printStackTrace();}%> 
                
                         <input type="file" class="filepond" name="file"  value="Upload" multiple/></div></div></div>
<div class="content-wthree4"><div class="form-control">
					<input type="submit" class="register" value="Submit">
					<input type="reset" class="reset" value="Reset">
					<div class="clear"></div>
				</div>
			</div>		
		</form>
</div>
</div>
</body>
</html>
