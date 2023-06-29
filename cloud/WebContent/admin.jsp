<!DOCTYPE html>
<html lang="zxx">
   <head>
      <title>Cloud Authority</title>
      <!--meta tags -->
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Economy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="css5/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css5/font-awesome.min.css" rel="stylesheet">
      <!-- //font-awesome icons -->
      <!--stylesheets-->
      <link href="css5/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Titillium+Web:400,600,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600" rel="stylesheet">
   </head>
   <body>
      <div class="main-top" id="home">
         <!-- header -->
         <div class="headder-top">
            <div class="container-fluid">
               <!-- nav -->
               <nav >
                  <div id="logo">
                     <h1><a class="" href="index.html"><span class="fa fa-ravelry mr-2" aria-hidden="true"></span>Cloud Authority</a></h1>
                  </div>
                  <label for="drop" class="toggle">Menu</label>
                  <input type="checkbox" id="drop">
                  <ul class="menu mt-2">
                     <li><a class="active" href="admin.jsp">Home</a></li>
                     <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="about.jsp">Activate DataOwners</a></li>
                     <li><a href="about1.jsp">Activate DataUsers</a></li>
                      <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="view_keyrequest.jsp">ViewkeyRequest</a></li>
                      <li>	<a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></li>
                  </ul>
               </nav>
               <!-- //nav -->
            </div>
         </div>
         <!-- //header -->
      </div>
      
      <!-- //banner -->
      <!-- about -->
      <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-md-4 mb-sm-3 mb-3 mb-2">About Us</h3>
            <div class="title-wls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum 
               </p>
            </div>
            <div class="row pt-lg-5 pt-md-4 pt-3">
               <div class="col-lg-3 col-md-6 text-center col-sm-6 corpo-about ">
                  <div class="position-relative about-top-grid">
                     <div class="about-icon-position">
                        <img src="images/icon1.png" alt="" class="img-fluid">
                     </div>
                     <div class="about-img-top">
                        <img src="images/a1.jpg" alt="" class="img-fluid">
                     </div>
                     <div class="about-wthree-about text-center mt-lg-4 mt-3">
                        <h5>Business Planning</h5>
                        <p class="mt-2">delectus reiciendis maiores alias consequatur aut.maiores alias</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 text-center corpo-about ">
                  <div class="position-relative about-top-grid">
                     <div class="about-icon-position">
                        <img src="images/icon2.png" alt="" class="img-fluid">
                     </div>
                     <div class="about-img-top">
                        <img src="images/a2.jpg" alt="" class="img-fluid">
                     </div>
                     <div class="about-wthree-about text-center mt-lg-4 mt-3">
                        <h5>Market research</h5>
                        <p class="mt-2">delectus reiciendis maiores alias consequatur aut.maiores alias</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 text-center corpo-about ">
                  <div class="position-relative about-top-grid">
                     <div class="about-icon-position">
                        <img src="images/icon3.png" alt="" class="img-fluid">
                     </div>
                     <div class="about-img-top">
                        <img src="images/a3.jpg" alt="" class="img-fluid">
                     </div>
                     <div class="about-wthree-about text-center mt-lg-4 mt-3">
                        <h5>Business 
                           Strategy
                        </h5>
                        <p class="mt-2">delectus reiciendis maiores alias consequatur aut.maiores alias</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 text-center corpo-about ">
                  <div class="position-relative about-top-grid">
                     <div class="about-icon-position">
                        <img src="images/icon4.png" alt="" class="img-fluid">
                     </div>
                     <div class="about-img-top">
                        <img src="images/a4.jpg" alt="" class="img-fluid">
                     </div>
                     <div class="about-wthree-about text-center mt-lg-4 mt-3">
                        <h5>Finance Planning</h5>
                        <p class="mt-2">delectus reiciendis maiores alias consequatur aut.maiores alias</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- about  -->
      <!-- service -->
      <section class="service py-lg-4 py-md-3 py-sm-3 py-3" id="service">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title text-center mb-md-4 mb-sm-3 mb-3 mb-2 clr">Our Services</h3>
            <div class="title-wls-text title-white text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
               <p >Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum 
               </p>
            </div>
            <div class="row">
               <div class="col-lg-4 ser-blog-grid">
                  <div class="ser-sevice-grid">
                     <div class="sevice-w3layouts-inner">
                        <span class="fa fa-hand-peace-o" aria-hidden="true"></span>
                     </div>
                     <div class="sevice-ser-txt">
                        <h4 class="py-3">Finance Planning</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 ser-blog-grid">
                  <div class="ser-sevice-grid">
                     <div class="sevice-w3layouts-inner">
                        <span class="fa fa-search" aria-hidden="true"></span>
                     </div>
                     <div class="sevice-ser-txt">
                        <h4 class="py-3">Market research</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 ser-blog-grid">
                  <div class="ser-sevice-grid">
                     <div class="sevice-w3layouts-inner">
                        <span class="fa fa-bar-chart" aria-hidden="true"></span>
                     </div>
                     <div class="sevice-ser-txt">
                        <h4 class="py-3">Business Planning</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--// service -->
      <!-- price -->
      <section class="price py-lg-4 py-md-3 py-sm-3 py-3" id="prices">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title text-center mb-md-4 mb-sm-3 mb-3 mb-2">Our Price</h3>
            <div class="title-wls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
               <p >Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum </p>
            </div>
            <div class="row">
               <div class="col-lg-3 col-md-6 col-sm-6 pricing-grid">
                  <div class="w3ls-bottom grid-two">
                     <div class="price-images">
                        <div class="table-txt-grid">
                           <h4>GOLDEN</h4>
                        </div>
                        <div class="my-lg-4 my-3 price-w3layouts-table">
                           <h4> <span class="sup">$</span><span class="number-price">60</span> / month </h4>
                        </div>
                        <div class="price-list-txt">
                           <ul class="count">
                              <li>Lorem ipsum </li>
                              <li>Dolor sit </li>
                              <li>Consectetuer</li>
                              <li>Adipiscing</li>
                              <li>Lorem ipsum </li>
                           </ul>
                        </div>
                        <div class="view-price mt-3">
                           <a href="contact.html" class=" scroll">Book Now</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 pricing-grid">
                  <div class="w3ls-bottom grid-two">
                     <div class="price-images">
                        <div class="table-txt-grid">
                           <h4>PREMIUM</h4>
                        </div>
                        <div class="my-lg-4 my-3 price-w3layouts-table">
                           <h4> <span class="sup">$</span><span class="number-price">60</span> / month </h4>
                        </div>
                        <div class="price-list-txt">
                           <ul class="count">
                              <li>Lorem ipsum </li>
                              <li>Dolor sit </li>
                              <li>Consectetuer</li>
                              <li>Adipiscing</li>
                              <li>Lorem ipsum </li>
                           </ul>
                        </div>
                        <div class="view-price mt-3">
                           <a href="contact.html" class=" scroll">Book Now</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 pricing-grid">
                  <div class="w3ls-bottom grid-one">
                     <div class="price-images">
                        <div class="table-txt-grid color-white">
                           <h4>PLATINUM</h4>
                        </div>
                        <div class="my-lg-4 my-3 price-w3layouts-table">
                           <h4> <span class="sup">$</span><span class="number-price">70</span> / month </h4>
                        </div>
                        <div class="price-list-txt price-grid-one">
                           <ul class="count">
                              <li>Lorem ipsum </li>
                              <li>Dolor sit </li>
                              <li>Consectetuer</li>
                              <li>Adipiscing</li>
                              <li>Lorem ipsum </li>
                           </ul>
                        </div>
                        <div class="view-price color-black mt-3 ">
                           <a href="contact.html" class=" scroll">Book Now</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 pricing-grid">
                  <div class="w3ls-bottom grid-two">
                     <div class="price-images">
                        <div class="table-txt-grid">
                           <h4>SILVER</h4>
                        </div>
                        <div class="my-lg-4 my-3 price-w3layouts-table">
                           <h4> <span class="sup">$</span><span class="number-price">80</span> / month </h4>
                        </div>
                        <div class="price-list-txt">
                           <ul class="count">
                              <li>Lorem ipsum </li>
                              <li>Dolor sit </li>
                              <li>Consectetuer</li>
                              <li>Adipiscing</li>
                              <li>Lorem ipsum </li>
                           </ul>
                        </div>
                        <div class="view-price mt-3">
                           <a href="contact.html" class=" scroll">Book Now</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- //price -->
      <!-- bussiness-tip -->
      <section class="busness-tip" id="busness-tip">
         <div class="container-fluid">
            <div class="row">
               <div class="col-lg-3 col-md-6 col-sm-6 busness-tip-one pl-sm-0">
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 mid-text-info">
                  <h4 class="mb-lg-4 mb-3">How long before the exit you must be planning it</h4>
                  <p>Lorem Ipsum is simply text the printing and typesetting standard industry. Lorem Ipsum has been the industry's standard
                     dummy text.
                  </p>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 busness-tip-two pr-sm-0">
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 mid-text-info">
                  <h4 class="mb-lg-4 mb-3">Bringing a new CFO at the time of crisis</h4>
                  <p>Lorem Ipsum is simply text the printing and typesetting standard industry. Lorem Ipsum has been the industry's standard
                     dummy text.
                  </p>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-3 col-md-6 col-sm-6 mid-text-info">
                  <h4 class="mb-lg-4 mb-3">How long before the exit you must be planning it</h4>
                  <p>Lorem Ipsum is simply text the printing and typesetting standard industry. Lorem Ipsum has been the industry's standard
                     dummy text.
                  </p>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 busness-tip-two pr-sm-0">
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 mid-text-info">
                  <h4 class="mb-lg-4 mb-3">Bringing a new CFO at the time of crisis</h4>
                  <p>Lorem Ipsum is simply text the printing and typesetting standard industry. Lorem Ipsum has been the industry's standard
                     dummy text.
                  </p>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6 busness-tip-one pl-sm-0">
               </div>
            </div>
         </div>
      </section>
      <!--//bussiness-tip -->
      <!-- clients -->
      <section class="clients py-lg-4 py-md-3 py-sm-3 py-3" id="clients">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <h3 class="title text-center mb-md-4 mb-sm-3 mb-3 mb-2">Our Clients</h3>
            <div class="title-wls-text text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">
               <p >Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et Lorem ipsum </p>
            </div>
            <div class="row">
               <div class="col-lg-6 col-md-6 col-sm-6 clients-row-grid">
                  <div class="client-txt-color txt-center">
                     <p class="mb-md-4 mb-sm-3 mb-2"><span class="fa fa-quote-left" aria-hidden="true"></span> Lorem ipsum dolor sit amet, eiusmod tempor incididunt ut labore et consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore <span class="fa fa-quote-right" aria-hidden="true"></span></p>
                     <img src="images/c1.jpg" class="img-fluid" alt="">
                     <div class="client-txt-info mt-2">
                        <h4> Ted Willson</h4>
                     </div>
                  </div>
               </div>
               <div class="col-lg-6 col-md-6 col-sm-6 clients-row-grid">
                  <div class="client-txt-color txt-center">
                     <p class="mb-md-4 mb-sm-3 mb-2"><span class="fa fa-quote-left" aria-hidden="true"></span> Lorem ipsum dolor sit amet, eiusmod tempor incididunt ut labore et consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore <span class="fa fa-quote-right" aria-hidden="true"></span></p>
                     <img src="images/c2.jpg" class="img-fluid" alt="">
                     <div class="client-txt-info mt-2">
                        <h4> Ted Willson</h4>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--//clients -->
	  </body>
	  </html>