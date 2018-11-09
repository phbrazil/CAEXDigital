<!--**
 *
 * @author paulo.bezerra
 *-->

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
        <link rel="stylesheet" type="text/css" href="css/jquery.autocomplete.css" />
        <link href="css/buttonbranco.css" rel="stylesheet">


        <!-- Custom styles for this template -->
        <link href="topodapagina.css" rel="stylesheet">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width-device-width, initial-scale=1.0">

        <title>Cadastrar Cliente</title>

    </head>



    <body id="page-top">

        <%@include  file = "navbar.jsp"%>
        <form name = "venda" action="${pageContext.request.contextPath}/venda" method="POST">

            <div align ="center">
                <br>

                <h2 >Cálculo baseado no estado de <span style = "color: #ff0080">${estado}</span></h2>

                <br>

                <div class="col-md-5 order-md-1">
                    <div class="inner">
                        <div class="row">
                            <div align ="center">
                                <label><strong>Cliente Optante Simples Nacional?</strong></label></span>
                                <br>
                                <select name = "optante" class="custom-select d-block w-100" id="optante" >
                                    <option selected>Não sabe</option>
                                    <option>Sim</option>
                                    <option>Não</option>
                                </select>
                                <div class="invalid-feedback">
                                    Favor selecionar o Ano..
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label><strong>Digite o CNPJ</strong></label>
                                <input autocomplete="off" class="form-control form-control-dark w-100" id="cnpj" type="text" onblur="pesquisaCNPJ(this.value)" aria-label="Search" name ="cnpj" required/>
                            </div>
                        </div>
                    </div>
                    <br>
                    <label><strong>Razão Social</strong></label>
                    <input readonly class="form-control form-control-dark w-100" type="text"  name ="nome_empresarial" id = "nome_empresarial" required>
                    <br>
                    <label><strong>Simples Nacional</strong></label>
                    <input readonly class="form-control form-control-dark w-100" type="text"  name ="situacao_simples_nacional" id = "situacao_simples_nacional" required>

                    <br>
                    <button  type="submit" name = "type" class = "buttonbranco" value = "Won"><strong><span data-feather="chevrons-right"></span>Avançar</strong></button>

                </div>        

                <footer class="my-5 pt-5 text-muted text-center text-small">
                    <p class="mb-1">&copy; MCI Brasil</p>
                </footer>
            </div>
        </form>


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="js/CEP.js"></script>
        <script src="js/mascaraCNPJ.js"></script>
        <script src="js/jquery-1.2.6.pack.js"></script>
        <script src="js/jquery.maskedinput-1.1.4.pack.js"></script>
        <script src="js/confirmCompleteCliente.js"></script>
        <script src="js/jquery.autocomplete.js"></script>
        <script src="js/SimplesNacional.js"></script>


        <!--script src="js/jquery.js"></script-->

        <script type="text/javascript">
                                              $(document).ready(function () {
                                                  $("#cnpj").mask("99.999.999/9999-99");
                                              });
        </script>

        <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
        <script>
                                              feather.replace();
        </script>
    </body>
</html>
