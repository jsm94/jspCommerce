<%-- 
    Document   : index.jsp
    Created on : 20-feb-2015, 12:12:29
    Author     : Juan Antonio Seco Merchán
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<jsp:useBean id="carrito" class="beans.dao.CarritoDaoImpl" scope="session"/>--%>
<!DOCTYPE html>
<html lang="es">
    <jsp:include page="bloques/head.jsp"/>
<body>
    <jsp:include page="bloques/navbar.jsp" /> 
    <div class="container wrapper">
        <jsp:include page="bloques/carritoSimple.jsp" />
        <jsp:include page="bloques/listadoProductos.jsp" /> 
    </div>
    

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>
