/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author guima
 */
@WebServlet(urlPatterns = {"/Valida"})
public class Valida extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           String login =request.getParameter("login");
           String senha =request.getParameter("senha");
           ClinicaDao c = new ClinicaDao();
        String resposta = c.consultar(login,senha);
        String nome = c.consultarnome(login,senha);
        java.util.Date data = new java.util.Date();
        java.sql.Timestamp timestamp = new java.sql.Timestamp(data.getTime());
        Entrada_Saida e=new Entrada_Saida(login,timestamp);
        String resposta2 = c.consultarrr(login, senha);
        if(resposta == null){
            response.sendRedirect("index.jsp?ret=NOK");
            return;
            }    
        if(resposta2.equals("Contratado")){
            if(resposta.equals("Medico")){
                c.gravarEntrada(e);
                response.sendRedirect("telamedico.jsp");
            }
            else if(resposta.equals("Gerente")){
                c.gravarEntrada(e);
                response.sendRedirect("telagerente.jsp");
                
            }
            else if(resposta.equals("Atendente")){
                c.gravarEntrada(e);
                response.sendRedirect("telaatendente");
                
            }
        }
        else{
        response.sendRedirect("index.jsp?sai=NOK");
        }
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
