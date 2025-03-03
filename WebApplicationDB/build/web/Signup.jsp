<%-- 
    Document   : Signup
    Created on : May 14, 2024, 1:30:07 PM
    Author     : AYOUB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        <link rel="stylesheet" href = "style.css" >
    </head>
    <body ng-app>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="./home">Esac Villa</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="./home.jsp">Home</a></li>
                <li><a href="./home.jsp/#about">About</a></li>
                <li><a href="./RoomsAvaillable.jsp">Search Rooms</a></li>
            </ul>
            <div>
                <form class="navbar-form navbar-right" method="post" action="LoginServlet">
                    <div class="form-group">
                        <input type="text" placeholder="Email" class="form-control" name="email">
                    </div>
                    <div class="form-group">
                        <input type="password" placeholder="Password" class="form-control" name="password">
                    </div>
                    <button type="submit" class="btn btn-success">Sign in</button>
                </form>
            </div>
        </div><!--/.navbar-collapse -->
    </div>
</nav>
<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron"  href="#about">
    <div class="container">
        <h1>Sign Up</h1>
       </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <h4>Please Enter following details</h4>
        <form method="post" action="SignupServlet">
            <div class="row">
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Enter user Name" name="username"/>
                </div>
                <div class="col-md-4">
                    <input type="password" class="form-control" placeholder="Enter password" name="password"/>
                </div>
            </div><br>
            <div class="row">
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Enter First Name" name="firstname"/>
                </div>
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Enter Last Name" name="lastname"/>
                </div>
            </div><br>
            <div class="row">
                <div class="col-md-4">
                    <input type="email" class="form-control" placeholder="Enter Email" name="email"/>
                </div>
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Enter phone" name="phone"/>
                </div>
            </div><br>
            <label>Mailing Address</label><br>
            <div class="row">
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Enter Street" name="street"/>
                </div>
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Enter City" name="city"/>
                </div>
            </div><br>
            
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Enter Country" name="country"/>
                </div>
            </div><br>
            <div class="row">
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Enter Postal code" name="codepostal"/>
                </div>
            </div><br>
            
            
            <div class="row">
                <div class="col-md-4">
                    <input type="submit" class="btn btn-success" value="Sign up"/>
                </div>
            </div><br>
        </form>
    <hr>

    <footer>
        <p>&copy; 2016 Company, Esac Inc.</p>
    </footer>
</div> <!-- /container -->

</body>
</html>
