<!--**
 *
 * @author paulo.bezerra
 *-->

<%    HttpSession sessao = request.getSession();
%>

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

        <div align ="center">
            <br>

            <h3 class="text-muted">Cálculo baseado no estado de <span style = "color: #ff0080">${estado}</span></h3>
            <h5 class="text-muted">Cliente ${razaoSocial} <span style = "color: #ff0080">${optante}</span> do Simples Nacional</h5>
            <br>
            <div class="col-md-8 order-md-1">
                <form name = "finalizarVenda" action="${pageContext.request.contextPath}/finalizarVenda" method="POST" target="_blank">
                    <div class="inner">
                        <!--form name = "venda" action="${pageContext.request.contextPath}/venda" method="POST"-->
                        <div class="row">
                            <div class="col-md-7 mb-3">
                                <label><strong>Item vendido</strong></label>
                                <input class="form-control form-control-dark w-100" type="text"  id = "item_venda" name="itemVenda" required>
                            </div>
                            <div class="col-md-2 mb-3">
                                <label><strong>Valor item</strong></label>
                                <input class="form-control form-control-dark w-100" type="text"  id = "valor" name="valor" required>
                            </div>
                            <div class="col-md-2 mb-3">
                                <label><strong>Valor total</strong></label>
                                <input readonly class="form-control form-control-dark w-100" type="text"  id = "valorTotal" name="valorTotal" required>
                            </div>
                            <br>

                        </div>
                        <button type="button" name = "type" class = "buttonbranco" value = "Won"><strong><span data-feather="plus-circle"></span>Adicionar item</strong></button>
                        <!--/form-->

                        <div align="right">
                            <button type="submit" name = "type" class = "buttonbranco" value = "Won"><strong><span data-feather="check"></span>Finalizar Venda</strong></button>
                        </div>
                    </div>
                </form>
            </div>

            <footer class="my-5 pt-5 text-muted text-center text-small">
                <p class="mb-1">&copy; MCI Brasil</p>
            </footer>
        </div>


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <script src="js/calcularProjeto.js"></script>
        <script src="js/tamanhodata.js"></script>
        <script src="js/searchSuggestProjectname.js"></script>
        <script src="js/searchSuggestProjectCode.js"></script>
        <script src="js/confirmCompleteProjeto.js"></script>
        <script src="js/Probability.js"></script>
        <script src="js/Localidade.js"></script>
        <script src="js/formatarMoeda.js"></script>
        <script src="js/collapse_button.js"></script>
        <script src="js/StatusVSProbability.js"></script>

        <script>
            // Example starter JavaScript for disabling form submissions if there are invalid fields
            (function () {
                'use strict';
                window.addEventListener('load', function () {
                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.getElementsByClassName('needs-validation');
                    // Loop over them and prevent submission
                    var validation = Array.prototype.filter.call(forms, function (form) {
                        form.addEventListener('submit', function (event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            }
            )();
        </script>


        <script>
            webshims.setOptions('forms-ext', {
                replaceUI: 'auto',
                types: 'number'
            });
            webshims.polyfill('forms forms-ext');
        </script>


        <script src="js/jquery.js"></script>
        <script src="js/jquery.autocomplete.js"></script>
        <script src="js/jquery.maskMoney.js"></script>
        <script src="js/AnoFiscal.js"></script>
        <script src="js/customAlert.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>

        <script>
            $("#projectname").autocomplete("getdataProjetos.jsp");
        </script>





        <script src="js/feather.min.js"></script>
        <script>
            feather.replace()
        </script>

        <script>
            $(function () {
                $('#valor').maskMoney();
            });
        </script>
        <script>
            $('.panel-collapse').collapse({
                toggle: true
            });
        </script>
        <script>
            $('#element').tooltip('show')
        </script>

    </body>
</html>

