

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="MODEL.Disciplina"%>
<%@page import="DAO.DAODisciplina"%>

<html>

    <body>
        <%

            try {

                Disciplina dsp = new Disciplina();
                DAODisciplina prf = new DAODisciplina();
                // pegar o valor via post pelo navegador
                String nome = request.getParameter("nome");
                String ch = request.getParameter("ch");

                // condição para verificar se 
                if (nome.equals(null) || ch.equals(null)) {
                    response.sendRedirect("index.jsp");
                } else {
                    dsp.setNome(nome);
                    dsp.setCh(Integer.parseInt(request.getParameter("ch")));
                    prf.inserirDisciplina(dsp);
                    response.sendRedirect("index.jsp");
                }

            } catch (Exception erro) {
                throw new RuntimeException("Erro Executar Inserir: ", erro);
            }
        %>
    </body>
</html>
