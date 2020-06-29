<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Company</title>
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
		      <li class="nav-item">
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
       <form action="AddCompany" method="post">
            <div class="container bg-info">
        <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputEmail4">Company Name</label>
              <input type="text" class="form-control" id="inputEmail4" name="name" placeholder="@companyname" required>
            </div>
            <div class="form-group col-md-6">
              <label for="inputPassword4">Date</label>
              <input type="date" class="form-control" id="inputPassword4" name="date" placeholder="Date" required>
            </div>
        </div>
        <div class="form-row">
          <div class="form-group col-md-3">
            <label for="inputEmail4">Package</label>
            <input type="text" class="form-control" id="inputEmail4" name="package" placeholder="@package" required>
          </div>
          <div class="form-group col-md-3">
            <label for="inputPassword4">Criteria_10</label>
            <input type="text" class="form-control" id="inputPassword4" name="criteria_10" placeholder="@criteria_10" required>
          </div>
          <div class="form-group col-md-3">
            <label for="inputPassword4">Criteria_12</label>
            <input type="text" class="form-control" id="inputPassword4" name="criteria_12" placeholder="@criteria_12" required>
          </div>
            <div class="form-group col-md-3">
              <label for="inputPassword4">CGPA</label>
              <input type="text" class="form-control" id="inputPassword4" name="cgpa" placeholder="@cgpa" required>
            </div>
        </div>
        <div class="form-row">
          <div class="form-group col-md-4">
              <label for="inputState">Backlog</label>
              <select id="inputState" name="backlog" class="form-control">
                  <option selected>Considered</option>
                  <option>Not-Considered</option>
               </select>
          </div>
            <div class="form-group col-md-4">
               <label for="inputPassword4">Previous Placed</label>
               <input type="text" class="form-control" id="inputPassword4" name="previous" placeholder="@placednumber" required>
             </div>
            <div class="form-group col-md-4">
               <label for="inputState">Type</label>
               <select id="inputState" name="type" class="form-control">
                   <option selected>Technical</option>
                   <option>Non-Technical</option>
                </select>
            </div>
         </div>
              <div class="form-group col-md-4">
              <label for="inputState">Campus Type</label>
               <select id="inputState" name="campustype" class="form-control">
                   <option selected>Close</option>
                   <option>Open</option>
                </select>
            </div>
                <div class="row">
                    <button type="submit" class="btn btn-primary btn-sm">Add Company</button>
                </div>
    </div>
    
</form>
        <div class="container">
             
                <a href="selecttoupdate.jsp" class="badge badge-dark">Update Company</a>
                <a href="removecompany.jsp" class="badge badge-dark">Remove Company</a>
        </div>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="css/bootstrap.js"></script>
</body>
</html>
