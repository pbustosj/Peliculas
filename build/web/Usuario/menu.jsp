<%@page import="duoc.cl.dej4501.entidades.Usuario"%>
<ul id="subPel" class="dropdown-content">
    <li><a href="#!">Ingresar</a></li>
    <li><a href="#!">Modificar</a></li>
    <li><a href="#!">Eliminar</a></li>
    <li><a href="#!">Mostrar</a></li>
</ul>
<ul id="subUsu" class="dropdown-content">
    <li><a href="ingresarUsuario.jsp">Ingresar</a></li>
    <li><a href="#!">Modificar</a></li>
    <li><a href="#!">Eliminar</a></li>
    <li><a href="#!">Mostrar</a></li>
</ul>
<nav class="navbar-fixed black" style="min-height: 50px;">
    <div class="nav-wrapper">
        <a href="#!" class="brand-logo center"><img src="https://image.flaticon.com/icons/png/512/195/195123.png" height="50px;"></a>
        <ul class="left hide-on-med-and-down">
            <li>  <h5 class="green-text">Bienvenido Sr(a). 
                    <%                            Usuario objUsu = (Usuario) session.getAttribute("objUserCon");
                        out.println(objUsu.getNombre());
                    %>
                </h5></li>
            <li><a  style=""><i class="material-icons left">home</i>Home</a></li>
            <li><a style="" class="dropdown-button" href="#!" data-activates="subPel" href="badges.html"><i class="material-icons left">movie</i>Concierto</a></li>


        </ul>
        <ul class="right hide-on-med-and-down">
            <li><a class="dropdown-button" href="#!" data-activates="subUsu" href="badges.html"><i class="material-icons left">account_circle</i>Usuario</a></li>
            <li><a  class="dropdown-button" href="#!" data-activates="dropdown1" href="badges.html"><i class="material-icons left">search</i>Búsquedas</a></li>
            <li><a style="margin-right: 155px;" class="dropdown-button" id="cerrarSesion" href=""><i class="material-icons left">exit_to_app</i>Salir</a></li>
        </ul>
    </div>
</nav>
<script>
    $(document).ready(function () {
        
        $('#cerrarSesion').click(function () {
            var postData = {
                'Id': '0'
            };
            var direccion = "./cerrarSesionServlet";
            $.ajax({
                url: direccion,
                type: 'GET',
                data: postData,
                error: function () {
                    console.log("Error de servidor!");
                },
                success: function (data) {
                    location.reload();
                }
            });
        });
    });

</script>