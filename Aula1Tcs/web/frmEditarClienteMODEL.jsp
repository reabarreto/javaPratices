<%-- 
    Document   : frmEditarClienteMODEL
    Created on : 8 de set. de 2021, 15:12:23
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
   <form method="post" action="alterarCliente.jsp">
            <u2>
             <label> Código do cliente </label> <br>
            <input type="text" name ="id" 
                   value="<%= request.getParameter("id")%>"/><br>
            
            <label> Nome do cliente </label><br>
            <input type="text" name ="Nome"
                   value="<%= request.getParameter("Nome") %> "></br>
            
             <label> Email do cliente </label><br>
            <input type="text" name ="Email"
                   value="<%= request.getParameter("Email") %> "></br>
            
            <button type="submit">ALTERAR</button>
            <button> <a href="listarCliente.jsp" alt="Listar Cliente" class=""current">Lista de Clientes </a></button> 
            </u2>
        </form>
    </body>
</html>
