<%-- 
    Document   : carritoSimple
    Created on : 25-feb-2015, 10:43:41
    Author     : Juan Antonio Seco Merchán
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle  var="bundle" basename="bundles.app"/>
<jsp:useBean id="carrito" class="beans.dao.CarritoDaoImpl" scope="session"/>
<c:set var="lineas" value="${carrito.lineas}" />
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12 carrito-small">
        <c:choose>
            <c:when test="${lineas.size() == 0}"> <!-- Cuando el carrito este vacío se mostrará el siguiente mensaje -->
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12" style="display: table;height: 58px">
                        <p style="display: table-cell;vertical-align: middle; text-align: center"><fmt:message key="noProductos" bundle="${bundle}"/></p>
                    </div>
                </div>
            </c:when>
            <c:otherwise> <!-- Si la cesta tiene algún artículo se monstrará -->
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="col-md-5 col-sm-4 hidden-xs"></div>
                        <div class="col-md-5 col-sm-6 col-xs-8" style="display: table;height: 58px">
                            <p style="display: table-cell;vertical-align: middle">
                                <!--Visualización carrito-->
                                <span><span class="fa fa-shopping-cart icono-compra"></span></span>
                                <span>${lineas.size()} <fmt:message key="productosValor" bundle="${bundle}"/></span> 
                                <span class="precio-compra"><fmt:formatNumber type="currency" currencySymbol="&euro;" value="${carrito.total()}" /></span>
                                <!--//Visualización carrito-->
                            </p>
                        </div>
                                <!--Botón para ver el listado de productos-->
                        <div class="col-md-2 col-sm-2 col-xs-4" style="display: table;height: 58px">
                            <p style="display: table-cell;vertical-align: middle"><a href="verCompra.jsp"><span class="btn  btn-xs btn-golden"><fmt:message key="verCompra" bundle="${bundle}"/></span></a></p>
                        </div>
                                <!--//Botón para ver el listado de productos-->
                    </div>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>

