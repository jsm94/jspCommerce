<%-- 
    Document   : listadoProductos
    Created on : 20-feb-2015, 12:27:55
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean  id="almacen" class="beans.Almacen" />
${almacen.productos}
<div class="col-md-12">
    <c:forEach var="i" items="${mensaje.listaMensajes}">
        <div class="mensaje new<c:if test="${usuario.nick == i.user}"> right</c:if>" name="${i.id}">
            <p class="mensaje-user">${i.user}</p>
            <p class="mensaje-text">${i.text}</p>
            <p class="mensaje-date">
            <fmt:formatDate pattern="HH:mm"  value="${i.fechaYHora}" />
            <c:set var="msg" value="${i.id}" scope="session"/>
            </p>
        </div>
    </c:forEach>
</div>
