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
@WebServlet(name = "NewProduct", urlPatterns = {"/NewProduct"})
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
    public class CatalogoServlet extends HttpServlet {

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
        
        String titolo= request.getParameter("titolo");
        String autore= request.getParameter("autore");
        float prezzo= Float.valueOf(request.getParameter("prezzo")); 
        String immagine_copertina= request.getParameter("immagine_copertina");
        String descrizione= request.getParameter("descrizione");
        String categoria= request.getParameter("categoria");
        String username= request.getParameter("username");
        int minString=3;
        int maxString=20;
      
        try{
            //controllo input
        Utils.checkString(titolo, 0, 20);
        Utils.checkString(autore, 0, 20);
        Utils.checkString(immagine_copertina, 0, 200);
        Utils.checkString(descrizione, 0, 500);
        Utils.checkString(categoria, 0, 50);
              
        //creazione dell'oggetto prodotto da mandare alla Factory
        Prodotto newProdotto= new Prodotto();
        
        newProdotto.setUsername(username);
        newProdotto.setTitolo(titolo);
        newProdotto.setTipologia(categoria);
        newProdotto.setPrezzo(prezzo);
        newProdotto.setImgCopertina(immagine_copertina);
        newProdotto.setAutore(autore);
        newProdotto.setDescrizione(descrizione);
        
        ProdottiFactory.getInstance().inserisciProdotto(newProdotto);
                response.sendRedirect("storage.jsp");

        
                    
        }catch(InvalidParamException e){
        request.setAttribute("errorMessage", e.getMessage());
        request.setAttribute("link", "login.jsp");
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
}