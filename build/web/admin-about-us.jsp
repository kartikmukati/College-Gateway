<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%
    String collegeCode = (String) session.getAttribute("collegecode");
    ResultSet rs = DBConnector.adminInfo(collegeCode);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About us</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="css/aboutus.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
    </head>
    <body>


        <!-- Services section -->
        <% if (rs.next()) {%>

        <section id="what-we-do">
            <div class="container-fluid">
                <h2 class="section-title mb-2 h1">About College</h2>
                <p class="text-center text-muted h5">Having and managing a correct marketing strategy is crucial in a fast moving market.</p>
                <div class="row mt-5">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-block block-1">
                                <h3 class="card-title">College Code</h3>
                                <p class="card-text"><%= rs.getString(1) %></p>							
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-block block-2">
                                <h3 class="card-title">College Name</h3>
                                <p class="card-text"><%= rs.getString(2) %></p>
                                <a href="https://www.fiverr.com/share/qb8D02" title="Read more" class="read-more" >Read more<i class="fa fa-angle-double-right ml-2"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-block block-3">
                                <h3 class="card-title">Contact Number</h3>
                                <p class="card-text"><%= rs.getString(3) %></p>
                                <a href="https://www.fiverr.com/share/qb8D02" title="Read more" class="read-more" >Read more<i class="fa fa-angle-double-right ml-2"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-block block-4">
                                <h3 class="card-title">Email</h3>
                                <p class="card-text"><%= rs.getString(4) %></p>
                                <a href="https://www.fiverr.com/share/qb8D02" title="Read more" class="read-more" >Read more<i class="fa fa-angle-double-right ml-2"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-block block-5">
                                <h3 class="card-title">Address</h3>
                                <p class="card-text"><%= rs.getString(5) %></p>
                                <a href="https://www.fiverr.com/share/qb8D02" title="Read more" class="read-more" >Read more<i class="fa fa-angle-double-right ml-2"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 col-xl-4">
                        <div class="card">
                            <div class="card-block block-6">
                                <h3 class="card-title">District</h3>
                                <p class="card-text"><%= rs.getString(6) %></p>
                                <a href="https://www.fiverr.com/share/qb8D02" title="Read more" class="read-more" >Read more<i class="fa fa-angle-double-right ml-2"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>	
        </section>
        <%
            } else { 
        %>
        <h3>Something went wrong, please try again </h3>
        <% } %>
        <!-- /Services section -->
    </body>
</html>
