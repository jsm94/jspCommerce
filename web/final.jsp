<%-- 
    Document   : final
    Created on : 28-feb-2015, 11:23:34
    Author     : Juan Antonio Seco Merchán
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle  var="bundle" basename="bundles.app"/>
<!DOCTYPE html>
<html lang="<fmt:message key="idioma" bundle="${bundle}"/>">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="E-commerce con tecnología jsp">
    <meta name="author" content="Juan Antonio Seco Merchán">
    <title>jspCommerce</title>
    <link rel="shortcut icon" href="imagenes/shop_ico.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/global.css">
    <!--[if IE]>
        <script src="https://cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
    <body>

        <jsp:include page="bloques/navbar.jsp" />

        <div class="container-fluid wrapper">
            <div class="container" style="text-align: center">
                <h1 class="no-border"><fmt:message key="graciasCompra" bundle="${bundle}"/></h1>
                <a href="index.jsp"><span class="btn btn-golden btn-lg"><fmt:message key="irAInicio" bundle="${bundle}"/></span></a>
            </div>
        </div>

        <jsp:include page="bloques/footer.jsp" />
    </body>
</html>


