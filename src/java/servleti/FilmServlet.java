/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servleti;

import beans.Film;
import beans.FilmMain;
import dao.FilmDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Luka
 */
public class FilmServlet extends HttpServlet {

   
    

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
		if (action == null)
			action = "";
		if (action.equals("prikaziSveFilmove")) {
			this.prikaziSveFilmove(request, response);
		}
		if (action.equals("prikaziDetaljeFilma")) {
			this.prikaziDetaljeFilma(request, response);
		}
		
        
        
    }
        
    public void prikaziSveFilmove(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		FilmDao filmDao = new FilmDao();
		ArrayList<Film> lista = filmDao.prikaziSveFilmove();
		
		request.setAttribute("listaFilmova", lista);
		RequestDispatcher rd = request.getRequestDispatcher("filmovi.jsp");
		rd.forward(request, response);
	}
    
    public void prikaziDetaljeFilma(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String filmId = request.getParameter("filmId");
		
		FilmDao film = new FilmDao();
		ArrayList<FilmMain> detaljiLista = film.prikaziDetaljeFilma(filmId);

		request.setAttribute("detaljiLista", detaljiLista);
		RequestDispatcher rd = request.getRequestDispatcher("filmDetalji.jsp");
		rd.forward(request, response);
	}
 
 

}
