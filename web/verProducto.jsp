<%-- 
    Document   : verProducto
    Created on : 23-feb-2015, 21:02:48
    Author     : Juan Antonio Seco Merchán
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle  var="bundle" basename="bundles.listadoProductos"/>
<jsp:useBean  id="almacen" class="beans.Almacen" />
<jsp:useBean  id="producto" class="beans.Producto" />
<jsp:setProperty name="producto" property="id" value="${param.id}" />
<!DOCTYPE html>
<html lang="es">
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
                    <li class="active"><a href="">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div><!--.nav-collapse -->
        </div>
    </nav>

    <div class="container">
        <div class="starter-template">
            <h1>${almacen.productos.indexOf(producto.id)}</h1>
                <p class="lead">Now you can start your own project with <a target="_blank" href="http://getbootstrap.com/">Bootstrap 3.3.2</a>. This plugin is a fork from <a href="https://github.com/le717/brackets-html-skeleton#readme">HTML Skeleton</a>.</p>
        </div>
    </div>
    

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>

