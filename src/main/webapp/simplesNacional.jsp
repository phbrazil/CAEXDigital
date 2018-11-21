<!--**
 *
 * @author paulo.bezerra
 *-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

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

                <h3 class="text-muted">Cálculo baseado no estado de <span style = "color: #ff0080">${estado}</span></h3>

                <br>

                <div class="col-md-8 order-md-1">
                    <div class="inner">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label><strong>Cliente Optante Simples Nacional?</strong></label></span>
                                <br>
                                <select name = "optanteUser" class="custom-select d-block w-100" id="optanteUser" >
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
                                <input autocomplete="off" data-toggle="tooltip" title="Exemplo 11321229000144"  class="form-control form-control-dark w-100" id="cnpj" type="text" onblur="simplesNacional(this.value)" aria-label="Search" name ="cnpj" required/>
                            </div>
                            <br>
                            <div class="col-md-8 mb-3">
                                <label><strong>Razão Social</strong></label>
                                <input readonly class="form-control form-control-dark w-100" type="text"  name ="razaoSocial" id = "nome_empresarial" required>
                            </div>
                            <br>
                            <div class="col-md-4 mb-3">

                                <label><strong>Simples Nacional</strong></label>
                                <input readonly class="form-control form-control-dark w-100" type="text"  id = "situacao_simples_nacional" name="optante" required>
                            </div>
                            <br>
                            <button  type="submit" name = "type" class = "buttonbranco" value = "Won"><strong><span data-feather="chevrons-right"></span>Avançar</strong></button>

                        </div>        

                        <footer class="my-5 pt-5 text-muted text-center text-small">
                            <p class="mb-1">&copy; MCI Brasil</p>
                        </footer>
                    </div>
                </div>
            </div>
        </form>

    </body>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!--script language="JavaScript" type="text/javascript" src="js/consultaSN.js"></script-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery-1.2.6.pack.js"></script>
    <script src="js/jquery.maskedinput-1.1.4.pack.js"></script>
    <script src="js/mascaraCNPJ.js"></script>
    <!-- Bootstrap core CSS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


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

    <script>
        //////

        function limpa_formulário_CNPJ() {
            //Limpa valores do formulário de cep.
            document.getElementById('nome_empresarial').value = ("");
            document.getElementById('situacao_simples_nacional').value = ("");
        }

        function Resultado(conteudo) {

            if (!("ERROR" in conteudo)) {

                document.getElementById('nome_empresarial').value = (conteudo.nome);
                document.getElementById('situacao_simples_nacional').value = (conteudo.data_situacao);

            } else {
                alert("Não encontrado");
            }
        }

        function simplesNacional(valor) {

            //Nova variável "cep" somente com dígitos.
            var cnpj = valor.replace(/\D/g, '');
            cnpj = cnpj.replace(".", '');
            cnpj = cnpj.replace("-", '');
            cnpj = cnpj.replace("/", '');
            //Verifica se campo cep possui valor informado.
            if (cnpj != "") {

                //Expressão regular para validar o CNPJ.
                var validacpnj = /^[0-9]{14}$/;
                //Valida o formato do cnpj.
                if (validacpnj.test(cnpj)) {

                    //Preenche os campos com "..." enquanto consulta webservice.
                    document.getElementById('nome_empresarial').value = "Pesquisando...";
                    document.getElementById('situacao_simples_nacional').value = "Pesquisando...";
                    var script = document.createElement('script');

                    //Sincroniza com o callback.
                    // script.src = 'https://www.sintegraws.com.br/api/v1/execute-api.php?token=DC84AF16-E5A1-49F2-98F0-CFDA1C5F930B&cnpj='+valor+'&plugin=SN?callback=Resultado';

                    script.src = 'https://www.receitaws.com.br/v1/cnpj/' + cnpj + '?callback=Resultado';

                    //00623904000335

                    //Insere script no documento e carrega o conteúdo.
                    document.body.appendChild(script);

                } //end if.

                else {
                    alert("Formato de CNPJ inválido.");
                    limpa_formulário_CNPJ();
                }
            } //end if.

            else {
                //alert("Formato de CNPJ inválido.");
                limpa_formulário_CNPJ();
            }
        }
        ;
    </script>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>



</html>
