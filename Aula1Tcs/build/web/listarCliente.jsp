<%-- 
    Document   : listarLivro
    Created on : 6 de set. de 2021, 14:15:55
    Author     : Cliente
--%>
<%@page import="DAO.DAOCliente"%>
<%@page import="MODEL.Cliente"%>
<%@page import ="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem dos clientes </title>
    </head>
    <body>
        
            <h1> Lista de clientes </h1>
        <form action="listarCliente.jsp" name="nome">
            <label>Pesquisar por nome</label>
            <input type="text" name="nome"/>
            <input type="submit" value="Pesquisar"/>
        </form>
    
       <% 
       try{
           
           DAOCliente cld = new DAOCliente();
           
           
           out.print("<table border='5'>");
           out.print("<tr>");
                out.print("<th>Código</th>");
                out.print("<th>NOME</th>");
                out.print("<th>EMAIL</th>");
                out.print("<th> EXCLUIR</th>");
                out.print("<th>ALTERAR</th>");
            out.print("</tr>");
            
            if(request.getParameter("nome") =="" || request.getParameter("nome") == null) {
            
            ArrayList<Cliente> lista = cld.pesquisarCliente();

           for(int num = 0;num < lista.size(); num++){
               out.print("<tr>");
                    out.print("<td>" + lista.get(num).getId() +" </td>");
                    out.print("<td>" + lista.get(num).getNome() +" </td>");
                    out.print("<td>" + lista.get(num).getEmail() +" </td>");
                
                
                 out.print("<td> <a href='frmExcluirClienteMODEL.jsp?id="
                + lista.get(num).getId() + "&Nome="
                + lista.get(num).getNome() + "'> Clique aqui </a></td>");

                out.print("<td><a href='frmEditarClienteMODEL.jsp?id="
                + lista.get(num).getId() + "&Nome="
                + lista.get(num).getNome() + "&Email="
                + lista.get(num).getEmail() + " '> Clique aqui </a></td> "); 
                out.print("</tr>");
                %> <Br><Br> <%
               }
           }
           else{
           ArrayList<Cliente> lista = cld.encontrarCliente(request.getParameter("nome"));

           for(int num = 0;num < lista.size(); num++){
               out.print("<tr>");
                    out.print("<td>" + lista.get(num).getId() +" </td>");
                    out.print("<td>" + lista.get(num).getNome() +" </td>");
                    out.print("<td>" + lista.get(num).getEmail() +" </td>");
                
                
                 out.print("<td> <a href='frmExcluirClienteMODEL.jsp?id="
                + lista.get(num).getId() + "&Nome="
                + lista.get(num).getNome() + "'> Clique aqui </a></td>");

                out.print("<td><a href='frmEditarClienteMODEL.jsp?id="
                + lista.get(num).getId() + "&Nome="
                + lista.get(num).getNome() + "&Email="
                + lista.get(num).getEmail() + " '> Clique aqui </a></td> "); 
                out.print("</tr>");

           
            }
            }
       } catch(Exception erro){
           throw new RuntimeException("Erro Executar Listagem: ", erro); 
       }
      
                
       %>
       
      
             <button> <a href="index.jsp" alt="Página inicial" class=""current">Página inicial </a></button> 
         
    </body>
</html>
