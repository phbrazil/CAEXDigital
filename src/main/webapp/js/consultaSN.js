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
    
    console.log(valor);
    
    //Nova variável "cep" somente com dígitos.
    var cnpj = valor.replace(/\D/g, '');
    cnpj = cnpj.replace(".", '');
    cnpj = cnpj.replace("-", '');
    cnpj = cnpj.replace("/", '');
    alert(cnpj);
    console.log(cnpj);
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
            
            script.src = 'https://www.receitaws.com.br/v1/cnpj/'+cnpj+'?callback=Resultado';
            
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