<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Admin strana</title>
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
            <li><a href="kontakt.html"><img src="images/icon2-act.gif" alt="Gmail" /></a></li>
            <li><a href="onama.html"><img src="images/icon3-act.gif" alt="O nama" /></a></li>
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
              <li><a href="azurirajKorisnika.jsp">Ažuriraj Korisnika</a></li>
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
                    <form action="ObrisiBioskopServlet" method="post" >
                        <h2 style=" margin-top:35px; margin-left:220px;">Obriši Bioskop</h2>
                        <table style=" margin-left: 40%; width:300px; height:300px;">
                             
                            <tr>
                                
                                <td>Bioskop:</td>
                                <td><select name="bioskop">
                                    <option value="Cineplexx">Cineplexx</option>
                                     <option value="Fontana">Fontana</option>
                                      <option value="Roda">Roda</option>
                                      <option value="Dolly Bell">Dolly Bell</option>
                                    </select></td>
                            </tr>
                             
                            <tr>
                                <td><input type="submit" value="IZBRIŠI" /></td>
                                
                            </tr>
                        </table>
                    </form>
                    </td>
		
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
            <a href="schedule.jsp"><span style="color:white">Repertoar</span></a> |
		<a href="#"><span style="color:white">Politika Privatnosti</span></a>  |
		<a href="kontakt.jsp"><span style="color:white">Kontaktirajte nas</span></a> |
		<a href="onama.jsp"><span style="color:white">O nama</span></a>
	</td>
</tr>
</table>
</body>
</html>
