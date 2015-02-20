<%-- 
    Document   : listadoProductos
    Created on : 20-feb-2015, 12:27:55
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean  id="almacen" class="beans.Almacen" />
<div class="col-md-12">
    <c:forEach var="i" items="${almacen.productos}">
        <jsp:useBean  id="producto" class="beans.Producto" />
        <jsp:setProperty name="producto" property="nombre" value="${i.nombre}" />
        <jsp:setProperty name="producto" property="descripcion" value="${i.descripcion}" />
        <jsp:setProperty name="producto" property="precio" value="${i.precio}" />
        <jsp:setProperty name="producto" property="imagen" value="${i.imagen}" />
        <c:out value="${producto.nombre}" />
        ${producto.descripcion}
        <img alt="" src="imagenes/productos/${producto.imagen}"/>
    </c:forEach>
</div>
