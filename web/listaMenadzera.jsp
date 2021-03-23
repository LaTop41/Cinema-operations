<%@page import="beans.Korisnik"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Lista menadžera</title>
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
<!-- START PAGE SOURCE -->
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <div id="header">
        <div class="row-2">
          <ul>
            
            
            <li><a href="ListeServlet?action=menadzeri">Pregled Menadzera</a></li>
            <li><a href="ListeServlet?action=korisnici">Pregled Korisnika</a></li>
            <li><a href="ListeServlet?action=rezervacije">Pregled Rezervacija</a></li>
             
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
                                    
				}
			%>
                            
				</tr>
				
			</table>
                
		
		</td>
                        <td id="databar">
                               <%
                        out.print("<div style='width:500px; margin-top:20px; height:300px; '>");
                        out.print("<h2>Menadžeri</h2>");
                        out.print("<table border='1'>");
                        out.print("<tr>");
                        out.print("<th>ID:</th>");
                        out.print("<th>Ime:</th>");
                        out.print("<th>Prezime:</th>");
                        out.print("<th>Telefon:</th>");
                        out.print("<th>Email:</th>");
                        out.print("<th>Pol:</th>");
                        out.print("</tr>");
                        ArrayList<Korisnik> menadzerList = (ArrayList<Korisnik>) request.getAttribute("menadzerList");
                        for (int i = 0; i < menadzerList.size(); i++) {
                                out.print("<tr>");
                                out.print("<td>" + menadzerList.get(i).getKorisnikId() + "</td>");
                                out.print("<td>" + menadzerList.get(i).getIme() + "</td>");
                                out.print("<td>" + menadzerList.get(i).getPrezime() + "</td>");
                                out.print("<td>" + menadzerList.get(i).getTelefon() + "</td>");
                                 out.print("<td>" + menadzerList.get(i).getEmail() + "</td>");
                                out.print("<td>" + menadzerList.get(i).getPol() + "</td>");
                                
                                out.print("</tr>");
                        }
                        out.print("</table>");
%>
                      
                   
		
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
