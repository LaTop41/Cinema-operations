<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Azuriraj korisnika</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/ie6.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
           <link href="css/style1.css" rel="stylesheet" type="text/css" />
           <script>
            $(function() {
    $('#datepicker').datepicker({
        dateFormat: 'yy-dd-mm',
        onSelect: function(datetext) {
            var d = new Date(); // for now

            var h = d.getHours();
            h = (h < 10) ? ("0" + h) : h ;

            var m = d.getMinutes();
            m = (m < 10) ? ("0" + m) : m ;

            var s = d.getSeconds();
            s = (s < 10) ? ("0" + s) : s ;

            datetext = datetext + " " + h + ":" + m + ":" + s;

            $('#datepicker').val(datetext);
        }
    });
});
        </script>
        <style type="text/css">
        <!--
        .style1 {font-size: 36px}
        -->
        </style>
        
        
    </head>
        <div id="header">
<div class="row-1">
<div class="fleft"><a href="admin.jsp">Svet <span style="color:red">Filmova</span></a></div>
          <ul>    
            <li><a href="index.jsp"><img src="images/icon1-act.gif" alt="Početna stranica" /></a></li>
            <li><a href="kontakt.jsp"><img src="images/icon2-act.gif" alt="Gmail" /></a></li>
            <li><a href="onama.jsp"><img src="images/icon3-act.gif" alt="O nama" /></a></li>
          </ul>
        </div>          
    </div>
        <body id="page1">
  <% 
                String poruka = (String) request.getAttribute("poruka");
                if (poruka != null && poruka.length() > 0){
            %>
           
            <tr>
                <td><%= poruka%></td>
            </tr>
            <%
                }
                
            %>
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <div id="header">
        <div class="row-2">
          <ul>
            
             <li><a href="admin.jsp">Dodaj Menadžera</a></li>
             <li><a href="dodajBioskop.jsp">Dodaj Bioskop</a></li>
              <li><a href="dodajFilm.jsp">Dodaj Film</a></li>
              <li><a href="dodajPrikazivanje.jsp">Dodaj Prikazivanje</a></li>
              <li><a href="azurirajKorisnika.jsp">Azuriraj Korisnika</a></li>
              <li><a href="azurirajDetalje.jsp">Ažuriraj Prikazivanje</a></li>
          </ul>
        </div>
      </div>
         </div>
      </div></div>
<table width="100%">
	
	<tr><td>
		<table><tr><td  valign="top">
			<table id="navigation"  width="170">
				
                          <%
				if (session.isNew() || session.getAttribute("username") == null) 
				{
					out.print("<tr><td><a href='login.jsp'>Uloguj se</a></td></tr>") ;
					out.print("&nbsp&nbsp");
					
				}
				else
				{
					out.print((String)session.getAttribute("username") + ",Dobrodošli");
					out.print("&nbsp&nbsp");
					out.print("<tr><td><a href='Logovanje?action=logout'>Izloguj se<a></td></tr>");
					out.print("&nbsp&nbsp");
                                        out.print("<tr><td><a href='obrisiKorisnika.jsp'>Izbriši Korisnika<a></td></tr>");
					out.print("&nbsp&nbsp");
                                        out.print("<tr><td><a href='obrisiFilm.jsp'>Izbriši Film<a></td></tr>");
					out.print("&nbsp&nbsp");
                                        out.print("<tr><td><a href='obrisiBioskop.jsp'>Izbriši Bioskop<a></td></tr>");
					out.print("&nbsp&nbsp");
				}
			%>
                            
				</tr>
				
			</table>
                
		
		</td>
                         <%
                            try{
              
           Class.forName("com.mysql.jdbc.Driver");
         
            Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/bioskop","root","");
      
            Statement stmt=(Statement) conn.createStatement();
            
            String up="SELECT detaljifilma.detalji_ID, detaljifilma.film_ID,detaljifilma.sala_ID, detaljifilma.bioskop,detaljifilma.datumvreme,detaljifilma.cena,film.film "
                    + "FROM detaljifilma,film WHERE detaljifilma.film_ID=film.film_ID;";
            ResultSet rs=stmt.executeQuery(up);
                        
                        %>	      
                       
                        
                        <td id="databar" >
                          
                           <h2 style=" margin-top:35px; margin-left:220px;">Ažuriraj Prikazivanje</h2>
                            <% while(rs.next()){%>
                          
                    <form action="AzurirajDetaljServlet" method="post" >
                        <table style=" margin-left: 40%; width:600px; height:300px;">
                              <tr>
                                  <td><input type="hidden" name="detaljiId" value="<%=rs.getInt("detalji_ID")%>"  /></td>
                                   <td>-----------------------------------------------------</td>
                                  <td><input type="hidden" name="filmId" value="<%=rs.getInt("film_ID")%>"  /></td>
                                  
                               
                            </tr>
                            <tr>
                                
                                <td>Sala:</td>
                                <td><input type="text" name="sala" value="<%=rs.getInt("sala_ID")%>" /></td>
                            </tr>
                            <tr>
                                
                                <td>Film:</td>
                                <td><input type="text" name="film"  value="<%=rs.getString("film")%>" readonly /></td>
                            </tr>
                            <tr>
                                
                                <td>Datum prikazivanja:</td>
                                <td><input id="datepicker"  type="text" name="datum"  value="<%=rs.getString("datumvreme")%>"  /></td>
                            </tr>
                            <tr>
                                
                                <td>Bioskop:</td>
                                <td><select name="bioskop">
                                    <option value="<%=rs.getString("bioskop")%>"><%=rs.getString("bioskop")%></option>
                                    <option value="">****</option>
                                    <option value="Cineplexx">Cineplexx</option>
                                     <option value="Fontana">Fontana</option>
                                      <option value="Roda">Roda</option>
                                      <option value="Dolly Bell">Dolly Bell</option>
                                    </select></td>
                            </tr>
                            <tr>
                                
                                <td>Cena:</td>
                                <td><input type="text" name="cena" value="<%=rs.getString("cena")%>"/></td>
                            </tr>
                            <tr>
                                <td><input type="submit" value="IZMENI" /></td>
                                <td><input type="reset" value="RESETUJ" /></td>
                            </tr>
                        </table>
                    </form>
                    </td>
                      
                               <%}
             stmt.close();
            conn.close();
             
           }catch(SQLException ex){
       
        }catch(ClassNotFoundException e){
               
        }%>
        </tr>
	</table>
		</tr>
	</table></td></tr>
</table>
<table id="footer" width="100%" style="background-color: black" >
<tr>
	<td style="background-color: black" >
            <a href="index.jsp"><span style="color:white">Početna</span></a> |
		<a href="#"><span style="color:white">Politika Privatnosti</span></a>  |
		<a href="kontakt.jsp"><span style="color:white">Kontaktirajte nas</span></a> |
		<a href="onama.jsp"><span style="color:white">O nama</span></a>
	</td>
</tr>
</table>
</body>
</html>
