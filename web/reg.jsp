<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Početna strana</title>
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
<div class="fleft"><a href="index.jsp">Svet <span style="color:red">Filmova</span></a></div>
          <ul>    
            <li><a href="index.jsp"><img src="images/icon1-act.gif" alt="Početna stranica" /></a></li>
            <li><a href="kontakt.html"><img src="images/icon2-act.gif" alt="Gmail" /></a></li>
            <li><a href="onama.html"><img src="images/icon3-act.gif" alt="O nama" /></a></li>
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
            <li><a href="FilmServlet?action=sviFilmovi">Filmovi</a></li>
            <li><a href="kontakt.jsp">Kontakt</a></li>
          </ul>
        </div>
      </div>
         </div>
      </div></div>
<table width="90%">
	
	<tr><td>
		<table><tr><td  valign="top">
			<table id="navigation"  width="200">
				
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
                            </td>
			</tr>	
				
            </table>
                        
                         <td id="databar" >
                             <h2 style="margin-top:35px; margin-left:80px;">Registrujte se!</h2>
                    <form action="Registracija" method="post" onsubmit="return validate_form(this)" >
                        <table style=" margin-left: 80px;width:350px; height:300px;">
                            <tr>
                                <td>Ime:</td>
                                <td><input type="text" name="ime" /></td>
                            </tr>
                             <tr>
                                <td>Prezime:</td>
                                <td><input type="text" name="prezime"  /></td>
                            </tr>
                             <tr>
                                <td>Email:</td>
                                <td><input type="text" name="email"  /></td>
                            </tr>
                             <tr>
                                <td>Telefon:</td>
                                <td><input type="text" name="telefon" /></td>
                            </tr>
                             <tr>
                                <td>Pol:</td>
                                <td><input type="radio" name="pol" value="Muški"  />Muški
                                <input type="radio" name="pol" value="Ženski" />Ženski</td>
                            </tr>
                             <tr>
                                <td>Korisničko ime:</td>
                                <td><input type="text" name="username"  /></td>
                            </tr>
                            <tr>
                                <td>Lozinka::</td>
                                <td><input type="password" name="password"  /></td>
                            </tr>
                            <tr>
                                <td><input type="submit" value="Registruj se" /></td>
                                <td><input type="reset" value="Resetuj" /></td>
                            </tr>
                        </table>
                    </form>
                    </td>
		
		  </td>
		 </tr>
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
  <script type="text/javascript">
	function validate_form(thisform)
	{
		if (thisform.ime.value == null || thisform.ime.value=="") 
		{
			alert("Polje za ime ne može biti prazno!");
                        thisform.ime.focus();
			return false;
		}
		else if (thisform.prezime.value == null || thisform.prezime.value=="") 
		{
			alert("Polje za prezime ne može biti prazno!");
                        thisform.prezime.focus();
			return false;
		}
		else if (thisform.email.value == null || thisform.email.value=="") 
		{
			alert("Polje za email ne može biti prazno！");
                        thisform.email.focus();
			return false;
		}else if (thisform.telefon.value == null || thisform.telefon.value=="") 
		{
			alert("Polje za telefon ne može biti prazno！");
                        thisform.telefon.focus();
			return false;
		}else if (thisform.username.value == null || thisform.username.value=="") 
		{
			alert("Polje za korisničko ime ne može biti prazno！");
                        thisform.username.focus();
			return false;
		}else if (thisform.password.value == null || thisform.password.value=="") 
		{
			alert("Polje za lozinku ne može biti prazno！");
                        thisform.password.focus();
			return false;
		}
		return true;
	}
</script>
</html>
