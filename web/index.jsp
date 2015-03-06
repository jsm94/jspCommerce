<%-- 
    Document   : index.jsp
    Created on : 20-feb-2015, 12:12:29
    Author     : Juan Antonio Seco Merchán
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<jsp:useBean id="carrito" class="beans.dao.CarritoDaoImpl" scope="session"/>--%>
<!DOCTYPE html>
<html lang="es">
    <!-- Añadimos el bloque head -->
    <jsp:include page="bloques/head.jsp"/>
<body>
    <!--Bloque de navegación-->
    <jsp:include page="bloques/navbar.jsp" /> 
    <div class="container wrapper"> <!--Añadimos un container para centrar el contenido-->
        <!--Bloque de carrito--> 
        <jsp:include page="bloques/carritoSimple.jsp" />
        <!--Listado de productos-->
        <jsp:include page="bloques/listadoProductos.jsp" /> 
    </div>
        <!--Footer-->
        <jsp:include page="bloques/footer.jsp" /> 
    
</body>
</html>
