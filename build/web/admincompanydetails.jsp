<jsp:useBean scope="session" id="cadmindetails" class="company.AdminCompanyDetails"/>
<html>
    <head>
        <title>Admin-Company-Details</title>
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
		        <a class="nav-link" href="#">About</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Contact</a>
		      </li>
                       <li class="nav-item dropdown active">
        		<a class="nav-link dropdown-toggle float-lg-right" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">@admin</a>
        			<div class="dropdown-menu" aria-labelledby="navbarDropdown">
			          <a class="dropdown-item" href="LogoutAdmin">Logout</a>
			       </div>
      			</li>
                    </ul>
		    <span class="navbar-text">
      			Administrator Work...
   			 </span>
		  </div>
	</div>
</nav>
        <div class="container">
        <div class="row">
           <div class="col-md-12 col-xm-12">
            <table class="table table-dark">
                <thead>
                     <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Date</th>
                        <th scope="col">Package</th>
                        <th scope="col">Criteria_10</th>
                        <th scope="col">Criteria_12</th>
                        <th scope="col">CGPA</th>
                        <th scope="col">Backlog</th>
                        <th scope="col">Previous Placed</th>
                        <th scope="col">Type</th>    
                     </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><jsp:getProperty name="cadmindetails" property="name"/></td>
                        <td><jsp:getProperty name="cadmindetails" property="date"/></td>
                        <td><jsp:getProperty name="cadmindetails" property="packages"/></td>
                        <td><jsp:getProperty name="cadmindetails" property="criteria_10"/></td>
                        <td><jsp:getProperty name="cadmindetails" property="criteria_12"/></td>
                        <td><jsp:getProperty name="cadmindetails" property="cgpa"/></td>
                        <td><jsp:getProperty name="cadmindetails" property="backlog"/></td>
                        <td><jsp:getProperty name="cadmindetails" property="previous"/></td>
                        <td><jsp:getProperty name="cadmindetails" property="type"/></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>    
    </div>
                    <div class="container">
                    <a href="addcompany.jsp" class="badge badge-dark">Add Company</a>
                    <a href="selecttoupdate.jsp" class="badge badge-dark">Update Company</a>
                    <a href="removecompany.jsp" class="badge badge-dark">Remove Company</a>
                </div>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="css/bootstrap.js"></script>
    </body>
</html>
