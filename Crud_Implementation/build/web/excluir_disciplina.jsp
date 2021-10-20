<%-- 
    Document   : excluirCliente
    Created on : 8 de set. de 2021, 11:49:34
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

                String id = request.getParameter("id");
                ;

                // condição para verificar se 
                if (id.equals(null)) {
                    response.sendRedirect("index.jsp");
                } else {
                    dsp.setId(Integer.parseInt(id));
                    cld.excluirDisciplina(dsp);
                    response.sendRedirect("index.jsp");
                }

            } catch (Exception erro) {
                throw new RuntimeException("Erro Executar Inserir: ", erro);
            }
        %>
    </body>
</html>
