<%-- 
    Document   : alterarCliente
    Created on : 8 de set. de 2021, 15:14:10
    Author     : Cliente
--%>

<%@page import="DAO.DAODisciplina"%>
<%@page import="MODEL.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            try {

                Disciplina dsp = new Disciplina();
                DAODisciplina cld = new DAODisciplina();
                // pegar o valor via post pelo navegador

                dsp.setId(Integer.parseInt(request.getParameter("id")));
                dsp.setNome(request.getParameter("nome"));
                dsp.setCh(Integer.parseInt(request.getParameter("ch")));
                cld.alterarDisciplina(dsp);
                response.sendRedirect("index.jsp");

            } catch (Exception erro) {
                throw new RuntimeException("Erro Executar Inserir: ", erro);
            }
        %>
    </body>
</html>
