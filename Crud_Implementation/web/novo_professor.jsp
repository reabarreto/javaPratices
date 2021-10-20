

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="MODEL.Professor"%>
<%@page import="DAO.DAOProfessor"%>

<html>

    <body>
        <%

            try {

                Professor pfs = new Professor();
                DAOProfessor prf = new DAOProfessor();
                // pegar o valor via post pelo navegador
                String nome = request.getParameter("nome");
                String email = request.getParameter("email");
                String senha = request.getParameter("senha");

                // condição para verificar se 
                if (nome.equals(null) || email.equals(null)) {
                    response.sendRedirect("index.jsp");
                } else {
                    pfs.setNome(nome);
                    pfs.setEmail(email);
                    pfs.setSenha(senha);
                    prf.inserirProfessor(pfs);
                    response.sendRedirect("index.jsp");
                }

            } catch (Exception erro) {
                throw new RuntimeException("Erro Executar Inserir: ", erro);
            }
        %>
    </body>
</html>
