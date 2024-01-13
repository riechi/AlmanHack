/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package it.bogosort.db.model;

import it.bogosort.exception.InvalidParamException;
import it.bogosort.utils.Utils;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jusem
 */
@WebServlet(name = "newUser", urlPatterns = {"/newUser"})
public class NuovoUtenteServlet extends HttpServlet {

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
        String username= request.getParameter("username");
        String password= request.getParameter("password");
        String nome= request.getParameter("nome");
        String cognome= request.getParameter("cognome");

        try{
         Utils.checkString(username, 0, 20);
         Utils.checkString(password, 0, 20);
         Utils.checkString(nome, 0, 20);
         Utils.checkString(cognome, 0, 20);

            if(UtenteFactory.getInstance().checkUtente(username)){
                UtenteFactory.getInstance().insertUtente(username, password, nome, cognome);
                 response.sendRedirect("login.jsp");
            }else{
                  response.sendRedirect("registrati.jsp");
            }   
        
        
        }catch(InvalidParamException e){
       
        request.setAttribute("errorMessage", e.getMessage());
        request.setAttribute("link", "registrati.jsp");
        request.getRequestDispatcher("error.jsp").forward(request, response);
        
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
