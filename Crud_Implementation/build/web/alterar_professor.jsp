<%-- 
    Document   : alterarCliente
    Created on : 8 de set. de 2021, 15:14:10
    Author     : Cliente
--%>

<%@page import="DAO.DAOProfessor"%>
<%@page import="MODEL.Professor"%>
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

                Professor prf = new Professor();
                DAOProfessor cld = new DAOProfessor();
                // pegar o valor via post pelo navegador

                prf.setId(Integer.parseInt(request.getParameter("id")));
                prf.setNome(request.getParameter("nome"));
                prf.setEmail(request.getParameter("email"));
                prf.setSenha(request.getParameter("senha"));
                cld.alterarProfessor(prf);
                response.sendRedirect("index.jsp");

            } catch (Exception erro) {
                throw new RuntimeException("Erro Executar Inserir: ", erro);
            }
        %>
    </body>
</html>
