<%-- 
    Document   : index.jsp
    Created on : 20-feb-2015, 12:12:29
    Author     : Juan Antonio Seco Merchán
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
    <jsp:include page="bloques/head.jsp"/>
<body>
    <nav class="navbar" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">jspCommerce</a>
            </div>

            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div><!--.nav-collapse -->
        </div>
    </nav>

    <div class="container">
        <div class="starter-template">
            <h1>Hello, world!</h1>
                <p class="lead">Now you can start your own project with <a target="_blank" href="http://getbootstrap.com/">Bootstrap 3.3.2</a>. This plugin is a fork from <a href="https://github.com/le717/brackets-html-skeleton#readme">HTML Skeleton</a>.</p>
        </div>
    </div>
    
    <jsp:include page="bloques/listadoProductos.jsp" /> 

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>
