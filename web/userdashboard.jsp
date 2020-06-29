
<%
    String firstname = (String)session.getAttribute("firstname");
    String lastname = (String)session.getAttribute("lastname");
    String gender = (String)session.getAttribute("gender");
    if(firstname == null)
    {
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <title>User Dashboard</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
         <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		  <a class="navbar-brand" href="#">
		  	<img src="images/pilogo.png" width="40" height="30" class="d-inline-block align-top" alt="">College Gateway</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>

		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="userdashboard.jsp">Home <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="aboutus.jsp">About</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Contact</a>
		      </li>
                  
                      <li class="nav-item dropdown active">
        			<a class="nav-link dropdown-toggle float-lg-right" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <%
                                       if(gender.equals("male"))
                                       {
                                    %>
                                         Welcome:Mr.<%=firstname%>
                                    <%  
                                       }
                                       else if(gender.equals("female"))
                                       {
                                    %>
                                        Welcome:Miss.<%=firstname%>
                                    <%
                                        }
                                    %>
                                </a>
        			<div class="dropdown-menu" aria-labelledby="navbarDropdown">
			          <a class="dropdown-item" href="LogoutUser">Logout</a>
			       </div>
      			</li>
                        
		    </ul>
		    <span class="navbar-text">
      			Get Your Dream Job...
   			 </span>
		  </div>
	</div>
</nav>

<div class="container">
	<div class="row">
		<div class="col-xl-3 col-sm-6 col-xs-12">
			<div class="card">
  				<div class="card-header">
    				Featured
				  </div>
				  <div class="card-body">
				    <h5 class="card-title">Special title treatment</h5>
				    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
				    <a href="companylist.jsp?type=allcompany" class="btn btn-primary">All Company</a>
				  </div>
			</div>
		</div>
		<div class="col-xl-3 col-sm-6 col-xs-12">
			<div class="card">
  				<div class="card-header">
    				Featured
				  </div>
				  <div class="card-body">
				    <h5 class="card-title">Special title treatment</h5>
				    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
				    <a href="companylist.jsp?type=technical" class="btn btn-primary">Technical</a>
				  </div>
			</div>
		</div>
		<div class="col-xl-3 col-sm-6 col-xs-12">
			<div class="card">
  				<div class="card-header">
    				Featured
				  </div>
				  <div class="card-body">
				    <h5 class="card-title">Special title treatment</h5>
				    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
				    <a href="companylist.jsp?type=non-technical" class="btn btn-primary">Non-Technical</a>
				  </div>
			</div>
		</div>
		<div class="col-xl-3 col-sm-6 col-xs-12">
			<div class="card">
  				<div class="card-header">
    				Featured
				  </div>
				  <div class="card-body">
				    <h5 class="card-title">Special title treatment</h5>
				    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
				    <a href="#" class="btn btn-primary">Previous Year</a>
				  </div>
			</div>
		</div>
	</div>
</div>
<section class="contact-section">
            <div class="container">
                <div class="d-none d-sm-block mb-5 pb-4">
                <div class="row">
                    <div class="col-12">
                        <h2 class="contact-title">Get in Touch</h2>
                    </div>
                    <div class="col-lg-8">
                        <form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder=" Enter Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control valid" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter your name">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <input class="form-control valid" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mt-3">
                                <button type="submit" class="button button-contactForm boxed-btn">Send</button>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                                <h3>Buttonwood, California.</h3>
                                <p>Rosemead, CA 91770</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                            <div class="media-body">
                                <h3>+1 253 565 2365</h3>
                                <p>Mon to Fri 9am to 6pm</p>
                            </div>
                        </div>
                        <div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-email"></i></span>
                            <div class="media-body">
                                <h3>support@colorlib.com</h3>
                                <p>Send us your query anytime!</p>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </section>                           
  


<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="css/bootstrap.js"></script>  
</body>
</html>
