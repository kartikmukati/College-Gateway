<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link href="https://fonts.googleapis.com/css?family=Bree+Serif&display=swap" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-info navbar-dark">
	<div class="container">
	  <a class="navbar-brand" href="#">College Gateway</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>

	  	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	    	<ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">About Us</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Contact Us</a>
		      </li>
	    	</ul>
	    	 <ul class="navbar-nav navbar-right">
	       		 <li class="nav-item active"><a class="nav-link" href="userregistration.jsp">Sign Up </a></li>
	       		 <li class="nav-item active"><a class="nav-link" href="userlogin.jsp">Login </a></li>
	      </ul>
	    
  		</div>
  	</div>
</nav>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div id="content">
				<h1>College Gateway</h1>
				<h3>Find Your Dream Job</h3>
				<hr>
                                <button class="btn btn-info btn-lg"><a class="text-white" href="adminlogin.jsp"> Admin ?</a> </button>
                                <button class="btn btn-info btn-lg"><a class="text-white" href="userlogin.jsp"> User ? </a> </button>
			</div>
		</div>
	</div>
</div>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="css/bootstrap.js"></script>
</body>
</html>
