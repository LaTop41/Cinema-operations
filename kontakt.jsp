<%-- 
    Document   : kontakt
    Created on : Sep 17, 2020, 12:48:44 PM
    Author     : Luka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    
        <title>Svet filmova</title>
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
<div class="fleft"><a href="index.jsp">Svet<span style="color:red">Filmova</span></a></div>
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
        
<table width="100%">
	
	<tr><td>
		<table><tr><td  valign="top">
			<table id="navigation"  width="170">
                            
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
		<td  style='margin-top:30px;' id="databar">
                   

                                <p><b>Gmail adresa : </b></p>

<p>comtrade.example@gmail.com</p>

<p><b>Broj telefona:</b></p>

<p> 064XXXXXXX</p></td>
		</td></tr>
	</table></td></tr>
</table>

</body>
</html>

