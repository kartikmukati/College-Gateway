
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
                      <li class="nav-item active">
		        <a class="nav-link" href="admin-about-us.jsp">About us <span class="sr-only">(current)</span></a>
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

<div class="container mt-3">
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
<!--		<div class="col-xl-3 col-sm-6 col-xs-12">
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
		</div>-->
	</div>
</div>

<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="css/bootstrap.js"></script>  
</body>
</html>
