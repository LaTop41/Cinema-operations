/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import beans.Korisnik;
import dao.LoginDao;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Luka
 */
public class Logovanje extends HttpServlet {

    

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

   

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        String action = request.getParameter("action");
		if (action == null)
			action = "";
		
		if (action.equals("login")) {
			this.login(request, response);
		}
		if (action.equals("logout")) {
			this.logout(request, response);
		}
        
    }
    

	
	
	
	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = null;
		LoginDao dao = new LoginDao();
		Korisnik loginer = new Korisnik();
		loginer.setUsername(request.getParameter("username"));
		loginer.setPassword(request.getParameter("password"));
		boolean oznaka = dao.login(loginer);
                
		if (!oznaka) {
			request.setAttribute("poruka","Pogrešan unos, pokušajte ponovo!");
			rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} else {
                    if(loginer.getUserType().equals("admin")){
			HttpSession session = request.getSession();
			session.setAttribute("loginer", loginer);
			session.setAttribute("korisnikId", loginer.getKorisnikId());
			session.setAttribute("username", loginer.getUsername());
			response.sendRedirect("admin.jsp");
                    }else if(loginer.getUserType().equals("menadzer"))
                    {
                        HttpSession session = request.getSession();
			session.setAttribute("loginer", loginer);
			session.setAttribute("korisnikId", loginer.getKorisnikId());
			session.setAttribute("username", loginer.getUsername());
			response.sendRedirect("menadzer.jsp");
                    }else{
                        HttpSession session = request.getSession();
			session.setAttribute("loginer", loginer);
			session.setAttribute("korisnikId", loginer.getKorisnikId());
			session.setAttribute("username", loginer.getUsername());
			response.sendRedirect("index.jsp");
                    }
		}

	}

	public void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("username");
		response.sendRedirect("login.jsp");
	}
    
    
    
    
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
