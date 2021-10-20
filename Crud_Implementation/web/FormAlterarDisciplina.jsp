<%-- 
    Document   : form_editarDisciplina
    Created on : 14 de set. de 2021, 08:34:52
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
                alert("Disciplina atualizada com sucesso!");
            }
        </script>
        <link rel="stylesheet" href="Estilos/estilosPrincipal.css">
    </head>
    <body>
        <form action="alterar_disciplina.jsp" method="post">
            <div class="container">
                <div class="boxExt">
                <div class="boxInter">
                    <label> ID da disciplina </label> <br>
                    <input type="text" name ="id" 
                           value="<%= request.getParameter("id")%>" readonly /><br>
                    <label> Nome da disciplina </label><br>
                    <input type="text" name ="nome"
                           value="<%= request.getParameter("nome")%> "></br>
                    <label> Carga horária da disciplina </label><br>
                    <input type="text" placeholder="Apenas numeros" name="ch" required pattern="[0-9]+$"
                           value="<%= request.getParameter("ch")%> "></br>
                    <input type="submit" onclick="confirm()" value="Alterar">
                    </div>
                </div>
            </div>
        </form>

    </body>
</html>
