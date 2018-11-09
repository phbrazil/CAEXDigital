<!DOCTYPE html>
<%
    HttpSession sessao = request.getSession();

    String primeironome = (String) sessao.getAttribute("primeiroNome");

%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width-device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Opportunity</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="vendor/devicons/css/devicons.min.css" rel="stylesheet">
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
        <link href="css/buttonbranco.css" rel="stylesheet">


    </head>
    <style>

        .tamanhofonte {
            font-size: xx-small;
        }
    </style>
    <style>

        .content
        {
            width: xpx;
            margin: 0 auto;
        }
        .inner
        {
            display:inline-block;
        }
    </style>

    <body>
        <%@include  file = "navbar.jsp"%>
        <div align ="center">
            <br>
            <img class="mb-4" src="img/mci_logo.png" alt="logo MCI" style="width: 20%; height: 20%">
            <h3 class="mb-0">Olá
                <span style = "color: #ff0080">${primeiroNome}</span>, bem-vindo ao <span style = "color: #ff0080">CAEX Digital</span>
            </h3>
            <br>
            <h3 class="mb-0">
                <span style = "color: red;">${mensagem}</span>

            </h3>
            <form name = "simplesNacional" action="${pageContext.request.contextPath}/simplesNacional" method="POST">
                <div class="inner">
                    <div class="row">
                        <div align ="center">
                            <label><strong>Selecione o Estado</strong></label></span>
                            <br>
                            <select name = "estado" class="custom-select d-block w-100" id="estado" >
                                <option selected>São Paulo</option>
                                <option>Rio de Janeiro</option>
                                <option>Minas Gerais</option>
                            </select>
                            <div class="invalid-feedback">
                                Favor selecionar o Ano..
                            </div>
                            <button  type="submit" name = "type" class = "buttonbranco" value = "Won"><strong><span data-feather="chevrons-right"></span>Avançar</strong></button>
                        </div>

                    </div>
                </div>
            </form>

        </div>
        <footer class="my-5 pt-5 text-muted text-center text-small">
            <p class="mb-0">Sessão
                <span class="text-primary">${sessaoid}</span>
            </p>
            <p class="mb-0">&copy; MCI Brasil</p>
        </footer>
    </body>

    <!-- Icons -->
    <script src="js/feather.min.js"></script>
    <script>
        feather.replace()
    </script>


</html>