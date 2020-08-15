<%
    String collegename = (String)session.getAttribute("collegename");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin-Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
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
		        <a class="nav-link" href="admindashboard.jsp">Home <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="admin-about-us.jsp">About us</a>
		      </li>
                       <li class="nav-item dropdown active">
        		<a class="nav-link dropdown-toggle float-lg-right" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">@admin</a>
        			<div class="dropdown-menu" aria-labelledby="navbarDropdown">
			          <a class="dropdown-item" href="LogoutAdmin">Logout</a>
			       </div>
      			</li>
                    </ul>
		    <span class="navbar-text">
                        <%=collegename%>
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
				    <a href="addcompany.jsp" class="btn btn-primary">Add Company</a>
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
				    <a href="selecttoupdate.jsp" class="btn btn-primary">Update Company</a>
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
				    <a href="removecompany.jsp" class="btn btn-primary">Remove Company</a>
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
				    <a href="viewcompany.jsp" class="btn btn-primary">View Company</a>
				  </div>
			</div>
		</div>
	</div>
</div>       
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="css/bootstrap.js"></script>
</body>
</html>
