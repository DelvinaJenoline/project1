<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%                 
                    String userName=(String)request.getAttribute("userName");
                    String password=(String)request.getAttribute("password");
 
                    try{
            			
                	    Connection con = databasecon.getconnection();
                        PreparedStatement ps=con.prepareStatement("select id,email,uname from members where uname='"+userName+"' && pass='"+ password+"' && role='datauser'");
                		ResultSet rs=ps.executeQuery();
                		if(rs.next())
                		{
                		session.setAttribute("username",userName);
                		session.setAttribute("uid",Integer.toString(rs.getInt("id")));
                        session.setAttribute("email",rs.getString("email"));
                		}
                		else
                		{
                	    System.out.println(" ");
                		}
                		

                	}
                	catch(Exception e2){
                		out.println(e2.getMessage());
                	}
				   
					   
%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Flick Subscribe Form Flat Responsive widget Template :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8" />
	<meta name="keywords" content="Flick Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Cuprum:400,400i,700,700i" rel="stylesheet">
	<!-- /fonts -->
	<!-- css -->
	<link href="css1/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css1/style.css" rel='stylesheet' type='text/css' media="all" />

	<!-- /css -->
</head>

<body>
	<div class="content-w3ls">
		<div class="left-grid">
			<header>
			<h1 class="Flick-grid">
					<a href="#">DataUser<%=request.getAttribute("userName") %></a>
				</h1>
				<ul class="nav">
				<li>
						<a href="search.jsp">Search Files</a>
					</li>
					<li>
					 <a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a>
					</li>
				</ul>
			</header>
			<div class="sub-grid">
				<h2>lets stay in touch</h2>
				<p>Join us for FREE to get instant email updates!</p>
				<div class="subscribe-w3ls">
					<form action="#" method="post">
						<div class="form-group1">
							<input type="email" id="email" name="email" placeholder="Enter Your Email Address" required>
						</div>
						<div class="form-group2">
							<button type="submit" class="btn btn-outline btn-lg">
								<i class="fa fa-paper-plane" aria-hidden="true"></i>
							</button>
						</div>
						<div class="clear"></div>
					</form>
				</div>
				<ul class="social-icons3">

					<li>
						<a href="#" class="s-iconfacebook">
							<span class="fa fa-facebook" aria-hidden="true"></span>
						</a>
					</li>
					<li>
						<a href="#" class="s-icontwitter">
							<span class="fa fa-twitter" aria-hidden="true"></span>
						</a>
					</li>
					<li>
						<a href="#" class="s-icondribbble">
							<span class="fa fa-dribbble" aria-hidden="true"></span>
						</a>
					</li>
					<li>
						<a href="#" class="s-iconbehance">
							<span class="fa fa-behance" aria-hidden="true"></span>
						</a>
					</li>
				</ul>
				<div class="agileits-w3layouts-copyright">
					<p class="w3ls-copyright">© 2018 &nbsp;Flick. All rights reserved | Design by
						<a href="//w3layouts.com/">W3layouts</a>
					</p>
				</div>
			</div>
		</div>
		<div class="right-grid">
		</div>
	</div>
</body>
</html>