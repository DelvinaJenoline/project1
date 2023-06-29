<%@page import="databaseconnection.databasecon"%>
<%@ page  import="java.sql.*,java.util.*,java.io.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<%
String id1=request.getParameter("id1");
String email1=request.getParameter("email");

//int empid=3445;
String fileid1=request.getParameter("fid");
String fkey=request.getParameter("fkey");
String dkey1=null;
String status="provided";
try
{
Connection con3=databasecon.getconnection();
Statement st7 = con3.createStatement();	
ResultSet rs7= null; 
	//String uid = (String)session.getAttribute("uid");
String qry3="select * from fileupload where securitykey='"+fkey+"'";
System.out.println(qry3);
		rs7=st7.executeQuery(qry3);
		while(rs7.next())
		{
		
			dkey1=rs7.getString("securitykey");
	    } 
		}
	catch(Exception e7){
		out.println(e7.getMessage());
	}


String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="kamachidevisuryainformatics@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="Surya@2018"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =email1; // out going email id

String from ="kamachidevisuryainformatics@gmail.com"; //Email id of the recipient
String subject="Decrypt Key";
//String subject ="welcome";

String messageText ="Your File Key is="+dkey1+"";


//session.setAttribute("emailid",emailid);
boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host,user,pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());%>

<%}
catch (Exception err) {

out.println("message not successfully send"); // assume it’s a fail
}
transport.close();







try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud", "root", "root");
PreparedStatement ps=conn.prepareStatement("update file_request set fkey='"+dkey1+"',status='"+status+"' where id='"+id1+"'");
ps.executeUpdate();%>
<script type="text/javascript">
alert("file Key  successfully send to mail........");
window.location='view_keyrequest.jsp';</script>
<% 
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</body>
</html>
