<%-- 
    Document   : home
    Created on : May 14, 2024, 3:31:25 AM
    Author     : AYOUB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home Page</title>
        <link rel="stylesheet" href = "style.css" >
    </head>
    <body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Esac Villa</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-left">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#about">About</a></li>
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
        <h1>Welcome</h1>
        <p>This websites provides you the facility of booking rooms online at Esac Villa. You can explore
        our rooms, photo gallery and can book rooms online with just one click.</p>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h2>About Us</h2>
            <p>we are Esac villa situated near lake provides you a great view and a quiet environment where you
                feel close to the nature.  </p>
        </div>
        <div class="col-md-4">
            <h2>Why us ?</h2>
            <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
        </div>
        <div class="col-md-4">
            <h2>Process</h2>
            <p>You can register first and then you can login and explore room facilities and availability
                . You can also request additional facilities and can do lot more</p>
            <p><a class="btn btn-" href="./signup" role="button">Register &raquo;</a></p>
        </div>
    </div>

    <hr>

    <footer>
        <p>&copy; 2016 Company, Esac Inc.</p>
    </footer>
<div class="modal fade" id="MessageModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Information message</h4>
      </div>
      <div class="modal-body">
      <p>${message}</p>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</div> <!-- /container -->

</body>
</html>
