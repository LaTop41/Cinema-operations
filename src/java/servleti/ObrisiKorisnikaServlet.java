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
public class ObrisiKorisnikaServlet extends HttpServlet {

   

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ime = request.getParameter("ime");
        String userType = request.getParameter("userType"); 
        
 
        
        try
        {
             String url = "jdbc:mysql://localhost:3306/bioskop";
        String userName = "root";
        String password = "";
        Connection con = null; 
          
           Class.forName("com.mysql.jdbc.Driver"); 
           con = DriverManager.getConnection(url, userName, password);
          
          String query = " delete from korisnik where ime = ? and userType=?";
          
          
          PreparedStatement preparedStmt = con.prepareStatement(query);
          preparedStmt.setString (1, ime);
           preparedStmt.setString (2, userType);
          
          preparedStmt.execute();
          
          con.close();
           request.setAttribute("poruka", "Uspešno ste obrisali kotisnika!");
          response.sendRedirect("obrisiKorisnika.jsp");
        }
        catch (Exception e)
        {
         
          System.err.println(e.getMessage());
        }
    }

   

}
