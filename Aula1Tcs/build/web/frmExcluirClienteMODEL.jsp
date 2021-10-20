<%-- 
    Document   : frmExcluirClienteMODEL
    Created on : 8 de set. de 2021, 11:34:13
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
     <form method="post" action="excluirCliente.jsp">
            <u2>
             <label> Código do cliente </label> <br>
            <input type="text" name ="id" 
                   value="<%= request.getParameter("id")%>" readonly/><br>
            
            <label> Nome do cliente </label><br>
            <input type="text" name ="Nome"
                   value="<%= request.getParameter("Nome") %> " readonly></br>
            
            <button type="submit">EXCLUIR</button>
            </u2>
          <button> <a href="listarCliente.jsp" alt="Listar Cliente" class=""current">Lista de Clientes </a></button> 
        </form>
    </body>
</html>
