<%-- 
    Document   : index
    Created on : 14 de set. de 2021, 08:19:24
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
        <div class="container">
            <div class="boxExt">
                <div class="boxInter">
                    <h2 class="titulos"> Página  inicial </h2> </br>
                    <div class="imgcontainer">
                     <img src="imagens/avatar3.png" alt="Avatar" class="avatar">
                    </div>
                    <button><a href="FormInserirProfessor.jsp" alt="Inserir Professor"> Novo professor </a></button>
                    <button><a href="FormInserirDisciplina.jsp" alt="Inserir Disciplina"> Nova disciplina </a></button> 
                    <button type="button"><a href="consultar_professor.jsp" alt="Consultar Professor"> Consultar professor </a></button>
                    <button type="button"><a href="consultar_disciplina.jsp" alt="Consultar Disciplina" >Consultar disciplina </a></button>
                </div>
            </div>
        </div>
    </body>
</html>
