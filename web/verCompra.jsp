<%-- 
    Document   : verCompra.jsp
    Created on : 27-feb-2015, 12:39:37
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
                <h1><fmt:message key="tuCompra" bundle="${bundle}"/></h1>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <table class="table">
                        <thead>
                        <th scolpe="col"><fmt:message key="producto" bundle="${bundle}"/></th>
                        <th scolpe="col"><fmt:message key="cantidad" bundle="${bundle}"/></th>
                        <th scolpe="col">Subtotal</th>
                        <th scolpe="col"><fmt:message key="eliminar" bundle="${bundle}"/></th>
                        </thead>
                        <tbody>
                            <c:set var="lineas" value="${carrito.lineas}" />
                            <c:forEach var="linea" items="${lineas}">
                                <jsp:useBean id="lineaVenta" class="beans.LineaVenta" />
                                <jsp:setProperty name="lineaVenta" property="producto" value="${linea.producto}" />
                                <jsp:setProperty name="lineaVenta" property="cantidad" value="${linea.cantidad}" />
                                <jsp:setProperty name="lineaVenta" property="subTotal" value="${linea.subTotal}" />
                                <tr>
                                    <td scope="row">${lineaVenta.producto.nombre}</td>
                                    <td>x${lineaVenta.cantidad}</td>
                                    <td><fmt:formatNumber type="currency" currencySymbol="&euro;" value="${lineaVenta.subTotal}" /></td>
                                    <td><a href="remProducto?id-producto=${lineaVenta.producto.id}"><span class="lector"><fmt:message key="eliminar" bundle="${bundle}"/> ${lineaVenta.producto.nombre}</span><i class="fa fa-times"></i></a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                        <tfoot>
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                <td></td>
                                <th>Total</th>
                                <td colspan="2"><fmt:formatNumber type="currency" currencySymbol="&euro;" value="${carrito.total()}" /></td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <a href="realizarCompra.jsp"><button class="btn btn-golden"><fmt:message key="realizarCompra" bundle="${bundle}"/></button></a>
                </div>
            </div>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </body>
</html>

