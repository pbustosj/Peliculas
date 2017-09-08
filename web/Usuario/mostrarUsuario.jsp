<%@page import="duoc.cl.dej4501.entidades.Usuario"%>
<%@page import="java.util.LinkedList"%>
<%@page import="duoc.cl.dej4501.negocio.UsuarioController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%if (session.getAttribute("objUserCon") != null) {
        if (session.getAttribute("listaUsuarios") != null) {
            LinkedList<Usuario> lU = (LinkedList<Usuario>)session.getAttribute("objUserCon");
            UsuarioController uC = new UsuarioController(lU);
%>
<html>
    <head>
        <jsp:include page="header.jsp" flush="true" />
        <title>Listado Usuarios</title>
    </head>
    <body>
        <h1 class="green-text">Listado Usuarios:</h1>
    </body>
</html>
<%} else {

        }
    } else {
        response.sendRedirect("index.jsp");

    }
%>
