<%-- 
    Document   : listarLivro
    Created on : 6 de set. de 2021, 14:15:55
    Author     : Cliente
--%>
<%@page import="DAO.DAODisciplina"%>
<%@page import="MODEL.Disciplina"%>
<%@page import ="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem das disciplinas </title>
        <    <link rel="stylesheet" href="Estilos/estilosPrincipal.css">

    </head>
    <body>

        <form action="consultar_disciplina.jsp" name="nome">


            <div class="container">
                <div class="boxExt">
                    <div class="boxInter">
                        <h2> Lista de disciplinas </h2>

                        <form action="consultar_disciplina.jsp" name="nome">
                            <input type="text" placeholder="Pesquisar por disciplina" name="nome"/>
                            <input type="submit" value="Pesquisar"/>
                        </form>



                        <%
                            try {

                                DAODisciplina dsc = new DAODisciplina();

                                out.print("<table border='1px' cellpadding='5px' cellspacing='0'>");
                                out.print("<tr>");
                                out.print("<th>ID</th>");
                                out.print("<th>NOME</th>");
                                out.print("<th>CARGA HORÁRIA</th>");
                                out.print("<th> EXCLUIR</th>");
                                out.print("<th>ALTERAR</th>");
                                out.print("</tr>");

                                if (request.getParameter("nome") == "" || request.getParameter("nome") == null) {

                                    ArrayList<Disciplina> lista = dsc.pesquisarDisciplina();

                                    for (int num = 0; num < lista.size(); num++) {
                                        out.print("<tr>");
                                        out.print("<td>" + lista.get(num).getId() + " </td>");
                                        out.print("<td>" + lista.get(num).getNome() + " </td>");
                                        out.print("<td>" + lista.get(num).getCh() + " </td>");

                                        out.print("<td> <a href='FormExcluirDisciplina.jsp?id="
                                                + lista.get(num).getId() + "&nome="
                                                + lista.get(num).getNome() + "&ch="
                                                + lista.get(num).getCh() + "'> Clique aqui </a></td>");

                                        out.print("<td><a href='FormAlterarDisciplina.jsp?id="
                                                + lista.get(num).getId() + "&nome="
                                                + lista.get(num).getNome() + "&ch="
                                                + lista.get(num).getCh() + " '> Clique aqui </a></td> ");
                                        out.print("</tr>");

                                    }
                                } else {
                                    ArrayList<Disciplina> lista = dsc.buscarDisciplina(request.getParameter("nome"));

                                    for (int num = 0; num < lista.size(); num++) {
                                        out.print("<tr>");
                                        out.print("<td>" + lista.get(num).getId() + " </td>");
                                        out.print("<td>" + lista.get(num).getNome() + " </td>");
                                        out.print("<td>" + lista.get(num).getCh() + " </td>");

                                        out.print("<td> <a href='FormExcluirDisciplina.jsp?id="
                                                + lista.get(num).getId() + "&nome="
                                                + lista.get(num).getNome() + "'> Clique aqui </a></td>");

                                        out.print("<td><a href='FormAlterarDisciplina.jsp?id="
                                                + lista.get(num).getId() + "&nome="
                                                + lista.get(num).getNome() + "&ch="
                                                + lista.get(num).getCh() + " '> Clique aqui </a></td> ");
                                        out.print("</tr>");

                                    }
                                }
                            } catch (Exception erro) {
                                throw new RuntimeException("Erro Executar Listagem: ", erro);
                            }


                        %>
                    </div>
                </div>
            </div>

        </form>
    </body>
</html>
