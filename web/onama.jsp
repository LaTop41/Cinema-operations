<%-- 
    Document   : onama
    Created on : Sep 17, 2020, 12:50:37 PM
    Author     : Luka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


    <head>
        <title>Svet Bioskopa</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/global.css" rel="stylesheet" type="text/css"/>
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
<div class="fleft"><a href="index.jsp">Svet <span style="color:red">Filmova</span></a></div>
         <ul>    
            <li><a href="index.jsp"><img src="images/icon1-act.gif" alt="Početna stranica" /></a></li>
            <li><a href="kontakt.jsp"><img src="images/icon2-act.gif" alt="Gmail" /></a></li>
            <li><a href="onama.jsp"><img src="images/icon3-act.gif" alt="O nama" /></a></li>
          </ul>
        </div>          
    </div>
        <body id="page1">
<!-- START PAGE SOURCE -->
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <div id="header">
        <div class="row-2">
         <ul>
           <li><a href="index.jsp">Početna</a></li>
            <li><a href="onama.jsp">O nama</a></li>
            <li><a href="FilmServlet?action=prikaziSveFilmove">Filmovi</a></li>
            <li><a href="kontakt.jsp">Kontakt</a></li>
          </ul>
        </div>
      </div>
         </div>
      </div></div>
        
<table width="80%">
	
	<tr><td>
		<table><tr><td valign="top">
			<table id="navigation"  width="100">
				            
				 <%
				if (session.isNew() || session.getAttribute("username") == null) 
				{
					out.print("<tr><td><a href='login.jsp'>Uloguj se</a></td></tr>") ;
					out.print("&nbsp&nbsp");
					out.print("<tr><td><a href='reg.jsp'>Registruj se</a></td></tr>");
                                        out.print("&nbsp&nbsp");
                                        
                                        
				}
				else
				{
					out.print((String)session.getAttribute("username") + ",Dobrodošli");
					out.print("&nbsp&nbsp");
					out.print("<tr><td><a href='Logovanje?action=logout'>Izloguj se<a></td></tr>");
					out.print("&nbsp&nbsp");
                                        out.print("<tr><td><a href='NarudzbenicaServlet?action=prikaziNarudzbe'>Rezervacije</a></td></tr>");
					out.print("&nbsp&nbsp");
				}
			%>
                                
			</table>
		</td>
                <td  style="width:70%; margin-top: 20px; " id="databar">
			
                    
                    <p>Bioskop Fontana sagrađen je 1967. godine, a posle više od decenije propadanja i zaborava, kultno mesto filmofila sa novobeogradske strane Save ponovo je otvoreno 2012. godine (na Dan žena). Opština Novi Beograd je inicirala obnovu sa namerom da se delatnošću bioskopa Fontana razvije Centar evropskog i dečijeg filma, kao edukativni segment filmske umetnosti koji nedostaje i Novom Beogradu i Gradu Beogradu. Partneri u realizaciji programa evropskog i dečijeg filma su Centar za filmsku umetnost «Art & Popcorn» i Dečiji Filmski Festival "Kids Fest".

Čuvajući renome starog šmekera kom mainstream nikad nije prvi izbor, ovaj bioskop je prvenstveno kuća domaćeg i evropskog filma, a posebnu pažnju poklanja ostvarenjima za decu.<img style='width:850px; height: 500px; '  src="images/bioskop.jpg" width="150%" height="440"/> U želji da se izgradi nova baza gledalaca, na repertoaru se prikazuju filmovi koje imaju priliku da vide samo na festivalima, a omogućen je i uvid u evropsku kinematografiju u toku cele godine. Pored redovnog bioskopskog programa organizuju se i retrospektive evropskih kinematografija, kao i festivali evropskih filmova. Program podrazumeva i kvalitetan filmski sadržaj za decu i omladinu.

Renoviran prostor bioskopa Fontana podrazmeva najnoviju prikazivačku tehniku, koja uključuje savremene digitalne 3D projektore, ali i klasični 35mm filmski projektor.</p></td>
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
