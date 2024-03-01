/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package it.bogosort.db.model;

import it.bogosort.exception.InvalidParamException;
import it.bogosort.utils.Utils;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jusem
 */
@WebServlet(name = "NuovoProdotto", urlPatterns = {"/NuovoProdotto"})
public class NuovoProdottoServlet extends HttpServlet {

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
        HttpSession session=request.getSession(false);
        String username = session.getAttribute("username").toString();
        String titolo= request.getParameter("titolo");
        String autore= request.getParameter("autore");
        String prezzo= request.getParameter("prezzo"); 
        String immagine_copertina= request.getParameter("immagine_copertina");
        String descrizione= request.getParameter("descrizione");
        String categoria= request.getParameter("categoria");
        
      
        try{
            //controllo input
        Utils.checkString(titolo, 1, 50);
        Utils.checkString(autore, 1, 20);
        Utils.checkString(immagine_copertina, 1, 200);
        Utils.checkString(descrizione, 1, 500);
        Utils.checkString(categoria, 1, 50);
              
        
       
        
        ProdottiFactory.getInstance().inserisciProdotto(username, titolo, autore, prezzo, immagine_copertina, descrizione, categoria);       
        response.sendRedirect("storage.jsp");

        
                    
        }catch(InvalidParamException e){
        request.setAttribute("errorMessage", e.getMessage());
        request.setAttribute("link", "newproduct.jsp");
        request.getRequestDispatcher("product_error.jsp").forward(request, response);
        
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