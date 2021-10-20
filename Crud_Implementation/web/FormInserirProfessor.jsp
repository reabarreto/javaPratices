<%-- 
    Document   : inserir
    Created on : 3 de set. de 2021, 15:11:14
    Author     : Cliente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Estilos/estilosPrincipal.css">
        <title>JSP Page</title>
    </head>
    <body>
        <form  action="novo_professor.jsp" method="post">
            <div class="container">
                <div class="boxExt">
                <div class="boxInter">
                    <h2> Cadastro de novos professores </h2>
                    <label for="nome"><b> Nome do professor</b> </label></br>
                    <input type="text" placeholder="Insira o nome" name ="nome" required/><br>
                    <label for="email"> <b>Email do professor</b> </label></br>
                    <input type="text" placeholder="Insira o seu e-mail"  name ="email"></br>
                    <label for="senha"> <b>Senha do professor  (8 caractéres)</b> </label></br>
                    <input type="password" placeholder="Insira sua senha" name ="senha" minlength="8" required ></br>
                    <input type="submit" value="Enviar">
                    <input type="reset" value="Digitar novamente">
                    <button type="button"> <a href="index.jsp" alt="Cancelar"> <b> Cancelar </b> </a></button> 
                </div>
                </div>
            </div> 
        </form>
    </form
</body>
</html>
