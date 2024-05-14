<%-- 
    Document   : RoomsAvaillable
    Created on : May 14, 2024, 3:34:48 AM
    Author     : AYOUB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>availibel Page</title>
        <link rel="stylesheet" href = "style.css" >
    </head>
    <body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Esac Villa</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="./home.jsp">Home</a></li>
                <li><a href="#about">About</a></li>
                <li class="active"><a href="#">Search Rooms</a></li>
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
<div class="jumbotron" href="#about">
    <div class="container">
        <h1>Rooms Availability</h1>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <form method="get">
                <lable>Choose Start date</lable>
                <br>
                <input type="text" id="startDate" class="form-control"><br>
                <lable>Choose End date</lable>
                <br>
                <input type="text" id="endDate" class="form-control"><br>
                <input type="submit" value="Get Rooms" class="btn btn-success">

            </form>
        </div>
    </div>
    <hr>
    <footer>
        <p>&copy; 2016 Company, Esac Inc.</p>
    </footer>
</div> <!-- /container -->


</body>
</html>
