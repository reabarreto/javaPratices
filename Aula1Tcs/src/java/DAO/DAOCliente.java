package DAO;
import MODEL.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.ResultSet;



public class DAOCliente {
    
    Connection conn;
    PreparedStatement stmt;
    ResultSet rs;
    ArrayList<Cliente> lista = new ArrayList<>();
   
    
    
    
    
    // metodo para inserir cliente
    public void inserirCliente(Cliente cliente){
            String sql = "INSERT INTO TB_CLIENTES (nome,email) VALUES (?,?)";
            conn = new Conexao().getConexao();
            try{
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, cliente.getNome());
                stmt.setString(2, cliente.getEmail());
                stmt.execute();
                stmt.close();
            }catch(Exception erro){
                    throw new RuntimeException("Erro Inserir Cliente: ", erro);
            }
    }
    
    
  
    
    public ArrayList<Cliente> pesquisarCliente(){
    String sql = "{SELECT * FROM TB_CLIENTES}";
    conn = new Conexao().getConexao();
  
        try{
        
           stmt = conn.prepareStatement(sql);
           rs = stmt.executeQuery();
           
           while(rs.next()){
             
            Cliente cli = new Cliente(); 
            cli.setId(rs.getInt("ID"));
            cli.setNome(rs.getString("NOME"));
            cli.setEmail(rs.getString("EMAIL"));
            
            lista.add(cli);
           
           }
               
           
          
        }catch(Exception erro){
            
        throw new RuntimeException("Erro Listar Clientes: ", erro);
        }
        
        return lista;
        
    }
    
    public void excluirCliente(Cliente cliente){
            String sql = "DELETE FROM TB_CLIENTES WHERE id=?";
            conn = new Conexao().getConexao();
            
            try{
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, cliente.getId());
       
                stmt.execute();
                stmt.close();
                
            }catch(Exception erro){
                    throw new RuntimeException("Erro Inserir Cliente: ", erro);
            }
    }
    
    
    public void alterarCliente(Cliente cliente){
            String sql = "UPDATE TB_CLIENTES SET nome = ?, email =? WHERE id =?";
            conn = new Conexao().getConexao();
            
            try{
                stmt = conn.prepareStatement(sql);
                
                stmt.setString(1, cliente.getNome());
                stmt.setString(2, cliente.getEmail());
                stmt.setInt(3, cliente.getId());
  
                stmt.execute();
                stmt.close();
                
            }catch(Exception erro){
                    throw new RuntimeException("Erro Alterar Cliente: ", erro);
            }
    }
    
    
    public ArrayList<Cliente> encontrarCliente(String valor){
    String sql = "{SELECT FROM TB_CLIENTES WHERE nome LIKE '%"+valor+"%'}";
    conn = new Conexao().getConexao();
  
        try{
        
           stmt = conn.prepareStatement(sql);
           rs = stmt.executeQuery();
           
           while(rs.next()){
             
            Cliente cli = new Cliente(); 
            cli.setId(rs.getInt("ID"));
            cli.setNome(rs.getString("NOME"));
            cli.setEmail(rs.getString("EMAIL"));
            
            lista.add(cli);
           
           }
               
           
          
        }catch(Exception erro){
            
        throw new RuntimeException("Erro Listar Clientes: ", erro);
        }
        
        return lista;
        
    }
    
    
}
    

    

    
    
