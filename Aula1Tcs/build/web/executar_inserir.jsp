

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>

<html>

    <body>
<%
            
try{
    
    
    Cliente cli = new Cliente();
    DAOCliente cld = new DAOCliente();
    // pegar o valor via post pelo navegador
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
    
    // condição para verificar se 
    if (nome.equals(null) || email.equals(null)){
        response.sendRedirect("index.jsp");
    }else {
        cli.setNome(nome);
        cli.setEmail(email);
        cld.inserirCliente(cli);
        response.sendRedirect("index.jsp");
    } 
    

}catch(Exception erro){
    throw new RuntimeException("Erro Executar Inserir: ", erro);
}
%>
    </body>
</html>
