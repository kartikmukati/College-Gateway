<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>User-Registration</title>
        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- Font-->
        <link rel="stylesheet" type="text/css" href="css/montserrat-font.css">
        <link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
        <!-- Main Style Css -->
        <link rel="stylesheet" href="css/registration.css"/>
    </head>
    <body class="form-v10">
        <div class="page-content">
            <div class="form-v10-content">
                <form class="form-detail" action="AdminRegistration" method="post" id="myform">
                    <div class="form-left">
                        <h2>Admin Registration</h2>
                        <div class="form-group">
                            <div class="form-row form-row-1">
                                <input type="text" name="college_code" id="first_name" class="input-text" placeholder="College Code" required>
                            </div>
                            <div class="form-row form-row-2">
                                <input type="text" name="college_name" id="last_name" class="input-text" placeholder="College Name" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-right">
                        <h2>Contact Details</h2>
                        <div class="form-row form-row-2">
                            <input type="text" name="contactno" class="phone" id="phone" placeholder="Contact Number" required>
                        </div>
                         <div class="form-row">
                            <input type="text" name="email" id="your_email" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="Your Email">
                        </div>
                        <div class="form-row">
                            <input type="text" name="address" class="street" id="street" placeholder="Address" required>
                        </div>
                        <div class="form-row">
                            <input type="text" name="city" class="input-text" id="city" placeholder="District" required>
                        </div>
                        <div class="form-row">
                            <input type="password" name="password" class="street" id="street" placeholder="Password" required>
                        </div>
                        <div class="form-checkbox">
                            <label class="container"><p>I do accept the <a href="#" class="text">Terms and Conditions</a> of your site.</p>
                                <input type="checkbox" name="checkbox" required="true">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <div class="form-row-last">
                            <input type="submit" name="register" class="register" value="Register">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.4.1.js"></script>
        <script type="text/javascript" src="css/bootstrap.js"></script>
    </body>
</html>