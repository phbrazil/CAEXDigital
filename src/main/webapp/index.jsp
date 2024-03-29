<!--**
 *
 * @author paulo.bezerra
 *-->
<!doctype html>
<html lang="en">
    <head>
        <%
            String userAgent = request.getHeader("user-agent");

            boolean mobile = false;
            if (userAgent.toUpperCase().contains("IPHONE") || userAgent.toUpperCase().contains("ANDROID")
                    || userAgent.toUpperCase().contains("MOBILE")) {
                mobile = true;
            } else {
                mobile = false;

            }

        %>

        <meta charset="utf-8">
        <meta name="viewport" content="width-device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Welcome to CAEX Digital MCI</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/loading.css"/>
        <link rel="stylesheet" type="text/css" href="css/loading-btn.css"/>


        <!-- Custom styles for this template -->
        <link href="css/signin.css" rel="stylesheet">
    </head>

    <body class="text-center" style="background-color: #FFE6EE ;">
        <form class="form-signin" action="Login"  method="POST">
            <input type="hidden" name ="mobile" value ="<%=mobile%>">

            <style>
                img{
                    max-width: 100%;
                    /*border: 20px solid #ff0080;
                    padding: 20px;*/

                }

            </style>

            <br>
            <br>
            <br>
            <img class="mb-4" src="img/mci_logo.png" alt="logo MCI">
            <h5 class="mb-0">Bem-vindo ao 
                <span style = "color: #ff0080">CAEX Digital</span>
            </h5>
            <br>
            <label for="inputEmail" class="sr-only">Email</label>
            <input type="email" autocomplete="off" id="inputEmail" class="form-control" placeholder="Email address" name = "userName" required autofocus>
            <label for="inputPassword" class="sr-only">Senha</label>
            <input type="password" autocomplete="off" id="inputPassword" class="form-control" placeholder="Password" name = "password" required>
            <div id = 'entrar' class="btn btn-default ld-ext-bottom">
                <button class="btn btn-lg btn-secondary btn-block" onclick="loading()" type="submit">Entrar</button>
                <div class="ld ld-ring ld-spin-fast"></div>
            </div>

            <p></p>
            <label>
                <a href ="modal?mensagem=Favor enviar um email para <strong>paulo.bezerra@mci-group.com</strong>&path=index.jsp">Esqueci a senha</a>
            </label>

            <p class="mt-5 mb-3 text-muted">&copy; MCI Brasil</p>
        </form>
    </body>

    <script src="js/jquery.js"></script>

    <script>

                    function loading() {

                        $('#entrar').addClass('running');

                    }
    </script>


</html>
