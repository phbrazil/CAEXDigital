
function ConfirmPassword() {

    var trocasenha = document.getElementById('trocasenha').value;

    var password = document.getElementById('password').value;
    var confirmpassword = document.getElementById('confirmpassword').value;


    if (password.length < 5) {

        alert("<br><strong>Senha muito curta</strong>");
        document.getElementById("password").focus();
        return false;

    } else if (password !== confirmpassword) {

        alert("<br><strong>Senhas não combinam</strong>");

        document.getElementById("password").focus();
        return false;

    } else {
        var answer = confirm("Confirmar troca da senha?");
        if (answer == true) {
            trocasenha.submit();
        }
    }


}





