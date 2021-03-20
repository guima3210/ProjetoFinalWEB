/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author guima
 */
@WebServlet(urlPatterns = {"/Funcionarios"})
public class Funcionarios extends HttpServlet {

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
            String pesq = request.getParameter("pesq");
            pesq = pesq == null ? "" : pesq;

            //Recupera os medicamentos
            ArrayList<Entrada_Saida> lista = new ClinicaDao().listarFunc19(pesq);
            ArrayList<Entrada_Saida> lista2 = new ClinicaDao().listarFunc20(pesq);

            //Impime tabela com resultados
            out.println("<p>"+"Tabela Entrada"+"<p>");
            out.println("<table class='table table-bordered'>");
            out.println("<thead class=\"thead-dark\"");
            out.println("<tr>");
            out.println("<th>Código id</th>");
            out.println("<th>hora</th>");
            out.println("</tr>");
            out.println("</thead>");
            for(int i=0; i<lista.size(); i++) {
                out.println("<tr>");
                out.println("<td>" + lista.get(i).getLogin() + "</td>");
                out.println("<td>" + lista.get(i).getDate() + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
            out.println("<p>"+"Tabela Saida"+"<p>");
            out.println("<table class='table table-bordered'>");
            out.println("<thead class=\"thead-dark\"");
            out.println("<tr>");
            out.println("<th>Código id</th>");
            out.println("<th>hora</th>");
            out.println("</tr>");
            out.println("</thead>");
            for(int i=0; i<lista.size(); i++) {
                out.println("<tr>");
                out.println("<td>" + lista2.get(i).getLogin() + "</td>");
                out.println("<td>" + lista2.get(i).getDate() + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
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
