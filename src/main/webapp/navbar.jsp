<!--**
 *
 * @author paulo.bezerra
 *-->

<%@page import="java.awt.geom.Area"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="vendor/devicons/css/devicons.min.css" rel="stylesheet">
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>CAEX Digital</title>

    </head>

    <style type="text/css">
        .fonte {
            color: white;
            background-color: #ff0080;

        }
        .fonte a:hover {background-color: #000000;}

    </style>


    <body>


        <link rel="stylesheet" type="text/css" href="css/dropdown.css">

        <nav class="navbar navbar-expand-sm fonte">
            <a class="navbar js-scroll-trigger fonte" style="text-decoration:none; color: white;" href="home.jsp">
                <span class="d-block d-lg-block"><img style ="width: 60px; height: 50px;" src = "img/mci_brazil.png"></span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a style="text-decoration:none; color: white;" class="nav-link dropdown-toggle" onclick="myConsultar()" id="navbardrop" data-toggle="dropdown">
                        Consultas
                    </a>
                    <div  style="display: none" id="consultar" class="dropdown-transparente">
                        <p><a class="dropdown-item" id = "clscore" href="ConsultaVenda.jsp" style="text-decoration:none; color: white;">Venda</a></p>
                    </div>
                </li>

                <li class="nav-item">
                    <div class="nav-item dropdown">
                        <a style="text-decoration:none; color: white;" class="nav-link dropdown-toggle" onclick="myCadastrar()" id="navbardrop" data-toggle="dropdown">
                            Cadastrar
                        </a>
                        <div  style="display: none" id="cadastrar" class="dropdown-transparente">
                            <p><a class="dropdown-item" id = "cdscore" href="FiltroNewScoreCard.jsp" style="text-decoration:none; color: white;">Produto</a></p>
                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <div class="nav-item dropdown">
                        <a style="text-decoration:none; color: white;" class="nav-link dropdown-toggle" onclick="myGerenciamento()" id="navbardrop" data-toggle="dropdown">
                            Gerenciamento
                        </a>
                        <div style="display: none" id="gerenciamento" class="dropdown-transparente">
                            <p><a class="dropdown-item" id = "liscore" href="FiltroListarScoreCard.jsp" style="text-decoration:none; color: white;">Listar Vendas</a></p>
                        </div>
                    </div>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger fonte" style="text-decoration:none; color: white;" href="Logout.jsp">Sair</a>

                </li>
                <li class ="nav-item" align = "right">
                    <a class="nav-link js-scroll-trigger" style="color: black;"><strong>${emailUser}</strong></a>
                </li>
            </ul>



        </nav>


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
        <script src="js/feather.min.js"></script>


        <style>

            .transparente {
                position: relative;
                display: inline-block;


            }

            .dropdown-transparente {
                display: none;
                position: absolute;
                min-width: 190px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                padding: 12px 16px;
                z-index: 1;
                color: white;
                background-color: #ff0080;
            }
            .dropdown-transparente a:hover {background-color: #000000;}

            .dropdown:hover .dropdown-transparente {
                display: block;
            }


        </style>

        <script>

            function myConsultar() {
                var consultar = document.getElementById("consultar");

                if (consultar.style.display === "none") {
                    consultar.style.display = "block";
                } else {
                    consultar.style.display = "none";

                }
            }
            function myCadastrar() {
                var cadastrar = document.getElementById("cadastrar");

                if (cadastrar.style.display === "none") {
                    cadastrar.style.display = "block";
                } else {
                    cadastrar.style.display = "none";

                }
            }
            function myGerenciamento() {
                var gerenciamento = document.getElementById("gerenciamento");

                if (gerenciamento.style.display === "none") {
                    gerenciamento.style.display = "block";
                } else {
                    gerenciamento.style.display = "none";

                }
            }

        </script>

    </div>        
</body>
</html>
