/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;
import java.sql.*;

public class NewsLetters {
    
    public static Connection con;
    
    public static boolean insere(String nome, String email){
           // TENTA EXECUTAR OS COMANDOS
            try{
                
                Statement st = con.createStatement();
                
                // CRIA O COMANDO SQL A SER EXECUTADO
                String sql = "insert into newsletter(nome,email) values(?,?)";
                
                // PREPARA O COMANDO PARA SER EXECUTADO, INDICANDO QUE HAVERÁ "?" PARA SUBSTITUIR
                PreparedStatement ps = con.prepareStatement(sql);
                
                // SUBSTITUI OS "?" PELOS RESPECTIVOS VALORES
                ps.setString(1,nome);
              
                ps.setString(2,email);
               
                
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
