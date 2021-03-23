<%@page import="beans.Sedista"%>
<%@page import="beans.FilmMain"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="beans.Film"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Slobodna sedišta</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/ie6.css" rel="stylesheet" type="text/css" />
           <link href="css/style1.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
        <!--
        .style1 {font-size: 35px}
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
                        <td>
                         <%
                                    ArrayList<Sedista> sedistaList = (ArrayList<Sedista>) request.getAttribute("sedistaList");
                                    out.print("<table style='margin-top:30px;' cellspacing='8'>");
                                    int count = 0;
                                    for (int i = 0; i < sedistaList.size(); i++) {
                                           
                                            if (count == 0) {
                                                    out.print("<tr>");
                                                    out.print("<td>" + sedistaList.get(i).getRed() + "red</td>");
                                            }
                                            if (sedistaList.get(i).isRezervisano()) {
                                                    out.print("<td width='20' bgcolor='red'>1");
                                            } else {
                                                    out.print("<td width='20' bgcolor='#1ec5e5'>0");
                                            }
                                            out.print("</td>");
                                            count++;
                                            
                                            if (count == 12) {
                                                    out.print("</tr>");
                                                    count = 0;
                                            }
                                    }
                                    out.print("</table>");
                            %>
                            <%
                                    out.print("<h3>Odaberite svoje mesto:</h3>");
                                    out.print("<form action='SedistaServlet?action=odaberiSediste' method='post'>");
                                    out.print("Broj reda:");
                                    out.print("<select name='red'>");
                                    out.print("<option value='1'>1</option>");
                                    out.print("<option value='2'>2</option>");
                                    out.print("<option value='3'>3</option>");
                                    out.print("<option value='4'>4</option>");
                                    out.print("<option value='5'>5</option>");
                                    out.print("<option value='6'>6</option>");
                                    out.print("<option value='7'>7</option>");
                                    out.print("<option value='8'>8</option>");
                                    out.print("<option value='9'>9</option>");
                                    out.print("<option value='10'>10</option>");
                                    out.print("<option value='11'>11</option>");
                                    out.print("<option value='12'>12</option>");
                                    out.print("</select>");
                                    out.print("Broj kolone:");
                                    out.print("<select name='kolona'>");
                                    out.print("<option value='1'>1</option>");
                                    out.print("<option value='2'>2</option>");
                                    out.print("<option value='3'>3</option>");
                                    out.print("<option value='4'>4</option>");
                                    out.print("<option value='5'>5</option>");
                                    out.print("<option value='6'>6</option>");
                                    out.print("<option value='7'>7</option>");
                                    out.print("<option value='8'>8</option>");
                                    out.print("<option value='9'>9</option>");
                                    out.print("<option value='10'>10</option>");
                                    out.print("<option value='11'>11</option>");
                                    out.print("<option value='12'>12</option>");
                                    out.print("</select>");
                                    out.print("&nbsp&nbsp");
                                    out.print("<input type='submit' value='Potvrdi'>");
                                    out.print("</form>");
                            %>
                        </td>
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




