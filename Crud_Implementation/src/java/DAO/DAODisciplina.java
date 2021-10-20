/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.


 */
package DAO;
import MODEL.Disciplina;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Cliente
 */
public class DAODisciplina {
    
    Connection conn;
    PreparedStatement stmt;
    ResultSet rs;
    ArrayList<Disciplina> lista = new ArrayList<>();
   
    
    
    
    
    // metodo para inserir cliente
    public void inserirDisciplina(Disciplina disciplina){
            String sql = "INSERT INTO TB_DISCIPLINA (nome_disciplina,cargahoraria_disciplina) VALUES (?,?)";
            conn = new Conexao().getConexao();
            try{
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, disciplina.getNome());
                stmt.setInt(2, disciplina.getCh());
                stmt.execute();
                stmt.close();
            }catch(SQLException erro){
                    throw new RuntimeException("Erro Inserir Cliente: ", erro);
            }
    }
    
    
  
    
    public ArrayList<Disciplina> pesquisarDisciplina(){
    String sql = "{SELECT * FROM tb_disciplina}";
    conn = new Conexao().getConexao();
  
        try{
        
           stmt = conn.prepareStatement(sql);
           rs = stmt.executeQuery();
           
           while(rs.next()){
             
            Disciplina dsc = new Disciplina(); 
            dsc.setId(rs.getInt("ID_DISCIPLINA"));
            dsc.setNome(rs.getString("NOME_DISCIPLINA"));
            dsc.setCh(rs.getInt("CARGAHORARIA_DISCIPLINA"));
            
            lista.add(dsc);
           
           }
               
        
        }catch(SQLException erro){
            
        throw new RuntimeException("Erro Listar Clientes: ", erro);
        }
        
        return lista;
        
    }
    
    public void excluirDisciplina(Disciplina disciplina){
            String sql = "DELETE FROM tb_disciplina WHERE id_disciplina=?";
            conn = new Conexao().getConexao();
            
            try{
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, disciplina.getId());
       
                stmt.execute();
                stmt.close();
                
            }catch(SQLException erro){
                    throw new RuntimeException("Erro Inserir Disciplina: ", erro);
            }
    }
    
    
    public void alterarDisciplina(Disciplina disciplina){
            String sql = "UPDATE tb_disciplina SET nome_disciplina = ?, cargahoraria_disciplina =? WHERE id_disciplina =?";
            conn = new Conexao().getConexao();
            
            try{
                stmt = conn.prepareStatement(sql);
                
                stmt.setString(1, disciplina.getNome());
                stmt.setInt(2, disciplina.getCh());
                stmt.setInt(3, disciplina.getId());
  
                stmt.execute();
                stmt.close();
                
            }catch(SQLException erro){
                    throw new RuntimeException("Erro Alterar Disciplina: ", erro);
            }
    }
    
    
    public ArrayList<Disciplina> buscarDisciplina(String valor){
    String sql = "{SELECT id_disciplina, nome_disciplina, cargahoraria_disciplina FROM tb_disciplina WHERE nome_disciplina LIKE '%"+valor+"%'}";
    conn = new Conexao().getConexao();
  
        try{
        
           stmt = conn.prepareStatement(sql);
           rs = stmt.executeQuery();
           
           while(rs.next()){
             
            Disciplina dsc = new Disciplina(); 
            dsc.setId(rs.getInt("ID_DISCIPLINA"));
            dsc.setNome(rs.getString("NOME_DISCIPLINA"));
            dsc.setCh(rs.getInt("CARGAHORARIA_DISCIPLINA"));
            
            lista.add(dsc);
           
           }
               
           
          
        }catch(SQLException erro){
            
        throw new RuntimeException("Erro Listar Disciplina: ", erro);
        }
        
        return lista;
        
    }
    
    
}
