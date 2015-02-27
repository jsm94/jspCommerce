<%-- 
    Document   : realizarCompra
    Created on : 27-feb-2015, 16:36:10
    Author     : Juan Antonio Seco Merchán
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle  var="bundle" basename="bundles.app"/>
<jsp:useBean  id="carrito" class="beans.dao.CarritoDaoImpl"  scope="session"/>
<c:if test="${carrito.lineas.size() == 0}">
    <jsp:forward page="/index.jsp" />
</c:if>
<!DOCTYPE html>
<html lang="es">
    <jsp:include page="bloques/head.jsp"/>
    <body>

        <jsp:include page="bloques/navbar.jsp" />

        <div class="container-fluid">
            <div class="container">
                <h1><fmt:message key="realizarCompra" bundle="${bundle}"/></h1>
                <form action="comprar" method="post">
                    <div class="col-md-6 col-sm-6 col-xs-6 col-md-offset-3">
                        
                        <div class="form-group">
                            <label for="nombre"><fmt:message key="nombre" bundle="${bundle}"/></label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="apellidos"><fmt:message key="apellidos" bundle="${bundle}"/></label>
                            <input type="text" class="form-control" id="apellidos" name="apellidos" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="direccion"><fmt:message key="direccion" bundle="${bundle}"/></label>
                            <input type="text" class="form-control" id="direccion" name="direccion" required>
                        </div>
                        
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <a href="verCompra.jsp"><button class="btn btn-default"><fmt:message key="atras" bundle="${bundle}"/></button></a>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6 align-right">
                            <button type="submit" class="btn btn-golden"><fmt:message key="comprar" bundle="${bundle}"/></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>


