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
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Cadastro de clientes</h1>
           <form method="post" action="executar_inserir.jsp">
            <u2>
            <label for="nome"> NOME </label> <br>
            <input type="text" name ="nome"/><br>
            <label for="email"> Email </label><br>
            <input type="text" name ="email"></br>
            <input type="submit" value="ENVIAR">
            <button> <a href="index.jsp" alt="Página inicial" class=""current">Página inicial </a></button> 
            </u2>
        </form>
    </body>
</html>
