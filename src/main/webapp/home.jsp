<!--**
 *
 * @author paulo.bezerra
 *-->

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    HttpSession sessao = request.getSession();

    Integer idgrupo = (Integer) sessao.getAttribute("idgrupo");
    String subarea = (String) sessao.getAttribute("subarea");

    boolean mobile = (Boolean) session.getAttribute("mobile");

%>

<!DOCTYPE html>
<html>
    <head>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width-device-width, initial-scale=1.0">


    </head>
    <style>

        .tamanhofonte {
            font-size: xx-small;
        }
    </style>

    <body id="page-top">

        <%@include  file = "navbar.jsp"%>

        <br>

        <%if (mobile == false) {

        %>
        <div align ="center">
            <img class="mb-4" src="img/mci_logo.png" alt="logo MCI" style="width: 20%; height: 20%">
            <h3 class="mb-0">Olá
                <span style = "color: #ff0080"><c:out value="${nomecomp}"/></span>
            </h3>
            <br>
            <h3 class="mb-0">
                <span style = "color: red;">${mensagem}</span>

            </h3>
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

            <%                if (idgrupo == 1 || idgrupo == 5) {

            %>
            <br>
            <form name = "Dashboard" action="${pageContext.request.contextPath}/DashboardFullDetails" method="POST">
                <div class="inner">
                    <div class="row">
                        <div align ="center">
                            <span data-feather="calendar"></span>
                            <select name = "year" class="custom-select d-block w-100" id="year" >
                                <option>2018</option>
                                <option>2019</option>
                                <option>2017</option>
                            </select>
                            <div class="invalid-feedback">
                                Favor selecionar o Ano..
                            </div>
                        </div>

                        <button  type="submit" name = "type" class = "buttonbranco" value = "Won"><strong><span data-feather="bar-chart-2"></span>Quick <br> Dashboard</strong></button>
                    </div>
                </div>
            </form>
            <%}%>


            <%if (idgrupo == 3 && subarea.equals("Comercial Corporate")) {%>

            <form name = "Dashboard" action="${pageContext.request.contextPath}/DashboardComercial" method="POST">

                <div class="content">
                    <div class="inner">
                        <div class="col-md-12 mb-3">
                            <label>Selecione</label>
                            <select name = "type" class="custom-select d-block w-100" id="per" >
                                <option>Prospects Follow up</option>
                                <option>Suspects Follow up</option>
                                <option>Top Clients Prospects</option>
                                <option>Prospects per BD</option>
                                <option>Prospects per Status</option>

                            </select>
                            <div class="invalid-feedback">
                                Favor selecionar o Status..
                            </div>
                        </div>
                        <button  type="submit" name = "confirmed" class = "buttonbranco" value = "Confirmed">Quick<br> Dashboard</button>
                    </div>
                </div>
            </form>

            <%                    }%>

            <h8 class="my-5 pt-5 text-muted text-center text-small">
                <br>
                <span class="text-small">Active Projects (<strong>Open/Won</strong>)</span>
                <p></p>
                <table border='2' class = "tamanhofonte" cellpadding='5' width='700' align = "center">
                    <tr>
                        <td><p class="mb-0"><strong>HUB</strong><br>
                                <span class="text-primary">Projects: ${qtdhub} </span> <br><span class="text-center">GM: ${gmhub} </span><br> <span class="text-primary">Average: ${hubaverage}</span>
                            </p></td>
                        <td><p class="mb-0"><strong>Services</strong><br>
                                <span class="text-primary">Projects: ${qtdservices} </span><br> <span class="text-center">GM: ${gmservices} </span> <br><span class="text-primary">Average: ${servicesaverage}</span>
                            </p></td>
                        <td> <p class="mb-0"><strong>Key Accounts</strong><br>
                                <span class="text-primary">Projects: ${qtdkey} </span><br> <span class="text-center">GM: ${gmkey} </span><br> <span class="text-primary">Average: ${keyaverage}</span>
                            </p></td>
                        <td> <p class="mb-0"><strong>Incentive/Ovation</strong><br>
                                <span class="text-primary">Projects: ${qtdincentive} </span> <br><span class="text-center">GM: ${gmincentive}</span> <br><span class="text-primary">Average: ${incentiveaverage}</span>
                            </p></td>
                        <td><p class="mb-0"><strong>Proprietários</strong><br>
                                <span class="text-primary">Projects: ${qtdproprietarios} </span><br> <span class="text-center">GM: ${gmproprietarios}</span> <br><span class="text-primary">Average: ${propaverage}</span>
                            </p></td>
                    </tr>
                </table>
            </h8>

        </div>

        <%} else {
        %>
        <div  align ="center">
            <form name = "Dashboard" action="${pageContext.request.contextPath}/DashboardFullDetails" method="POST">
                <h1 class="mb-0" style="font-size: 80px;">
                    <img class="mb-4" src="img/mci_logo.png" alt="logo MCI" style="width: 50%; height: 50%">
                    <br>
                    Olá
                    <span class="text-primary" style="font-size: 80px;"><c:out value="${nomecomp}"/></span>
                </h1>
                <br>
                <h1 class="mb-0 text-muted" style="font-size: 30px;">Alguns menus não estão disponíveis na versão mobile</h1>
                <br>
                <br>
                <h3 class="mb-0">
                    <span style = "color: red;">${mensagem}</span>

                </h3>
                <%if (idgrupo != 2) {%>
                <label style="font-size: 40px;"><strong>Ano</strong></label><br>
                <select name = "year" style = "width: 300px; height: 80px; font-size: 40px; "class="custom-select" id="year" >
                    <option>2018</option>
                    <option>2019</option>
                    <option>2017</option>
                </select>
                <div class="invalid-feedback">
                    Favor selecionar o Ano..
                </div>
                <br>
                <br>
                <label style="font-size: 40px;"><strong>Status</strong></label><br>
                <select name = "type" style = "width: 90%; height: 20%; font-size: 40px; "class="custom-select" id="type" >
                    <option>Open</option>
                    <option>Won</option>
                    <option>Lost</option>
                    <option>Total</option>
                    <option>Closed</option>
                    <option>Cancelled</option>
                </select>
                <div class="invalid-feedback">
                    Favor selecionar o Status..
                </div>
                <br>
                <br>
                <button  style="font-size: 200%;" type="submit" name = "type" class = "buttonbranco" ><strong>Quick <br> Dashboard</strong></button>
                        <%}%>
            </form>
        </div>

        <%}%>


        <footer class="my-5 pt-5 text-muted text-center text-small">
            <p class="mb-0">Sessão
                <span class="text-primary"><c:out value="${sessaoid}"/></span>
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