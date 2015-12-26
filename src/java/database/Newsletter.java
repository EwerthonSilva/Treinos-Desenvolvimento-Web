
package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;


public class Newsletter {

    public static Connection con;
    
    public static int insere(String nome, String email) {
        // TENTA EXECUTAR OS COMANDOS NO BD
        try {
            
            Statement st = con.createStatement();
            // cria o comando SQL para ser executado
            String sql = "insert into newsletter(nome, email) values(?,?)";
            // prepara o comando para execução, indicando que haverá "?" a substituir
            PreparedStatement ps = con.prepareStatement(sql);
            // substitui os "?" pelos respectivos valores
            ps.setString(1, nome);
            ps.setString(2, email);
            // executa o comando sql armazenando o resultado. 0 = erro. 1 = sucesso
            int status = ps.executeUpdate();
            // verifica se houve erro
            if (status == 0) {
                //out.println("Falha ao inserir o usuário!");
                return 0;
            } else {
                //out.println("Usuário cadastrado com sucesso!");
                return 1;
            }
            
        } // CASO HAJA UMA EXCEÇÃO, MOSTRA ERRO NA TELA
        catch (Exception e) {
            //out.println(e.toString());
            e.printStackTrace(System.out);
            if (e.toString().contains("Duplicate")) {
                return 2;
            } else {
                return 0;
            }
        }
    }
    
}
