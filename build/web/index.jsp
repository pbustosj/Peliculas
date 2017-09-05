<%@page import="duoc.cl.dej4501.entidades.Usuario"%>
<%@page import="java.util.LinkedList"%>
<%
    if (session.getAttribute("listaUsuarios") == null) {
        LinkedList<Usuario> listaUsuarios = new LinkedList<Usuario>();
        listaUsuarios.add(new Usuario(1, "admin", "123", true));
        session.setAttribute("listaUsuarios", listaUsuarios);
    }
    if (session.getAttribute("objUserCon") != null) {
        response.sendRedirect("home.jsp");
    } else {
        response.sendRedirect("login.jsp");
    }
%>
