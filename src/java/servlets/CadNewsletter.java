/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import database.Conexao;
import database.Newsletter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thon
 */
public class CadNewsletter extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            
            // instancia conexão
            Conexao c = new Conexao();
            // estabelece a conexão
            Connection con = c.abrirConexao("progweb1");

            Newsletter.con = con;
            
            int status = Newsletter.insere(nome,email);
            
            if (status==1) {
                out.println("{\"success\":   true, \"msg\":   \""+nome+", Cadastro realizado com sucesso!\"   }");
                //out.println("Cadastro de "+nome+"realizado com sucesso!");
                
            }
            else if (status==2) {
                out.println("{\"success\":   false, \"msg\":   \"O E-Mail ("+email+") já foi cadastrado!\"   }");
                //out.println("O E-Mail informado ("+email+") já existe na base!");
                
            }
            else {
                out.println("{\"success\":   false, \"msg\":   \"Erro ao efetuar o cadastro de "+nome+"!\"   }");
                //out.println("Erro ao efetuar o cadastro de "+nome+"!");
            }

        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
