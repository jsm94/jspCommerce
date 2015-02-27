<%-- 
    Document   : listadoProductos
    Created on : 20-feb-2015, 12:27:55
    Author     : Juan Antonio Seco Merchán
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle  var="bundle" basename="bundles.app"/>
<jsp:useBean  id="almacen" class="beans.Almacen" />
<%-- Búsqueda de productos --%>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <form action="index.jsp">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="<fmt:message key="placeholderSearch" bundle="${bundle}" />" name="nameCar" required>
            <span class="input-group-btn">
                <button class="btn btn-default" type="submit"><fmt:message key="buscar" bundle="${bundle}" /></button>
            </span>
        </div><!-- /input-group -->
    </form>
</div><!-- /.col-lg-6 -->

<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <c:choose>
            <c:when test="${not empty param.nameCar}">
                <c:set var="listaProductos" value="${almacen.getProductosByName(param.nameCar)}" />
                <h2><fmt:message key="resultadosPor" bundle="${bundle}" /> "${param.nameCar}"</h2>
                <c:if test="${listaProductos.size() <= 0}">
                    <p><fmt:message key="noResultados" bundle="${bundle}" /></p>
                </c:if>
            </c:when>
            <c:otherwise>
                <c:set var="listaProductos" value="${almacen.productos}" />
            </c:otherwise>
        </c:choose>
        <c:forEach var="i" items="${listaProductos}">
            <div class="col-md-3 col-sm-4 col-xs-12 listado-productos">
                <%-- Declaramos el bean de producto y aplicamos sus propiedades --%>
                <jsp:useBean  id="producto" class="beans.Producto" />
                <jsp:setProperty name="producto" property="nombre" value="${i.nombre}" />
                <jsp:setProperty name="producto" property="descripcion" value="${i.descripcion}" />
                <jsp:setProperty name="producto" property="precio" value="${i.precio}" />
                <jsp:setProperty name="producto" property="imagen" value="${i.imagen}" />
                <jsp:setProperty name="producto" property="id" value="${i.id}" />

                <%-- Construimos la vista de productos --%>
                <div class="col-md-12 miniatura-producto">
                    <p class="nombre-producto"><c:out value="${producto.nombre}" /></p>
                    <a href="verProducto.jsp?id=${producto.id}">
                        <span class="lector"><fmt:message key="verMas" bundle="${bundle}"/> ${producto.nombre}</span>
                        <div class="wrapper-imagen-producto">
                            <img src="imagenes/productos/${producto.imagen}" alt="<fmt:message key="imagenDe" bundle="${bundle}"/> ${producto.nombre}" class="img-responsive">
                        </div>
                    </a>
                    <%-- Recortamos texto de descripción --%>
                    <c:set var="shortDesc" value="${fn:substring(producto.descripcion, 0, 32)}" /> 
                    <p class="descripcion-producto"><c:out value="${shortDesc}..." /> <a href="verProducto.jsp?id=${producto.id}"> <fmt:message key="verMas" bundle="${bundle}"/> ${producto.nombre}</a></p>
                    <p class="precio-producto"><span class="lector"><fmt:message key="precio" bundle="${bundle}"/> </span><fmt:formatNumber type="currency" currencySymbol="&euro;" value="${producto.precio}" /></p>
                    <a href="addProducto?id-producto=${producto.id}" class="link-comprar">
                        <span class="lector"><fmt:message key="addCarrito" bundle="${bundle}"/> ${producto.nombre}</span>
                        <div class="triangle"></div>
                        <p class="icon-producto"><i class="fa fa-cart-plus"></i></p>
                    </a>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
