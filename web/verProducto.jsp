<%-- 
    Document   : verProducto
    Created on : 23-feb-2015, 21:02:48
    Author     : Juan Antonio Seco Merchán
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle  var="bundle" basename="bundles.app"/>
<jsp:useBean  id="almacen" class="beans.Almacen" />
<jsp:useBean  id="producto" class="beans.Producto" />
<jsp:setProperty name="producto" property="id" value="${param.id}" />
<c:set var="indice" value="${almacen.productos.indexOf(producto)}" />  <%-- Recogemos el indice del producto para devolverlo en la lista --%>
<c:set var="productoFinal" value="${almacen.productos.get(indice)}" />
<!DOCTYPE html>
<html lang="es">
    <jsp:include page="bloques/head.jsp"/>
    <style type="text/css">
        .imagen-producto {
            background-image: url(imagenes/productos/${productoFinal.imagen});
            background-position: center center;
            background-attachment: fixed;
            background-size: cover;
            height: 200px;
            padding: 0;
            -webkit-filter: grayscale(1);
            filter: grayscale(1);
        }

        .capa {
            position: absolute;
            width: 100%;
            height: 100%;
            background: url(imagenes/texture2.jpg);
            opacity: 0.3;
            -webkit-filter: blur(0.8px);
            filter: blur(0.8px);
        }
    </style>
    <body>
        
        <jsp:include page="bloques/navbar.jsp" />

        <div class="container-fluid titulo-vista-producto">
            <div class="container">
                <div class="col-md-12">
                    <h1>${productoFinal.nombre}</h1>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 imagen-producto">
                    <div class="capa"></div>
                </div>
            </div>
            <div class="container contenido-vista-producto">
                <div class="row">
                    <div class="col-md-7">
                        <p><c:out value="${productoFinal.descripcion}" /></p>
                    </div>
                    <div class="col-md-3">
                        <p><fmt:formatNumber type="currency" currencySymbol="&euro;" value="${productoFinal.precio}" /></p>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>

