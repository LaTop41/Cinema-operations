/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;  
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.util.Random;

/**
 *
 * @author Luka
 */
public class Registracija extends HttpServlet {

 
  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
         
        Random rand = new Random();
        
        String a=request.getParameter("ime");  
        String b=request.getParameter("prezime");  
        String c=request.getParameter("email");  
        String d=request.getParameter("telefon");  
        String e=request.getParameter("pol");  
        String i=request.getParameter("username");  
        String f=request.getParameter("password");  
        
        
         String url = "jdbc:mysql://localhost:3306/bioskop";
        String userName = "root";
        String password = "";
        Connection con = null; 
        
        try{  
           Class.forName("com.mysql.jdbc.Driver"); 
           con = DriverManager.getConnection(url, userName, password);
            
        PreparedStatement ps=con.prepareStatement(  
        "INSERT INTO korisnik" +"(korisnik_ID,ime,prezime,userType,userName,password,telefon,email,pol) VALUES"
                                + "(?,?,?,?,?,?,?,?,?);");  
        
        int id = rand.nextInt(1000);
        ps.setInt(1,id);  
        ps.setString(2,a);  
        ps.setString(3,b);  
        ps.setString(4,"korisnik");
         ps.setString(5,i);  
        ps.setString(6,f);  
        ps.setString(7,d);
        ps.setString(8,c);  
        ps.setString(9,e);  

        int st=ps.executeUpdate();  
        if(st>0)  
        request.setAttribute("poruka","Uspešno ste registrovani!");
        request.getRequestDispatcher("login.jsp").forward(request, response);

        }catch (Exception e2) {System.out.println(e2);}  

            out.close();  
            }  


    
   
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
