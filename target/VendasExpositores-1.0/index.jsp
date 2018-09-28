<!--**
 *
 * @author paulo.bezerra
 *-->
<%-- 
    Created on : june 20, 2018, 11:13:17 PM
    Author     : paulo.bezerra
--%>
<!doctype html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width-device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Vendas Services</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <style>
            p.round1 {
                border: 2px solid black;
                border-radius: 5px;
                text-align: center;

            }

        </style>

    </head>

    <body  style="background-color: white;">
        <form  action="recibo"  method="POST">
            <div align ="center">
                <div class="content" style = "background-color: white;">
                    <div class="row" style='width: 100%;'>
                        <div class="col-md-2 mb-3">
                            <img  src="img/mci_brazil.png" style="width: 80%" alt="logo MCI">
                        </div>
                        <div class="col-md-6 mb-3 round1">
                            <span  type ='text' style='color: rgb(128, 128, 128);font-size:14px;'><br>MCI Brazil | São Paulo Office<br>
                                R. George Ohm, 206/ 230, 19°a, Torre A - 04576-020 - Cidade Moções<br>
                                T: +55 (11) 3056-6000 ramal 8676 C: +55 (11) 9 4057-2106<br>
                                W: www.mci-group.com</span>

                        </div>
                        <div class="col-md-2 mb-3">
                            <img  src="img/logo_evento.png" style="width: 90%" alt="logo Evento">
                        </div>
                        <div class="col-md-10 mb-3">
                            <span><strong>R e c i b o</strong></span>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label><strong>FORMAS DE PAGAMENTO</strong></label>
                        </div>
                        <div class="col-md-1 mb-3">
                            <label><strong>CARTÃO DE CRÉDITO</strong></label>
                        </div>
                        <div class="col-md-1 mb-3">
                            <label><strong>FORMAS DE DÉBITO</strong></label>
                        </div>
                        <div class="col-md-1 mb-3">
                            <label><strong>ESPÉCIE</strong></label>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label><strong>VALOR DA COMPRA</strong></label>
                        </div>
                        <div class="col-md-3 mb-3">
                            <div class="input-group">
                                <input name="valorcompra" data-toggle="tooltip" title="Valor da Compra" data-placement="bottom" readonly type="number"  class="form-control" id="valorcompra" required>
                            </div>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label><strong>Recebemos de</strong></label>
                        </div>
                        <div class="col-md-9 mb-3">
                            <input name="nomecli" data-toggle="tooltip" title="Nome do Cliente" data-placement="bottom" readonly type="text"  class="form-control" id="nomecli" required>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label><strong>CNPJ</strong></label>
                        </div>
                        <div class="col-md-9 mb-3">
                            <input name="cnpj" data-toggle="tooltip" title="CNPJ do Cliente" data-placement="bottom" readonly type="text"  class="form-control" id="cnpj" required>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label><strong>Expositor</strong></label>
                        </div>
                        <div class="col-md-9 mb-3">
                            <input name="expositor" data-toggle="tooltip" title="Expositor" data-placement="bottom" readonly type="text"  class="form-control" id="expositor" required>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label><strong>Valor por extenso</strong></label>
                        </div>
                        <div class="col-md-9 mb-3">
                            <input name="extenso" data-toggle="tooltip" title="Valor por Extenso" data-placement="bottom" readonly type="text"  class="form-control" id="extenso" required>
                        </div>

                        <div class="col-md-2 mb-3">
                            <label><strong>Referente à</strong></label>
                        </div>
                        <div class="col-md-9 mb-3">
                            <input name="referente" data-toggle="tooltip" title="Item vendido" data-placement="bottom" readonly type="text"  class="form-control" id="referente" required>
                        </div>
                        <div align ='center'>
                            <div class="col-md-10 mb-3">
                                <p class="round1" style='color: black; font-size:14px;'>no evento LABACE 2018, a ser realizado de 14 a 16 de agosto
                                    de 2018 no AEROPORTO DE CONGONHAS, localizado a Rua Tamoios, 361, São Paulo/SP - Brasil						
                                </p>

                            </div>
                            <div class="col-md-10 mb-3">
                                <p class="round1" style='color: black;font-size:14px;'>IMPORTANTE A NF-e DE PRESTAÇÃO DE SERVIÇOS SERÁ EMITIDA E ENVIADA EM ATÉ 5 DIAS ÚTEIS AO CNPJ DECLARADO ACIMA.</p>
                            </div>
                            <label><strong>São Paulo, 28 de setembro de 2018</strong></label>
                        </div>

                    </div>
                </div>
            </div>
        </form>
        <hr>
        <form  action="recibo"  method="POST">
            <div align ="center">
                <div class="content" style = "background-color: white;">
                    <div class="row" style='width: 100%;'>
                        <div class="col-md-2 mb-3">
                            <img  src="img/mci_brazil.png" style = 'width: 80%;' alt="logo MCI">
                        </div>
                        <div class="col-md-6 mb-3 round1">
                            <span  type ='text' style='color: rgb(128, 128, 128);font-size:14px;'><br>MCI Brazil | São Paulo Office<br>
                                R. George Ohm, 206/ 230, 19°a, Torre A - 04576-020 - Cidade Moções<br>
                                T: +55 (11) 3056-6000 ramal 8676 C: +55 (11) 9 4057-2106<br>
                                W: www.mci-group.com</span>

                        </div>
                        <div class="col-md-2 mb-3">
                            <img  src="img/logo_evento.png" style = 'width: 90%;' alt="logo Evento">
                        </div>
                        <div class="col-md-10 mb-3">
                            <span><strong>R e c i b o</strong></span>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label><strong>FORMAS DE PAGAMENTO</strong></label>
                        </div>
                        <div class="col-md-1 mb-3">
                            <label><strong>CARTÃO DE CRÉDITO</strong></label>
                        </div>
                        <div class="col-md-1 mb-3">
                            <label><strong>FORMAS DE DÉBITO</strong></label>
                        </div>
                        <div class="col-md-1 mb-3">
                            <label><strong>ESPÉCIE</strong></label>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label><strong>VALOR DA COMPRA</strong></label>
                        </div>
                        <div class="col-md-3 mb-3">
                            <div class="input-group">
                                <input name="valorcompra" data-toggle="tooltip" title="Valor da Compra" data-placement="bottom" readonly type="number"  class="form-control" id="valorcompra" required>
                            </div>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label><strong>Recebemos de</strong></label>
                        </div>
                        <div class="col-md-9 mb-3">
                            <input name="nomecli" data-toggle="tooltip" title="Nome do Cliente" data-placement="bottom" readonly type="text"  class="form-control" id="nomecli" required>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label><strong>CNPJ</strong></label>
                        </div>
                        <div class="col-md-9 mb-3">
                            <input name="cnpj" data-toggle="tooltip" title="CNPJ do Cliente" data-placement="bottom" readonly type="text"  class="form-control" id="cnpj" required>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label><strong>Expositor</strong></label>
                        </div>
                        <div class="col-md-9 mb-3">
                            <input name="expositor" data-toggle="tooltip" title="Expositor" data-placement="bottom" readonly type="text"  class="form-control" id="expositor" required>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label><strong>Valor por extenso</strong></label>
                        </div>
                        <div class="col-md-9 mb-3">
                            <input name="extenso" data-toggle="tooltip" title="Valor por Extenso" data-placement="bottom" readonly type="text"  class="form-control" id="extenso" required>
                        </div>

                        <div class="col-md-2 mb-3">
                            <label><strong>Referente à</strong></label>
                        </div>
                        <div class="col-md-9 mb-3">
                            <input name="referente" data-toggle="tooltip" title="Item vendido" data-placement="bottom" readonly type="text"  class="form-control" id="referente" required>
                        </div>
                        <div align ='center'>
                            <div class="col-md-10 mb-3">
                                <p class="round1" style='color: black;font-size:14px;'>no evento LABACE 2018, a ser realizado de 14 a 16 de agosto
                                    de 2018 no AEROPORTO DE CONGONHAS, localizado a Rua Tamoios, 361, São Paulo/SP - Brasil						
                                </p>

                            </div>
                            <div class="col-md-10 mb-3">
                                <p class="round1" style='color: black;font-size:14px;'>IMPORTANTE A NF-e DE PRESTAÇÃO DE SERVIÇOS SERÁ EMITIDA E ENVIADA EM ATÉ 5 DIAS ÚTEIS AO CNPJ DECLARADO ACIMA.</p>
                            </div>
                            <label><strong>São Paulo, 28 de setembro de 2018</strong></label>
                        </div>

                    </div>
                </div>
            </div>
        </form>

    </body>


</html>
