

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

        <title></title>
    </head>
    <body>
        <h1 class="center-align">Ingreso usuario:</h1><hr>
        <div class="container">
            <div class="row">
                <form class="col s12" action="./loginServlet" method="POST" id="frmLogin">
                    <div class="row">

                        <div class="col l12 center">
                            <div class="row">


                                <div class="input-field col s6">
                                    <i class="material-icons prefix">account_circle</i>
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


                                <div class="input-field col s6">
                                    <i class="material-icons prefix">vpn_key</i>
                                    <input id="contraQl" name="contraQl" type="password" class="validate">
                                    <label for="icon_telephone">Password</label>
                                </div>
                                <div class="col s6 switch">
                                    <label>
                                        Off
                                        <input type="checkbox">
                                        <span class="lever"></span>
                                        On
                                    </label>
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
    </body>
</html>
<%} else {
        response.sendRedirect("index.jsp");
    }
%>
