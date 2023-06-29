<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String name=(String)session.getAttribute("userName");
String password=(String)session.getAttribute("password");
%>
<%
Statement statement = null;
ResultSet resultSet = null; 
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
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, pass);
statement=connection.createStatement();
String sql ="select * from fileupload where username='"+name+"'";
System.out.println(sql);
resultSet = statement.executeQuery(sql);
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
<h1 class="header-w3ls">View Files</h1>
<div class="content-w3ls">
<h2>DataOwner View Files</h2>
			<div class="content-wthree1">
				<div class="grid-agileits1">
					<div class="form-control"> 
                        <table class="table table-bordered">
	
		                  <tr>
			               <td class="table-success"><b>FILES</b></td>
		    <%
			while (resultSet.next()) 
			{
		    %>
		<tr style="background-color: #ffffcc;">
		   <TD><%=resultSet.getString("filename")%></TD>
		   </tr>
		<%
		  }
		%>
	</table> 
	</div>
				</div>
				<%            connection.close();
                         } catch (Exception e) {
                         e.printStackTrace();}%> 
                   
			</div>		
</div>
</body>
</html>
