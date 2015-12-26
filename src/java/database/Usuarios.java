/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;
import java.sql.*;
import java.util.*;
public class Usuarios {
   
    public static Connection con;
   
    
    public static List<Usuarios> lista(){
        try{
            String sql = "select id, nome, data_nascimento, senha form usuarios order by nome";
            
        }
        catch(Exception e ){
            e.printStackTrace(System.out);
            return null;
        }
    
        
    }
    
    public static boolean insere(String nome, String data, String email, String senha){
                   // TENTA EXECUTAR OS COMANDOS
            try{
                
                Statement st = con.createStatement();
                
                // CRIA O COMANDO SQL A SER EXECUTADO
                String sql = "insert into usuarios(nome,data_nascimento,email,senha) values(?,?,?,?)";
                
                // PREPARA O COMANDO PARA SER EXECUTADO, INDICANDO QUE HAVERÁ "?" PARA SUBSTITUIR
                PreparedStatement ps = con.prepareStatement(sql);
                
                // SUBSTITUI OS "?" PELOS RESPECTIVOS VALORES
                ps.setString(1,nome);
                ps.setString(2,data);
                ps.setString(3,email);
                ps.setString(4,senha);
                
                // EXECUTA O CAMANDO SQL ARMAZENANDO O RESULTADO, 0=ERRO 1=SUCESSO
                int status = ps.executeUpdate();
                if(status==0)
                    return false;
                else
                    return true;
                    //out.println("Erro ao inserir o usuário");
            }
            //CASO HAJA UMA EXCESSAO 
            catch(Exception e){
                e.printStackTrace();
                return false;
            }

    }
}
