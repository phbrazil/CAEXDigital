
 function confirmCompleteArchive() {
    var arquivar = document.getElementById('arquivar');
    var projectstatus = document.getElementById('projectstatus').value;
    if (projectstatus === "Won" || projectstatus === "Open") {
        alert("Não é possivel arquivar projeto no status de " + projectstatus);
        return false;   
    } else {
        var answer = confirm("Deseja realmente Arquivar esse \n\
                            projeto? Isso irá impactar relatórios");
        if (answer === true) {
            arquivar.submit();
        } else {
            return false;
        }
    }
 }
