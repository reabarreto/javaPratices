 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Cliente
 */
public class Conexao {
    
    public Connection getConexao(){
        // try verifica se tem algum erro no código que está dentro dele.
        try{
            // código conexao
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            return DriverManager.getConnection("jdbc:derby://localhost/BDAvaliacao","renam","123");
        }catch(Exception erro){
            throw new RuntimeException("Erro classe conexão: ",erro); // Exibir o err ode exception
            
        }
    }
    
}

