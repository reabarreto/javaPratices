<%-- 
    Document   : listarLivro
    Created on : 6 de set. de 2021, 14:15:55
    Author     : Cliente
--%>
<%@page import="DAO.DAOProfessor"%>
<%@page import="MODEL.Professor"%>
<%@page import ="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Listagem dos professores </title>
        <link rel="stylesheet" href="Estilos/estilosPrincipal.css">
    </head>
    <body>
        <form action="consultar_professor.jsp" name="nome"> 
            <div class="container">
                <div class="boxExt">
                    <div class="boxInter">
                        <h2> Lista de professores </h2></br>            
                        <input type="text"  placeholder="Pesquisar pelo nome" name="nome"/>
                        <input type="submit" value="Pesquisar"/>

                        <%
                            try {

                                DAOProfessor prf = new DAOProfessor();
                                out.print("<table border='1px' cellpadding='5px' cellspacing='0'>");
                                out.print("<tr>");
                                out.print("<th>ID</th>");
                                out.print("<th>NOME</th>");
                                out.print("<th>EMAIL</th>");
                                out.print("<th>SENHA</th>");
                                out.print("<th> EXCLUIR</th>");
                                out.print("<th>ALTERAR</th>");
                                out.print("</tr>");

                                if (request.getParameter("nome") == "" || request.getParameter("nome") == null) {

                                    ArrayList<Professor> lista = prf.pesquisarProfessor();

                                    for (int num = 0; num < lista.size(); num++) {
                                        out.print("<tr>");
                                        out.print("<td>" + lista.get(num).getId() + " </td>");
                                        out.print("<td>" + lista.get(num).getNome() + " </td>");
                                        out.print("<td>" + lista.get(num).getEmail() + " </td>");
                                        out.print("<td>" + lista.get(num).getSenha() + " </td>");

                                        out.print("<td><a href='FormExcluirProfessor.jsp?id="
                                                + lista.get(num).getId() + "&nome="
                                                + lista.get(num).getNome() + "'> Clique aqui </a></td>");

                                        out.print("<td><a href='FormAlterarProfessor.jsp?id="
                                                + lista.get(num).getId() + "&nome="
                                                + lista.get(num).getNome() + "&email="
                                                + lista.get(num).getEmail() + "&senha="
                                                + lista.get(num).getSenha() + "'> Clique aqui </a></td> ");
                                        out.print("</tr>");

                                    }
                                } else {

                                    ArrayList<Professor> lista = prf.buscarProfessor(request.getParameter("nome"));

                                    for (int num = 0; num < lista.size(); num++) {
                                        out.print("<tr>");
                                        out.print("<td>" + lista.get(num).getId() + " </td>");
                                        out.print("<td>" + lista.get(num).getNome() + " </td>");
                                        out.print("<td>" + lista.get(num).getEmail() + " </td>");
                                        out.print("<td>" + lista.get(num).getSenha() + " </td>");

                                        out.print("<td> <a href='FormExcluirProfessor.jsp?id="
                                                + lista.get(num).getId() + "&nome="
                                                + lista.get(num).getNome() + "'> Clique aqui </a></td>");

                                        out.print("<td><a href='FormAlterarProfessor.jsp?id="
                                                + lista.get(num).getId() + "&nome="
                                                + lista.get(num).getNome() + "&email="
                                                + lista.get(num).getEmail() + "&senha="
                                                + lista.get(num).getSenha() + "'> Clique aqui </a></td> ");

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
