<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->


        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">

        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script>

        <title>Login - Conciertos</title>
    </head>
    <%
        if (session.getAttribute("objUserCon") != null) {

            response.sendRedirect("home.jsp");
        } else {
            if (session.getAttribute("msjErrorLogin") != null) {

    %>
    <script>
        $(document).ready(function () {
            Materialize.toast('<%=session.getAttribute("msjErrorLogin")%>', 5000, "red");
        });

    </script>

    <%
            session.removeAttribute("msjErrorLogin");
        }
    %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>

    <body class="">
        <img src="https://image.flaticon.com/icons/png/512/195/195123.png" height="150px;">
        <div class="containerLogin"  style="margin-top:-100px;">


            <div class=" card-panel" style="background: rgba(238, 238, 238, 0.8);">
                <div class="row">
                    <div class="col l12"><h3 style="font-weight: bold;">Iniciar Sesión</h3> <hr></div>  

                </div>
                <div class="row">
                    <form class="col s12" action="./loginServlet" method="POST" id="frmLogin">
                        <div class="row">

                            <div class="col l12 center">
                                <div class="row">


                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">account_circle</i>
                                        <input id="usuarioQl" name="usuarioQl" type="text" class="validate">
                                        <label for="icon_prefix">Username</label>
                                    </div>

                                </div>
                                <div class="row">


                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">vpn_key</i>
                                        <input id="contraQl" name="contraQl" type="password" class="validate">
                                        <label for="icon_telephone">Password</label>
                                    </div>



                                </div>
                                <div class="row">

                                    <div class="input-field col s12">
                                        <a class="btn-large green waves-effect waves-light" style="width:100%;" id="ingresar">Ingresar</a>

                                    </div>


                                </div>
                            </div>  


                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>

<script>
    $(document).ready(function () {
        $('#ingresar').click(function () {
            $('#frmLogin').submit();
        });
    });
</script>
<style>
    body{
        background-image: url("https://www.tec.com.pe/wp-content/uploads/2013/10/Muse-Concierto-4K-Bateria.jpg");
        background-repeat: no-repeat;
        background-size: cover;
        height: 100%;
        width: 100%;
    }
    .containerLogin{
        width: 35%;
        margin: 0 auto;
    }
    /* label focus color */

</style>

<%    }
%>