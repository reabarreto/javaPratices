
package DAO;

/* importar duas bibliotecas
 * 1 - Connection - Para utilizar recursos de conxão
 * 2 - DriverManager - Gerenciar os drives de BD. 
 */


import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
    public Connection getConexao(){
        // try verifica se tem algum erro no código que está dentro dele.
        try{
            // código conexao
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            return DriverManager.getConnection("jdbc:derby://localhost/bdTeste","renam","123");
        }catch(Exception erro){
            throw new RuntimeException("Erro classe conexão: ",erro); // Exibir o err ode exception
            
        }
    }

}
