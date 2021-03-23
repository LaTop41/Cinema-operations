/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import beans.Film;
import beans.FilmMain;
import beans.Korisnik;
import dao.AdminDao;

import java.io.FileInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Luka
 */
public class AdminServlet extends HttpServlet {

   
@Override
protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action == null)
			action = "";
		if (action.equals("addMenadzer")) {
			this.addMenadzer(request, response);
		}if (action.equals("addBioskop")) {
			this.addBioskop(request, response);
		}if (action.equals("addFilm")) {
			this.addFilm(request, response);
		}if (action.equals("addPrikazivanje")) {
			this.addPrikazivanje(request, response);
		}
              
		
	}

	public void addMenadzer(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
                        
             response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();  
           
         String a=request.getParameter("ime");  
        String b=request.getParameter("prezime");  
        String c=request.getParameter("email");  
        String d=request.getParameter("telefon");  
        String e=request.getParameter("pol");  
        String i=request.getParameter("username");  
        String f=request.getParameter("password");  
        
         
       try{
           Class.forName("com.mysql.jdbc.Driver");
         
            Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bioskop","root","");
      
            Statement stmt=(Statement) conn.createStatement();
           
             String upit="select * from korisnik where userType='menadzer'";
             ResultSet  rs=stmt.executeQuery(upit);
             
             while(rs.next())
             {
             if(a.equals(rs.getString("ime")) && b.equals(rs.getString("prezime")) && c.equals(rs.getString("email")) && i.equals(rs.getString("userName")))
             {
             
            
             request.setAttribute("poruka", "Menadžer već postoji!");
            request.getRequestDispatcher("admin.jsp").forward(request, response);
              
             }
             }
              stmt.close();
              conn.close();
             
           }catch(SQLException ex){
               ex.printStackTrace();
        }catch(ClassNotFoundException e1){
               e1.printStackTrace();
        }
        
       if(a!=null && a.length()>0 && b!=null && b.length()>0 && c!=null && c.length()>0 && d!=null && d.length()>0 && e!=null && e.length()>0
               && i!=null && i.length()>0 && f!=null && f.length()>0){
       
         String url = "jdbc:mysql://localhost:3306/bioskop";
        String userName = "root";
        String password = "";
        Connection con = null; 
        
        try{  
           Class.forName("com.mysql.jdbc.Driver"); 
           con = DriverManager.getConnection(url, userName, password);
            
        PreparedStatement ps=con.prepareStatement(  
        "INSERT INTO korisnik" +"(ime,prezime,userType,userName,password,telefon,email,pol) VALUES"
                                + "(?,?,?,?,?,?,?,?);");  
        
        
        
        ps.setString(1,a);  
        ps.setString(2,b);  
        ps.setString(3,"menadzer");
         ps.setString(4,i);  
        ps.setString(5,f);  
        ps.setString(6,d);
        ps.setString(7,c);  
        ps.setString(8,e);  

        int st=ps.executeUpdate();  
         ps.close();
        con.close();
        if(st>0)  
        request.setAttribute("poruka","Uspešno ste dodali menadžera!");
        request.getRequestDispatcher("admin.jsp").forward(request, response);
        
       
        }catch (Exception e2) {System.out.println(e2);}  

            out.close();  
            }  
        }
        
        
        public void addBioskop(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
              response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         try  
        {
            String bioskop=request.getParameter("bioskop");
            String lokacija=request.getParameter("lokacija");
            String grad=request.getParameter("grad");            
           
       try{
           Class.forName("com.mysql.jdbc.Driver");
         
            Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bioskop","root","");
      
            Statement stmt=(Statement) conn.createStatement();
           
             String upit="select * from bioskopi";
             ResultSet  rs=stmt.executeQuery(upit);
             
             while(rs.next())
             {
             if(bioskop.equals(rs.getString("bioskop")) && lokacija.equals(rs.getString("lokacija")) && grad.equals(rs.getString("grad")))
             {
             
             
             request.setAttribute("poruka", "Bioskop već postoji!");
            request.getRequestDispatcher("dodajBioskop.jsp").forward(request, response);
              
             }
             }
              stmt.close();
              conn.close();
             
           }catch(SQLException ex){
               ex.printStackTrace();
        }catch(ClassNotFoundException e){
               e.printStackTrace();
        }
           if(bioskop!=null && bioskop.length()>0 && lokacija!=null && lokacija.length()>0 &&
                   grad!=null && grad.length()>0){
           
            try{
           Class.forName("com.mysql.jdbc.Driver");
         
            Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bioskop","root","");
      
            
           
               PreparedStatement ps=conn.prepareStatement(  
        "INSERT INTO bioskopi" +"(bioskop,lokacija,grad) VALUES"
                                + "(?,?,?);");  
             
                ps.setString(1,bioskop);  
                 ps.setString(2,lokacija);  
                 ps.setString(3,grad);
             
              ps.executeUpdate();
             
             ps.close();
             conn.close(); 
             
             request.setAttribute("poruka", "Uspešan unos");
              request.getRequestDispatcher("dodajBioskop.jsp").forward(request, response);
           }catch(SQLException ex){
       
        }catch(ClassNotFoundException e){
               e.printStackTrace();
        }
               
           }else{
             
             request.setAttribute("poruka"," Morate uneti sve podatke.");
            request.getRequestDispatcher("dodajBioskop.jsp").forward(request, response);
           
           }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
            
        }
        
        public void addFilm(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
      
        
        String naziv = request.getParameter("naziv");
        out.println(naziv);
        String tehnologija=request.getParameter("tehnologija");  
        out.println(tehnologija);
        String trajanje=request.getParameter("trajanje");  
        out.println(trajanje);
        String reziser=request.getParameter("reziser");  
        out.println(reziser);
        String glumci=request.getParameter("glumci"); 
        String godina=request.getParameter("godina");  
        String zanr=request.getParameter("zanr");  
        String opis=request.getParameter("opis");  
        String video=request.getParameter("video");
      
       try{ 
       
         String url = "jdbc:mysql://localhost:3306/bioskop";
        String userName = "root";
        String password = "";
        Connection con = null; 
        
         
           Class.forName("com.mysql.jdbc.Driver"); 
           con = DriverManager.getConnection(url, userName, password);
            
        PreparedStatement ps=con.prepareStatement(  
        "INSERT INTO film (film,tehnologija,trajanje,reziser,glumci,godina,zanr,opis,video) VALUES(?,?,?,?,?,?,?,?,?)");  
        
        
        ps.setString(1,naziv);  
        ps.setString(2,tehnologija);  
        ps.setString(3,trajanje);
         ps.setString(4,reziser);  
        ps.setString(5,glumci);  
        ps.setString(6,godina);
        ps.setString(7,zanr);  
        ps.setString(8,opis);  
        ps.setString(9,video); 
         
        
         

        int st=ps.executeUpdate();  
         ps.close();
        con.close();
        if(st>0)  
        request.setAttribute("poruka","Uspešno ste dodali film!");
        request.getRequestDispatcher("dodajFilm.jsp").forward(request, response);
        
       
        }catch(Exception ex){
            ex.printStackTrace();
       
        }

              
           
     
        
        
        }
        
        
          public void addPrikazivanje(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
      
        
        try  
        {
            String film=request.getParameter("film");
            out.println(film);
            String sala=request.getParameter("sala");
            String bioskop=request.getParameter("bioskop");   
            String datum=request.getParameter("datum");
            String cena=request.getParameter("cena");  
           
       try{
           Class.forName("com.mysql.jdbc.Driver");
         
            Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bioskop","root","");
      
            Statement stmt=(Statement) conn.createStatement();
           
             String upit="select * from detaljifilma";
             ResultSet  rs=stmt.executeQuery(upit);
             
             while(rs.next())
             {
             if(film.equals(rs.getString("film_ID")))
             {
             
             
             request.setAttribute("poruka", "Prikazivanje za taj film već postoji!");
            request.getRequestDispatcher("dodajPrikazivanje.jsp").forward(request, response);
              
             }
             }
              stmt.close();
              conn.close();
             
           }catch(SQLException ex){
               ex.printStackTrace();
        }catch(ClassNotFoundException e){
               e.printStackTrace();
        }
          
           
            try{
           Class.forName("com.mysql.jdbc.Driver");
         
            Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bioskop","root","");
      
            
           
               PreparedStatement ps=conn.prepareStatement(  
        "INSERT INTO detaljifilma" +"(film_ID,sala_ID,bioskop,datumvreme,cena) VALUES"
                                + "(?,?,?,?,?);");  
             
                ps.setString(1,film);  
                 ps.setString(2,sala);  
                 ps.setString(3,bioskop);
                  ps.setString(4,datum);
                   ps.setString(5,cena);
             
              ps.executeUpdate();
             
             ps.close();
             conn.close(); 
             
             request.setAttribute("poruka", "Uspešan unos");
              request.getRequestDispatcher("dodajPrikazivanje.jsp").forward(request, response);
           }catch(SQLException ex){
       
        }catch(ClassNotFoundException e){
               e.printStackTrace();
        }
               
          
        }catch(Exception e)
        {
            e.printStackTrace();
        }
              
           
     
        
        
        }
}
        
        
       


	

