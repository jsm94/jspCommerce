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
<html lang="<fmt:message key="idioma" bundle="${bundle}"/>">
    <jsp:include page="bloques/head.jsp"/>
    <body>

        <jsp:include page="bloques/navbar.jsp" />

        <div class="container-fluid wrapper">
            <div class="container">
                <h1 class="no-border"><fmt:message key="tuCompra" bundle="${bundle}"/></h1>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <table class="table"> <!-- Creamos una tabla para mostrar los productos del carrito -->
                        <caption><fmt:message key="captionTabla" bundle="${bundle}"/></caption>
                        <thead>
                            <tr>
                                <th scope="col" id="t-producto"><fmt:message key="producto" bundle="${bundle}"/></th>
                                <th scope="col" id="t-cantidad"><fmt:message key="cantidad" bundle="${bundle}"/></th>
                                <th scope="col" id="t-subtotal">Subtotal</th>
                                <th scope="col" id="t-eliminar"><fmt:message key="eliminar" bundle="${bundle}"/></th>
                            </tr>
                        <tbody>
                            <c:set var="lineas" value="${carrito.lineas}" />
                            <c:forEach var="linea" items="${lineas}"> <!-- Recorremos los productos -->
                                <jsp:useBean id="lineaVenta" class="beans.LineaVenta" />
                                <jsp:setProperty name="lineaVenta" property="producto" value="${linea.producto}" />
                                <jsp:setProperty name="lineaVenta" property="cantidad" value="${linea.cantidad}" />
                                <jsp:setProperty name="lineaVenta" property="subTotal" value="${linea.subTotal}" />
                                <tr>
                                    <td headers="t-producto">${lineaVenta.producto.nombre}</td>
                                    <td headers="t-cantidad">x${lineaVenta.cantidad}</td>
                                    <td headers="t-subtotal"><fmt:formatNumber type="currency" currencySymbol="&euro;" value="${lineaVenta.subTotal}" /></td>
                                    <td headers="t-eliminar"><a href="remProducto?id-producto=${lineaVenta.producto.id}"><span class="lector"><fmt:message key="eliminar" bundle="${bundle}"/> ${lineaVenta.producto.nombre}</span><span class="fa fa-times"></span></a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="col-md-6 hidden-xs"></div>
                    <div class="col-md-6 col-xs-12" style="margin-bottom: 20px">
                        <div class="col-md-6 col-xs-3">
                            <span class="titulo-total-ver-carrito">Total</span>
                        </div>
                        <div class="col-md-6 col-xs-9" style="text-align: right"> <!-- Precio total de la compra -->
                            <span class="precio-total"><fmt:formatNumber type="currency" currencySymbol="&euro;" value="${carrito.total()}" /></span>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12"> <!-- Botón de realizar la compra -->
                    <a href="realizarCompra.jsp"><span class="btn btn-golden"><fmt:message key="realizarCompra" bundle="${bundle}"/></span></a>
                </div>
            </div>
        </div>
        <jsp:include page="bloques/footer.jsp" />
    </body>
</html>

