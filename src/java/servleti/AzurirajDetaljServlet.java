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
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.scene.control.DatePicker;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Luka
 */
public class AzurirajDetaljServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

   
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();  
    
          
        String detaljId=request.getParameter("detaljiId");
            String datum=request.getParameter("datum");
            String sala=request.getParameter("sala");
            String bioskop=request.getParameter("bioskop");
            String cena=request.getParameter("cena");
            
            int idDetalji=Integer.parseInt(detaljId);
              int idSala=Integer.parseInt(sala);
            
            if( sala!=null && sala.length()>0 &&
                   bioskop!=null && bioskop.length()>0 && cena!=null && cena.length()>0 && datum!=null && datum.length()>0){
           
            try{
           Class.forName("com.mysql.jdbc.Driver");
         
            Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bioskop","root","");
      
            Statement stmt=(Statement) conn.createStatement();
           
             String upit="update detaljifilma set sala_ID='"+idSala+"',bioskop='"+bioskop+"',cena='"+cena+"',datumvreme='"+datum+"' where detalji_ID like'"+idDetalji+"'";
             
             stmt.executeUpdate(upit);
             stmt.close();
             conn.close(); 
             
             request.setAttribute("poruka", "Uspešna izmena!");
              request.getRequestDispatcher("azurirajDetalje.jsp").forward(request, response);
           }catch(SQLException ex){
                 Logger.getLogger(DatePicker.class.getName()).log(Level.SEVERE, null, ex);
        }catch(ClassNotFoundException e){
               e.printStackTrace();
                Logger.getLogger(DatePicker.class.getName()).log(Level.SEVERE, null, e);
        }
               
           }else{
             
             request.setAttribute("poruka", "Morate uneti sve podatke.");
            request.getRequestDispatcher("azurirajDetalje.jsp").forward(request, response);
           
           }
    
    }
}
