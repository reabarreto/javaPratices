<%-- 
    Document   : excluirCliente
    Created on : 8 de set. de 2021, 11:49:34
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
            
try{
    
    
    Professor pfr = new Professor();
    DAOProfessor prf = new DAOProfessor();
    // pegar o valor via post pelo navegador
    
    String id = request.getParameter("id");
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    
;
    
    // condição para verificar se 
    if (id.equals(null)){
        response.sendRedirect("index.jsp");
    }else {
        pfr.setId(Integer.parseInt(id));
        pfr.setNome("nome");
        pfr.setEmail("email");
        pfr.setEmail("senha");
        prf.excluirProfessor(pfr);
        response.sendRedirect("index.jsp");
    } 
    

}catch(Exception erro){
    throw new RuntimeException("Erro Executar Inserir: ", erro);
}
%>
    </body>
</html>
