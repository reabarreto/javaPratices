<%-- 
    Document   : form_excluirProfessor
    Created on : 14 de set. de 2021, 08:25:54
    Author     : Cliente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function confirm()
            {
                alert("Perfil excluido com sucesso!");
            }
        </script>
        <link rel="stylesheet" href="Estilos/estilosPrincipal.css">
    </head>
    <body>
        <form method="post" action="excluir_professor.jsp">
            <div class="container">
                <div class="boxExt">
                <div class="boxInter">
                    <label> ID do professor </label> <br>
                    <input type="text" name ="id" 
                           value="<%= request.getParameter("id")%>" readonly/><br>
                    <label> Nome do professor </label><br>
                    <input type="text" name ="nome"
                           value="<%= request.getParameter("nome")%> " readonly></br>
                    <input type="submit" onclick="confirm()" value="Excluir">
                    <button type="button"> <a href="index.jsp" alt="Cancelar"> <b> Cancelar </b> </a></button> 
                </div>
                </div>
            </div>
        </form>
    </body>
</html>
