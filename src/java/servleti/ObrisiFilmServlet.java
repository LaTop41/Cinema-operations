/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Luka
 */
public class ObrisiFilmServlet extends HttpServlet {


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
        
    }

    
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
           String film = request.getParameter("film");
         
        System.out.println("movie: " + film);
 
        
        try
        {
             String url = "jdbc:mysql://localhost:3306/bioskop";
        String userName = "root";
        String password = "";
        Connection con = null; 
          
           Class.forName("com.mysql.jdbc.Driver"); 
           con = DriverManager.getConnection(url, userName, password);
          
          String query = " delete from film where film = ?";

       
          PreparedStatement preparedStmt = con.prepareStatement(query);
          preparedStmt.setString (1, film);
         
          preparedStmt.execute();
          
          con.close();
           request.setAttribute("poruka", "Uspe??no ste obrisali film!");
          response.sendRedirect("obrisiFilm.jsp");
        }
        catch (Exception e)
        {
          
          System.err.println(e.getMessage());
        }
    }

    
    
}
