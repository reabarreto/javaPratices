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
        <form method="post" action="nova_disciplina.jsp">
            <div class="container">
                <div class="boxExt">
                <div class="boxInter">
                    <h2> Cadastro de novas disciplinas </h2>
                    <label for="nome"> <b>Nome da disciplina </b> </label> <br>
                    <input type="text" placeholder="Informe o nome da disciplina" name ="nome" required/><br>
                    <label for="ch"> <b>Carga horária da disciplina</b> </label><br>
                    <input type="text" placeholder="Apenas numeros" name="ch" required pattern="[0-9]+$"><br>
                    <input type="submit" value="ENVIAR">
                    <button type="button"> <a href="index.jsp" alt="Cancelar"> <b> Cancelar </b> </a></button> 
                </div>
                </div>
            </div>
        </form>

    </body>
</html>
