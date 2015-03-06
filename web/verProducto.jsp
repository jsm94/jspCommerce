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
        
        <style type="text/css">
            .imagen-producto {
                background-image: url(imagenes/productos/${productoFinal.imagen});
                background-position: 50% 120%;
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
        
    </head>
    <body>

        <jsp:include page="bloques/navbar.jsp" />

        <div class="container-fluid titulo-vista-producto">
            <div class="container">
                <div class="col-md-12">
                    <h1 class="no-border no-margin">${productoFinal.nombre}</h1>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 imagen-producto">
                    <div class="capa"></div>
                </div>
            </div>
            <div class="container"> <!-- Bloque de carito -->
                <jsp:include page="bloques/carritoSimple.jsp" />
            </div>
            <div class="container contenido-vista-producto"> <!-- Vista del producto -->
                <div class="row">
                    <div class="col-md-7">
                        <h1><fmt:message key="descripcion" bundle="${bundle}"/></h1> <!-- Título del producto -->
                        <p id="descripcion-producto"><c:out value="${productoFinal.descripcion}" /></p> <!-- Descripción del producto -->

                        <div class="col-md-4 col-xs-12"> <!-- Imágenes del producto -->
                            <img src="imagenes/productos/${productoFinal.imagen}" alt="<fmt:message key="imagenDe" bundle="${bundle}"/> ${productoFinal.nombre}" class="img-responsive">    
                        </div>

                        <div class="col-md-4 col-xs-12">
                            <img src="imagenes/productos/2${productoFinal.imagen}" alt="<fmt:message key="imagenDe" bundle="${bundle}"/> ${productoFinal.nombre} 2" class="img-responsive">    
                        </div>

                        <div class="col-md-4 col-xs-12">
                            <img src="imagenes/productos/3${productoFinal.imagen}" alt="<fmt:message key="imagenDe" bundle="${bundle}"/> ${productoFinal.nombre} 3" class="img-responsive">    
                        </div>

                    </div>
                    <div class="col-md-3 detalle-vista-producto"> <!-- Detalles de precio y añadir al carrito -->
                        <h2><fmt:message key="precio" bundle="${bundle}"/></h2>
                        <p class="precio-producto no-margin"><fmt:formatNumber type="currency" currencySymbol="&euro;" value="${productoFinal.precio}" /></p>
                        <a href="addProducto?id-producto=${productoFinal.id}">
                            <span class="btn btn-golden"><fmt:message key="addCarrito" bundle="${bundle}"/></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="bloques/footer.jsp" />
    </body>
</html>

