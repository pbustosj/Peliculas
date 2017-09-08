

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%if (session.getAttribute("objUserCon") != null) {


%>


<html>
    <head>
        <jsp:include page="header.jsp" flush="true" />

        <title></title>
    </head>
    <body>
        <%            if (session.getAttribute("userAddOK") != null) {
        %>
        <script>
            $(document).ready(function () {
                Materialize.toast('<%=session.getAttribute("userAddOK")%>', 5000, "green");
            });

        </script>
        <%
            }
            if (session.getAttribute("userAddNOOK") != null) {
        %>
        <script>
            $(document).ready(function () {
                Materialize.toast('<%=session.getAttribute("userAddNOOK")%>', 5000, "red");
            });

        </script>
        <%
            }

        %>
        <jsp:include page="menu.jsp" flush="true"></jsp:include>
            <h1 class="center-align">Ingreso usuario:</h1>
            <div class="container">
                <div class="row">
                    <hr>
                    <form class="col s12" action="../usuario" method="POST" id="frmLogin">
                        <div class="row">

                            <div class="col l12 center">
                                <div class="row">


                                    <div class="input-field col s6">
                                        <i class="material-icons prefix">account_circle</i>
                                        <input type="hidden" id="opServlet" name="opServlet" value="1">
                                        <input type="hidden" id="opEstado" name="opEstado" value="0">
                                        <input id="usuarioQl" name="usuarioQl" type="text" class="validate">
                                        <label for="icon_prefix">Username</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <i class="material-icons prefix">vpn_key</i>
                                        <input id="contraQl" name="contraQl" type="password" class="validate">
                                        <label for="icon_telephone">Password</label>
                                    </div>

                                </div>
                                <div class="row">

                                    <div class="col s6 switch">

                                        <label> <i class="material-icons prefix">vpn_key</i>Estado:</label><br>

                                        <label>
                                            Off
                                            <input type="checkbox" id="opChkEstado" name="opChkEstado">
                                            <span class="lever"></span>
                                            On
                                        </label>
                                    </div>
                                    <div class="input-field col s6">
                                        <a class="btn-large green waves-effect waves-light" style="width:100%;" id="ingresar">Ingresar</a>

                                    </div>





                                </div>
                                <div class="row">



                                </div>
                            </div>  


                        </div>
                    </form>
                </div>

            </div>
        </body>
    </html>
    <script>
        $(document).ready(function () {
            $('#ingresar').click(function () {
                var usuarioQl = $('#usuarioQl').val();
                var contraQl = $('#contraQl').val();
                if (usuarioQl.trim() == "") {

                    Materialize.toast('Nombre Usuario es obligatorio', 5000, "red");
                    return false;
                }
                if (contraQl.trim() == "") {

                    Materialize.toast('Contraseña es obligatorio', 5000, "red");
                    return false;
                } else {

                    $('#frmLogin').submit();
                }

            });

            $('#opChkEstado').bind('change', function () {
                if ($(this).is(':checked')) {
                    $('#opEstado').val('1');
                } else {
                    $('#opEstado').val('0');
                }
            });
        });

    </script>
<%} else {
        response.sendRedirect("index.jsp");
    }
%>
