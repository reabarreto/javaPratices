/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.


 */
package DAO;
import MODEL.Professor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Cliente
 */
public class DAOProfessor {
    
    Connection conn;
    PreparedStatement stmt;
    ResultSet rs;
    ArrayList<Professor> lista = new ArrayList<>();
   
    
    
    
    
    // metodo para inserir cliente
    public void inserirProfessor(Professor professor){
            String sql = "INSERT INTO tb_professor (nome_professor,email_professor,senha_professor) VALUES (?,?,?)";
            conn = new Conexao().getConexao();
            try{
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, professor.getNome());
                stmt.setString(2, professor.getEmail());
                stmt.setString(3, professor.getSenha());
                stmt.execute();
                stmt.close();
            }catch(SQLException erro){
                    throw new RuntimeException("Erro Inserir Professor: ", erro);
            }
    }
    
    
  
    
    public ArrayList<Professor> pesquisarProfessor(){
    String sql = "{SELECT * FROM tb_professor}";
    conn = new Conexao().getConexao();
  
        try{
        
           stmt = conn.prepareStatement(sql);
           rs = stmt.executeQuery();
           
           while(rs.next()){
             
            Professor pfs = new Professor(); 
            pfs.setId(rs.getInt("id_professor"));
            pfs.setNome(rs.getString("nome_professor"));
            pfs.setEmail(rs.getString("email_professor"));
            pfs.setSenha(rs.getString("senha_professor"));
            lista.add(pfs);
           
           }
               
        
        }catch(SQLException erro){
            
        throw new RuntimeException("Erro Listar Professor: ", erro);
        }
        
        return lista;
        
    }
    
    public void excluirProfessor(Professor professor){
            String sql = "DELETE FROM tb_professor WHERE id_professor=?";
            conn = new Conexao().getConexao();
            
            try{
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, professor.getId());
       
                stmt.execute();
                stmt.close();
                
            }catch(SQLException erro){
                    throw new RuntimeException("Erro Inserir Professor: ", erro);
            }
    }
    
    
    public void alterarProfessor(Professor professor){
            String sql = "UPDATE tb_professor SET nome_professor=?, email_professor=?, senha_professor=? WHERE id_professor =?";
            conn = new Conexao().getConexao();
            
            try{
                stmt = conn.prepareStatement(sql);
                
                stmt.setString(1, professor.getNome());
                stmt.setString(2, professor.getEmail());
                stmt.setString(3, professor.getSenha());
                stmt.setInt(4, professor.getId());
  
                stmt.execute();
                stmt.close();
                
            }catch(SQLException erro){
                    throw new RuntimeException("Erro Alterar Professor: ", erro);
            }
    }
    
    
    public ArrayList<Professor> buscarProfessor(String valor){
    String sql = "SELECT id_professor, nome_professor, email_professor, senha_professor FROM tb_professor WHERE nome_professor LIKE '%"+valor+"%'";
    conn = new Conexao().getConexao();
  
        try{
        
           stmt = conn.prepareStatement(sql);
           rs = stmt.executeQuery();
           
           while(rs.next()){
             
            Professor pfs = new Professor(); 
            pfs.setId(rs.getInt("id_professor"));
            pfs.setNome(rs.getString("nome_professor"));
            pfs.setEmail(rs.getString("email_professor"));
            pfs.setSenha(rs.getString("senha_professor"));
            
            lista.add(pfs);
           
           }
               
          
        }catch(SQLException erro){
            
        throw new RuntimeException("Erro Listar Professor: ", erro);
        }
        
        return lista;
        
    }
    
    
}
