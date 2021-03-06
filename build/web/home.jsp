<%@page import="duoc.cl.dej4501.entidades.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%if (session.getAttribute("objUserCon") != null) {

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Baloo+Tammudu" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->


        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/css/materialize.min.css">

        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.1/js/materialize.min.js"></script>

        <title>Home - Sistema de Administración Peliculas</title>
    </head>
    <body>

        <jsp:include page="menu.jsp" flush="true"></jsp:include>
        <div id="contenido" class="container white">
            <div class="row">
                <div class="col l12 center-align">
                    <h4>Revisa Nuestro Catálogo de Películas:</h4><hr>


                </div>
            </div>
            <div class="row hide-on-med-and-up">
                <div class="col l12">
                    <div class="slider">
                        <ul class="slides">
                            <li>
                                <img src="https://ugc.kn3.net/i/origin/http://img.izismile.com/img/img4/20110826/1000/awesome_classic_movie_gifs_28.gif"> <!-- random image -->
                                <div class="caption center-align">
                                    <br><br><br><br><br><br><br><br><br><br>
                                    <h3>The Shining</h3>

                                </div>
                            </li>
                            <li>
                                <img src="https://ugc.kn3.net/i/origin/http://img.izismile.com/img/img4/20110826/1000/awesome_classic_movie_gifs_08.gif"> <!-- random image -->
                                <div class="caption left-align">
                                    <br><br><br><br><br><br><br><br><br><br>
                                    <h3>Pulp Fiction</h3>
                                </div>
                            </li>
                            <li>
                                <img src="https://ugc.kn3.net/i/origin/http://img.izismile.com/img/img4/20110826/1000/awesome_classic_movie_gifs_02.gif"> <!-- random image -->
                                <div class="caption right-align">
                                    <br><br><br><br><br><br><br><br><br><br>
                                    <h3>The Godfather</h3>
                                </div>
                            </li>
                            <li>
                                <img src="https://ugc.kn3.net/i/origin/http://img.izismile.com/img/img4/20110826/1000/awesome_classic_movie_gifs_03.gif"> <!-- random image -->
                                <div class="caption center-align">
                                    <br><br><br><br><br><br><br><br><br><br>
                                    <h3>Fight Club</h3>
                                </div>
                            </li>
                            <li>
                                <img src="https://ugc.kn3.net/i/origin/http://img.izismile.com/img/img4/20110826/1000/awesome_classic_movie_gifs_qhaKG_30.gif"> <!-- random image -->
                                <div class="caption center-align">
                                    <br><br><br><br><br><br><br><br><br><br>
                                    <h3>A Clockwork Orange</h3>
                                </div>
                            </li>
                            <li>
                                <img src="https://ugc.kn3.net/i/origin/http://img.izismile.com/img/img4/20110826/1000/awesome_classic_movie_gifs_06.gif"> <!-- random image -->
                                <div class="caption center-align">
                                    <br><br><br><br><br><br><br><br><br><br>
                                    <h3>From Hell</h3>
                                </div>
                            </li>
                            <li>
                                <img src="https://ugc.kn3.net/i/origin/http://img.izismile.com/img/img4/20110826/1000/awesome_classic_movie_gifs_16.gif"> <!-- random image -->
                                <div class="caption center-align">
                                    <br><br><br><br><br><br><br><br><br><br>
                                    <h3>Alien</h3>
                                </div>
                            </li>
                            <li>
                                <img src="https://ugc.kn3.net/i/origin/http://img.izismile.com/img/img4/20110826/1000/awesome_classic_movie_gifs_23.gif"> <!-- random image -->
                                <div class="caption center-align">
                                    <br><br><br><br><br><br><br><br><br><br>
                                    <h3>The Good, the Bad and the Ugly</h3>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>
<script>
    $(document).ready(function () {
        $(".button-collapse").sideNav();
        $('.slider').slider();
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
<style>
    body{
        font-family: 'Baloo Tammudu', cursive;
    }
    h5{
        padding: 10px;

    }
</style>
<%} else {
        response.sendRedirect("index.jsp");
    }
%>

