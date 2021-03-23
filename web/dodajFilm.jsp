<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dodaj Film</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/ie6.css" rel="stylesheet" type="text/css" />
           <link href="css/style1.css" rel="stylesheet" type="text/css" />
           
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
                              
                       <td id="databar" >
                           <h2 style=" margin-top:35px; margin-left:220px;">Dodaj Film</h2>
                    <form action="AdminServlet?action=addFilm" method="POST">
                        <table style="margin-left: 50%; width:350px; height:600px;">
                            <tr>                               
                                <td>Film:</td>
                                <td><input type="text" name="naziv" placeholder="Film" required/></td>
                            </tr>
                             <tr>
                                <td>Tehnologija:</td>
                                <td><select name="tehnologija" required>
                                        <option value="2D">2D</option>
                                         <option value="3D">3D</option>
                                    </select>
                                </td>
                            </tr>
                             <tr>
                                <td>Trajanje:</td>
                                <td><input type="text" name="trajanje" placeholder="Trajanje" required/></td>
                            </tr>
                            <tr>
                                <td>Režiser:</td>
                                <td><input type="text" name="reziser" placeholder="Režiser" required/></td>
                            </tr>
                             <tr>
                                <td>Glumci:</td>
                                <td><input type="textarea" name="glumci" placeholder="Glumci" required/></td>
                            </tr>
                             <tr>
                                <td>Godina:</td>
                                <td><input type="text" name="godina" placeholder="Godina" required/></td>
                            </tr>
                            <tr>
                                <td>Žanr:</td>
                                <td><input type="text" name="zanr" placeholder="Žanr" required/></td>
                            </tr>
                            <tr>
                                <td>Opis:</td>
                                <td><input type="textarea" name="opis" placeholder="Opis" required/></td>
                            </tr>
                             <tr>
                                <td>Video(iFrame):</td>
                                <td><input type="textarea" name="video" placeholder="Video" required/></td>
                            </tr>
                           
                           
                            <tr>
                                <td><input type="submit" value="DODAJ" /></td>
                                <td><input type="reset" value="RESETUJ" /></td>
                            </tr>
                        </table>
                    </form>
                    </td>
		
		  
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
