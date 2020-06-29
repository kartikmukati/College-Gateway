<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <title>View-Company</title>
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
            <div class="col-xl-12">
            <table class="table table-dark">
                <thead>
                     <tr>
                        <th scope="col">S.No</th>
                        <th scope="col">Name</th>
                        <th scope="col">Date</th>
                        <th scope="col">Type</th>
                     </tr>
                </thead>
                <tbody>
                <%
                   
                        String sql = "select name,date,type from company order by date asc";
                            try
                            {
                               Class.forName("com.mysql.jdbc.Driver");
                               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/collegegateway","root","root");
                               PreparedStatement ps = con.prepareStatement(sql);
                               ResultSet rs= ps.executeQuery();
                               int counter=1;
                               while(rs.next())
                               {
                                   
                                    String name = rs.getString(1);
                                    String date = rs.getString(2);
                                    String type = rs.getString(3);
                %>                       
                <tr>
                                    <th scope="row"><%=counter%></th>
                                    <td><a class="text-white"href="AdminCompanyDetails?name=<%=name%>"><%=name%></a></td>
                                    <td><a class="text-white"href="#"><%=date%></a></td>
                                    <td><a class="text-white"href="#"><%=type%></a></td>
                                </tr>    
                <%
                                counter++;
                               }
                %>
                             </tbody>
                             </table>
                <%      
                            }
                            catch(Exception ex)
                            {
                                ex.getMessage();
                            }
                %>
                <a href="addcompany.jsp" class="badge badge-dark">Add Company</a>
                <a href="selecttoupdate.jsp" class="badge badge-dark">Update Company</a>
                <a href="removecompany.jsp" class="badge badge-dark">Remove Company</a>
                <script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="css/bootstrap.js"></script>
    </body>
</html>
