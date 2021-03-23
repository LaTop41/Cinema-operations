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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Luka
 */
public class AzurirajKorisnikaServlet extends HttpServlet {

    

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
      
        String id=request.getParameter("korisnikId");
            String ime=request.getParameter("ime");
            String prezime=request.getParameter("prezime");
            String userType=request.getParameter("userType");
            
            int idKorisnik=Integer.parseInt(id);
            
            if( prezime!=null && prezime.length()>0 &&
                   ime!=null && ime.length()>0 && userType!=null && userType.length()>0){
           
            try{
           Class.forName("com.mysql.jdbc.Driver");
         
            Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bioskop","root","");
      
            Statement stmt=(Statement) conn.createStatement();
           
             String upit="update korisnik set ime='"+ime+"',prezime='"+prezime+"',userType='"+userType+"'"
             + "where korisnik_ID like'"+idKorisnik+"'";
             
             stmt.executeUpdate(upit);
             stmt.close();
             conn.close(); 
             
             request.setAttribute("poruka", "Uspešna izmena!");
              request.getRequestDispatcher("azurirajKorisnika.jsp").forward(request, response);
           }catch(SQLException ex){
       
        }catch(ClassNotFoundException e){
               e.printStackTrace();
        }
               
           }else{
             
             request.setAttribute("poruka", "Morate uneti sve podatke.");
            request.getRequestDispatcher("azurirajKorisnika.jsp").forward(request, response);
           
           }
        
    }


}
