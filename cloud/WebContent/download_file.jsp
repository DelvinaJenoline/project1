<%@ page import="java.sql.*,databaseconnection.*"%>

<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	
<%
String userName=(String)session.getAttribute("uid");
String id=(String)session.getAttribute("username");
String email=(String)session.getAttribute("email"); 
session.setAttribute("username",userName);
session.setAttribute("uid",id);
session.setAttribute("email",email);
String fid=request.getParameter("id");
session.setAttribute("fid", fid);
String fname=request.getParameter("fname");
 session.setAttribute("fname", fname);
 String fkey=request.getParameter("fkey");
 session.setAttribute("fkey",fkey );
%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Search File Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Palette Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="download/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="download/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- color switch -->
    <link href="download/css/blast.min.css" rel="stylesheet" />
    <!-- lightbox -->
    <link rel="stylesheet" href="download/css/lightbox.min.css">
    <!-- portfolio -->
    <link rel="stylesheet" href="download/css/portfolio.css">
    <!-- font-awesome icons -->
    <link href="download/css/font-awesome.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <div class="blast-box">
        <div class="blast-frame">
            <p>color schemes</p>
            <div class="blast-colors d-flex justify-content-center">
                <div class="blast-color">#25e0ff</div>
                <div class="blast-color">#feb800</div>
                <div class="blast-color">#f25050</div>
                <div class="blast-color">#18e7d3</div>
                <!-- you can add more colors here -->
            </div>
            <p class="blast-custom-colors">Choose Custom color</p>
            <input type="color" name="blastCustomColor" value="#cf2626">

        </div>
        <div class="blast-icon"><i class="fa fa-cog" aria-hidden="true"></i></div>

    </div>
    <div id="home" class="banner" data-blast="bgColor">
        <!-- header -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-light navbar-fixed-top">
            <div class="container">
                <h1 class="wthree-logo">
                    <a href="user.jsp" id="logoLink" data-blast="color">Key Request</a>
                </h1>
            </div>
        </nav>	
        <!-- //header -->
        <!-- banner -->
        <div class="container-fluid">
            <div class="row banner-row">
                <div class="col-lg-8 bg-img text-center">
                    <h3 class="agile-title">Request key for download file</h3>
                    <div class="bnr-img">
                        <img src="download/images/palette.png" alt="" class="img-fluid m-auto" />
                    </div>

                </div>
                <div class="col-lg-4  my-auto p-0">

                    <div id="login-row">
                        <h4>Request now!</h4>
                        <div id="login-column">
                            <div class="box">
                                <div class="shape1 shape-bg"></div>
                                <div class="shape2 shape-bg"></div>
                                <div class="shape3 shape-bg"></div>
                                <div class="shape4 shape-bg"></div>
                                <div class="shape5 shape-bg"></div>
                                <div class="shape6 shape-bg"></div>
                                <div class="shape7 shape-bg"></div>
                                <div class="float">
                                    <form class="form"  action="downlaod11.jsp" onsubmit="return validation()" method="post">
                                        <div class="form-group">
                                            <label for="Filekey">File key</label><br>
                                            <input type="text"  name="fkey" id="username" class="form-control"
                                                placeholder="fkey" required>
                                        </div>
                                        <div class="row">
                                        <div class="col">
                                        <div class="form-group btn-agile">
                                            <input type="submit" name="submit"  class="btn btn-primary btn-md" class="button-error pure-button" name="send" value="Download">
                                        </div>
                                        </div>
                                         <div class="col">
                                        <div class="form-group btn-agile">
                                            <input class="btn btn-primary btn-md" class="button-secondary pure-button" name="Clear" style="height:30px;width:60px;" value="Clear" type="reset">
                                        </div>
                                        </div>
                                        </div>
                                         <a href="key_request.jsp?fid1=<%=fid %>&&fname1=<%=fname%>&&fkey=<%=fkey%>" style="font-family:georgia;font-size:20px;font-weight:bold;margin-left:50px;">Key Request</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //banner -->
    </div>
    <!-- about -->
    <section class="wthree-row py-sm-5 py-4 about-top" id="about">
        <div class="container pt-lg-5">
            <div class="title-section py-lg-5">
                <h4 data-blast="color">easy to start</h4>
                <h3 class="w3ls-title text-uppercase">proven strategy</h3>
            </div>
            <div class="agileits-top-row row py-md-5">
                <div class="col-lg-4 col-md-6 my-md-0 my-4">
                    <div class="agileits-about-grids">
                        <span class="fa fa-thumbs-up" aria-hidden="true" data-blast="color"></span>
                        <h4>save time
                            <span></span>
                        </h4>
                        <p>Itaque earum rerum hic tenetur asap iente delectus rulla accumsan ac elit in
                            coeiciendis
                            maiores alias.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6  mb-lg-0 mb-4">
                    <div class="agileits-about-grids">
                        <span class="fa fa-picture-o" aria-hidden="true" data-blast="color"></span>
                        <h4>ready pages
                            <span></span>
                        </h4>
                        <p>Itaque earum rerum hic tenetur asap iente delectus rulla accumsan ac elit in
                            coeiciendis
                            maiores alias.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mx-auto">
                    <div class="agileits-about-grids">
                        <span class="fa fa-users" aria-hidden="true" data-blast="color"></span>
                        <h4>startup
                            <span></span>
                        </h4>
                        <p>Itaque earum rerum hic tenetur asap iente delectus rulla accumsan ac elit in
                            coeiciendis
                            maiores alias.</p>
                    </div>
                </div>
            </div>
            <div class="agileits-top-row row pb-md-5">
                <div class="col-lg-4 col-md-6 my-md-0 my-4">
                    <div class="agileits-about-grids">
                        <span class="fa fa-book" aria-hidden="true" data-blast="color"></span>
                        <h4>take comfort
                            <span></span>
                        </h4>
                        <p>Itaque earum rerum hic tenetur asap iente delectus rulla accumsan ac elit in
                            coeiciendis
                            maiores alias.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6  mb-lg-0 mb-4">
                    <div class="agileits-about-grids">
                        <span class="fa fa-briefcase" aria-hidden="true" data-blast="color"></span>
                        <h4>inclusion
                            <span></span>
                        </h4>
                        <p>Itaque earum rerum hic tenetur asap iente delectus rulla accumsan ac elit in
                            coeiciendis
                            maiores alias.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mx-auto">
                    <div class="agileits-about-grids">
                        <span class="fa fa-phone" aria-hidden="true" data-blast="color"></span>
                        <h4>24*7 Support
                            <span></span>
                        </h4>
                        <p>Itaque earum rerum hic tenetur asap iente delectus rulla accumsan ac elit in
                            coeiciendis
                            maiores alias.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="about-bottom-agileinfo pb-lg-5">
        <div class="row  no-gutters align-items-center abbot-main">
            <div class="col-lg-6 about-grid-agileits py-5" data-blast="bgColor">
                <div class="about-grid">
                    <div class="container">
                        <div class="d-flex">
                            <div class="mx-auto">
                                <div class="title-section py-lg-5 pb-4">
                                    <h4>Power Tools</h4>
                                    <h3 class="w3ls-title text-uppercase text-white">unique features</h3>
                                </div>
                                <div class="wthree-list-grid d-flex flex-wrap">
                                    <div class="wthree-list-icon">
                                        <span class="fa fa-thumbs-up" aria-hidden="true"></span>
                                    </div>
                                    <div class="wthree-list-desc">
                                        <h5>vision</h5>
                                        <p>Consectetur adipiscing elit estibulum nibh urna.</p>
                                    </div>
                                </div>
                                <div class="wthree-list-grid d-flex flex-wrap">
                                    <div class="wthree-list-icon">
                                        <span class="fa fa-money" aria-hidden="true"></span>
                                    </div>
                                    <div class="wthree-list-desc">
                                        <h5>affordable</h5>
                                        <p>Elit consectetur adipiscing estibulum nibh urna.</p>
                                    </div>
                                </div>
                                <div class="wthree-list-grid d-flex flex-wrap">
                                    <div class="wthree-list-icon">
                                        <span class="fa fa-picture-o" aria-hidden="true"></span>
                                    </div>
                                    <div class="wthree-list-desc">
                                        <h5>quality</h5>
                                        <p>Consectetur adipiscing elit estibulum nibh urna.</p>
                                    </div>
                                </div>
                                <div class="wthree-list-grid d-flex flex-wrap">
                                    <div class="wthree-list-icon">
                                        <span class="fa fa-phone" aria-hidden="true"></span>
                                    </div>
                                    <div class="wthree-list-desc">
                                        <h5>24*7 support</h5>
                                        <p>Adipiscing consectetur elit estibulum nibh urna.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6  py-5">
                <div class="rgrid-agileits">
                    <h4>"trendy <br> Material Design <br> Color Schemes</h4>
                    <span class="about-line" data-blast="bgColor"></span>
                </div>
            </div>
        </div>
        <div class="row  no-gutters align-items-center abbot-main flex-row-reverse">
            <div class="col-lg-6 about-grid-agileits" data-blast="bgColor">
                <div class="about-grid py-5">
                    <div class="container">
                        <div class="d-flex">
                            <div class="mx-auto">
                                <div class="title-section py-lg-5 pb-4">
                                    <h4>Power Tools</h4>
                                    <h3 class="w3ls-title text-uppercase text-white">Unique Features</h3>
                                </div>
                                <div class="wthree-list-grid d-flex flex-wrap">
                                    <div class="wthree-list-icon">
                                        <span class="fa fa-thumbs-up" aria-hidden="true"></span>
                                    </div>
                                    <div class="wthree-list-desc">
                                        <h5>vision</h5>
                                        <p>Consectetur adipiscing elit estibulum nibh urna.</p>
                                    </div>
                                </div>
                                <div class="wthree-list-grid d-flex flex-wrap">
                                    <div class="wthree-list-icon">
                                        <span class="fa fa-money" aria-hidden="true"></span>
                                    </div>
                                    <div class="wthree-list-desc">
                                        <h5>affordable</h5>
                                        <p>Elit consectetur adipiscing estibulum nibh urna.</p>
                                    </div>
                                </div>
                                <div class="wthree-list-grid d-flex flex-wrap">
                                    <div class="wthree-list-icon">
                                        <span class="fa fa-picture-o" aria-hidden="true"></span>
                                    </div>
                                    <div class="wthree-list-desc">
                                        <h5>quality</h5>
                                        <p>Consectetur adipiscing elit estibulum nibh urna.</p>
                                    </div>
                                </div>
                                <div class="wthree-list-grid d-flex flex-wrap">
                                    <div class="wthree-list-icon">
                                        <span class="fa fa-briefcase" aria-hidden="true"></span>
                                    </div>
                                    <div class="wthree-list-desc">
                                        <h5>24*7 support</h5>
                                        <p>Adipiscing consectetur elit estibulum nibh urna.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-grid py-5">
                    <div class="container">
                        <div class="d-flex">
                            <div class="mx-auto">
                                <div class="title-section py-lg-5 pb-4">
                                    <h4>EASY TO START</h4>
                                    <h3 class="w3ls-title text-uppercase">Marketing Service</h3>
                                </div>
                                <div class="wthree-list-grid d-flex flex-wrap">
                                    <div class="wthree-list-icon">
                                        <span class="num-list" data-blast="color">01</span>
                                    </div>
                                    <div class="wthree-list-desc">
                                        <p>Consectetur adipiscing elit estibulum nibh urnestibulum volutpat.</p>
                                    </div>
                                </div>
                                <div class="wthree-list-grid d-flex flex-wrap">
                                    <div class="wthree-list-icon">
                                        <span class="num-list" data-blast="color">02</span>
                                    </div>
                                    <div class="wthree-list-desc">
                                        <p>Consectetur adipiscing elit estibulum nibh urnestibulum volutpat.</p>
                                    </div>
                                </div>
                                <div class="wthree-list-grid d-flex flex-wrap">
                                    <div class="wthree-list-icon">
                                        <span class="num-list" data-blast="color">03</span>
                                    </div>
                                    <div class="wthree-list-desc">
                                        <p>Consectetur adipiscing elit estibulum nibh urnestibulum volutpat.</p>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //about -->
    <!-- portfolio -->
    <section id="portfolio" class="py-lg-5 portfolio-agile pt-3 pb-5">
        <div class="container py-lg-5">
            <div class="title-section pb-lg-5 text-center">
                <h4>our work</h4>
                <h3 class="w3ls-title text-uppercase">portfolio</h3>
            </div>
            <div class="row">
                <ul class="nav nav-pills my-3" id="pills-tab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="showall-tab" data-toggle="pill" href="#showall" role="tab"
                            aria-controls="showall" aria-selected="true">Show All</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="categorys-tab" data-toggle="pill" href="#categorys" role="tab"
                            aria-controls="categorys" aria-selected="false">Tab 1</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="Tab2-Image-tab" data-toggle="pill" href="#Tab2-Image" role="tab"
                            aria-controls="Tab2-Image" aria-selected="false">Tab 2</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="Tab3-Image-tab" data-toggle="pill" href="#Tab3-Image" role="tab"
                            aria-controls="Tab3-Image" aria-selected="false">Tab 3</a>
                    </li>

                </ul>
            </div>
            <hr style="margin-top:-20px;">
            <div class="container">
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active clearfix" id="showall" role="tabpanel" aria-labelledby="showall-tab">
                        <div class="portfolio">
                            <a href="download/images/g1.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g1.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Image1</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g2.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g2.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Image 2</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g3.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g3.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Tab1-Image2</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g4.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g4.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Image 3</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g5.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g5.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Image 3</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g6.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g6.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Image 4</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g7.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g7.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Image 5</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g8.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g8.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Image 6</div>
                        </div>
                    </div>
                    <div class="tab-pane fade clearfix" id="categorys" role="tabpanel" aria-labelledby="categorys-tab">
                        <div class="portfolio">
                            <a href="download/images/g2.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g2.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Tab1-Image1</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g3.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="images/g3.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Tab1-Image2</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g4.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g4.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Tab1-Image3</div>
                        </div>
                    </div>
                    <div class="tab-pane fade clearfix" id="Tab3-Image" role="tabpanel" aria-labelledby="Tab3-Image-tab">
                        <div class="portfolio">
                            <a href="download/images/g5.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g6.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Tab3-Image 1</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g7.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g7.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Tab3-Image 2</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g8.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g8.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Tab3-Image 3</div>
                        </div>
                    </div>
                    <div class="tab-pane fade clearfix" id="Tab2-Image" role="tabpanel" aria-labelledby="Tab2-Image-tab">
                        <div class="portfolio">
                            <a href="download/images/g1.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g1.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Tab2-Image 1</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g2.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g2.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Tab2-Image 2</div>
                        </div>
                        <div class="portfolio">
                            <a href="download/images/g3.jpg" class="img-fluid" data-lightbox="example-set" data-title="Add text to your image to make a commentary for it!">
                                <img class="categoryd-img img-fluid" src="download/images/g3.jpg" alt="flyer-portfolio" />
                            </a>
                            <div class="desc">Tab2-Image 3</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //portfolio -->
    <!-- services -->
    <div class="row  no-gutters align-items-center abbot-main flex-row-reverse" id="services">
        <div class="col-lg-6 about-grid-agileits py-5" data-blast="bgColor">
            <div class="about-grid">
                <div class="container">
                    <div class="d-flex">
                        <div class="mx-auto">
                            <div class="title-section py-lg-5 pb-4">
                                <h4>Power Tools</h4>
                                <h3 class="w3ls-title text-uppercase text-white">unique features</h3>
                            </div>
                            <div class="wthree-list-grid d-flex flex-wrap">
                                <div class="wthree-list-icon">
                                    <span class="fa fa-thumbs-up" aria-hidden="true"></span>
                                </div>
                                <div class="wthree-list-desc">
                                    <h5>vision</h5>
                                    <p>Consectetur adipiscing elit estibulum nibh urna.</p>
                                </div>
                            </div>
                            <div class="wthree-list-grid d-flex flex-wrap">
                                <div class="wthree-list-icon">
                                    <span class="fa fa-money" aria-hidden="true"></span>
                                </div>
                                <div class="wthree-list-desc">
                                    <h5>affordable</h5>
                                    <p>Elit consectetur adipiscing estibulum nibh urna.</p>
                                </div>
                            </div>
                            <div class="wthree-list-grid d-flex flex-wrap">
                                <div class="wthree-list-icon">
                                    <span class="fa fa-picture-o" aria-hidden="true"></span>
                                </div>
                                <div class="wthree-list-desc">
                                    <h5>quality</h5>
                                    <p>Consectetur adipiscing elit estibulum nibh urna.</p>
                                </div>
                            </div>
                            <div class="wthree-list-grid d-flex flex-wrap">
                                <div class="wthree-list-icon">
                                    <span class="fa fa-phone" aria-hidden="true"></span>
                                </div>
                                <div class="wthree-list-desc">
                                    <h5>24*7 support</h5>
                                    <p>Adipiscing consectetur elit estibulum nibh urna.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6  py-sm-5 py-4">
            <div class="lgrid-agileits">
                <h4>"trendy <br> Material Design <br> Color Schemes</h4>
                <span class="about-line" data-blast="bgColor"></span>
            </div>
        </div>
    </div>
    <div class="row  no-gutters align-items-center abbot-main">
        <div class="col-lg-6 about-grid-agileits py-sm-5 py-4" data-blast="bgColor">
            <div class="about-grid">
                <div class="container">
                    <div class="d-flex">
                        <div class="mx-auto">
                            <div class="title-section py-lg-5 pb-4">
                                <h4>Power Tools</h4>
                                <h3 class="w3ls-title text-uppercase text-white">unique features</h3>
                            </div>
                            <div class="wthree-list-grid d-flex flex-wrap">
                                <div class="wthree-list-icon">
                                    <span class="fa fa-thumbs-up" aria-hidden="true"></span>
                                </div>
                                <div class="wthree-list-desc">
                                    <h5>vision</h5>
                                    <p>Consectetur adipiscing elit estibulum nibh urna.</p>
                                </div>
                            </div>
                            <div class="wthree-list-grid d-flex flex-wrap">
                                <div class="wthree-list-icon">
                                    <span class="fa fa-money" aria-hidden="true"></span>
                                </div>
                                <div class="wthree-list-desc">
                                    <h5>affordable</h5>
                                    <p>Elit consectetur adipiscing estibulum nibh urna.</p>
                                </div>
                            </div>
                            <div class="wthree-list-grid d-flex flex-wrap">
                                <div class="wthree-list-icon">
                                    <span class="fa fa-picture-o" aria-hidden="true"></span>
                                </div>
                                <div class="wthree-list-desc">
                                    <h5>quality</h5>
                                    <p>Consectetur adipiscing elit estibulum nibh urna.</p>
                                </div>
                            </div>
                            <div class="wthree-list-grid d-flex flex-wrap">
                                <div class="wthree-list-icon">
                                    <span class="fa fa-phone" aria-hidden="true"></span>
                                </div>
                                <div class="wthree-list-desc">
                                    <h5>24*7 support</h5>
                                    <p>Adipiscing consectetur elit estibulum nibh urna.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6  px-sm-5 mx-auto py-lg-0 py-4">
            <section class="px-sm-5 px-3 accordion-agile">
                <div class="typo-grid my-auto">
                    <div class="panel-group" id="accordion4" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne4">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion4" href="#collapseOne4"
                                        aria-expanded="true" aria-controls="collapseOne4" data-blast="bgColor">
                                        <i class="icon fa fa-globe text-white"></i>
                                        Section 1
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne4" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne4">
                                <div class="panel-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
                                        nisl
                                        lorem,
                                        dictum id pellentesque at, vestibulum ut arcu. Curabitur erat
                                        libero,
                                        egestas
                                        eu tincidunt ac, rutrum ac justo. Vivamus condimentum laoreet
                                        lectus,
                                        blandit
                                        posuere tortor aliquam vitae. Curabitur molestie eros. </p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo4">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion4"
                                        href="#collapseTwo4" aria-expanded="false" aria-controls="collapseTwo4"
                                        data-blast="bgColor">
                                        <i class="icon fa fa-briefcase text-white"></i>
                                        Section 2
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo4">
                                <div class="panel-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent
                                        nisl
                                        lorem,
                                        dictum id pellentesque at, vestibulum ut arcu. Curabitur erat
                                        libero,
                                        egestas
                                        eu tincidunt ac, rutrum ac justo. Vivamus condimentum laoreet
                                        lectus,
                                        blandit
                                        posuere tortor aliquam vitae. Curabitur molestie eros. </p>
                                </div>
                            </div>
                        </div>
                          <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree4">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion4" href="#collapseThree4" aria-expanded="false" aria-controls="collapseThree4"data-blast="bgColor">
                                        <i class="icon fa fa-mobile text-white"></i>
                                        Section 3
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree4" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree4">
                                <div class="panel-body">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nisl lorem, dictum id pellentesque at, vestibulum ut arcu. Curabitur erat libero, egestas eu tincidunt ac, rutrum ac justo. Vivamus condimentum laoreet lectus, blandit posuere tortor aliquam vitae. Curabitur molestie eros. </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

    </div>
    <!-- //services -->
    <!-- slide -->
    <div class="container slide-wthree">
        <div class="row">
            <div class="col-lg-6 mx-auto text-center">
                <h6 class="slide-head">palette - <span>we make it easy to set.</span>
                </h6>
                <img src="download/images/slide.png" class="img-fluid" alt="" />
                <p>grow your audience.monitize your passion</p>
            </div>
        </div>
    </div>
    <!-- //slide -->
    <!-- testimonials Carousel -->
    <section class="py-lg-5" id="testi">
        <div class="container-fluid">
            <div class="row  no-gutters testi-bg1" data-blast="bgColor">
                <div class="col-lg-7">
                    <div class="testi-bg">
                    </div>
                </div>
                <div class="col-lg-5 my-auto py-lg-0 py-5 " data-blast="bgColor">
                    <div class="title-section pb-lg-5 pb-4 text-center">
                        <h4>WE HAVE</h4>
                        <h3 class="w3ls-title text-uppercase">2817 happy users</h3>
                    </div>
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active text-center  testi-cgrid">
                                <div class="testi-icon">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                </div>

                                <p class="mx-auto text-capitalize">onec consequat sapien ut leo cursus
                                    rhoncus. Nullam dui
                                    mi,
                                    vulputate ac metus semper.</p>
                                <h6 class="b-w3ltxt  mt-4">steve</h6>
                            </div>
                            <!-- slider text -->
                            <div class="carousel-item text-center testi-cgrid">
                                <div class="testi-icon">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                </div>
                                <p class="mx-auto text-capitalize">onec consequat sapien ut leo cursus
                                    rhoncus. Nullam dui
                                    mi,
                                    vulputate ac metus semper.</p>
                                <h6 class="b-w3ltxt mt-4">morrison</h6>
                            </div>
                            <!-- slider text -->
                            <div class="carousel-item text-center testi-cgrid">
                                <div class="testi-icon">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                </div>
                                <p class="mx-auto text-capitalize">onec consequat sapien ut leo cursus
                                    rhoncus. Nullam dui
                                    mi,
                                    vulputate ac metus semper.</p>
                                <h6 class="b-w3ltxt  mt-4">coliis</h6>
                            </div>
                            <!-- slider text -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- testimonials Carousel -->
    <!-- js -->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!--  menu toggle -->
    <script src="js/menu.js"></script>
    <!-- color switch -->
    <script src="js/blast.min.js"></script>
    <!-- light box -->
    <script src="js/lightbox-plus-jquery.min.js"></script>
    <!-- Scrolling Nav JavaScript -->
    <script src="js/scrolling-nav.js"></script>
    <!-- start-smooth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function () {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <script src="js/SmoothScroll.min.js"></script>
    <!-- //smooth-scrolling-of-move-up -->
    <!-- Bootstrap core JavaScript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>

</html>